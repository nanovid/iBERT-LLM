`timescale 1ps / 1ps

`ifdef VERILATOR
    module top
`else
    module mem_addr_tb
`endif
#(
    parameter integer M1        = 8,
    parameter integer M2        = 8,
    parameter integer M3        = 8,
    parameter integer N1        = 4,
    parameter integer N2        = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer MEM_DEPTH = 4096,
    parameter integer BLOCK_NUM = 1
)
(
    `ifdef VERILATOR
    input wire clk,
    input wire rst
    `endif
);

localparam integer REP    = 2*M1*M2*M3;
localparam integer ADDR_W = $clog2(MEM_DEPTH);

localparam [MATRIXSIZE_W-1:0] _M2    = M2;
localparam [MATRIXSIZE_W-1:0] _M3    = M3;
localparam [MATRIXSIZE_W-1:0] _M1dN1 = M1/N1;
localparam [MATRIXSIZE_W-1:0] _M3dN2 = M3/N2;
localparam [MATRIXSIZE_W-1:0] BLOCK_WIDTHdN2 = (M3/BLOCK_NUM)/N2;
localparam [MATRIXSIZE_W-1:0] BLOCK_WIDTH = M3/BLOCK_NUM;
localparam [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1 = M1*(M3/BLOCK_NUM)/N1;

`ifdef MEM_A
localparam MAT = M1*M2;
localparam N   = N1;
`elsif MEM_B
localparam MAT = M2*M3;
localparam N   = N2;
`elsif MEM_D
localparam MAT = M1*M3;
localparam N   = N1;
`endif

`ifndef VERILATOR
    reg       clk  = 1'b0;
    reg [1:0] rst_r  = 2'b11;
    wire rst = rst_r;
    `ifndef XIL_TIMING
    always #1 clk = ~clk;
    `else
    always #50000 clk = ~clk;
    `endif

    always @(posedge clk) begin
        rst_r <= rst_r >> 1;
    end
`endif

reg  [$clog2(MAT)-1:0] in_cntr;
reg                    in_valid;
reg                    out_valid;
wire [ADDR_W-1:0]      dut_addr;
wire [N-1:0]           dut_activate;

reg  [ADDR_W-1:0] addr_mem     [0:MAT-1];
reg  [N-1:0]      activate_mem [0:MAT-1];
reg  [ADDR_W-1:0] addr;
reg               last;
reg  [ADDR_W-1:0] errors;

initial begin
    if ((M1==32 && M2==16 && M3==8 && N1==8 && N2==4) && BLOCK_NUM == 1) begin
        `ifdef MEM_A
        $readmemh("mem/A_32_16_8_8_4.mem", addr_mem);
        $readmemh("mem/A_activate_32_16_8_8_4.mem", activate_mem);
        `elsif MEM_B
        $readmemh("mem/B_32_16_8_8_4.mem", addr_mem);
        $readmemh("mem/B_activate_32_16_8_8_4.mem", activate_mem);
        `elsif MEM_D
        $readmemh("mem/D_32_16_8_8_4.mem", addr_mem);
        $readmemh("mem/D_activate_32_16_8_8_4.mem", activate_mem);
        `endif
    end else if (M1==8 && M2==8 && M3==8 && N1==4 && N2==4 && (BLOCK_NUM == 2 || BLOCK_NUM == 1)) begin
        `ifdef MEM_A
        $readmemh("mem/A_8_4.mem", addr_mem);
        $readmemh("mem/A_activate_8_4.mem", activate_mem);
        `elsif MEM_B
        if (BLOCK_NUM > 1) begin
        $readmemh("mem/B_8_4_pp.mem", addr_mem);
        $readmemh("mem/B_activate_8_4_pp.mem", activate_mem);
        end else begin
        $readmemh("mem/B_8_4.mem", addr_mem);
        $readmemh("mem/B_activate_8_4.mem", activate_mem);
        end
        `elsif MEM_D
        if (BLOCK_NUM > 1) begin
        $readmemh("mem/D_8_4_pp.mem", addr_mem);
        $readmemh("mem/D_activate_8_4_pp.mem", activate_mem);
        end else begin
        $readmemh("mem/D_8_4.mem", addr_mem);
        $readmemh("mem/D_activate_8_4.mem", activate_mem);
        end
        `endif
    end else if ((M1==4 && M2==4 && M3==4 && N1==4 && N2==4) && BLOCK_NUM == 1) begin
        `ifdef MEM_A
        $readmemh("mem/A_4_4.mem", addr_mem);
        $readmemh("mem/A_activate_4_4.mem", activate_mem);
        `elsif MEM_B
        $readmemh("mem/B_4_4.mem", addr_mem);
        $readmemh("mem/B_activate_4_4.mem", activate_mem);
        `elsif MEM_D
        $readmemh("mem/D_4_4.mem", addr_mem);
        $readmemh("mem/D_activate_4_4.mem", activate_mem);
        `endif
    end else if ((M1==32 && M2==768 && M3==64 && N1==8 && N2==8) && BLOCK_NUM == 8) begin
        `ifdef MEM_B
        $readmemh("mem/B_attn_pp.mem", addr_mem);
        $readmemh("mem/B_activate_attn_pp.mem", activate_mem);
        `elsif MEM_D
        $readmemh("mem/D_attn_pp.mem", addr_mem);
        $readmemh("mem/D_activate_attn_pp.mem", activate_mem);
        `endif
    end else if ((M1==16 && M2==16 && M3==16 && N1==4 && N2==4) && BLOCK_NUM == 2) begin
        `ifdef MEM_B
        $readmemh("mem/B_16_4_pp.mem", addr_mem);
        $readmemh("mem/B_activate_16_4_pp.mem", activate_mem);
        `elsif MEM_D
        $readmemh("mem/D_16_4_pp.mem", addr_mem);
        $readmemh("mem/D_activate_16_4_pp.mem", activate_mem);
        `endif
    end else begin
        if (BLOCK_NUM > 1) begin
                $display("Error: use one of the predefined test case dimensions: M=8 N=4 BLOCKS=2, M=16 N=4 BLOCKS=2, M1=32 M2=768 M3=64 N1=8 N2=8 BLOCKS=8");
            end else $display("Error: use one of the predefined test case dimensions: M=4 N=4, M=8 N=4, M1=32 M2=16 M3=8 N1=8 N2=4");
            $finish;
        end
end

always @(posedge clk) begin
    if (rst) begin
        in_cntr  <= 0;
        in_valid <= 0;
    end else begin
        in_cntr  <= in_cntr + 1;
        in_valid <= (in_cntr <= MAT-1) ? 1 : 0;
    end
end

always @(posedge clk) begin
    if (rst) begin
        addr   <= 0;
        last   <= 0;
        errors <= 0;
        out_valid <= 0;
    end else begin
        out_valid <= in_valid;
        last <= (addr == MAT-2);
        if (out_valid && ~last) begin
            $display("# valid = %0d | Time=%0d | addr=%0d | activate=%b", in_valid, $time, dut_addr, dut_activate);
            addr <= (addr == MAT-1) ? 0 : addr + 1;
            if (addr_mem[addr] != dut_addr || ^dut_addr === 1'bX || activate_mem[addr] != dut_activate || ^dut_activate === 1'bX) begin
                $display("# Error: Time=%0d, addr=%0d, true_addr=%0d, activate=%b, true_activate=%b", $time, dut_addr, addr_mem[addr], dut_activate, activate_mem[addr]);
                errors <= errors +1;
            end
        end
    end
end

always @(posedge clk) begin
    if (last) begin
        if (errors > 0)
            $display("\n--\nErrors=%0d\n--\n", errors);
        else
            $display("\n--\nPASSED!\n--\n");
        $finish;
    end
end

initial begin
    $timeformat(-9, 2, "ns", 20);
    repeat(REP) @(posedge clk);
    $display("# Error: Why did I reach the end?");
    $finish;
end


`ifdef MEM_A
mem_write_A
`ifndef XIL_TIMING
#(
    .N1     ( N1     ),
    .MATRIXSIZE_W  ( MATRIXSIZE_W  ),
    .ADDR_W ( ADDR_W )
)
`endif
mem_write_A_test (
    .clk        ( clk          ),
    .rst        ( rst       ),
    .M2         ( _M2          ),
    .M1dN1      ( _M1dN1       ),
    .valid_A    ( in_valid     ),
    .wr_addr_A  ( dut_addr     ),
    .activate_A ( dut_activate )
);
`elsif MEM_B
`ifdef PING_PONG
mem_write_B_pp
`else
mem_write_B
`endif
`ifndef XIL_TIMING
#(
    .N2     ( N2     ),
    .MATRIXSIZE_W  ( MATRIXSIZE_W  ),
    .ADDR_W ( ADDR_W )
)
`endif
mem_write_B_test (
    .clk        ( clk          ),
    .rst        ( rst       ),
    .M2         ( _M2          ),
`ifdef PING_PONG
    .BLOCK_WIDTHdN2      ( BLOCK_WIDTHdN2       ),
    .BLOCK_NUM  ( BLOCK_NUM[MATRIXSIZE_W-1:0]    ),
`else
    .M3dN2      ( _M3dN2       ),
`endif
    .valid_B    ( in_valid     ),
    .wr_addr_B  ( dut_addr     ),
    .activate_B ( dut_activate )
);
`elsif MEM_D
`ifdef PING_PONG
mem_read_D_pp
`else
mem_read_D
`endif
`ifndef XIL_TIMING
#(
    .N1     ( N1     ),
    .N2     ( N2     ),
    .MATRIXSIZE_W  ( MATRIXSIZE_W  ),
    .ADDR_W ( ADDR_W )
)
`endif
mem_read_D_test (
    .clk        ( clk          ),
    .rst        ( rst       ),
`ifdef PING_PONG
    .BLOCK_NUM  (BLOCK_NUM[MATRIXSIZE_W-1:0]),
    .BLOCK_WIDTH(BLOCK_WIDTH),
    .M1xBLOCK_WIDTHdN1(M1xBLOCK_WIDTHdN1),
    .block_index(),
`else
    .M3         ( _M3          ),
`endif
    .M1dN1      ( _M1dN1       ),
    .valid_D    ( in_valid     ),
    .rd_addr_D  ( dut_addr     ),
    .activate_D ( dut_activate )
);
`endif

`ifdef VERILATOR
    initial begin
        $dumpfile("mem_addr.vcd");
        $dumpvars();
    end
`endif

endmodule
