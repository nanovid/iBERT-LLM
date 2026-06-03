`timescale 1ps / 1ps

`ifdef VERILATOR
    module top
`else
    module softmax_tb
`endif
#(
    parameter integer D_W      = 8,
    parameter integer D_W_ACC  = 32,
    parameter integer N        = 32,
    parameter integer H        = 12,
    parameter integer L        = 12,
    parameter integer FP_BITS  = 30,
    parameter integer MAX_BITS = 30,
    parameter integer OUT_BITS = 6,
    parameter integer DUMP_VCD = 0,
    parameter integer DUMP_FST = 0
)
(
    `ifdef VERILATOR
    input wire clk,
    input wire rst
    `endif
);

localparam integer ALL = N * N * 1 * 1;     // one layer, one head
localparam integer SIM = ALL;
// localparam integer SIM = 3 * M1;            // simulate only 3 rows for easier debug
localparam integer REP = SIM * 3;

`ifndef VERILATOR

  logic       clk = 1'b0;
  logic [1:0] rst_r = 2'b11;
  logic       rst;

  `ifndef XIL_TIMING
   always #10000 clk = ~clk;
  `else
   always #50000 clk = ~clk;
  `endif

  always_ff @(posedge clk) begin
    rst_r <= rst_r >> 1;
  end
  assign rst = rst_r[0]; 

`endif

logic                      in_v;
logic signed [D_W_ACC-1:0] qin;
logic signed [D_W_ACC-1:0] qb;
logic signed [D_W_ACC-1:0] qc;
logic signed [D_W_ACC-1:0] qln2;
logic signed [D_W_ACC-1:0] qln2_inv;
logic        [D_W_ACC-1:0] Sreq;
logic                      out_v;
logic                      out_ready;
logic signed [D_W-1:0]     qout;

logic signed [D_W_ACC-1:0]   in_memory  [ALL-1:0];
logic signed [D_W-1:0]       out_memory [ALL-1:0];
logic        [$clog2(ALL):0] in_addr;
logic        [$clog2(ALL):0] out_addr;
logic        [$clog2(ALL):0] errors;

initial begin
    if (N == 64) begin
        $readmemh("data/softmax/softmax_in.mem", in_memory);
        $readmemh("data/softmax/softmax_out.mem", out_memory);
    end else if (N == 32) begin
        $readmemh("data32/softmax/softmax_in.mem", in_memory);
        $readmemh("data32/softmax/softmax_out.mem", out_memory);
    end
end

always_ff @(posedge clk) begin
    if (rst) begin
        in_addr <= 0;
        out_addr <= 0;
        in_v <= 0;
        out_ready <= 1;
        qin <= 0;
        qb <= 0;
        qc <= 0;
        qln2 <= 0;
        qln2_inv <= 0;
        Sreq <= 0;
        errors <= 0;
    end else begin
        if (in_addr <= SIM-1) begin
            in_addr <= in_addr + 1;
            in_v <= 1;
            qin <= in_memory[in_addr];
        end else begin
            in_v <= 0;
        end

        // layer0 coefs
        qb       <= 1874;
        qc       <= 1338211;
        qln2     <= -480;
        qln2_inv <= -2236963;
        Sreq     <= 26291085;

        if (out_v) begin
            out_addr <= out_addr + 1;
            out_ready <= (out_addr == SIM -1)? 0 : 1;
            // $display("# Time=%0d, out_cntr=%0d, qout=%0d, true=%0d", $time, out_addr, qout, out_memory[out_addr]);
            if (out_memory[out_addr] != qout || ^qout === 1'bX) begin
                //$display("# Error: Time=%0d, out_cntr=%0d, qout=%0d, true=%0d, qin=%0d" , $time, out_addr, qout, out_memory[out_addr], qin);
                $display("# Error: Time=%0d, out_cntr=%0d, qout=%0d, true=%0d" , $time, out_addr, qout, out_memory[out_addr]);
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

softmax
`ifndef XIL_TIMING
#(
    .D_W      ( D_W      ),
    .D_W_ACC  ( D_W_ACC  ),
    .N        ( N        ),
    .FP_BITS  ( FP_BITS  ),
    .MAX_BITS ( MAX_BITS ),
    .OUT_BITS ( OUT_BITS )
)
`endif
softmax_test
(
    .clk       ( clk    ),
    .rst       ( rst    ),
    .in_valid  ( in_v   ),
    .enable    ( out_ready | ~out_v    ),
    .qin       ( qin    ),
    .qb        ( qb ),
    .qc        ( qc ),
    .qln2      ( qln2 ),
    .qln2_inv  ( qln2_inv ),
    .Sreq      ( Sreq ),
    .out_valid ( out_v  ),
    .qout      ( qout   )
);


initial begin
    if (DUMP_VCD) begin
        $dumpfile("softmax.vcd");
        $dumpvars(0,softmax_tb);
    end
    if (DUMP_FST) begin
        $dumpfile("softmax.fst");
        $dumpvars(0,softmax_tb);
    end
end


endmodule

