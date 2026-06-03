`timescale 1ps / 1ps

module mm2s_pp
#(
    parameter integer D_W_ACC = 32,
    parameter integer N1 = 4,
    parameter integer N2 = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer ADDR_W_D = 12,
    parameter integer _BLOCK_NUM = 1,
    parameter integer MEM_DEPTH_D = 4096
)
(
    input  logic                           clk,
    input  logic                           fclk,
    input  logic                           rst,
    output logic signed [31:0]             m_axis_mm2s_tdata,
    output logic        [3:0]              m_axis_mm2s_tkeep,
    output logic                            m_axis_mm2s_tlast,
    input  logic                           m_axis_mm2s_tready,
    output logic                           m_axis_mm2s_tvalid,
    
    input  logic        [N1-1:0]           valid_D,
    input  logic signed [D_W_ACC-1:0]      data_D [N1-1:0],

    input  logic [MATRIXSIZE_W-1:0] BLOCK_NUM,
    input  logic [MATRIXSIZE_W-1:0] BLOCK_WIDTH,
    input  logic [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1,

    input  logic	       [MATRIXSIZE_W-1:0] M1dN1,
    input  logic        [MATRIXSIZE_W-1:0] M1xM3dN1,

    output logic                            done_multiply,
    output logic                            done_read_pulse
);

logic start_read;
logic done_sync_wait;
logic [3:0] done_read_sync;
logic [1:0] done_multiply_sync;
logic rd_addr_D_valid;
logic reg_rd_addr_D_valid;
logic rd_data_bram_valid;
logic [N1+1:0] last_beat;

logic        [ADDR_W_D-1:0]   wr_addr_D_bram         [N1-1:0];
logic        [ADDR_W_D-1:0]   rd_addr_D;

logic        [N1-1:0]       wr_en_D_bram;
logic signed [D_W_ACC-1:0]  wr_data_D_bram         [N1-1:0];
logic signed [D_W_ACC-1:0]  rd_data_D_bram         [N1-1:0];

logic         [N1-1:0]       reg_banked_valid_D;
logic  signed [D_W_ACC-1:0]  reg_banked_data_D      [N1-1:0];
logic         [ADDR_W_D-1:0] reg_banked_read_addr_D [N1-1:0];
logic         [N1-1:0]       reg_banked_activate_D  [N1-1:0];

logic        [N1-1:0]       activate_D;
logic         [N1-1:0]       activate_D_reg;
logic [MATRIXSIZE_W-1:0] block_index, block_index_r, block_index_r_r;
// D management
genvar x;
for (x = 0; x < N1; x = x + 1) begin: ram_D
    mem #(
        .WIDTH ( D_W_ACC     ),
        .DEPTH ( MEM_DEPTH_D )
    )
    write_ram_D (
        .rst   ( rst                         ),
        .clkA  ( fclk                        ),
        .clkB  ( clk                         ),
        .weA   ( 1'b1                        ),
        .enA   ( wr_en_D_bram[x]             ),
        .enB   ( reg_banked_activate_D[x][x] ),
        .addrA ( wr_addr_D_bram[x]           ),
        .addrB ( reg_banked_read_addr_D[x]   ),
        .dinA  ( wr_data_D_bram[x]           ),
        .doutB ( rd_data_D_bram[x]           )
    );

    always_ff @(posedge clk) begin
        if (m_axis_mm2s_tready) begin
            activate_D_reg[x] <= reg_banked_activate_D[x][x];
            if (x==N1-1) begin
                reg_banked_data_D[x]      <= rd_data_D_bram[x];
                reg_banked_read_addr_D[x] <= rd_addr_D;
                reg_banked_valid_D[x]     <= rd_data_bram_valid;
                reg_banked_activate_D[x]  <= activate_D;
            end else begin
                reg_banked_data_D[x]      <= (activate_D_reg[x] == 1) ? rd_data_D_bram[x] : reg_banked_data_D[x+1];
                reg_banked_read_addr_D[x] <= reg_banked_read_addr_D[x+1];
                reg_banked_valid_D[x]     <= reg_banked_valid_D[x+1];
                reg_banked_activate_D[x]  <= reg_banked_activate_D[x+1];
            end
        end
    end
end

// Read Out Control
logic done_read;
assign done_read = (rd_addr_D == (M1xM3dN1 - N2 + 1)) && activate_D[N1-1] && (block_index_r == BLOCK_NUM-1)? 1 : 0;   // last address for D was produced

always_ff @(posedge clk) begin
    if (rst || ~done_multiply_sync[1]) begin
        done_sync_wait <= 0;
    end else begin
        if (m_axis_mm2s_tready && done_read) begin
            done_sync_wait <= 1;
        end
    end
end

always_ff @(posedge clk) begin
    if (rst) begin
        start_read <= 0;
        rd_addr_D_valid <= 0;
        reg_rd_addr_D_valid <= 0;
        rd_data_bram_valid <= 0;
        block_index_r <= 0;
        block_index_r_r <= 0;
    end else begin
        block_index_r <= block_index;
        block_index_r_r <= block_index_r;
        start_read <= m_axis_mm2s_tready & done_multiply_sync[1];
        if (done_read || done_sync_wait) begin
            start_read <= 0;
        end
        rd_addr_D_valid <= start_read;
        reg_rd_addr_D_valid <= rd_addr_D_valid;
        rd_data_bram_valid <= reg_rd_addr_D_valid;
    end
end
//assign start_read_mm = reg_banked_valid_D[N1-1];
// sync from slow -> fast
always_ff @(posedge fclk) begin
    if (rst) begin
        done_read_sync <= 0;
	    done_read_pulse <= 0;
    end else begin
        done_read_sync <= {done_read_sync[2:0],done_read};
	    done_read_pulse <= |done_read_sync;
    end
end
always_ff @(posedge fclk) begin
    if (rst || done_read_pulse) begin
        done_multiply <= 0;
    end else begin
        if ((wr_addr_D_bram[N1-1] == M1xM3dN1-1)) begin
            done_multiply <= 1;
        end
    end
end

// sync from fast -> slow
always_ff @(posedge clk) begin
    if (rst) begin
        done_multiply_sync <= 0;
    end else begin
        done_multiply_sync <= {done_multiply_sync[0], done_multiply};
    end
end

// AXI Signals management
always_ff @(posedge clk) begin
	if (rst) begin
        last_beat <= 0;
        m_axis_mm2s_tlast <= 0;
	end else begin
        if (m_axis_mm2s_tready) begin
            last_beat[N1-1] <= ((reg_banked_read_addr_D[N1-1] == (M1xM3dN1 - N2)) && reg_banked_activate_D[N1-1][N1-1] && (block_index_r_r == BLOCK_NUM-1))? 1 : 0;
            for(int i=0; i<N1-1; i++) begin
                last_beat[i] <= last_beat[i+1];
            end
            m_axis_mm2s_tlast <= last_beat[0];
        end
    end
end

assign m_axis_mm2s_tdata = reg_banked_data_D[0];
assign m_axis_mm2s_tvalid = reg_banked_valid_D[0];
assign m_axis_mm2s_tkeep = 4'b1111;

mem_write #(
    .D_W (D_W_ACC),
    .N1 (N1),
    .MATRIXSIZE_W (MATRIXSIZE_W),
    .ADDR_W (ADDR_W_D)
)
mem_write_D (
    .clk          ( fclk                ),
    .rst          ( rst                 ),
    .M1xM3dN1     ( M1xM3dN1            ),
    .in_valid     ( valid_D             ),
    .in_data      ( data_D              ),
    .wr_addr_bram ( wr_addr_D_bram      ),
    .wr_data_bram ( wr_data_D_bram      ),
    .wr_en_bram   ( wr_en_D_bram        )
);

mem_read_D_pp #(
    .N1 ( N1 ),
    .N2 ( N2 ),
    .MATRIXSIZE_W ( MATRIXSIZE_W  ),
//    ._BLOCK_NUM(_BLOCK_NUM),
    .ADDR_W ( ADDR_W_D )
)
mem_read_D_inst (
    .clk        ( clk         ),
    .rst        ( ~start_read ),
    .BLOCK_NUM (BLOCK_NUM),
    .BLOCK_WIDTH (BLOCK_WIDTH),
    .M1xBLOCK_WIDTHdN1(M1xBLOCK_WIDTHdN1),
    .M1dN1      ( M1dN1       ),
    .valid_D    ( start_read  ),
    .rd_addr_D  ( rd_addr_D   ),
    .block_index(block_index),
    .activate_D ( activate_D  )
);

endmodule

