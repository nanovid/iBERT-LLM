`timescale 1ps / 1ps

`ifdef VERILATOR
    module top
`else
    module layer_norm_tb
`endif
#(
    parameter integer       D_W      = 8,
    parameter integer       D_W_ACC  = 32,
    parameter integer       M1       = 32,
    parameter integer       N        = 768,
    parameter [D_W_ACC-1:0] N_INV    = 1398101,
    parameter integer       FP_BITS  = 30,
    parameter integer       MAX_BITS = 31,
    parameter integer       DUMP_VCD = 0,
    parameter integer       DUMP_FST = 0
)
(
    `ifdef VERILATOR
    input wire clk,
    input wire rst
    `endif
);

localparam integer ALL = M1 * N;
localparam integer SIM = ALL;
// localparam integer SIM = 2 * N;
localparam integer REP = SIM * 2;

`ifndef VERILATOR
  reg       clk = 1'b0;
  reg [1:0] rst_r = 2'b11;
  logic rst;

  `ifndef XIL_TIMING
   always #10000 clk = ~clk;
  `else
   always #50000 clk = ~clk;
  `endif

  always @(posedge clk) begin
    rst_r <= rst_r >> 1;
  end
  assign rst = rst_r[0];

`endif

reg                       in_v;
reg  signed [D_W_ACC-1:0] qin;
reg  signed [D_W_ACC-1:0] bias;
reg [$clog2(D_W_ACC)-1:0] shift;
wire                      out_v;
reg                       out_ready;
wire signed [D_W_ACC-1:0] qout;

reg signed  [D_W_ACC-1:0] in_memory   [ALL-1:0];
reg signed  [D_W_ACC-1:0] out_memory  [ALL-1:0];
reg signed  [D_W_ACC-1:0] bias_memory [N-1:0];
reg       [$clog2(ALL):0] in_addr;
reg       [$clog2(ALL):0] out_addr;
reg         [$clog2(N):0] bias_addr;
reg       [$clog2(ALL):0] errors;

initial begin
    $readmemh("data/layer_norm/layer_norm_in.mem", in_memory);
    $readmemh("data/layer_norm/layer_norm_out.mem", out_memory);
end

initial begin
    $readmemh("data/layer_norm/ln_bias.mem", bias_memory);
end

int counter = 0;
always @(posedge clk) begin
    counter <= counter + 1;
end

always @(posedge clk) begin
    if (rst) begin
        in_addr <= 0;
        out_addr <= 0;
        in_v <= 0;
        out_ready <= 1;
        qin <= 0;
        bias <= 0;
        bias_addr <= 0;
        shift <= 0;
        errors <= 0;
    end else begin
        if (in_addr <= SIM-1) begin
            in_v <= 1;
            in_addr <= in_addr + 1;
            bias_addr <= bias_addr + 1;
            if (bias_addr == N-1) begin
                bias_addr <= 0;
            end
            qin <= in_memory[in_addr];
            bias <= bias_memory[bias_addr];
        end else begin
            in_v <= 0;
        end
        
        shift <= 6;

        if (out_v) begin
            out_addr <= out_addr + 1;
            out_ready <= (out_addr == SIM -1)? 0 : 1;
            // $display("# Time=%0d, out_cntr=%0d, qout=%0d, true=%0d", counter, out_addr, qout, out_memory[out_addr]);
            if (out_memory[out_addr] != qout || ^qout === 1'bX) begin
                $display("# Error: Time=%0d, out_cntr=%0d, qout=%0d, true=%0d", counter, out_addr, qout, out_memory[out_addr]);
                errors <= errors + 1;
            end
        end
    end
end

initial begin
    $timeformat(-9, 2, " ns", 20);
    repeat(REP) @(posedge clk);
    if (out_addr != SIM) begin
        $display("# Error: Incorrect number of outputs were produced by the module: given inputs=%0d, produced outputs=%0d.", in_addr, out_addr);
    end else begin
        if (errors > 0)
            $display("\n--\nErrors: %0d out of %0d\n--\n", errors, SIM);
        else
            $display("\n--\nPASSED!\n--\n");
    end
    $finish;
end

layer_norm
`ifndef XIL_TIMING
#(
    .D_W      ( D_W      ),
    .D_W_ACC  ( D_W_ACC  ),
    .N        ( N        ),
    .N_INV    ( N_INV    ),
    .FP_BITS  ( FP_BITS  ),
    .MAX_BITS ( MAX_BITS )
)
`endif
layer_norm_test (
    .clk       ( clk    ),
    .rst       ( rst    ),
    .in_valid  ( in_v   ), 
    .enable    ( out_ready | ~out_v),
    .qin       ( qin    ),
    .bias      ( bias   ),
    .shift     ( shift  ),
    .out_valid ( out_v  ),
    .qout      ( qout   )
);

initial begin
    if (DUMP_VCD) begin
        $dumpfile("ln.vcd");
        $dumpvars(0,layer_norm_tb);
    end
    if (DUMP_FST) begin
        $dumpfile("ln.fst");
        $dumpvars(0,layer_norm_tb);
    end
end

endmodule
