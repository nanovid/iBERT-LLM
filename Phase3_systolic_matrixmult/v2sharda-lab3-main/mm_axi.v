`timescale 1ps / 1ps

module mm_axi
#(
    parameter integer N1 = 4,
    parameter integer N2 = 4,
    parameter integer MATRIXSIZE_W = 32,
    parameter integer MEM_DEPTH_A = 4096,
    parameter integer MEM_DEPTH_B = 4096,
    parameter integer MEM_DEPTH_D = 4096,
    parameter integer TRANSPOSE_B = 0,
    //parameter integer _BLOCK_NUM = 4,

    parameter integer C_S_AXI_AXILITES_DATA_WIDTH = 32,
    parameter integer C_S_AXI_AXILITES_ADDR_WIDTH = 8,
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8),
    parameter integer C_S_AXI_WSTRB_WIDTH = (32 / 8)
)
(
    input wire         clk,
    input wire         fclk,
    input wire         rst_n,
	// incoming stream
    (* mark_debug = "true" *) input  wire [31:0] x_TDATA,
    (* mark_debug = "true" *) input  wire        x_TVALID,
    (* mark_debug = "true" *) output wire        x_TREADY,
    (* mark_debug = "true" *) input  wire [0:0]  x_TLAST,
	// outgoing stream
    (* mark_debug = "true" *) output wire [31:0] y_TDATA,
    (* mark_debug = "true" *) output wire        y_TVALID,
    (* mark_debug = "true" *) input  wire        y_TREADY,
    (* mark_debug = "true" *) output wire [0:0]  y_TLAST,
    // axi lites signals
    input  wire                                      s_axi_AXILiteS_AWVALID,
    output wire                                      s_axi_AXILiteS_AWREADY,
    input  wire [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0]  s_axi_AXILiteS_AWADDR,
    input  wire                                      s_axi_AXILiteS_WVALID,
    output wire                                      s_axi_AXILiteS_WREADY,
    input  wire [C_S_AXI_AXILITES_DATA_WIDTH - 1:0]  s_axi_AXILiteS_WDATA,
    input  wire [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB,
    input  wire                                      s_axi_AXILiteS_ARVALID,
    output wire                                      s_axi_AXILiteS_ARREADY,
    input  wire [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0]  s_axi_AXILiteS_ARADDR,
    output wire                                      s_axi_AXILiteS_RVALID,
    input  wire                                      s_axi_AXILiteS_RREADY,
    output wire [C_S_AXI_AXILITES_DATA_WIDTH - 1:0]  s_axi_AXILiteS_RDATA,
    output wire [1:0]                                s_axi_AXILiteS_RRESP,
    output wire                                      s_axi_AXILiteS_BVALID,
    input  wire                                      s_axi_AXILiteS_BREADY,
    output wire [1:0]                                s_axi_AXILiteS_BRESP
);

wire [MATRIXSIZE_W-1:0] M1;
wire [MATRIXSIZE_W-1:0] M2;
wire [MATRIXSIZE_W-1:0] M3;
wire [MATRIXSIZE_W-1:0] M1xM2;
wire [MATRIXSIZE_W-1:0] M2xM3;
wire [MATRIXSIZE_W-1:0] M1xM2dN1;
wire [MATRIXSIZE_W-1:0] M1xM3;
wire [MATRIXSIZE_W-1:0] M1xM3dN1;
wire [MATRIXSIZE_W-1:0] M1dN1;
wire [MATRIXSIZE_W-1:0] M3dN2;
wire [MATRIXSIZE_W-1:0] M1xM3dN1xN2;
wire [MATRIXSIZE_W-1:0] M1xM2pM2xM3;

wire [MATRIXSIZE_W-1:0] BLOCK_WIDTH;
wire [MATRIXSIZE_W-1:0] BLOCK_SIZE;
wire [MATRIXSIZE_W-1:0] BLOCK_WIDTHdN2;
wire [MATRIXSIZE_W-1:0] BLOCK_SIZEdN2;
wire [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1xN2;
wire [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1;
wire [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTH;
wire [MATRIXSIZE_W-1:0] BLOCK_NUM;

reg [31:0] a_TDATA;
reg  a_TVALID;
reg  a_TLAST;
wire a_TREADY;
reg [31:0] b_TDATA;
reg  b_TVALID;
reg  b_TLAST;
wire b_TREADY;
reg [MATRIXSIZE_W-1:0] rdaddr;
reg x_TREADY_r = 1;

assign x_TREADY = a_TREADY | b_TREADY;
// assign x_TREADY = x_TREADY_r;

// initial begin
//     $monitor("# time=%0d, x_TREADY=%b", $time, x_TREADY);
//     $monitor("# time=%0d, y_TVALID=%b", $time, y_TVALID);
// end

always @(posedge clk) begin
    if (~rst_n) begin
        rdaddr <= 0;
        a_TDATA <= 0;
        a_TVALID <= 0;
        a_TLAST <= 0;
        b_TDATA <= 0;
        b_TVALID <= 0;
        b_TLAST <= 0;
        x_TREADY_r <= 1;
    end else begin
        a_TVALID <= 0;
        a_TLAST <= 0;
        b_TVALID <= 0;
        b_TLAST <= 0;
        a_TDATA <= x_TDATA;
        b_TDATA <= x_TDATA;
        // x_TREADY_r <= 0;

        if (x_TVALID) begin
            if (rdaddr == M1xM2-1) begin
                a_TLAST <= 1;
            end
            if ((rdaddr == M1xM2pM2xM3-1) && !b_TLAST) begin
                b_TLAST <= 1;
            end
            if (rdaddr < M1xM2) begin
                a_TVALID <= 1;
                if (a_TREADY) begin
                    rdaddr <= rdaddr + 1;
                    x_TREADY_r <= 1;
                end
            end else if (rdaddr < M1xM2pM2xM3) begin
                b_TVALID <= 1;
                if (b_TREADY) begin
                    rdaddr <= rdaddr + 1;
                    x_TREADY_r <= 1;
                end
            end
        end
    end
end

mm_axi_lites_s #(
    .MATRIXSIZE_W             ( MATRIXSIZE_W ),
    .C_S_AXI_ADDR_WIDTH ( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH ( C_S_AXI_AXILITES_DATA_WIDTH )
)
mm_axi_lites_s_U (
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(clk),
    .ARESET(~rst_n),
    .ACLK_EN(1'b1),

    .a_V(M1),
    .b_V(M2),
    .c_V(M3),
    .d_V(M1xM2),
    .e_V(M2xM3),
    .f_V(M1xM2dN1),
    .g_V(M1xM3),
    .h_V(M1xM3dN1),
    .i_V(M1dN1),
    .j_V(M3dN2),
    .k_V(M1xM3dN1xN2),
    .l_V(M1xM2pM2xM3),
    .m_V(BLOCK_WIDTH),
    .n_V(BLOCK_SIZE),
    .o_V(BLOCK_WIDTHdN2),
    .p_V(BLOCK_SIZEdN2),
    .q_V(M1xBLOCK_WIDTHdN1xN2),
    .r_V(M1xBLOCK_WIDTHdN1),
    .s_V(M1xBLOCK_WIDTH),
    .t_V(BLOCK_NUM)
);



`ifdef PING_PONG
mm_pp
`ifndef XIL_TIMING
#(
    .D_W       (8),
    .D_W_ACC   (32),
    .N1        (N1),
    .N2        (N2),
    .MATRIXSIZE_W (MATRIXSIZE_W),
    .TRANSPOSE_B (TRANSPOSE_B),
    .MEM_DEPTH_A (MEM_DEPTH_A),
    .MEM_DEPTH_B (MEM_DEPTH_B),
    //._BLOCK_NUM(_BLOCK_NUM),
    .MEM_DEPTH_D (MEM_DEPTH_D)
)
`endif
mm_pp_inst (
    .mm_clk                (clk),
    .mm_fclk               (clk),
    .mm_rst_n              (rst_n),

    .s_axis_s2mm_tvalid_A  (a_TVALID),
    .s_axis_s2mm_tdata_A   (a_TDATA),
    .s_axis_s2mm_tkeep_A   (),
    .s_axis_s2mm_tlast_A   (a_TLAST),
    .s_axis_s2mm_tready_A  (a_TREADY),

    .s_axis_s2mm_tvalid_B  (b_TVALID),
    .s_axis_s2mm_tdata_B   (b_TDATA),
    .s_axis_s2mm_tkeep_B   (),
    .s_axis_s2mm_tlast_B   (b_TLAST),
    .s_axis_s2mm_tready_B  (b_TREADY),

    .m_axis_mm2s_tvalid    (y_TVALID),
    .m_axis_mm2s_tdata     (y_TDATA),
    .m_axis_mm2s_tkeep     (),
    .m_axis_mm2s_tlast     (y_TLAST),
    .m_axis_mm2s_tready    (y_TREADY),

    				///*
    .BLOCK_NUM (BLOCK_NUM),
    .BLOCK_WIDTH (BLOCK_WIDTH),
    .BLOCK_WIDTHdN2(BLOCK_WIDTHdN2),
    .M1xBLOCK_WIDTHdN1xN2(M1xBLOCK_WIDTHdN1xN2),
    .BLOCK_SIZEdN2 (BLOCK_SIZEdN2 ),
    .M1xBLOCK_WIDTHdN1(M1xBLOCK_WIDTHdN1),
				///*

    .M2                    (M2),
    .M1xM3dN1              (M1xM3dN1),
    .M1dN1                 (M1dN1)
);
`else
mm
`ifndef XIL_TIMING
#(
    .D_W       (8),
    .D_W_ACC   (32),
    .N1        (N1),
    .N2        (N2),
    .MATRIXSIZE_W (MATRIXSIZE_W),
    .TRANSPOSE_B (TRANSPOSE_B),
    .MEM_DEPTH_A (MEM_DEPTH_A),
    .MEM_DEPTH_B (MEM_DEPTH_B),
    .MEM_DEPTH_D (MEM_DEPTH_D)
)
`endif
mm_inst (
    .mm_clk                (clk),
    .mm_fclk               (clk),
    .mm_rst_n              (rst_n),

    .s_axis_s2mm_tvalid_A  (a_TVALID),
    .s_axis_s2mm_tdata_A   (a_TDATA),
    .s_axis_s2mm_tkeep_A   (),
    .s_axis_s2mm_tlast_A   (a_TLAST),
    .s_axis_s2mm_tready_A  (a_TREADY),

    .s_axis_s2mm_tvalid_B  (b_TVALID),
    .s_axis_s2mm_tdata_B   (b_TDATA),
    .s_axis_s2mm_tkeep_B   (),
    .s_axis_s2mm_tlast_B   (b_TLAST),
    .s_axis_s2mm_tready_B  (b_TREADY),

    .m_axis_mm2s_tvalid    (y_TVALID),
    .m_axis_mm2s_tdata     (y_TDATA),
    .m_axis_mm2s_tkeep     (),
    .m_axis_mm2s_tlast     (y_TLAST),
    .m_axis_mm2s_tready    (y_TREADY),


    // .M1                    (_M1),
    .M2                    (M2),
    .M3                    (M3),
    // .M1xM2                 (_M1xM2),
    // .M2xM3                 (_M2xM3),
    // .M1xM2dN1              (_M1xM2dN1),
    // .M1xM3                 (_M1xM3),
    .M1xM3dN1              (M1xM3dN1),
    .M1dN1                 (M1dN1),
    .M3dN2                 (M3dN2),
    .M1xM3dN1xN2           (M1xM3dN1xN2)
);
`endif

endmodule

