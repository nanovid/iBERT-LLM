`timescale 1ps / 1ps

module gelu
#(
    parameter integer D_W   = 32,
    parameter integer SHIFT = 14
)
(
    input  logic                  clk,
    input  logic                  rst,
    input  logic                  in_valid,
    input  logic                  enable,
    input  logic signed [D_W-1:0] qin,           // gelu input

    input  logic signed [D_W-1:0] qb,            // coefficient
    input  logic signed [D_W-1:0] qc,            // coefficient
    input  logic signed [D_W-1:0] q1,            // coefficient

    output logic                  out_valid,
    output logic signed [D_W-1:0] qout           // gelu output
);

// Your solution here.


logic signed [D_W:0] qin_r0, qin_r1, qin_r2, qin_r3, qin_r4, qin_r5, qin_r6;
logic signed [D_W:0] qsign_r0, qsign_r1, qsign_r2, qsign_r3;
logic signed [D_W:0] qmin_r0, qmin_r1;
logic signed [D_W:0] qmin_2_qb, qmin_2_qb2, qerf, qerf_q1;
logic signed [D_W:0] qb_r, qc_r, ql_r, q1_r;


logic in_validr0,in_validr1, in_validr2, in_validr3, in_validr4, in_validr5, in_validr6, in_validr7; 


always_ff @(posedge clk) begin
    if(rst) begin
        qin_r0 <=0;
        //qsign_r0 <=0;
        //qmin_r0 <=0;    
        qb_r <=0;
        qc_r <=0;
        q1_r <=0;
    end else if (in_valid) begin
        qin_r0 <=qin;
        qb_r <=qb;
        qc_r <=qc;
        q1_r <=q1;
end
end

always_ff @( posedge clk ) begin

    if(rst) begin
        qin_r1 <=0;
        qin_r2 <=0;
        qin_r3 <=0;
        qin_r4 <=0;
        qin_r5 <=0;
        qin_r6 <=0;
    
        qsign_r0<=0;
        qsign_r1<=0;
        qsign_r2<=0;
        qsign_r3<=0;

        qmin_r0<=0;
        qmin_r1<=0;

        qmin_2_qb <=0;
        qmin_2_qb2 <=0;
        ql_r<=0;
        qerf<=0;
        qerf_q1 <=0;

        qout <=0;
        out_valid <=0;

        in_validr0 <=0;
        in_validr1 <=0;
        in_validr2 <=0;
        in_validr3 <=0;
        in_validr4 <=0;
        in_validr5 <=0;
        in_validr6 <=0;
        in_validr7 <=0;

    end else begin 

        in_validr0<=in_valid;

        //stage 1
        qsign_r0 <= qin_r0[D_W-1];
        qmin_r0 <= (((qin_r0 >=0)? qin_r0:-qin_r0) > -qb_r)? -qb_r: ((qin_r0 >=0)? qin_r0:-qin_r0);
        qin_r1 <= qin_r0;
        //qsign_r1 <= qsign_r0;
        in_validr1<=in_validr0;

        //stage 2
        qmin_2_qb <= ((qb_r * 2) + qmin_r0);
        qmin_r1 <= qmin_r0;
        qin_r2 <=qin_r1;
        qsign_r1 <= qsign_r0;
        in_validr2<=in_validr1;

        //stage 3
        qmin_2_qb2 <= qmin_2_qb * qmin_r1;
        qin_r3 <= qin_r2;
        qsign_r2 <= qsign_r1;
        in_validr3<=in_validr2;

        //stage4
        ql_r <= qmin_2_qb2 + qc_r;
        qin_r4 <= qin_r3;
        qsign_r3 <= qsign_r2;
        in_validr4<=in_validr3;

        //stage 5
        qerf <= ((qsign_r3)? -ql_r:ql_r)>>>SHIFT;
        qin_r5<=qin_r4;
        in_validr5<=in_validr4;

        //stage 6

        qerf_q1 <= qerf + q1_r;
        qin_r6 <=qin_r5;
        in_validr6<=in_validr5;

        //stage 7

        qout <= (qerf_q1 * qin_r6);
        //in_validr7<=in_validr6;

        if (in_validr6) begin
            out_valid<=1;
        end else begin
            out_valid <=0;
        end
    end
end 


endmodule
