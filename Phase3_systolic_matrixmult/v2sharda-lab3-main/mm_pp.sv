`timescale 1ps / 1ps

module mm_pp
#(
    parameter integer D_W       = 8,      // operand data width
    parameter integer D_W_ACC   = 32,     // accumulator data width
    parameter integer N1        = 4,
    parameter integer N2        = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer MEM_DEPTH_A = 4096,
    parameter integer MEM_DEPTH_B = 4096,
    parameter integer MEM_DEPTH_D = 4096,
//    parameter integer _BLOCK_NUM = 1,
    parameter integer TRANSPOSE_B = 0
)
(
    input  logic                    mm_clk,
    input  logic                    mm_fclk,
    input  logic                    mm_rst_n,
    input  logic signed [31:0]      s_axis_s2mm_tdata_A,
    input  logic        [3:0]       s_axis_s2mm_tkeep_A,
    input  logic                    s_axis_s2mm_tlast_A,
    output logic                    s_axis_s2mm_tready_A,
    input  logic                    s_axis_s2mm_tvalid_A,
    input  logic signed [31:0]      s_axis_s2mm_tdata_B,
    input  logic        [3:0]       s_axis_s2mm_tkeep_B,
    input  logic                    s_axis_s2mm_tlast_B,
    output logic                    s_axis_s2mm_tready_B,
    input  logic                    s_axis_s2mm_tvalid_B,
    output logic signed [31:0]      m_axis_mm2s_tdata,
    output logic                    m_axis_mm2s_tvalid,
    input  logic                    m_axis_mm2s_tready,
    output logic                    m_axis_mm2s_tlast,
    output logic [3:0]              m_axis_mm2s_tkeep,
    input  logic [MATRIXSIZE_W-1:0] BLOCK_NUM,
    input  logic [MATRIXSIZE_W-1:0] BLOCK_WIDTH,    
    input  logic [MATRIXSIZE_W-1:0] BLOCK_WIDTHdN2,
    input  logic [MATRIXSIZE_W-1:0] BLOCK_SIZEdN2,
    input  logic [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1xN2,
    input  logic [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1,
    input  logic [MATRIXSIZE_W-1:0] M2,
    input  logic [MATRIXSIZE_W-1:0] M1xM3dN1,
    input  logic [MATRIXSIZE_W-1:0] M1dN1
    );

localparam integer ADDR_W_A = $clog2(MEM_DEPTH_A);
localparam integer ADDR_W_B = $clog2(MEM_DEPTH_B);
localparam integer ADDR_W_D = $clog2(MEM_DEPTH_D);

logic clk;
logic fclk;
logic rst;

assign clk  = mm_clk;
assign fclk = mm_fclk;
assign rst  = ~mm_rst_n;

logic        [N2-1:0]      init   [N1-1:0];
logic signed [D_W-1:0]     A_bram [N1-1:0];
logic signed [D_W-1:0]     B_bram [N2-1:0];
logic signed [D_W_ACC-1:0] data_D [N1-1:0];
logic        [N1-1:0]      valid_D;

logic      [ADDR_W_A-1:0] rd_addr_A;
logic      [ADDR_W_B-1:0] rd_addr_B;

logic                      done_multiply;
logic                      start_multiply;
logic                      done_read;
logic                      start_multiply_block;
logic                        done_read_control;

s2mm_pp #(
    .D_W       (D_W),
    .N1        (N1),
    .N2        (N2),
    .MATRIXSIZE_W (MATRIXSIZE_W),
    .MEM_DEPTH_A (MEM_DEPTH_A),
    .MEM_DEPTH_B (MEM_DEPTH_B),
    .ADDR_W_A (ADDR_W_A),
    .ADDR_W_B (ADDR_W_B),
    .TRANSPOSE_B (TRANSPOSE_B)
)
s2mm_inst (
    .clk                  (clk),
    .fclk                 (fclk),
    .rst                  (rst),
    .s_axis_s2mm_tdata_A  (s_axis_s2mm_tdata_A),
    .s_axis_s2mm_tkeep_A  (s_axis_s2mm_tkeep_A),
    .s_axis_s2mm_tlast_A  (s_axis_s2mm_tlast_A),
    .s_axis_s2mm_tready_A (s_axis_s2mm_tready_A),
    .s_axis_s2mm_tvalid_A (s_axis_s2mm_tvalid_A),
    .s_axis_s2mm_tdata_B  (s_axis_s2mm_tdata_B),
    .s_axis_s2mm_tkeep_B  (s_axis_s2mm_tkeep_B),
    .s_axis_s2mm_tlast_B  (s_axis_s2mm_tlast_B),
    .s_axis_s2mm_tready_B (s_axis_s2mm_tready_B),
    .s_axis_s2mm_tvalid_B (s_axis_s2mm_tvalid_B),
    .rd_addr_A            (rd_addr_A),
    .rd_addr_B            (rd_addr_B),
    .A_bram               (A_bram),
    .B_bram               (B_bram),
    .BLOCK_NUM (BLOCK_NUM),
    .BLOCK_WIDTHdN2(BLOCK_WIDTHdN2),
    .BLOCK_SIZEdN2 (BLOCK_SIZEdN2 ),

    .M2                   (M2),
    .M1dN1                (M1dN1),
    .done_multiply        (done_multiply),
    .start_multiply       (start_multiply),
    .done_read_control (done_read_control),
    .start_multiply_block (start_multiply_block),
    .done_read            (done_read)
);

mm2s_pp #(
    .D_W_ACC   (D_W_ACC),
    .N1        (N1),
    .N2        (N2),
    .ADDR_W_D (ADDR_W_D),
    .MATRIXSIZE_W (MATRIXSIZE_W),
//    ._BLOCK_NUM(_BLOCK_NUM),
    .MEM_DEPTH_D (MEM_DEPTH_D)
)
mm2s_inst (
    .clk                (clk),
    .fclk               (fclk),
    .rst                (rst),
    .m_axis_mm2s_tdata  (m_axis_mm2s_tdata),
    .m_axis_mm2s_tkeep  (m_axis_mm2s_tkeep),
    .m_axis_mm2s_tlast  (m_axis_mm2s_tlast),
    .m_axis_mm2s_tready (m_axis_mm2s_tready),
    .m_axis_mm2s_tvalid (m_axis_mm2s_tvalid),
    .data_D             (data_D),
    .valid_D            (valid_D),
    .M1dN1              (M1dN1),
    .BLOCK_NUM (BLOCK_NUM),
    .BLOCK_WIDTH (BLOCK_WIDTH),
    .M1xBLOCK_WIDTHdN1(M1xBLOCK_WIDTHdN1),

    .M1xM3dN1           (M1xM3dN1),
    .done_multiply      (done_multiply),
    .done_read_pulse    (done_read)
);

control_pp #(
    .N1     (N1),
    .N2     (N2),
    .MATRIXSIZE_W (MATRIXSIZE_W),
    .ADDR_W_A (ADDR_W_A),
    .ADDR_W_B (ADDR_W_B)
)
control_inst (
    .clk         (clk),
    .rst         (~start_multiply  | start_multiply_block),
    .M2          (M2),
    .M1dN1       (M1dN1),
    .BLOCK_WIDTHdN2(BLOCK_WIDTHdN2),
    .M1xBLOCK_WIDTHdN1xN2 (M1xBLOCK_WIDTHdN1xN2 ),
    .rd_addr_A   (rd_addr_A),
    .rd_addr_B   (rd_addr_B),
    .done_read_control (done_read_control),
    .init        (init)
);

systolic #(
    .D_W     (D_W),
    .D_W_ACC (D_W_ACC),
    .N1      (N1),
    .N2      (N2)
)
systolic_inst (
    .clk     (clk),
    .rst     (~start_multiply | start_multiply_block),
    .init    (init),
    .A       (A_bram),
    .B       (B_bram),
    .D       (data_D),
    .valid_D (valid_D)
);

endmodule
