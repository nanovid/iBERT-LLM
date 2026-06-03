`timescale 1ps/1ps

module exp_tb 
#(
    parameter integer D_W     = 32,
    parameter integer FP_BITS = 30,
    parameter integer M       = 8
)
(
    input wire clk,
    input wire rst
);


localparam integer REP = M + 40;

// reg       clk = 1'b0;
// reg [1:0] rst = 2'b11;

// `ifndef XIL_TIMING
// always #1 clk = ~clk;
// `else
// always #20000 clk = ~clk;
// `endif

// always @(posedge clk) begin
//     rst <= rst >> 1;
// end

reg                   in_valid;
reg  signed [D_W-1:0] qin;
reg  signed [D_W-1:0] qb;
reg  signed [D_W-1:0] qc;
reg  signed [D_W-1:0] qln2;
reg  signed [D_W-1:0] qln2_inv;
wire                  out_valid;
wire signed [D_W-1:0] qout;

reg signed [D_W-1:0]     in_memory  [M-1:0];
reg signed [D_W-1:0]     out_memory [M-1:0];
reg        [$clog2(M):0] in_addr;
reg        [$clog2(M):0] out_addr;
reg        [$clog2(M):0] errors;

initial begin
    $readmemh("exp_in.mem", in_memory);
    $readmemh("exp_out.mem", out_memory);
end

always @(posedge clk) begin
    if (rst) begin
        in_addr  <= 0;
        out_addr <= 0;
        in_valid <= 0;
        qin      <= 0;
        qb       <= 0;
        qc       <= 0;
        qln2     <= 0;
        qln2_inv <= 0;
        errors   <= 0;
    end else begin
        if (in_addr <= M-1) begin
            in_addr  <= in_addr + 1;
            in_valid <= 1;
            qin      <= in_memory[in_addr];
        end else begin
            in_valid <= 0;
        end

        qb       <= 1892;
        qc       <= 1364807;
        qln2     <= -485;
        qln2_inv <= -2213901;

        $display("# Time=%0d, in_valid=%0d, in_cntr=%0d, qin=%0d, out_valid=%0d, out_cntr=%0d, qout=%0d", $time, in_valid, in_addr, qin, out_valid, out_addr, qout);

        if (out_valid) begin
            out_addr <= out_addr + 1;
            if (out_memory[out_addr] != qout || ^qout === 1'bX) begin
                $display("# Error: Time=%0d, qout=%0d, true=%0d", $time, qout, out_memory[out_addr]);
                errors <= errors + 1;
            end
        end
    end
end

int counter = 0;
always @(posedge clk) counter <= rst ? 0 : counter+1;

always @(posedge clk) begin
    //$timeformat(-9, 2, " ns", 20);
    if (counter >= REP) begin
        if (out_addr != M) begin
            $display("# Error: Incorrect number of outputs were produced by the module: given inputs=%0d, produced outputs=%0d.", in_addr, out_addr);
        end else begin
            if (errors > 0)
                $display("\n--\nErrors=%0d\n--\n", errors);
            else
                $display("\n--\nPASSED!\n--\n");
        end
        $finish;
    end
end

exp
`ifndef XIL_TIMING
#(
    .D_W     ( D_W     ),
    .FP_BITS ( FP_BITS )
)
`endif
exp_test (
    .clk       ( clk       ),
    .rst       ( rst    ),
    .in_valid  ( in_valid  ),
    .qin       ( qin       ),
    .qb        ( qb        ),
    .qc        ( qc        ),
    .qln2      ( qln2      ),
    .qln2_inv  ( qln2_inv  ),
    .out_valid ( out_valid ),
    .qout      ( qout      )
);

endmodule
