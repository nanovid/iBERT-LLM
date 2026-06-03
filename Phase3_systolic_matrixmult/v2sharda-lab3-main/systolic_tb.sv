`timescale 1ps / 1ps

`ifdef VERILATOR
    module top
`else
    module systolic_tb
`endif
#(
    parameter integer M1 = 8,
    parameter integer M2 = 8,
    parameter integer M3 = 8,
    parameter integer N1 = 4,
    parameter integer N2 = 4
)
(
    `ifdef VERILATOR
    input wire clk,
    input wire rst
    `endif
);

localparam integer D_W     = 8;      // operand data width
localparam integer D_W_ACC = 32;     // accumulator data width
localparam integer MATRIXSIZE_W   = 16;
localparam integer ADDR_W  = 20;

localparam [MATRIXSIZE_W-1:0] _M2 = M2;
localparam [MATRIXSIZE_W-1:0] _M1dN1 = M1/N1;
localparam [MATRIXSIZE_W-1:0] _M3dN2 = M3/N2;
localparam [MATRIXSIZE_W-1:0] _M1xM3dN1xN2 = (M1*M3)/(N1*N2);

localparam integer REP = 2*M1*M2*M3;

`ifndef VERILATOR
    reg        clk = 1'b0;
    reg  [1:0] rst_r = 2'b11;
    wire rst = rst_r[0];
    `ifndef XIL_TIMING
    always #1 clk = ~clk;
    `else
    always #20000 clk = ~clk;
    `endif

    always @(posedge clk) begin
        rst_r <= rst_r >> 1;
    end
