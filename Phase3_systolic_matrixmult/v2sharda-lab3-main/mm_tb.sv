`timescale 1ps / 1ps

`ifdef VERILATOR
    module top
`else
    module mm_tb
`endif
#(
    parameter integer D_W       = 8,      // operand data width
    parameter integer D_W_ACC   = 32,     // accumulator data width
    parameter integer M1        = 8,
    parameter integer M2        = 8,
    parameter integer M3        = 8,
    parameter integer N1        = 4,
    parameter integer N2        = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer MEM_DEPTH = 4096,
    parameter integer _BLOCK_NUM = 1,
    parameter integer REUSE     = 0
)
(
    `ifdef VERILATOR
    input wire clk,
    input wire rst
    `endif
);

localparam integer STR_D_W = 32;            // stream data width, fixed 32 bits
localparam integer REP     = M1*M2*M3;

localparam [MATRIXSIZE_W-1:0] _M1          = M1;
localparam [MATRIXSIZE_W-1:0] _M2          = M2;
localparam [MATRIXSIZE_W-1:0] _M3          = M3;
localparam [MATRIXSIZE_W-1:0] _M1xM2       = M1*M2;
localparam [MATRIXSIZE_W-1:0] _M2xM3       = M2*M3;
localparam [MATRIXSIZE_W-1:0] _M1xM2dN1    = M1*M2/N1;
localparam [MATRIXSIZE_W-1:0] _M1xM3       = M1*M3;
localparam [MATRIXSIZE_W-1:0] _M1xM3dN1    = M1*M3/N1;
localparam [MATRIXSIZE_W-1:0] _M1dN1       = M1/N1;
localparam [MATRIXSIZE_W-1:0] _M3dN2       = M3/N2;
localparam [MATRIXSIZE_W-1:0] _M2xM3dN2    = M1*M2/N2;
localparam [MATRIXSIZE_W-1:0] _M1xM3dN1xN2 = (M1*M3)/(N1*N2);
localparam [MATRIXSIZE_W-1:0] _M1xM2pM2xM3 = (M1*M2)+(M2*M3);



