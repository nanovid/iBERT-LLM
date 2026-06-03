`timescale 1ps / 1ps

module exp
#(
    parameter integer D_W     = 32,
    parameter integer FP_BITS = 30
)
(
    input  logic                  clk,
    input  logic                  rst,
    input  logic                  in_valid,
    input  logic                  enable,
    input  logic signed [D_W-1:0] qin,           // exp input

    input  logic signed [D_W-1:0] qb,            // coefficient
    input  logic signed [D_W-1:0] qc,            // coefficient
    input  logic signed [D_W-1:0] qln2,          // coefficient
    input  logic signed [D_W-1:0] qln2_inv,      // coefficient

    output logic                  out_valid,
    output logic signed [D_W-1:0] qout           // exp output
);

// Your Lab2 code here

logic signed [2*D_W-1:0] z_r0, z_r1, z_r2, z_r3, z_r4, z_r5;
logic signed [D_W-1:0] qc_r0, qc_r1, qc_r2, qc_r3, qc_r4, qc_r5;
logic signed [D_W-1:0] qb_r0, qb_r1, qb_r2, qb_r3;
logic signed [D_W-1:0] qln2_r0, qln2_r1;
logic signed [D_W-1:0] qin_r0, qin_r1, qin_r2;
logic signed [D_W-1:0] qln2_inv_r0;

logic signed [D_W-1:0] zqln2_r0, qp_r0, qp_r1, qp_qb_r0, qp_qb_qp_r0, ql_r0;

logic [6:0] valid_shift;

logic in_validr0;
logic in_validr1, in_validr2, in_validr3, in_validr4, in_validr5, in_validr6, in_validr7; 


//gonna assume input pipelies are nessessary and will be set to their stuff in their own always block
always_ff @(posedge clk) begin 
    if(rst) begin
        qc_r0 <=0;
        qb_r0 <=0;
        qln2_r0 <=0;
        qin_r0 <=0;
        qln2_inv_r0 <=0;

    end else if (in_valid) begin 
        qc_r0 <= qc;
        qb_r0 <=qb;
        qln2_r0 <=qln2;
        qin_r0 <=qin;
        qln2_inv_r0 <=qln2_inv;
        //in_validr0 <= in_valid;
    end 
end 


 

always_ff @(posedge clk) begin
    if(rst) begin
        qc_r1 <=0;
        qc_r2 <=0;
        qc_r3 <=0;
        qc_r4 <=0;
        qc_r5 <=0;

        qb_r1 <=0;
        qb_r2 <=0;
        qb_r3 <=0;

        qln2_r1 <=0;
        
        qin_r1<=0;
        qin_r2<=0;

        z_r0 <=0;
        z_r1 <=0;
        z_r2 <=0;
        z_r3 <=0;
        z_r4 <=0;
        z_r5 <=0;
        zqln2_r0 <=0;

        qp_r0 <=0;
        qp_r1 <=0;

        qp_qb_r0 <=0;
        qp_qb_qp_r0 <=0;
        
        ql_r0 <=0;

        valid_shift <= 7'b0000000;
        in_validr0 <=0;
        in_validr1<=0;
        in_validr2<=0;
        in_validr3<=0;
        in_validr4<=0;
        in_validr5<=0;
        in_validr6<=0;
        in_validr7<=0;
        //q_out<=0;

        qout<=0;

        out_valid<=0;

    end else begin

        in_validr0<=in_valid;

        //stage1
        z_r0 <= (qin_r0 * qln2_inv_r0) >>> FP_BITS;
        qin_r1 <=qin_r0;
        qln2_r1 <= qln2_r0;
        qb_r1 <= qb_r0;
        qc_r1 <= qc_r0;

        in_validr1 <= in_validr0;
        //in_validr0 <=0;

        //stage 2
        zqln2_r0 <= z_r0 *qln2_r1;
        qin_r2 <= qin_r1;
        qb_r2 <= qb_r1;
        qc_r2 <= qc_r1;
        z_r1 <= z_r0;

        in_validr2 <= in_validr1;
        
        //stage3
        qp_r0 <= qin_r2 - zqln2_r0;
        qc_r3 <= qc_r2;
        qb_r3 <=qb_r2;
        z_r2 <= z_r1;

        in_validr3 <= in_validr2;

        //stage 4
        qp_qb_r0 <= qb_r3 + qp_r0;
        qp_r1 <= qp_r0;
        qc_r4 <=qc_r3;
        z_r3 <= z_r2;
        //qc_r4 <=qc_r3;

        in_validr4 <= in_validr3;

        //stage 5
        qp_qb_qp_r0 <= qp_qb_r0 * qp_r1;
        qc_r5 <=qc_r4;
        z_r4 <= z_r3;

        in_validr5 <= in_validr4;

        //stage 6
        ql_r0 <= qp_qb_qp_r0 + qc_r5;
        z_r5 <= z_r4;

        in_validr6 <= in_validr5;

        //stage 7
        qout <= (ql_r0 >>> z_r5);
        valid_shift <= {valid_shift[5:0], 1'b1};

        //in_validr7 <= in_validr6;

        if (in_validr6) begin
            out_valid<=1;
        end else begin
            out_valid <=0;
    end
end
end        


endmodule
