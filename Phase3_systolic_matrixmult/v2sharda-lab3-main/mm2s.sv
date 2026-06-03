`timescale 1ps / 1ps

module mm2s
#(
    parameter integer D_W_ACC = 32,
    parameter integer N1 = 4,
    parameter integer N2 = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer ADDR_W_D = 12,
    parameter integer MEM_DEPTH_D = 4096
)
(
    input  wire                           clk,
    input  wire                           fclk,
    input  wire                           rst,
    output wire signed [31:0]             m_axis_mm2s_tdata,
    output wire        [3:0]              m_axis_mm2s_tkeep,
    output reg                            m_axis_mm2s_tlast,
    input  wire                           m_axis_mm2s_tready,
    output wire                           m_axis_mm2s_tvalid,
    
    input  wire        [N1-1:0]           valid_D,
    input  wire signed [D_W_ACC-1:0]      data_D [N1-1:0],

    input  wire        [MATRIXSIZE_W-1:0] M3,
    input  wire	       [MATRIXSIZE_W-1:0] M1dN1,
    input  wire        [MATRIXSIZE_W-1:0] M1xM3dN1,

    output reg                            done_multiply,
    output reg                            done_read_pulse
);

reg start_read;
reg done_sync_wait;
reg [3:0] done_read_sync;
reg [1:0] done_multiply_sync;
reg rd_addr_D_valid;
reg reg_rd_addr_D_valid;
reg rd_data_bram_valid;
reg [N1+1:0] last_beat;

wire        [ADDR_W_D-1:0] wr_addr_D_bram         [N1-1:0];
wire        [ADDR_W_D-1:0] rd_addr_D;

wire        [N1-1:0]       wr_en_D_bram;
wire signed [D_W_ACC-1:0]  wr_data_D_bram         [N1-1:0];
wire signed [D_W_ACC-1:0]  rd_data_D_bram         [N1-1:0];

reg         [N1-1:0]       reg_banked_valid_D;
reg  signed [D_W_ACC-1:0]  reg_banked_data_D      [N1-1:0];
reg         [ADDR_W_D-1:0] reg_banked_read_addr_D [N1-1:0];
reg         [N1-1:0]       reg_banked_activate_D  [N1-1:0];

wire        [N1-1:0]       activate_D;
reg         [N1-1:0]       activate_D_reg;

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

    always @(posedge clk) begin
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
wire done_read;
assign done_read = (rd_addr_D == (M1xM3dN1 - N2 + 1)) & activate_D[N1-1];   // last address for D was produced

always @(posedge clk) begin
    if (rst || ~done_multiply_sync[1]) begin
        done_sync_wait <= 0;
    end else begin
        if (m_axis_mm2s_tready && done_read) begin
            done_sync_wait <= 1;
        end
    end
end

always @(posedge clk) begin
    if (rst) begin
        start_read <= 0;
        rd_addr_D_valid <= 0;
        reg_rd_addr_D_valid <= 0;
        rd_data_bram_valid <= 0;
    end else begin
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
always @(posedge fclk) begin
    if (rst) begin
        done_read_sync <= 0;
	    done_read_pulse <= 0;
    end else begin
        done_read_sync <= {done_read_sync[2:0],done_read};
	    done_read_pulse <= |done_read_sync;
    end
end
always @(posedge fclk) begin
    if (rst || done_read_pulse) begin
        done_multiply <= 0;
    end else begin
        if ((wr_addr_D_bram[N1-1] == M1xM3dN1-1)) begin
            done_multiply <= 1;
        end
    end
end

// sync from fast -> slow
always @(posedge clk) begin
    if (rst) begin
        done_multiply_sync <= 0;
    end else begin
        done_multiply_sync <= {done_multiply_sync[0], done_multiply};
    end
end

// AXI Signals management
always @(posedge clk) begin
	if (rst) begin
        last_beat <= 0;
        m_axis_mm2s_tlast <= 0;
	end else begin
        if (m_axis_mm2s_tready) begin
            last_beat[N1-1] <= (reg_banked_read_addr_D[N1-1] == (M1xM3dN1 - N2) & reg_banked_activate_D[N1-1][N1-1]);
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

mem_read_D #(
    .N1 ( N1 ),
    .N2 ( N2 ),
    .MATRIXSIZE_W ( MATRIXSIZE_W  ),
    .ADDR_W ( ADDR_W_D )
)
mem_read_D_inst (
    .clk        ( clk         ),
    .rst        ( ~start_read ),
    .M3         ( M3          ),
    .M1dN1      ( M1dN1       ),
    .valid_D    ( start_read  ),
    .rd_addr_D  ( rd_addr_D   ),
    .activate_D ( activate_D  )
);

endmodule
