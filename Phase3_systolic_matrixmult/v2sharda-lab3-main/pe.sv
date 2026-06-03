`timescale 1ps / 1ps

module pe
#(
    parameter integer D_W     = 8,      // operand data width
    parameter integer D_W_ACC = 32      // accumulator data width
)
(
    input  logic                      clk,
    input  logic                      rst,
    input  logic                      init,
    input  logic signed [D_W-1:0]     in_a,
    input  logic signed [D_W-1:0]     in_b,
    input  logic signed [D_W_ACC-1:0] in_data,
    input  logic                      in_valid,
    output logic  signed [D_W-1:0]     out_a,
    output logic  signed [D_W-1:0]     out_b,
    output logic  signed [D_W_ACC-1:0] out_data,
    output logic                       out_valid
);

// write your code here

logic signed [D_W_ACC-1:0] accum, in_data_reg;
logic [2:0] backedup;


always_ff @( posedge clk ) begin : blockName
    if (rst) begin
        out_a <=0;
        out_b <=0;
        out_data <=0;
        out_valid <=0;

        backedup <=0; //bad code, backed up = 0 actually means we ARE backed up lmao
        accum <=0;
        in_data_reg <=0;
    end else begin
        
        if (in_valid && backedup == 0) begin
            out_data <= accum;
            accum <= in_a * in_b;
            out_valid <=1;
            backedup <=1;
            in_data_reg <= in_data;

        end else if (backedup != 0) begin
            out_data <= in_data_reg;
            out_valid <=1;
            accum <= accum + (in_a * in_b);
            backedup <= in_valid;
            in_data_reg <=in_data; 

        end else if (init) begin
            out_data <= accum;
            out_valid <=1;
            accum <= (in_a * in_b);
            //backedup <= in_valid;
            in_data_reg <=in_data; 

        end else begin
            accum <= accum + (in_a * in_b);
            out_data <= in_data;
            out_valid <=0;
            backedup <=0;
        end
    out_a <= in_a;
    out_b <= in_b;

    end


end
 
endmodule
