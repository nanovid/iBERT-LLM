`timescale 1ps / 1ps

module div_tb
#(
    parameter integer D_W      = 32
)
();

logic       clk = 1'b0;
logic [1:0] rstv = 2'b11;

`ifndef XIL_TIMING
always #1 clk = ~clk;
`else
always #20000 clk = ~clk;
`endif

always @(posedge clk) begin
    rstv <= rstv >> 1;
end

logic rst;
assign rst = rstv[0];

localparam integer   M        = 8;
localparam integer   REP      = 70 * M;
localparam integer   IN_STAGGER = 10;

logic [D_W-1:0] DIVIDEND_V [M];
logic [D_W-1:0] DIVISOR_V [M];
logic [D_W-1:0] QUOTIENT_V [M];
logic [D_W-1:0] REMAINDER_V [M];

initial begin
    $readmemh("div_in_dividend.mem", DIVIDEND_V);
    $readmemh("div_in_divisor.mem", DIVISOR_V);
    for (integer i = 0; i < M; i++) begin
        QUOTIENT_V[i]  = DIVIDEND_V[i] / DIVISOR_V[i];
        REMAINDER_V[i] = DIVIDEND_V[i] % DIVISOR_V[i];
    end
end

integer counter = 0;
always @(posedge clk) counter <= rst ? 0 : counter+1;

// TB array index
integer outputs;
integer inputs;
integer stagger;

// Inputs
logic [D_W-1:0] divisor;
logic [D_W-1:0] dividend;
logic in_valid;
logic div_ready;

// Outputs
logic [D_W-1:0] quotient;
logic out_valid;
integer errors;

div 
`ifndef XIL_TIMING
#(
    .D_W ( D_W )
)
`endif
DUT (
    .clk       ( clk       ),
    .rst       ( rst       ),
    .in_valid  ( in_valid  ),
    .divisor   ( divisor   ),
    .dividend  ( dividend  ),
    .quotient  ( quotient  ),
    .out_valid ( out_valid )
);

// Next state logic
integer next_inputs;
integer next_outputs;
integer next_stagger;

integer next_div_ready;
logic [D_W-1:0] next_divisor;
logic [D_W-1:0] next_dividend;
logic [D_W-1:0] next_in_valid;

always_comb begin
    // Maintain state
    next_inputs = inputs;
    next_outputs = outputs;
    next_div_ready = div_ready;
    next_divisor = divisor;
    next_dividend = dividend;
    next_in_valid = in_valid;

    next_stagger = (stagger > 0) ? stagger - 1 : 0;

    // Handle outputs
    if (out_valid) begin
        next_outputs = outputs + 1;
        next_div_ready = 1;
    end

    // Inputs make div busy
    if (div_ready || out_valid) begin
        if (in_valid) begin
            next_in_valid = 0;
            next_div_ready = 0;
        end
    end

    // We can ready up the next input
    if (!in_valid || div_ready || out_valid) begin
        if (stagger == 0) begin
            if (inputs < M) begin
                next_divisor = DIVISOR_V[inputs];
                next_dividend = DIVIDEND_V[inputs];
                next_inputs = inputs + 1;
                next_in_valid = 1;
                next_stagger = IN_STAGGER;
            end
        end
    end
end

integer start_counter;

always_ff @(posedge clk) begin
    if (rst) begin
        outputs   <= 0;
        inputs    <= 0;
        stagger <= 0;

        divisor   <= 0;
        dividend  <= 0;
        in_valid  <= 0;
        div_ready <= 1;
        errors    <= 0;
        start_counter <= 0;

    end else begin
        outputs <= next_outputs;
        inputs  <= next_inputs;
        divisor <= next_divisor;
        dividend <= next_dividend;
        in_valid <= next_in_valid;
        div_ready <= next_div_ready;
        stagger <= next_stagger;

        if (in_valid && (div_ready | out_valid)) start_counter <= counter;

        if (out_valid) begin
            if (quotient != QUOTIENT_V[outputs]) begin
            $display("# Error: Time=%0d, outputs=%0d, dividend=%0d, divisor=%0d, quotient=%0d, true=%0d, latency=%0d cycles", $time, outputs, DIVIDEND_V[outputs], DIVISOR_V[outputs], quotient, QUOTIENT_V[outputs], counter - start_counter);
            errors <= errors + 1;
            end else begin
            $display("# Time=%0d, outputs=%0d, dividend=%0d, divisor=%0d, quotient=%0d, true=%0d, latency=%0d cycles", $time, outputs, DIVIDEND_V[outputs], DIVISOR_V[outputs], quotient, QUOTIENT_V[outputs], counter - start_counter);
            end
        end
    end
end


always @(posedge clk) begin
    //$timeformat(-9, 2, " ns", 20);
    if (counter >= REP) begin
        if (outputs != M) begin
            $display("# Error: Incorrect number of outputs were produced by the module: given inputs=%0d, produced outputs=%0d.", inputs, outputs);
        end else begin
            if (errors > 0)
                $display("\n--\nErrors=%0d\n--\n", errors);
            else
                $display("\n--\nPASSED!\n--\n");
        end
        $finish;
    end
end

endmodule
