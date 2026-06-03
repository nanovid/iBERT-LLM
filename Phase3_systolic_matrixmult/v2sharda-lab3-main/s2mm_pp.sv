`timescale 1ps / 1ps

module s2mm_pp
#(
    parameter integer D_W = 8,
    parameter integer N1 = 4,
    parameter integer N2 = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer MEM_DEPTH_A = 4096,
    parameter integer MEM_DEPTH_B = 4096,
    parameter integer ADDR_W_A = 12,
    parameter integer ADDR_W_B = 12,
    parameter         TRANSPOSE_B = 0
)
(
    input  logic                    clk,
    input  logic                    fclk,
    input  logic                    rst,

    input  logic signed [31:0]      s_axis_s2mm_tdata_A,
    input  logic        [3:0]       s_axis_s2mm_tkeep_A,
    input  logic                    s_axis_s2mm_tlast_A,
    output logic                     s_axis_s2mm_tready_A,
    input  logic                    s_axis_s2mm_tvalid_A,
    
    input  logic signed [31:0]      s_axis_s2mm_tdata_B,
    input  logic        [3:0]       s_axis_s2mm_tkeep_B,
    input  logic                    s_axis_s2mm_tlast_B,
    output logic                     s_axis_s2mm_tready_B,
    input  logic                    s_axis_s2mm_tvalid_B,

    input  logic [ADDR_W_A-1:0]     rd_addr_A,
    input  logic [ADDR_W_B-1:0]     rd_addr_B,

    output logic signed [D_W-1:0]   A_bram [N1-1:0],
    output logic signed [D_W-1:0]   B_bram [N2-1:0],

    input  logic [MATRIXSIZE_W-1:0] BLOCK_NUM,
    input  logic [MATRIXSIZE_W-1:0] BLOCK_WIDTHdN2,
    input  logic [MATRIXSIZE_W-1:0] BLOCK_SIZEdN2,

    input  logic [MATRIXSIZE_W-1:0] M2,
    input  logic	[MATRIXSIZE_W-1:0] M1dN1,

    input  logic                     done_read_control,
    input  logic                    done_multiply,
    input  logic                    done_read,
    output logic                     start_multiply,
    output logic                     start_multiply_block
);

logic signed [31:0]      s_axis_s2mm_tdata_A_r = 0;
logic                    s_axis_s2mm_tlast_A_r = 0;
logic                    s_axis_s2mm_tvalid_A_r = 0;
logic signed [31:0]      s_axis_s2mm_tdata_B_r = 0;
logic                    s_axis_s2mm_tlast_B_r = 0;
logic                    s_axis_s2mm_tvalid_B_r = 0;

logic signed [31:0]      s_axis_s2mm_tdata_B_r_r = 0;
logic                    s_axis_s2mm_tvalid_B_r_r = 0;

logic [MATRIXSIZE_W-1:0] M2_r = 0;
logic [MATRIXSIZE_W-1:0] M3dN2_r = 0;
logic	[MATRIXSIZE_W-1:0] M1dN1_r = 0;
logic                    done_multiply_r = 0;


always_ff @(posedge clk) begin
    if (rst) begin
        s_axis_s2mm_tdata_A_r <= 0;
        s_axis_s2mm_tlast_A_r <= 0;
        s_axis_s2mm_tvalid_A_r <= 0;

        s_axis_s2mm_tdata_B_r <= 0;
        s_axis_s2mm_tlast_B_r <= 0;
        s_axis_s2mm_tvalid_B_r <= 0;
        s_axis_s2mm_tdata_B_r_r <= 0;
        s_axis_s2mm_tvalid_B_r_r <= 0;
    end else begin
        s_axis_s2mm_tdata_A_r <= s_axis_s2mm_tdata_A;
        s_axis_s2mm_tlast_A_r <= s_axis_s2mm_tlast_A;
        s_axis_s2mm_tvalid_A_r <= s_axis_s2mm_tvalid_A;

        s_axis_s2mm_tdata_B_r <= s_axis_s2mm_tdata_B;
        s_axis_s2mm_tlast_B_r <= s_axis_s2mm_tlast_B;
        s_axis_s2mm_tvalid_B_r <= s_axis_s2mm_tvalid_B;

        s_axis_s2mm_tdata_B_r_r <= s_axis_s2mm_tdata_B_r;
        s_axis_s2mm_tvalid_B_r_r <= s_axis_s2mm_tvalid_B_r;
    end
end


always_ff @(posedge fclk) begin
    if (rst) begin
        done_multiply_r <= 0;
    end else begin
        done_multiply_r <= done_multiply;
    end
end

always_ff @(posedge clk) begin
    if (rst) begin
        M2_r <= 0;
        M1dN1_r <= 0;
    end else begin
        M2_r <= M2;
        M1dN1_r <= M1dN1;
    end
end

logic tlast_A_flag;
logic tlast_B_flag;
logic write_done_A;
logic write_done_B;
logic write_done_sync_wait;
logic [1:0] write_done_sync = 0;
logic [1:0] start_multiply_sync = 0;
logic [1:0] done_multiply_sync = 0;

// A signals
logic             [N1-1:0] reg_banked_valid_A;
logic  signed    [D_W-1:0] reg_banked_data_A       [N1-1:0];
logic       [ADDR_W_A-1:0] reg_banked_write_addr_A [N1-1:0];
logic             [N1-1:0] reg_banked_activate_A   [N1-1:0];
logic signed    [D_W-1:0] A_bram_data             [N1-1:0];

logic        [N1-1:0]     activate_A;
logic        [ADDR_W_A-1:0] wr_addr_A;
logic        [ADDR_W_A-1:0] rd_addr_A_bram          [N1-1:0];
logic        [N1-1:0]     rd_en_A_bram;
logic         [N1-1:0]     rd_data_valid_A;

// B signals
logic         [N2-1:0]     reg_banked_valid_B;
logic  signed [D_W-1:0]    reg_banked_data_B       [N2-1:0];
logic         [ADDR_W_B-1:0] reg_banked_write_addr_B [N2-1:0];
logic         [N2-1:0]     reg_banked_activate_B   [N2-1:0];
logic signed [D_W-1:0]    B_bram_data_0             [N2-1:0];
logic signed [D_W-1:0]    B_bram_data_1             [N2-1:0];

logic        [N2-1:0]     activate_B;
logic        [ADDR_W_B-1:0] wr_addr_B;
logic        [ADDR_W_B-1:0] rd_addr_B_bram          [N2-1:0];
logic        [N2-1:0]     rd_en_B_bram;
logic         [N2-1:0]     rd_data_valid_B;

// Ping pong management

logic [N2-1:0] ping_pong_rd_en [1:0];   //ping_pong[block0,block1][pipelining] 
logic [N2-1:0] ping_pong_wr_en [1:0];   //ping_pong[block0,block1][pipelining] 

logic stall_ping_pong;
logic stall_ping_pong_r1;
logic stall_ping_pong_r2;
logic stall_ping_pong_r3;
logic done_write_pp;
logic early_done_write_pp;
logic start_read_block;


// A management
genvar x;
for (x = 0; x < N1; x = x + 1) begin: ram_A
    //assign A_bram[x] = rd_data_valid_A[x] ? A_bram_data[x] : 0;
    assign A_bram[x] = rd_data_valid_A[x] ? ((ping_pong_rd_en[0][x] || ping_pong_rd_en[1][x])? A_bram_data[x] : 0) : 0;

    mem #(
        .WIDTH ( D_W         ),
        .DEPTH ( MEM_DEPTH_A )
    )
    read_ram_A (
        .rst   ( rst                         ),
        .clkA  ( clk                         ),
        .clkB  ( fclk                        ),
        .weA   ( reg_banked_valid_A[x]       ),
        .enA   ( reg_banked_activate_A[x][x] ),
        .enB   ( rd_en_A_bram[x]             ),
        .addrA ( reg_banked_write_addr_A[x]  ),
        .addrB ( rd_addr_A_bram[x]           ),
        .dinA  ( reg_banked_data_A[x]        ),
        .doutB ( A_bram_data[x]              )
    );

    always_ff @(posedge fclk) begin
        rd_data_valid_A[x] <= rd_en_A_bram[x];
    end

    always_ff @(posedge clk) begin
        if (x==0) begin
            reg_banked_valid_A[x]      <= s_axis_s2mm_tvalid_A_r;
            reg_banked_data_A[x]       <= s_axis_s2mm_tdata_A_r;
            reg_banked_write_addr_A[x] <= wr_addr_A;
            reg_banked_activate_A[x]   <= activate_A;
        end else begin
            reg_banked_valid_A[x]      <= reg_banked_valid_A[x-1];
            reg_banked_data_A[x]       <= reg_banked_data_A[x-1];
            reg_banked_write_addr_A[x] <= reg_banked_write_addr_A[x-1];
            reg_banked_activate_A[x]   <= reg_banked_activate_A[x-1];
        end
    end
end

// B management
for (x = 0; x < N2 ; x = x +1) begin: ram_B
    assign B_bram[x] = rd_data_valid_B[x] ? (ping_pong_rd_en[0][x]? B_bram_data_0[x] : (ping_pong_rd_en[1][x]? B_bram_data_1[x]: 0)) : 0;

    mem #(
        .WIDTH ( D_W         ),
        .DEPTH ( MEM_DEPTH_B )
    )
    read_ram_B_0 (
        .rst   ( rst                         ),
        .clkA  ( clk                         ),
        .clkB  ( fclk                        ),
        .weA   ( reg_banked_valid_B[x]    ),
   //     .weA   ( reg_banked_valid_B[x]   ),
        .enA   ( reg_banked_activate_B[x][x] & ping_pong_wr_en[0][x]),
        .enB   ( rd_en_B_bram[x]   & ping_pong_rd_en[0][x]      ),
        .addrA ( reg_banked_write_addr_B[x]  ),
        .addrB ( rd_addr_B_bram[x]           ),
        .dinA  ( reg_banked_data_B[x]        ),
        .doutB ( B_bram_data_0[x]              )
    );

    mem #(
        .WIDTH ( D_W         ),
        .DEPTH ( MEM_DEPTH_B )
    )
    read_ram_B_1 (
        .rst   ( rst                         ),
        .clkA  ( clk                         ),
        .clkB  ( fclk                        ),
        .weA   ( reg_banked_valid_B[x]        ),
        //.weA   ( reg_banked_valid_B[x]      ),
        .enA   ( reg_banked_activate_B[x][x] & ping_pong_wr_en[1][x] ),
        .enB   ( rd_en_B_bram[x]    &   ping_pong_rd_en[1][x]        ),
        .addrA ( reg_banked_write_addr_B[x]  ),
        .addrB ( rd_addr_B_bram[x]           ),
        .dinA  ( reg_banked_data_B[x]        ),
        .doutB ( B_bram_data_1[x]              )
    );

    always_ff @(posedge fclk) begin
        rd_data_valid_B[x] <= rd_en_B_bram[x];
    end

    always_ff @(posedge clk) begin
        if (x==0) begin
            reg_banked_valid_B[x]      <= s_axis_s2mm_tvalid_B_r;
            reg_banked_data_B[x]       <= s_axis_s2mm_tdata_B_r;
            reg_banked_write_addr_B[x] <= wr_addr_B;
            reg_banked_activate_B[x]   <= activate_B;
        end else begin
            reg_banked_valid_B[x]      <= reg_banked_valid_B[x-1];
            reg_banked_data_B[x]       <= reg_banked_data_B[x-1];
            reg_banked_write_addr_B[x] <= reg_banked_write_addr_B[x-1];
            reg_banked_activate_B[x]   <= reg_banked_activate_B[x-1];
            
            ping_pong_wr_en[0][x] <= ping_pong_wr_en[0][x-1];
            ping_pong_wr_en[1][x] <= ping_pong_wr_en[1][x-1];
            ping_pong_rd_en[0][x] <= ping_pong_rd_en[0][x-1];
            ping_pong_rd_en[1][x] <= ping_pong_rd_en[1][x-1];
        end
    end

end

always_ff @(posedge clk) begin : pp_management
    if(rst) begin
        done_write_pp <= 0;
        stall_ping_pong_r1 <= 0;
        stall_ping_pong_r2 <= 0;
        stall_ping_pong_r3 <= 0;
    end else begin
        stall_ping_pong_r1 <= stall_ping_pong;
        stall_ping_pong_r2 <= stall_ping_pong_r1;
        stall_ping_pong_r3 <= stall_ping_pong_r2;
        if((reg_banked_write_addr_B[0] == BLOCK_SIZEdN2-1) && (reg_banked_activate_B[0][N2-2] == 1'b1) && reg_banked_valid_B[0]) begin
            done_write_pp <= 1;
        end else done_write_pp <= 0;
    end
end

//NOTE: EARLY WRITE DONE IS ASSUMINF AXI TAKES 2 CYCLES TO RESPOND
`ifdef AXI_SUPPORT
assign early_done_write_pp = ((wr_addr_B == BLOCK_SIZEdN2-1) && (activate_B[N2-4] == 1'b1) && s_axis_s2mm_tvalid_B_r && ~stall_ping_pong_r3)? 1 : 0;
`else
assign early_done_write_pp = ((wr_addr_B == BLOCK_SIZEdN2-1) && (activate_B[N2-3] == 1'b1) && s_axis_s2mm_tvalid_B_r && ~stall_ping_pong_r2)? 1 : 0;
`endif
assign s_axis_s2mm_tready_B = ~stall_ping_pong & ~tlast_B_flag;

ping_pong_control ping_pong_ctrl_inst
(
    .clk(clk),
    .rst(rst ),
    .tlast_A_flag(tlast_A_flag),
    .done_rd(done_read_control),
    .done_wr_early(early_done_write_pp),
    .done_wr(done_write_pp),
    .blk_0({ping_pong_rd_en[0][0],ping_pong_wr_en[0][0]}),
    .blk_1({ping_pong_rd_en[1][0],ping_pong_wr_en[1][0]}),
    .stall_axi_b(stall_ping_pong)
);


// AXI Signals management
always_ff @(posedge clk) begin
    if (rst) begin
        done_multiply_sync <= 0;
    end else begin
        done_multiply_sync <= {done_multiply_sync[0], done_multiply_r};
    end
end

always_ff @(posedge clk) begin
    if (rst) begin
        s_axis_s2mm_tready_A <= 1;
        tlast_B_flag <= 0;
        tlast_A_flag <= 0;
    end else begin
        if (s_axis_s2mm_tlast_A && s_axis_s2mm_tvalid_A) begin
            s_axis_s2mm_tready_A <= 0;
            tlast_A_flag <= 1;
        end else if (done_multiply_sync[1] && tlast_A_flag) begin
            s_axis_s2mm_tready_A <= 1;
            tlast_A_flag <= 0;
        end

        if (s_axis_s2mm_tlast_B && s_axis_s2mm_tvalid_B) begin
            tlast_B_flag <= 1;
        end else if (done_multiply_sync[1] && tlast_B_flag) begin
            tlast_B_flag <= 0;
        end
    end
end
logic one_pulse_enable;
always_ff @(posedge clk) begin
    if (rst) begin
        write_done_A <= 0;
        write_done_B <= 0;
        start_multiply_block <= 0;
        one_pulse_enable <= 1;
    end else begin
        if (~reg_banked_valid_A[N1-1] && tlast_A_flag) write_done_A <= 1;
        
        if (((ping_pong_rd_en[0][N2-1] && ping_pong_rd_en[0][0]) || (ping_pong_rd_en[1][N2-1] && ping_pong_rd_en[1][0])) && one_pulse_enable) begin
            write_done_B <= 1;
            one_pulse_enable <= 0;
        end
        if(done_read_control) begin
            one_pulse_enable <= 1;
            start_read_block <= 0;
        end

    	if (start_multiply_block) begin
	        start_multiply_block <= 0;
            write_done_A <= 0;
            start_read_block <= 1;
            write_done_B <= 0;
        end else if (write_done_A && (write_done_B)) begin
            start_multiply_block <= 1;
    end
end



end

always_ff @(posedge fclk) begin
    write_done_sync <= {write_done_sync[0], start_multiply_block};
end

logic first_batch;
always_ff @(posedge fclk) begin
    if (rst) begin
        start_multiply <= 0;
        first_batch <= 1;
    end else begin
        // write finished, start multiply, keep high until done multiply
        if (write_done_sync[1] && (done_read || first_batch)) begin
            start_multiply <= 1;
            first_batch <= 0;
        end else if (done_multiply_r)
            start_multiply <= 0;
    end
end

always_ff @(posedge clk) begin
    if (rst) begin
        start_multiply_sync <= 0;
    end else begin
        start_multiply_sync <= {start_multiply_sync[0], start_multiply};
    end
end
mem_write_A #(
    .N1     ( N1     ),
    .MATRIXSIZE_W ( MATRIXSIZE_W ),
    .ADDR_W ( ADDR_W_A )
)
mem_write_A_inst (
    .clk        ( clk        ),
    .rst        ( rst        ),
    .M2         ( M2_r       ),
    .M1dN1      ( M1dN1_r    ),
    .valid_A    ( s_axis_s2mm_tvalid_A & s_axis_s2mm_tready_A ),
    .wr_addr_A  ( wr_addr_A  ),
    .activate_A ( activate_A )
);

generate
    if (TRANSPOSE_B) begin: transpose
        mem_write_A #(
            .N1     ( N2     ),
            .MATRIXSIZE_W ( MATRIXSIZE_W ),
            .ADDR_W ( ADDR_W_B )
        )
        mem_write_B_inst (
            .clk        ( clk        ),
            .rst        ( rst       ),
            .M2         ( M2_r       ),
            .M1dN1      ( M3dN2_r    ),
            `ifdef AXI_SUPPORT
            .valid_A    ( s_axis_s2mm_tvalid_B & ~stall_ping_pong_r2),
            `else
            .valid_A    ( s_axis_s2mm_tvalid_B & ~stall_ping_pong_r1),
            `endif
            .wr_addr_A  ( wr_addr_B  ),
            .activate_A ( activate_B )
        );
    end else begin: simple
        mem_write_B_pp #(
            .N2     ( N2     ),
            .MATRIXSIZE_W ( MATRIXSIZE_W ),
            .ADDR_W ( ADDR_W_B )
        )
        mem_write_B_inst (
            .clk        ( clk        ),
            .rst        ( rst        ),
            .M2         ( M2_r       ),
            .BLOCK_WIDTHdN2      (  BLOCK_WIDTHdN2  ),
            .BLOCK_NUM (BLOCK_NUM),
            `ifdef AXI_SUPPORT
            .valid_B    ( s_axis_s2mm_tvalid_B & ~stall_ping_pong_r2),
            `else
            .valid_B    ( s_axis_s2mm_tvalid_B & ~stall_ping_pong_r1),
            `endif
            .wr_addr_B  ( wr_addr_B  ),
            .activate_B ( activate_B )
        );
    end
endgenerate

mem_read #(
    .D_W    (D_W),
    .N      (N1),
    .ADDR_W (ADDR_W_A)
)
mem_read_A (
    .clk          ( fclk           ),
    .rd_addr      ( rd_addr_A      ),
    .rd_en        ( start_multiply & start_read_block ),
    .rd_addr_bram ( rd_addr_A_bram ),
    .rd_en_bram   ( rd_en_A_bram   )
);

mem_read #(
    .D_W    (D_W),
    .N      (N2),
    .ADDR_W (ADDR_W_B)
)
mem_read_B (
    .clk          ( fclk           ),
    .rd_addr      ( rd_addr_B      ),
    .rd_en        ( start_multiply & start_read_block ),
    .rd_addr_bram ( rd_addr_B_bram ),
    .rd_en_bram   ( rd_en_B_bram   )
);

endmodule
