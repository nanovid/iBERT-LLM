`timescale 1ps / 1ps

module array_tb
#(
    parameter integer D_W     = 32,
    parameter integer D_W_ACC = 32,
    parameter integer M1      = 3,
    parameter integer M2      = 4,
    parameter integer N       = 3
)
();

localparam integer MAT = M1 * M2;
localparam integer REP = MAT + 5;

logic       clk = 1'b0;
logic [1:0] rst = 2'b11;

always #1 clk = ~clk;

always @(posedge clk) begin
    rst <= rst >> 1;
end

logic                       initialize [N-1:0];
logic signed [D_W-1:0]     a [N-1:0];
logic signed [D_W-1:0]     b [N-1:0];
logic signed [D_W_ACC-1:0] result [N-1:0];

logic                          in_v;
logic  signed [D_W-1:0]        in_data;
logic                          result_valid;
logic         [$clog2(M2)-1:0] cntr;

logic  signed [D_W-1:0]                in_memory  [MAT-1:0];
logic  signed [D_W_ACC-1:0]            out_memory [M1-1:0][N-1:0];
logic         [$clog2(MAT):0]          in_addr;
logic         [$clog2(M1):0]           out_addr;
logic         [$clog2(M1)+$clog2(N):0] errors;

initial begin
    $readmemh("in.mem", in_memory);
    $readmemh("array_out.mem", out_memory);
end

always_ff @(posedge clk) begin
    if (rst[0]) begin
        in_addr  <= 0;
        in_v     <= 0;
        in_data  <= 0;
    end else begin
        if (in_addr <= MAT-1) begin
            in_addr <= in_addr + 1;
            in_v    <= 1;
            in_data <= in_memory[in_addr];
        end else begin
            in_v    <= 0;
            in_data <= 0;
        end
    end
end

always_ff @(posedge clk) begin
    if (rst[0]) begin
        cntr         <= 0;
        for (integer k = 0; k < N; k = k + 1) begin
            initialize[k] <= 1;
        end
        result_valid <= 0;
    end else begin
        for (integer k = 0; k < N; k = k + 1) begin
            initialize[k] <= 0;
        end
        result_valid <= 0;
        if (in_addr == 0) begin
            for (integer k = 0; k < N; k = k + 1) begin
                initialize[k] <= 1;
            end
        end
        if (in_v) begin
            cntr <= cntr + 1;
            if (cntr == M2 - 1) begin
                for (integer k = 0; k < N; k = k + 1) begin
                    initialize[k] <= 1;
                end
                result_valid <= 1;
                cntr         <= 0;
            end
        end
    end
end

integer i;
always_ff @(posedge clk) begin
    if (rst[0]) begin
        out_addr <= 0;
        errors   <= 0;
    end else begin
        for (i = 0; i < N; i = i + 1) begin
            $display("# Time=%0d, a[%0d]=%0d, b[%0d]=%0d, init=%0d, result_valid=%0d, result[%0d]=%0d", $time, i, a[i], i, b[i], initialize[i], result_valid, i, result[i]);
            if (result_valid) begin
                out_addr <= out_addr + 1;
                if (out_memory[out_addr][i] != result[i] || ^result[i] === 1'bX) begin
                    $display("# Error: Time=%0d, result[%0d]=%0d, true[%0d]=%0d", $time, i, result[i], i, out_memory[out_addr][i]);
                    errors <= errors + 1;
                end
            end
        end
        $display("--");
    end
end

genvar x;
for (x = 0; x < N; x = x + 1) begin
    assign a[x] = in_data + x;
    assign b[x] = - in_data + x;
end

initial begin
    $timeformat(-9, 2, " ns", 20);
    repeat(REP) @(posedge clk);
    if (in_addr != MAT || out_addr != M1)
        $display("# Error: Couldn't process all input data or produce all output.");
    if (errors > 0)
        $display("\n--\nErrors=%0d\n--\n", errors);
    else 
        $display("\n--\nPASSED!\n--\n");
    $finish;
end

array #(.D_W(D_W), .D_W_ACC(D_W_ACC), .N(N)) 
array_test (
    .clk        (clk),
    .rst        (rst[0]),
    .a          (a),
    .b          (b),
    .initialize (initialize),
    .result     (result)
);

endmodule
