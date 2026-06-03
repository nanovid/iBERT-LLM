`timescale 1ps / 1ps

module mm_axi_lites_s
#(
    parameter integer MATRIXSIZE_W = 16,
    parameter integer C_S_AXI_ADDR_WIDTH = 8,
    parameter integer C_S_AXI_DATA_WIDTH = 32
)
(
    // axi4 lite slave signals
    input  wire                            ACLK,
    input  wire                            ARESET,
    input  wire                            ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0]   AWADDR,
    input  wire                            AWVALID,
    output wire                            AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0]   WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                            WVALID,
    output wire                            WREADY,
    output wire [1:0]                      BRESP,
    output wire                            BVALID,
    input  wire                            BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0]   ARADDR,
    input  wire                            ARVALID,
    output wire                            ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0]   RDATA,
    output wire [1:0]                      RRESP,
    output wire                            RVALID,
    input  wire                            RREADY,
    // user signals
    // output wire [MATRIXSIZE_W-1:0] a_V,
    // output wire [MATRIXSIZE_W-1:0] b_V,
    // output wire [MATRIXSIZE_W-1:0] c_V,
    // output wire [MATRIXSIZE_W-1:0] d_V,
    // output wire [MATRIXSIZE_W-1:0] e_V,
    // output wire [MATRIXSIZE_W-1:0] f_V,
    // output wire [MATRIXSIZE_W-1:0] g_V,
    // output wire [MATRIXSIZE_W-1:0] h_V,
    // output wire [MATRIXSIZE_W-1:0] i_V,
    // output wire [MATRIXSIZE_W-1:0] j_V,
    // output wire [MATRIXSIZE_W-1:0] k_V,
    // output wire [MATRIXSIZE_W-1:0] l_V
    output reg  [MATRIXSIZE_W-1:0] a_V,
    output reg  [MATRIXSIZE_W-1:0] b_V,
    output reg  [MATRIXSIZE_W-1:0] c_V,
    output reg  [MATRIXSIZE_W-1:0] d_V,
    output reg  [MATRIXSIZE_W-1:0] e_V,
    output reg  [MATRIXSIZE_W-1:0] f_V,
    output reg  [MATRIXSIZE_W-1:0] g_V,
    output reg  [MATRIXSIZE_W-1:0] h_V,
    output reg  [MATRIXSIZE_W-1:0] i_V,
    output reg  [MATRIXSIZE_W-1:0] j_V,
    output reg  [MATRIXSIZE_W-1:0] k_V,
    output reg  [MATRIXSIZE_W-1:0] l_V,
    output reg  [MATRIXSIZE_W-1:0] m_V,
    output reg  [MATRIXSIZE_W-1:0] n_V,
    output reg  [MATRIXSIZE_W-1:0] o_V,
    output reg  [MATRIXSIZE_W-1:0] p_V,
    output reg  [MATRIXSIZE_W-1:0] q_V,
    output reg  [MATRIXSIZE_W-1:0] r_V,
    output reg  [MATRIXSIZE_W-1:0] s_V,
    output reg  [MATRIXSIZE_W-1:0] t_V
);

//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of a_V
//        bit 31~0 - a_V[MATRIXSIZE_W-1:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of b_V
//        bit 31~0 - b_V[MATRIXSIZE_W-1:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of c_V
//        bit 31~0 - c_V[MATRIXSIZE_W-1:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_A_V_DATA_0 = 8'h10,
    ADDR_A_V_CTRL   = 8'h14,
    ADDR_B_V_DATA_0 = 8'h18,
    ADDR_B_V_CTRL   = 8'h1c,
    ADDR_C_V_DATA_0 = 8'h20,
    ADDR_C_V_CTRL   = 8'h24,
    
   
    ADDR_D_V_DATA_0 = 8'h28,
    ADDR_D_V_CTRL   = 8'h2c,
    ADDR_E_V_DATA_0 = 8'h30,
    ADDR_E_V_CTRL   = 8'h34,
    ADDR_F_V_DATA_0 = 8'h38,
    ADDR_F_V_CTRL   = 8'h3c,
    
    
    ADDR_G_V_DATA_0 = 8'h40,
    ADDR_G_V_CTRL   = 8'h44,
    ADDR_H_V_DATA_0 = 8'h48,
    ADDR_H_V_CTRL   = 8'h4c,
    ADDR_I_V_DATA_0 = 8'h50,
    ADDR_I_V_CTRL   = 8'h54,

    ADDR_J_V_DATA_0 = 8'h58,
    ADDR_J_V_CTRL   = 8'h5c,
    ADDR_K_V_DATA_0 = 8'h60,
    ADDR_K_V_CTRL   = 8'h64,
    ADDR_L_V_DATA_0 = 8'h68,
    ADDR_L_V_CTRL   = 8'h6c,

    ADDR_M_V_DATA_0 = 8'h70,
    ADDR_M_V_CTRL   = 8'h74,
    ADDR_N_V_DATA_0 = 8'h78,
    ADDR_N_V_CTRL   = 8'h7c,
    ADDR_O_V_DATA_0 = 8'h80,
    ADDR_O_V_CTRL   = 8'h84,

    ADDR_P_V_DATA_0 = 8'h88,
    ADDR_P_V_CTRL   = 8'h8c,
    ADDR_Q_V_DATA_0 = 8'h90,
    ADDR_Q_V_CTRL   = 8'h94,
    ADDR_R_V_DATA_0 = 8'h98,
    ADDR_R_V_CTRL   = 8'h9c,

    ADDR_S_V_DATA_0 = 8'ha0,
    ADDR_S_V_CTRL   = 8'ha4,
    ADDR_T_V_DATA_0 = 8'ha8,
    ADDR_T_V_CTRL   = 8'hac,

    WRIDLE          = 2'd0,
    WRDATA          = 2'd1,
    WRRESP          = 2'd2,
    WRRESET         = 2'd3,
    RDIDLE          = 2'd0,
    RDDATA          = 2'd1,
    RDRESET         = 2'd2,
    ADDR_BITS       = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [MATRIXSIZE_W-1:0]       wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [MATRIXSIZE_W-1:0]       rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [MATRIXSIZE_W-1:0]              int_a_V = 1;
    reg  [MATRIXSIZE_W-1:0]              int_b_V = 2;
    reg  [MATRIXSIZE_W-1:0]              int_c_V = 3;
    reg  [MATRIXSIZE_W-1:0]              int_d_V = 4;
    reg  [MATRIXSIZE_W-1:0]              int_e_V = 5;
    reg  [MATRIXSIZE_W-1:0]              int_f_V = 6;
    reg  [MATRIXSIZE_W-1:0]              int_g_V = 7;
    reg  [MATRIXSIZE_W-1:0]              int_h_V = 8;
    reg  [MATRIXSIZE_W-1:0]              int_i_V = 9;
    reg  [MATRIXSIZE_W-1:0]              int_j_V = 10;
    reg  [MATRIXSIZE_W-1:0]              int_k_V = 11;
    reg  [MATRIXSIZE_W-1:0]              int_l_V = 12;
    reg  [MATRIXSIZE_W-1:0]              int_m_V = 13;
    reg  [MATRIXSIZE_W-1:0]              int_n_V = 14;
    reg  [MATRIXSIZE_W-1:0]              int_o_V = 15;
    reg  [MATRIXSIZE_W-1:0]              int_p_V = 16;
    reg  [MATRIXSIZE_W-1:0]              int_q_V = 17;
    reg  [MATRIXSIZE_W-1:0]              int_r_V = 18;
    reg  [MATRIXSIZE_W-1:0]              int_s_V = 19;
    reg  [MATRIXSIZE_W-1:0]              int_t_V = 20;
    
//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_A_V_DATA_0: begin
                    rdata <= int_a_V[MATRIXSIZE_W-1:0];
                end
                ADDR_B_V_DATA_0: begin
                    rdata <= int_b_V[MATRIXSIZE_W-1:0];
                end
                ADDR_C_V_DATA_0: begin
                    rdata <= int_c_V[MATRIXSIZE_W-1:0];
                end
	            ADDR_D_V_DATA_0: begin
                    rdata <= int_d_V[MATRIXSIZE_W-1:0];
                end
                ADDR_E_V_DATA_0: begin
                    rdata <= int_e_V[MATRIXSIZE_W-1:0];
                end
                ADDR_F_V_DATA_0: begin
                    rdata <= int_f_V[MATRIXSIZE_W-1:0];
                end
		        ADDR_G_V_DATA_0: begin
                    rdata <= int_g_V[MATRIXSIZE_W-1:0];
                end
                ADDR_H_V_DATA_0: begin
                    rdata <= int_h_V[MATRIXSIZE_W-1:0];
                end
                ADDR_I_V_DATA_0: begin
                    rdata <= int_i_V[MATRIXSIZE_W-1:0];
                end
		        ADDR_J_V_DATA_0: begin
                    rdata <= int_j_V[MATRIXSIZE_W-1:0];
                end
                ADDR_K_V_DATA_0: begin
                    rdata <= int_k_V[MATRIXSIZE_W-1:0];
                end
                ADDR_L_V_DATA_0: begin
                    rdata <= int_l_V[MATRIXSIZE_W-1:0];
                end
                ADDR_M_V_DATA_0: begin
                    rdata <= int_m_V[MATRIXSIZE_W-1:0];
                end
                ADDR_N_V_DATA_0: begin
                    rdata <= int_n_V[MATRIXSIZE_W-1:0];
                end
                ADDR_O_V_DATA_0: begin
                    rdata <= int_o_V[MATRIXSIZE_W-1:0];
                end
                ADDR_P_V_DATA_0: begin
                    rdata <= int_p_V[MATRIXSIZE_W-1:0];
                end
                ADDR_Q_V_DATA_0: begin
                    rdata <= int_q_V[MATRIXSIZE_W-1:0];
                end
                ADDR_R_V_DATA_0: begin
                    rdata <= int_r_V[MATRIXSIZE_W-1:0];
                end
                ADDR_S_V_DATA_0: begin
                    rdata <= int_s_V[MATRIXSIZE_W-1:0];
                end
                ADDR_T_V_DATA_0: begin
                    rdata <= int_t_V[MATRIXSIZE_W-1:0];
                end
	        endcase
        end
    end
end

//------------------------Register logic-----------------
always @(posedge ACLK) begin
    if (ARESET) begin
        a_V <= 0;
        b_V <= 0;
        c_V <= 0;
        d_V <= 0;
        e_V <= 0;
        f_V <= 0;
        g_V <= 0;
        h_V <= 0;
        i_V <= 0;
        j_V <= 0;
        k_V <= 0;
        l_V <= 0;
        m_V <= 0;
        n_V <= 0;
        o_V <= 0;
        p_V <= 0;
        q_V <= 0;
        r_V <= 0;
        s_V <= 0;
        t_V <= 0;
    end else begin
        a_V <= int_a_V;
        b_V <= int_b_V;
        c_V <= int_c_V;
        d_V <= int_d_V;
        e_V <= int_e_V;
        f_V <= int_f_V;
        g_V <= int_g_V;
        h_V <= int_h_V;
        i_V <= int_i_V;
        j_V <= int_j_V;
        k_V <= int_k_V;
        l_V <= int_l_V;
        m_V <= int_m_V;
        n_V <= int_n_V;
        o_V <= int_o_V;
        p_V <= int_p_V;
        q_V <= int_q_V;
        r_V <= int_r_V;
        s_V <= int_s_V;
        t_V <= int_t_V;
    end
end

// assign a_V = int_a_V;
// assign b_V = int_b_V;
// assign c_V = int_c_V;
// assign d_V = int_d_V;
// assign e_V = int_e_V;
// assign f_V = int_f_V;
// assign g_V = int_g_V;
// assign h_V = int_h_V;
// assign i_V = int_i_V;
// assign j_V = int_j_V;
// assign k_V = int_k_V;
// assign l_V = int_l_V;

// we directly read from these registers, in parallel
// not sequentially, through axi lites rddata

// int_a_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_a_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_V_DATA_0)
            int_a_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_a_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_b_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_b_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_V_DATA_0)
            int_b_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_b_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_c_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_c_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_V_DATA_0)
            int_c_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_c_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_d_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_d_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_D_V_DATA_0)
            int_d_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_d_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_e_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_e_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_E_V_DATA_0)
            int_e_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_e_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_f_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_f_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_F_V_DATA_0)
            int_f_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_f_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_g_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_g_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_G_V_DATA_0)
            int_g_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_g_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_h_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_V_DATA_0)
            int_h_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_h_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_i_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_i_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_I_V_DATA_0)
            int_i_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_i_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_j_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_j_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_J_V_DATA_0)
            int_j_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_j_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_k_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_k_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K_V_DATA_0)
            int_k_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_k_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_l_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_l_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_V_DATA_0)
            int_l_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_l_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_m_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_m_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_V_DATA_0)
            int_m_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_m_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_n_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_n_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N_V_DATA_0)
            int_n_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_n_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_o_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_o_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_O_V_DATA_0)
            int_o_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_o_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_p_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_p_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_P_V_DATA_0)
            int_p_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_p_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_q_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_q_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Q_V_DATA_0)
            int_q_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_q_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_r_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R_V_DATA_0)
            int_r_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_r_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_s_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_s_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_V_DATA_0)
            int_s_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_s_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end

// int_t_V[MATRIXSIZE_W-1:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_t_V[MATRIXSIZE_W-1:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_T_V_DATA_0)
            int_t_V[MATRIXSIZE_W-1:0] <= (WDATA[MATRIXSIZE_W-1:0] & wmask) | (int_t_V[MATRIXSIZE_W-1:0] & ~wmask);
    end
end
//------------------------Memory logic-------------------

endmodule
