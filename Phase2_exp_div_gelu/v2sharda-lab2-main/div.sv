`timescale 1ps / 1ps
//`include "lopd.sv"
module div
#(
    parameter integer D_W = 32
)
(
    input  logic           clk,
    input  logic           rst,
    input  logic           in_valid,
    input  logic [D_W-1:0] divisor,
    input  logic [D_W-1:0] dividend,
    output logic [D_W-1:0] quotient,
    output logic           out_valid
);

// Your solution here.

enum{init, comp} state;
logic [D_W-1:0] remainder, quotient_reg;
logic [D_W-1:0] A, B;
logic [4:0] msb;
logic [4:0] remainder_log2, divisor_log2;

// **Registered Inputs**
logic [D_W-1:0] divisor_reg, dividend_reg;


lopd lopd_inst1 (
    .in_data(divisor_reg),
    .out_data(divisor_log2)
);

lopd lopd_inst2 (
    .in_data(remainder),
    .out_data(remainder_log2)
);


always_ff @(posedge clk) begin: runstmc
    if (rst) begin
        state <= init;
    end else begin 
        case(state)
            init: if(in_valid) state <= comp;
            comp: if(remainder < divisor_reg) state <= init;
            default: state <= init; //KEEP THIS IN MIND
        endcase
    end 
end

always_comb begin : comp_combinational
    if (rst) begin     
        msb = 0;
        A = 0;
        B = 0;
    end else begin
        msb = remainder_log2 - divisor_log2;
        A = divisor_reg << msb;
        B = A >> 1;
    end
end

always_ff @(posedge clk) begin: compute
    if(rst) begin
        quotient_reg <= 0;
        quotient <= 0;
        out_valid <= 0;
        remainder <= 0;
        //A <= 0;
        //B <= 0;
        //msb <=0;
        dividend_reg <= 0;
        divisor_reg <= 0;


    end else begin
    
    case(state)
        init: begin
            dividend_reg <= dividend;
            remainder <= dividend;
            //$display("we are now inside the init state computation block");

        
            quotient_reg <= 0;
            quotient <=0;
            divisor_reg <= divisor;
            
        
            
            out_valid <=0;
            
        end
        comp: begin
            if(remainder >= divisor_reg) begin
                //$display("oh we are computing now ");
                //msb <= remainder_log2 - divisor_log2;
                //A <= divisor_reg << msb;
                //B <= A >> 1;
                if(remainder < A) begin
                    remainder <= remainder - B;
                    quotient_reg <= quotient_reg + 2**(msb-1);
                end else begin
                    remainder <= remainder - A;
                    quotient_reg <= quotient_reg + 2**msb;
                end 
                //out_valid <= 0;
            end else begin
                quotient <= quotient_reg;
                out_valid <= 1;
            end 
        end
    endcase
    end

end

endmodule