`endif

wire        [N1-1:0]        rd_en_A_bram;
wire        [N2-1:0]        rd_en_B_bram;
wire        [ADDR_W-1:0]    rd_addr_A;
wire        [ADDR_W-1:0]    rd_addr_B;
wire        [ADDR_W-1:0]    rd_addr_A_bram [N1-1:0];
wire        [ADDR_W-1:0]    rd_addr_B_bram [N2-1:0];

wire        [N2-1:0]        init   [N1-1:0];
reg  signed [D_W-1:0]       A_bram [N1-1:0];
reg  signed [D_W-1:0]       B_bram [N2-1:0];
wire signed [D_W_ACC-1:0]   D      [N1-1:0];
wire        [N1-1:0]        valid_D;

reg  signed [D_W-1:0]       memA [0:M1*M2-1];
reg  signed [D_W-1:0]       memB [0:M2*M3-1];
reg  signed [D_W_ACC-1:0]   memD [0:M1*M3-1];

reg  [$clog2(M1*M3/N1):0]   D_addr [N1-1:0];
reg                         done;

initial begin
    $readmemh("A.mem", memA);
    $readmemh("B.mem", memB);
end

initial begin
    $timeformat(-9, 2, " ns", 20);
    repeat(REP) @(posedge clk);
    $display("Error: Timed out!");
    $finish;
end

final begin
    $writememh("D.mem", memD);
end

genvar x;
for (x = 0; x < N1; x = x + 1) begin
    always @(posedge clk) begin
        if (rst) begin
            A_bram[x] <= 0;
        end else begin
            if (rd_en_A_bram[x]) begin
                A_bram[x] <= memA[(rd_addr_A_bram[x]/M2) * (N1 - 1) * M2 + x * M2 + rd_addr_A_bram[x]];
            end else begin
                A_bram[x] <= 0;
            end
        end
    end
end

for (x = 0; x < N2; x = x + 1) begin
    always @(posedge clk) begin
        if (rst) begin
            B_bram[x] <= 0;
        end else begin
            if (rd_en_B_bram[x]) begin
                B_bram[x] <= memB[(rd_addr_B_bram[x]/M2) * N2 + x + (rd_addr_B_bram[x] - (rd_addr_B_bram[x]/M2) * M2) * M3];
            end else begin
                B_bram[x] <= 0;
            end
        end
    end
end

for (x = 0; x < N1; x = x + 1) begin
    always @(posedge clk) begin
        if (rst) begin
            D_addr[x] <= 0;
        end else if (valid_D[x]) begin
            memD[((D_addr[x]/M3) * N1 * M3 + x * M3 + ((D_addr[x] - (D_addr[x]/M3) * M3) / N2 + 1) * N2 - 1) - (((D_addr[x]/M3) * (N1 - 1) * M3 + x * M3 + D_addr[x]) - ((D_addr[x]/M3) * N1 * M3 + x * M3 + ((D_addr[x] - (D_addr[x]/M3) * M3) / N2) * N2))] <= D[x];
            D_addr[x] <= D_addr[x] < (M1*M3/N1-1) ? (D_addr[x] + 1) : 0;
        end
    end
end

always @(posedge clk) begin
    done <= D_addr[N1-1] == (M1*M3/N1-1);
    if (done) begin
        $finish;
    end
end

mem_read #(
    .D_W    (D_W),
    .N      (N1),
    .ADDR_W (ADDR_W)
)
mem_read_A (
    .clk           (clk),
    .rd_addr       (rd_addr_A),
    .rd_en         (~rst),
    .rd_addr_bram  (rd_addr_A_bram),
    .rd_en_bram    (rd_en_A_bram)
);

mem_read #(
    .D_W    (D_W),
    .N      (N2),
    .ADDR_W (ADDR_W)
)
mem_read_B (
    .clk           (clk),
    .rd_addr       (rd_addr_B),
    .rd_en         (~rst),
    .rd_addr_bram  (rd_addr_B_bram),
    .rd_en_bram    (rd_en_B_bram)
);

control #(
    .N1     (N1),
    .N2     (N2),
    .MATRIXSIZE_W  (MATRIXSIZE_W),
    .ADDR_W_A (ADDR_W),
    .ADDR_W_B (ADDR_W)
)
control_inst (
    .clk         (clk),
    .rst         (rst),
    .M2          (_M2),
    .M1dN1       (_M1dN1),
    .M3dN2       (_M3dN2),
    .M1xM3dN1xN2 (_M1xM3dN1xN2),
    .rd_addr_A   (rd_addr_A),
    .rd_addr_B   (rd_addr_B),
    .init        (init)
);

systolic 
`ifndef XIL_TIMING
#(
    .D_W     (D_W),
    .D_W_ACC (D_W_ACC),
    .N1      (N1),
    .N2      (N2)
)
`endif
systolic_test (
    .clk     (clk),
    .rst     (rst),
`ifndef XIL_TIMING
    .init    (init),
    .A       (A_bram),
    .B       (B_bram),
    .D       (D),
`else
    .\init[7] (init[7]),            // hardcoded for synthesis test, N1=8, N2=4
    .\init[6] (init[6]),            // because post-synth module doesn't have 2D ports
    .\init[5] (init[5]),
    .\init[4] (init[4]),
    .\init[3] (init[3]),
    .\init[2] (init[2]),
    .\init[1] (init[1]),
    .\init[0] (init[0]),
    .\A[7]    (A_bram[7]),
    .\A[6]    (A_bram[6]),
    .\A[5]    (A_bram[5]),
    .\A[4]    (A_bram[4]),
    .\A[3]    (A_bram[3]),
    .\A[2]    (A_bram[2]),
    .\A[1]    (A_bram[1]),
    .\A[0]    (A_bram[0]),
    .\B[3]    (B_bram[3]),
    .\B[2]    (B_bram[2]),
    .\B[1]    (B_bram[1]),
    .\B[0]    (B_bram[0]),
    .\D[7]    (D[7]),
    .\D[6]    (D[6]),
    .\D[5]    (D[5]),
    .\D[4]    (D[4]),
    .\D[3]    (D[3]),
    .\D[2]    (D[2]),
    .\D[1]    (D[1]),
    .\D[0]    (D[0]),
`endif
    .valid_D (valid_D)
);

`ifdef VERILATOR
    initial begin
        $dumpfile("systolic.vcd");
        $dumpvars();
    end
`endif

endmodule
