`timescale 1ps / 1ps

module array
#(
    parameter D_W     = 8,
    parameter D_W_ACC = 16,
    parameter N       = 3
)
(
    input  logic                      clk,
    input  logic                      rst,
    input  logic                      initialize [N-1:0],
    input  logic signed [D_W-1:0]     a [N-1:0],
    input  logic signed [D_W-1:0]     b [N-1:0], 
    output logic signed [D_W_ACC-1:0] result [N-1:0]
);

// write your code here

    always @(posedge clk) begin 
        if (rst) begin 
           for (int i=0; i< $size(result); i++) begin
                result[i] <= 0;
           end
        end else if (initialize[0] == 1) begin
            
            for (int i=0; i< $size(result); i++) begin
                result[i] <= a[i] * b[i];
           end
            
            //result[0] <= a[0] * b[0];
            //result[1] <= a[1] * b[1];
            //result[2] <= a[2] * b[2];
        end else begin
            
            for (int i=0; i< $size(result); i++) begin
                result[i] <= result [i] + (a[i] * b[i]);
           end
            
            //result[0] = result[0] + (a[0] * b[0]);
            //result[1] = result[1] + (a[1] * b[1]);
            //result[2] = result[2] + (a[2] * b[2]);
        end 
    end 


endmodule
