`timescale 1ps / 1ps

module acc
#(
    parameter D_W     = 32,
    parameter D_W_ACC = 32
)
(
    input  logic                      clk,
    input  logic                      rst,
    input  logic                      enable,
    input  logic                      initialize,
    input  logic signed [D_W-1:0]     in_data,
    output logic signed [D_W_ACC-1:0] result
);

// Your Lab1 code here 
   // logic signed [D_W_ACC-1:0] result1;

    always @(posedge clk) begin
        if(rst) begin
            //result1 <= 0;
            result <= 0;

        end else if(initialize) begin
            //result1 <= in_data;
            //result <= result1;

            result = in_data;

        end else begin
            //result1 <= result1 + in_data;
            //result <= result1;

            result = result + in_data;

        end 
    end     


endmodule