//localparam [MATRIXSIZE_W-1:0] _BLOCK_NUM = 2;
localparam [MATRIXSIZE_W-1:0] BLOCK_WIDTH = _M3/_BLOCK_NUM;
localparam [MATRIXSIZE_W-1:0] BLOCK_SIZE = _M2*BLOCK_WIDTH;
localparam [MATRIXSIZE_W-1:0] BLOCK_WIDTHdN2 = BLOCK_WIDTH/N2;
localparam [MATRIXSIZE_W-1:0] BLOCK_SIZEdN2 = BLOCK_SIZE/N2;
localparam [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1xN2 = (_M1*BLOCK_WIDTH)/(N1*N2)  ;
localparam [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTHdN1    = (_M1*BLOCK_WIDTH)/(N1)  ;
localparam [MATRIXSIZE_W-1:0] M1xBLOCK_WIDTH    = (_M1*BLOCK_WIDTH)  ;

`ifndef VERILATOR
    reg        clk  = 1'b0;
    reg        fclk = 1'b0;
    reg  [1:0] rst_r  = 2'b11;
wire       rst   = rst_r[0];


    `ifndef XIL_TIMING
    always #10000 clk = ~clk;
    always #4000 fclk = ~fclk;
    `else
    always #50000 clk = ~clk;
    always #50000 fclk = ~fclk;
    `endif

    always @(posedge clk) begin
        rst_r <= rst_r >> 1;
    end
`else
    wire fclk = clk;
`endif

reg                       in_valid_A;
reg  signed [D_W-1:0]     in_data_A;
wire signed [STR_D_W-1:0] in_data_stream_A;
reg                       in_last_A;
wire                      in_ready_A;

reg                       in_valid_B;
reg  signed [D_W-1:0]     in_data_B;
wire signed [STR_D_W-1:0] in_data_stream_B;
reg                       in_last_B;
wire                      in_ready_B;

wire                      out_valid;
wire signed [D_W_ACC-1:0] out_data;
wire signed [STR_D_W-1:0] out_data_stream;
wire                      out_last;
reg         [1:0]         done_bus;
reg                       mm_done;

reg  signed [D_W-1:0]     memA [0:M1*M2-1];
reg  signed [D_W-1:0]     memB [0:M2*M3-1];
reg  signed [D_W_ACC-1:0] memD [0:M1*M3-1];

reg [$clog2(M1*M2):0]     rdaddr_A;
reg [$clog2(M2*M3):0]     rdaddr_B;
reg [$clog2(M1*M3)-1:0]   wraddr;

initial begin
    if (MEM_DEPTH < M1*M2/N1 || MEM_DEPTH < M2*M3/N2 || MEM_DEPTH < M1*M3/N1) begin
        $display("Error: MEM_DEPTH=%0d should be adjusted to fit all matrix data: A=%0d, B=%0d, D=%0d",
                MEM_DEPTH, M1*M2/N1, M2*M3/N2, M1*M3/N1);
        $finish;
    end
end

initial begin
    $readmemh("A.mem", memA);
	if(_BLOCK_NUM > 1) $readmemh("B_pp.mem", memB);
	else $readmemh("B.mem", memB);
end

initial begin
    $timeformat(-9, 2, " ns", 20);
    repeat(REP) @(posedge clk);
    $display("Error: Timed Out!");
    $finish;
end

initial begin
    if (REUSE) begin
        @(done_bus[0] === 1);
        $display("Finished 1st Batch.");
        @(done_bus[1] === 1);
        $display("Finished 2nd Batch.");
    end
end

always @(posedge clk) begin
    if (mm_done)
        $finish;
end

final begin
    $writememh("D.mem", memD);
end

// send data into mm.sv
assign in_data_stream_A = {{STR_D_W-D_W{in_data_A[D_W-1]}}, in_data_A};
assign in_data_stream_B = {{STR_D_W-D_W{in_data_B[D_W-1]}}, in_data_B};


always @(posedge clk) begin
    if (rst) begin
        in_valid_A <= 1'b0;
        in_data_A  <= 0;
        in_last_A  <= 1'b0;
        rdaddr_A   <= 0;
    end else begin
        in_data_A  <= 0;
        in_last_A  <= 0;

        if (in_ready_A) begin
            if (rdaddr_A <= _M1xM2-1) begin
                rdaddr_A <= rdaddr_A + 1;
                in_valid_A <= 1;
            end else begin
                in_valid_A <= 0;
            end

            if (in_valid_A && rdaddr_A == _M1xM2-1) begin
                in_last_A <= 1;
            end

            if (rdaddr_A < _M1xM2) begin
                in_data_A <= memA[rdaddr_A];
            end else begin
                in_data_A <= 0;
            end
        end else if (REUSE) begin
            rdaddr_A <= 0;
        end
    end
end

always @(posedge clk) begin
    if (rst) begin
        in_valid_B <= 1'b0;
        in_data_B  <= 0;
        in_last_B  <= 1'b0;
        rdaddr_B   <= 0;
    end else begin
        in_data_B  <= 0;
        in_last_B  <= 0;
        //in_valid_B <= 0;

        if (in_ready_B) begin
            if (rdaddr_B <= _M2xM3-1) begin
                rdaddr_B <= rdaddr_B + 1;
                in_valid_B <= 1;
            end else begin
                in_valid_B <= 0;
            end

            if (in_valid_B && rdaddr_B == _M2xM3-1) begin
                in_last_B <= 1;
            end

            if (rdaddr_B < _M2xM3) begin
                in_data_B <= memB[rdaddr_B];
            end else begin
                in_data_B <= 0;
            end
        end else if (REUSE) begin
            rdaddr_B <= 0;
        end
    end
end

// receive data from mm.sv
assign out_data = out_data_stream[D_W_ACC-1:0];
//reg wraddr_done;
always @(posedge clk) begin
    if (rst) begin
        wraddr <= 0;
        mm_done <= 0;
        done_bus <= 0;
        //wraddr_done <= 0;
    end else begin
        if (REUSE) begin
            mm_done <= done_bus[1];
            if (out_last) begin
                done_bus <= {done_bus[0], out_last};
            end
        end else begin
            mm_done <= out_last;
           // mm_done <= wraddr_done;
        end
        
        if (out_valid) begin
            wraddr       <= (wraddr == _M1xM3-1) ? 0 : wraddr + 1;
            //wraddr_done       <= (wraddr == _M1xM3-2) ? 1 : 0;
            memD[wraddr] <= out_data;
        end
    end
end



`ifdef PING_PONG
mm_pp
`ifndef XIL_TIMING
#(
    .D_W       (D_W),
    .D_W_ACC   (D_W_ACC),
    .N1        (N1),
    .N2        (N2),
    .MATRIXSIZE_W (MATRIXSIZE_W),
    .TRANSPOSE_B (0),
    .MEM_DEPTH_A (MEM_DEPTH),
    .MEM_DEPTH_B (MEM_DEPTH),
//    ._BLOCK_NUM(_BLOCK_NUM),
    .MEM_DEPTH_D (MEM_DEPTH)
)
`endif
mm_test (
    .mm_clk                (clk),
    .mm_fclk               (clk),
    .mm_rst_n              (~rst),
    
    .s_axis_s2mm_tvalid_A  (in_valid_A),
    .s_axis_s2mm_tdata_A   (in_data_stream_A),
    .s_axis_s2mm_tkeep_A   (),
    .s_axis_s2mm_tlast_A   (in_last_A),
    .s_axis_s2mm_tready_A  (in_ready_A),

    .s_axis_s2mm_tvalid_B  (in_valid_B),
    .s_axis_s2mm_tdata_B   (in_data_stream_B),
    .s_axis_s2mm_tkeep_B   (),
    .s_axis_s2mm_tlast_B   (in_last_B),
    .s_axis_s2mm_tready_B  (in_ready_B),

    .m_axis_mm2s_tvalid    (out_valid),
    .m_axis_mm2s_tdata     (out_data_stream),
    .m_axis_mm2s_tkeep     (),
    .m_axis_mm2s_tlast     (out_last),
    .m_axis_mm2s_tready    (1'b1),

    .BLOCK_NUM (_BLOCK_NUM[MATRIXSIZE_W-1:0]),
    .BLOCK_WIDTH (BLOCK_WIDTH),
    .BLOCK_WIDTHdN2(BLOCK_WIDTHdN2),
    .M1xBLOCK_WIDTHdN1xN2(M1xBLOCK_WIDTHdN1xN2),
    .BLOCK_SIZEdN2 (BLOCK_SIZEdN2 ),
    .M1xBLOCK_WIDTHdN1(M1xBLOCK_WIDTHdN1),
    // .M1                    (_M1),
    .M2                    (_M2),
    // .M1xM2                 (_M1xM2),
    // .M2xM3                 (_M2xM3),
    // .M1xM2dN1              (_M1xM2dN1),
    // .M1xM3                 (_M1xM3),
    .M1xM3dN1              (_M1xM3dN1),
    .M1dN1                 (_M1dN1)
);
`else
mm
`ifndef XIL_TIMING
#(
    .D_W       (D_W),
    .D_W_ACC   (D_W_ACC),
    .N1        (N1),
    .N2        (N2),
    .MATRIXSIZE_W (MATRIXSIZE_W),
    .MEM_DEPTH_A (MEM_DEPTH),
    .MEM_DEPTH_B (MEM_DEPTH),
    .MEM_DEPTH_D (MEM_DEPTH),
    .TRANSPOSE_B (0)
)
`endif
mm_test (
    .mm_clk                (clk),
    .mm_fclk               (fclk),
    .mm_rst_n              (~rst),
    
    .s_axis_s2mm_tvalid_A  (in_valid_A),
    .s_axis_s2mm_tdata_A   (in_data_stream_A),
    .s_axis_s2mm_tkeep_A   (),
    .s_axis_s2mm_tlast_A   (in_last_A),
    .s_axis_s2mm_tready_A  (in_ready_A),

    .s_axis_s2mm_tvalid_B  (in_valid_B),
    .s_axis_s2mm_tdata_B   (in_data_stream_B),
    .s_axis_s2mm_tkeep_B   (),
    .s_axis_s2mm_tlast_B   (in_last_B),
    .s_axis_s2mm_tready_B  (in_ready_B),

    .m_axis_mm2s_tvalid    (out_valid),
    .m_axis_mm2s_tdata     (out_data_stream),
    .m_axis_mm2s_tkeep     (),
    .m_axis_mm2s_tlast     (out_last),
    .m_axis_mm2s_tready    (1'b1),

    // .M1                    (_M1),
    .M2                    (_M2),
    .M3                    (_M3),
    // .M1xM2                 (_M1xM2),
    // .M2xM3                 (_M2xM3),
    // .M1xM2dN1              (_M1xM2dN1),
    // .M1xM3                 (_M1xM3),
    .M1xM3dN1              (_M1xM3dN1),
    .M1dN1                 (_M1dN1),
    .M3dN2                 (_M3dN2),
    .M1xM3dN1xN2           (_M1xM3dN1xN2)
);
`endif

`ifdef VERILATOR
    initial begin
        `ifdef PING_PONG
            $dumpfile("mm_pp.vcd");
            $dumpvars();
        `else
            $dumpfile("mm.vcd");
            $dumpvars();
        `endif
    end
`endif
endmodule
