`timescale 1ps / 1ps

module max
#(
    parameter D_W = 32
)
(
    input logic                  clk,
    input logic                  rst,
    input logic                  initialize,
    input logic signed [D_W-1:0] in_data,
    output logic signed [D_W-1:0] result
);

// write your code here

    always @(posedge clk) begin
        if (rst) begin
            result <= 0;
        end else if (initialize) begin
            result <= in_data;
        end else begin
            if (result < in_data) begin
                result <= in_data;
            end
        end
    end


endmodule
