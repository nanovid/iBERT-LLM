`timescale 1ps / 1ps
`ifdef VERILATOR
module top
`else
module pe_tb
`endif
#(
    parameter FIRST = 0
)
(
`ifdef VERILATOR
    input wire clk,
    input wire rst
`endif
);

localparam integer D_W     = 8;
localparam integer D_W_ACC = 32;
localparam integer M       = 8;

`ifndef VERILATOR
    reg       clk = 0;
    reg [1:0] rst_r = 2'b11;

    wire rst = rst_r[0];
    `ifndef XIL_TIMING
    always #1 clk = ~clk;
    `else
    always #20000 clk = ~clk;
    `endif

    always @(posedge clk) begin
        rst_r <= rst_r >> 1;
    end
`endif

reg                       init;
reg  signed [D_W-1:0]     in_a;
reg  signed [D_W-1:0]     in_b;
wire signed [D_W-1:0]     out_a;
wire signed [D_W-1:0]     out_b;
reg  signed [D_W_ACC-1:0] in_data;
reg                       in_valid;
wire signed [D_W_ACC-1:0] out_data;
wire                      out_valid;

reg  signed [D_W_ACC-1:0] out_memory [M-1:0];
reg         [$clog2(M):0] out_addr;
reg         [$clog2(M):0] errors;
reg         [31:0]        now;

initial begin
    $timeformat(-9, 2, " ns", 20);
    if (FIRST) $readmemh("mem/pe_out_first.mem", out_memory);
    else $readmemh("mem/pe_out.mem", out_memory);
end

always @(posedge clk) begin
    if (~rst) begin
        $display("# Time=%0d | rst=%0d | init=%0d | in_a=%0d | in_b=%0d | out_a=%0d | out_b=%0d | in_data=%0d | in_valid=%0d | out_data=%0d | out_valid=%0d",
            now, rst, init, in_a, in_b, out_a, out_b, in_data, in_valid, out_data, out_valid);
    end
    
    if (rst) begin
        now      <= 0;
        out_addr <= 0;
        errors   <= 0;
        init     <= 0;
        in_a     <= 0;
        in_b     <= 0;
        in_data  <= 0;
        in_valid <= 0;
    end else begin
        now <= now + 1;

        if (^out_valid === 1'bX) begin
            $display("# Error: out_valid signal value is 'x'");
            $finish;
        end

        if (out_valid) begin
            out_addr <= out_addr + 1;
            if (out_memory[out_addr] != out_data || ^out_data === 1'bX) begin
                $display("# Error: Time=%0d, out_data=%0d, true=%0d", $time, out_data, out_memory[out_addr]);
                errors <= errors + 1;
            end
        end

        case (now)
            0: begin
                init     <= 0;
                in_a     <= 0;
                in_b     <= 0;
                in_data  <= 42;
                in_valid <= 0;
            end

            1: begin
                init     <= 0;
                in_a     <= 1;
                in_b     <= 2;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            2: begin
                init     <= 0;
                in_a     <= -3;
                in_b     <= 4;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            3: begin
                init     <= 0;
                in_a     <= 5;
                in_b     <= -6;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            4: begin
                init     <= 0;
                in_a     <= -7;
                in_b     <= -8;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            5: begin
                init     <= 0;
                in_a     <= 9;
                in_b     <= 10;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            6: begin
                init     <= 0;
                in_a     <= 11;
                in_b     <= 12;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            7: begin
                init     <= 0;
                in_a     <= 13;
                in_b     <= 14;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            8: begin
                init     <= 0;
                in_a     <= 15;
                in_b     <= 16;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            9: begin
                init     <= 1;
                in_a     <= 17;
                in_b     <= 18;
                if (FIRST == 0) begin
                    in_data  <= 100;
                    in_valid <= 1;
                end
            end

            10: begin
                init     <= 0;
                in_a     <= 19;
                in_b     <= 20;
                if (FIRST == 0) begin
                    in_data  <= -101;
                    in_valid <= 1;
                end
            end

            11: begin
                init     <= 0;
                in_a     <= 21;
                in_b     <= 22;
                if (FIRST == 0) begin
                    in_data  <= -102;
                    in_valid <= 1;
                end
            end

            12: begin
                init     <= 0;
                in_a     <= 23;
                in_b     <= 24;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            13: begin
                init     <= 0;
                in_a     <= 25;
                in_b     <= 26;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            14: begin
                init     <= 0;
                in_a     <= 27;
                in_b     <= 28;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            15: begin
                init     <= 0;
                in_a     <= 29;
                in_b     <= 30;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            16: begin
                init     <= 0;
                in_a     <= 31;
                in_b     <= 32;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            17: begin
                init     <= 1;
                in_b     <= 32;
                in_a     <= 31;
                if (FIRST == 0) begin
                    in_data  <= 103;
                    in_valid <= 1;
                end
            end

            18: begin
                init     <= 0;
                in_a     <= 31;
                in_b     <= 32;
                if (FIRST == 0) begin
                    in_data  <= 104;
                    in_valid <= 1;
                end
            end

            19: begin
                init     <= 0;
                in_a     <= 31;
                in_b     <= 32;
                if (FIRST == 0) begin
                    in_data  <= 105;
                    in_valid <= 1;
                end
            end

            20: begin
                init     <= 0;
                in_a     <= 31;
                in_b     <= 32;
                if (FIRST == 0) begin
                    in_data  <= 42;
                    in_valid <= 0;
                end
            end

            30: begin
                if (FIRST == 1 & out_addr != 2) begin
                    $display("# Error: Incorrect number of outputs were produced by the module: expected=%0d, produced=%0d.", 2, out_addr);
                end else if (FIRST == 0 & out_addr != M) begin
                    $display("# Error: Incorrect number of outputs were produced by the module: expected=%0d, produced=%0d.", M, out_addr);
                end else begin
                    if (errors > 0)
                        $display("\n--\nErrors=%0d\n--\n", errors);
                    else
                        $display("\n--\nPASSED!\n--\n");
                end
                $finish;
            end

            default;
        endcase 
    end
end

pe
`ifndef XIL_TIMING
#(
    .D_W     ( D_W     ),
    .D_W_ACC ( D_W_ACC )
)
`endif
pe_test (
    .clk        (clk),
    .rst        (rst),
    .init       (init),
    .in_a       (in_a),
    .in_b       (in_b),
    .out_a      (out_a),
    .out_b      (out_b),
    .in_data    (in_data),
    .in_valid   (in_valid),
    .out_data   (out_data),
    .out_valid  (out_valid)
);

`ifdef VERILATOR
    initial begin
        $dumpfile("pe.vcd");
        $dumpvars();
    end
`endif


endmodule
