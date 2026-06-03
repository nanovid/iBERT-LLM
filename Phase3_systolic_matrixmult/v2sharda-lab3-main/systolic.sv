`timescale 1ps / 1ps

module systolic
#(
    parameter integer D_W     = 8,      // operand data width
    parameter integer D_W_ACC = 32,     // accumulator data width
    parameter integer N1      = 8,      // number of rows
    parameter integer N2      = 4       // number of columns
)
(
    input  logic                      clk,
    input  logic                      rst,
    input  logic        [N2-1:0]      init [N1-1:0],
    input  logic signed [D_W-1:0]     A    [N1-1:0],
    input  logic signed [D_W-1:0]     B    [N2-1:0],
    output logic signed [D_W_ACC-1:0] D    [N1-1:0],
    output logic        [N1-1:0]      valid_D
);

// write your code here

logic signed [D_W_ACC-1:0] processed [N1-1:0][N2-1:0];
//logic signed [D_W_ACC-1:0] output_D [N1-1:0][N2-1:0];
logic signed [D_W-1:0] travelling_A [N1-1:0][N2-1:0];
logic signed [D_W-1:0] travelling_B [N1-1:0][N2-1:0];

logic valid_out [N1-1:0][N2-1:0];

//logic beginning;
//logic counter;


genvar r;
genvar n;

// generate 
//     for (r=0; r<N1-1; r++) begin
//         for (n=0; n<N2-1; n++) begin
//             assign travelling_A[r][n] = 0;
//             //travelling_B[r][n] = 0;
//             //processed[r][n] = 0;
//         end 
//     end 
// endgenerate

genvar i;
genvar j;

generate 
    for (i=0; i<N1; i++) begin
        for (j=0; j<N2; j++) begin

            //if(i==0 || j==0) begin
            //    assign beginning = 0;         
            //end

            //$display("generate is running");

            pe
            //input  logic                      clk,
            //    input  logic                      rst,
            //    input  logic                      init,
            //    input  logic signed [D_W-1:0]     in_a,
            //    input  logic signed [D_W-1:0]     in_b,
            //    input  logic signed [D_W_ACC-1:0] in_data,
            //   input  logic                      in_valid,
            //    output logic  signed [D_W-1:0]     out_a,
            //    output logic  signed [D_W-1:0]     out_b,
            //    output logic  signed [D_W_ACC-1:0] out_data,
            //   output logic                       out_valid
            #(
                .D_W(D_W),
                .D_W_ACC(D_W_ACC)      
            )
            pe_inst(
                .clk(clk), 
                .rst(rst),
                .init(init[i][j]),
                .in_a((j==0)? A[i]:travelling_A[i][j-1]),
                .in_b((i==0)? B[j]:travelling_B[i-1][j]),
                .in_data((j ==0)? {D_W_ACC-1{1'b0}}:processed[i][j-1]),
                .in_valid((j==0)? 1'b0:valid_out[i][j-1]),
                .out_a(travelling_A[i][j]),
                .out_b(travelling_B[i][j]),
                .out_data(processed[i][j]),
                .out_valid(valid_out[i][j])
            );
        end      
    end
endgenerate

genvar k;
for (k=0; k<(N1); k++) begin
    assign D[k] = processed[k][N2-1];
    assign valid_D[k] = valid_out[k][N2-1];
end




// always_ff @( posedge clk ) begin : imeanshitsomethinggottaberunningno
//     if (rst) begin
//         counter <= 0;
//         for (int r=0; r<N1; r++) begin
//             for (int n=0; n<N2; n++) begin
//                 travelling_A[r][n] <= '0;
//                 travelling_B[r][n] <= '0;
//                 processed[r][n] <= '0;
//                 valid_out[r][n] <= 1'b0;
//             end 
//         end 
//     end
// end
        

//     else begin
//         //travelling_A[0][counter] = A[counter]
        
//         counter <= counter + 1;
//         //$display(A[0]);      
//         travelling_A[0][0] <= A[0];
//         $display(travelling_A);
//         //$display(travelling_A);
//             end 
         
// end
endmodule