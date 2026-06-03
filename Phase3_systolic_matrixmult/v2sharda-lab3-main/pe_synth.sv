// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Mar 18 16:00:01 2025
// Host        : JANE running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim pe_synth.sv
// Design      : pe
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* D_W = "8" *) (* D_W_ACC = "32" *) 
(* NotValidForBitStream *)
module pe
   (clk,
    rst,
    init,
    in_a,
    in_b,
    in_data,
    in_valid,
    out_a,
    out_b,
    out_data,
    out_valid);
  input clk;
  input rst;
  input init;
  input [7:0]in_a;
  input [7:0]in_b;
  input [31:0]in_data;
  input in_valid;
  output [7:0]out_a;
  output [7:0]out_b;
  output [31:0]out_data;
  output out_valid;

  wire [31:0]accum;
  wire [31:0]accum00_out;
  wire \accum[11]_i_10_n_0 ;
  wire \accum[11]_i_11_n_0 ;
  wire \accum[11]_i_12_n_0 ;
  wire \accum[11]_i_13_n_0 ;
  wire \accum[11]_i_14_n_0 ;
  wire \accum[11]_i_15_n_0 ;
  wire \accum[11]_i_20_n_0 ;
  wire \accum[11]_i_21_n_0 ;
  wire \accum[11]_i_22_n_0 ;
  wire \accum[11]_i_23_n_0 ;
  wire \accum[11]_i_24_n_0 ;
  wire \accum[11]_i_25_n_0 ;
  wire \accum[11]_i_26_n_0 ;
  wire \accum[11]_i_27_n_0 ;
  wire \accum[11]_i_28_n_0 ;
  wire \accum[11]_i_29_n_0 ;
  wire \accum[11]_i_30_n_0 ;
  wire \accum[11]_i_31_n_0 ;
  wire \accum[11]_i_32_n_0 ;
  wire \accum[11]_i_33_n_0 ;
  wire \accum[11]_i_34_n_0 ;
  wire \accum[11]_i_35_n_0 ;
  wire \accum[11]_i_36_n_0 ;
  wire \accum[11]_i_37_n_0 ;
  wire \accum[11]_i_38_n_0 ;
  wire \accum[11]_i_39_n_0 ;
  wire \accum[11]_i_40_n_0 ;
  wire \accum[11]_i_41_n_0 ;
  wire \accum[11]_i_42_n_0 ;
  wire \accum[11]_i_43_n_0 ;
  wire \accum[11]_i_44_n_0 ;
  wire \accum[11]_i_45_n_0 ;
  wire \accum[11]_i_46_n_0 ;
  wire \accum[11]_i_47_n_0 ;
  wire \accum[11]_i_48_n_0 ;
  wire \accum[11]_i_49_n_0 ;
  wire \accum[11]_i_4_n_0 ;
  wire \accum[11]_i_50_n_0 ;
  wire \accum[11]_i_51_n_0 ;
  wire \accum[11]_i_52_n_0 ;
  wire \accum[11]_i_53_n_0 ;
  wire \accum[11]_i_54_n_0 ;
  wire \accum[11]_i_5_n_0 ;
  wire \accum[11]_i_6_n_0 ;
  wire \accum[11]_i_7_n_0 ;
  wire \accum[11]_i_8_n_0 ;
  wire \accum[11]_i_9_n_0 ;
  wire \accum[15]_i_3_n_0 ;
  wire \accum[15]_i_4_n_0 ;
  wire \accum[15]_i_5_n_0 ;
  wire \accum[15]_i_6_n_0 ;
  wire \accum[19]_i_3_n_0 ;
  wire \accum[19]_i_4_n_0 ;
  wire \accum[19]_i_5_n_0 ;
  wire \accum[19]_i_6_n_0 ;
  wire \accum[19]_i_7_n_0 ;
  wire \accum[23]_i_3_n_0 ;
  wire \accum[23]_i_4_n_0 ;
  wire \accum[23]_i_5_n_0 ;
  wire \accum[23]_i_6_n_0 ;
  wire \accum[27]_i_3_n_0 ;
  wire \accum[27]_i_4_n_0 ;
  wire \accum[27]_i_5_n_0 ;
  wire \accum[27]_i_6_n_0 ;
  wire \accum[31]_i_10_n_0 ;
  wire \accum[31]_i_11_n_0 ;
  wire \accum[31]_i_12_n_0 ;
  wire \accum[31]_i_13_n_0 ;
  wire \accum[31]_i_15_n_0 ;
  wire \accum[31]_i_16_n_0 ;
  wire \accum[31]_i_18_n_0 ;
  wire \accum[31]_i_19_n_0 ;
  wire \accum[31]_i_20_n_0 ;
  wire \accum[31]_i_21_n_0 ;
  wire \accum[31]_i_22_n_0 ;
  wire \accum[31]_i_23_n_0 ;
  wire \accum[31]_i_24_n_0 ;
  wire \accum[31]_i_25_n_0 ;
  wire \accum[31]_i_26_n_0 ;
  wire \accum[31]_i_27_n_0 ;
  wire \accum[31]_i_28_n_0 ;
  wire \accum[31]_i_29_n_0 ;
  wire \accum[31]_i_5_n_0 ;
  wire \accum[31]_i_6_n_0 ;
  wire \accum[31]_i_7_n_0 ;
  wire \accum[31]_i_8_n_0 ;
  wire \accum[31]_i_9_n_0 ;
  wire \accum[3]_i_10_n_0 ;
  wire \accum[3]_i_11_n_0 ;
  wire \accum[3]_i_12_n_0 ;
  wire \accum[3]_i_13_n_0 ;
  wire \accum[3]_i_14_n_0 ;
  wire \accum[3]_i_15_n_0 ;
  wire \accum[3]_i_16_n_0 ;
  wire \accum[3]_i_17_n_0 ;
  wire \accum[3]_i_18_n_0 ;
  wire \accum[3]_i_19_n_0 ;
  wire \accum[3]_i_20_n_0 ;
  wire \accum[3]_i_21_n_0 ;
  wire \accum[3]_i_22_n_0 ;
  wire \accum[3]_i_23_n_0 ;
  wire \accum[3]_i_24_n_0 ;
  wire \accum[3]_i_5_n_0 ;
  wire \accum[3]_i_6_n_0 ;
  wire \accum[3]_i_7_n_0 ;
  wire \accum[3]_i_8_n_0 ;
  wire \accum[3]_i_9_n_0 ;
  wire \accum[7]_i_10_n_0 ;
  wire \accum[7]_i_11_n_0 ;
  wire \accum[7]_i_12_n_0 ;
  wire \accum[7]_i_13_n_0 ;
  wire \accum[7]_i_14_n_0 ;
  wire \accum[7]_i_15_n_0 ;
  wire \accum[7]_i_4_n_0 ;
  wire \accum[7]_i_5_n_0 ;
  wire \accum[7]_i_6_n_0 ;
  wire \accum[7]_i_7_n_0 ;
  wire \accum[7]_i_8_n_0 ;
  wire \accum[7]_i_9_n_0 ;
  wire \accum_reg[11]_i_16_n_0 ;
  wire \accum_reg[11]_i_16_n_1 ;
  wire \accum_reg[11]_i_16_n_2 ;
  wire \accum_reg[11]_i_16_n_3 ;
  wire \accum_reg[11]_i_16_n_4 ;
  wire \accum_reg[11]_i_16_n_5 ;
  wire \accum_reg[11]_i_16_n_6 ;
  wire \accum_reg[11]_i_16_n_7 ;
  wire \accum_reg[11]_i_17_n_1 ;
  wire \accum_reg[11]_i_17_n_3 ;
  wire \accum_reg[11]_i_17_n_6 ;
  wire \accum_reg[11]_i_17_n_7 ;
  wire \accum_reg[11]_i_18_n_0 ;
  wire \accum_reg[11]_i_18_n_1 ;
  wire \accum_reg[11]_i_18_n_2 ;
  wire \accum_reg[11]_i_18_n_3 ;
  wire \accum_reg[11]_i_18_n_4 ;
  wire \accum_reg[11]_i_18_n_5 ;
  wire \accum_reg[11]_i_18_n_6 ;
  wire \accum_reg[11]_i_18_n_7 ;
  wire \accum_reg[11]_i_19_n_0 ;
  wire \accum_reg[11]_i_19_n_1 ;
  wire \accum_reg[11]_i_19_n_2 ;
  wire \accum_reg[11]_i_19_n_3 ;
  wire \accum_reg[11]_i_19_n_4 ;
  wire \accum_reg[11]_i_19_n_5 ;
  wire \accum_reg[11]_i_19_n_6 ;
  wire \accum_reg[11]_i_19_n_7 ;
  wire \accum_reg[11]_i_2_n_0 ;
  wire \accum_reg[11]_i_2_n_1 ;
  wire \accum_reg[11]_i_2_n_2 ;
  wire \accum_reg[11]_i_2_n_3 ;
  wire \accum_reg[11]_i_2_n_4 ;
  wire \accum_reg[11]_i_2_n_5 ;
  wire \accum_reg[11]_i_2_n_6 ;
  wire \accum_reg[11]_i_2_n_7 ;
  wire \accum_reg[11]_i_3_n_0 ;
  wire \accum_reg[11]_i_3_n_1 ;
  wire \accum_reg[11]_i_3_n_2 ;
  wire \accum_reg[11]_i_3_n_3 ;
  wire \accum_reg[15]_i_2_n_0 ;
  wire \accum_reg[15]_i_2_n_1 ;
  wire \accum_reg[15]_i_2_n_2 ;
  wire \accum_reg[15]_i_2_n_3 ;
  wire \accum_reg[19]_i_2_n_0 ;
  wire \accum_reg[19]_i_2_n_1 ;
  wire \accum_reg[19]_i_2_n_2 ;
  wire \accum_reg[19]_i_2_n_3 ;
  wire \accum_reg[23]_i_2_n_0 ;
  wire \accum_reg[23]_i_2_n_1 ;
  wire \accum_reg[23]_i_2_n_2 ;
  wire \accum_reg[23]_i_2_n_3 ;
  wire \accum_reg[27]_i_2_n_0 ;
  wire \accum_reg[27]_i_2_n_1 ;
  wire \accum_reg[27]_i_2_n_2 ;
  wire \accum_reg[27]_i_2_n_3 ;
  wire \accum_reg[31]_i_14_n_0 ;
  wire \accum_reg[31]_i_14_n_1 ;
  wire \accum_reg[31]_i_14_n_2 ;
  wire \accum_reg[31]_i_14_n_3 ;
  wire \accum_reg[31]_i_14_n_4 ;
  wire \accum_reg[31]_i_14_n_5 ;
  wire \accum_reg[31]_i_14_n_6 ;
  wire \accum_reg[31]_i_14_n_7 ;
  wire \accum_reg[31]_i_17_n_1 ;
  wire \accum_reg[31]_i_17_n_3 ;
  wire \accum_reg[31]_i_17_n_6 ;
  wire \accum_reg[31]_i_17_n_7 ;
  wire \accum_reg[31]_i_2_n_1 ;
  wire \accum_reg[31]_i_2_n_2 ;
  wire \accum_reg[31]_i_2_n_3 ;
  wire \accum_reg[31]_i_2_n_4 ;
  wire \accum_reg[31]_i_2_n_5 ;
  wire \accum_reg[31]_i_2_n_6 ;
  wire \accum_reg[31]_i_2_n_7 ;
  wire \accum_reg[31]_i_3_n_1 ;
  wire \accum_reg[31]_i_3_n_2 ;
  wire \accum_reg[31]_i_3_n_3 ;
  wire \accum_reg[31]_i_4_n_3 ;
  wire \accum_reg[31]_i_4_n_6 ;
  wire \accum_reg[31]_i_4_n_7 ;
  wire \accum_reg[3]_i_2_n_0 ;
  wire \accum_reg[3]_i_2_n_1 ;
  wire \accum_reg[3]_i_2_n_2 ;
  wire \accum_reg[3]_i_2_n_3 ;
  wire \accum_reg[3]_i_2_n_4 ;
  wire \accum_reg[3]_i_2_n_5 ;
  wire \accum_reg[3]_i_2_n_6 ;
  wire \accum_reg[3]_i_2_n_7 ;
  wire \accum_reg[3]_i_3_n_0 ;
  wire \accum_reg[3]_i_3_n_1 ;
  wire \accum_reg[3]_i_3_n_2 ;
  wire \accum_reg[3]_i_3_n_3 ;
  wire \accum_reg[3]_i_3_n_4 ;
  wire \accum_reg[3]_i_3_n_5 ;
  wire \accum_reg[3]_i_3_n_6 ;
  wire \accum_reg[3]_i_3_n_7 ;
  wire \accum_reg[3]_i_4_n_0 ;
  wire \accum_reg[3]_i_4_n_1 ;
  wire \accum_reg[3]_i_4_n_2 ;
  wire \accum_reg[3]_i_4_n_3 ;
  wire \accum_reg[7]_i_2_n_0 ;
  wire \accum_reg[7]_i_2_n_1 ;
  wire \accum_reg[7]_i_2_n_2 ;
  wire \accum_reg[7]_i_2_n_3 ;
  wire \accum_reg[7]_i_2_n_4 ;
  wire \accum_reg[7]_i_2_n_5 ;
  wire \accum_reg[7]_i_2_n_6 ;
  wire \accum_reg[7]_i_2_n_7 ;
  wire \accum_reg[7]_i_3_n_0 ;
  wire \accum_reg[7]_i_3_n_1 ;
  wire \accum_reg[7]_i_3_n_2 ;
  wire \accum_reg[7]_i_3_n_3 ;
  wire backedup;
  wire \backedup[0]_i_1_n_0 ;
  wire clk;
  wire [7:0]in_a;
  wire [7:0]in_b;
  wire [31:0]in_data;
  wire [31:0]in_data_reg;
  wire \in_data_reg[31]_i_1_n_0 ;
  wire in_valid;
  wire init;
  wire [7:0]out_a;
  wire [7:0]out_b;
  wire [31:0]out_data;
  wire \out_data[0]_i_1_n_0 ;
  wire \out_data[10]_i_1_n_0 ;
  wire \out_data[11]_i_1_n_0 ;
  wire \out_data[12]_i_1_n_0 ;
  wire \out_data[13]_i_1_n_0 ;
  wire \out_data[14]_i_1_n_0 ;
  wire \out_data[15]_i_1_n_0 ;
  wire \out_data[16]_i_1_n_0 ;
  wire \out_data[17]_i_1_n_0 ;
  wire \out_data[18]_i_1_n_0 ;
  wire \out_data[19]_i_1_n_0 ;
  wire \out_data[1]_i_1_n_0 ;
  wire \out_data[20]_i_1_n_0 ;
  wire \out_data[21]_i_1_n_0 ;
  wire \out_data[22]_i_1_n_0 ;
  wire \out_data[23]_i_1_n_0 ;
  wire \out_data[24]_i_1_n_0 ;
  wire \out_data[25]_i_1_n_0 ;
  wire \out_data[26]_i_1_n_0 ;
  wire \out_data[27]_i_1_n_0 ;
  wire \out_data[28]_i_1_n_0 ;
  wire \out_data[29]_i_1_n_0 ;
  wire \out_data[2]_i_1_n_0 ;
  wire \out_data[30]_i_1_n_0 ;
  wire \out_data[31]_i_1_n_0 ;
  wire \out_data[3]_i_1_n_0 ;
  wire \out_data[4]_i_1_n_0 ;
  wire \out_data[5]_i_1_n_0 ;
  wire \out_data[6]_i_1_n_0 ;
  wire \out_data[7]_i_1_n_0 ;
  wire \out_data[8]_i_1_n_0 ;
  wire \out_data[9]_i_1_n_0 ;
  wire out_valid;
  wire out_valid_i_1_n_0;
  wire [31:0]p_0_in;
  wire rst;
  wire [3:1]\NLW_accum_reg[11]_i_17_CO_UNCONNECTED ;
  wire [3:2]\NLW_accum_reg[11]_i_17_O_UNCONNECTED ;
  wire [3:1]\NLW_accum_reg[31]_i_17_CO_UNCONNECTED ;
  wire [3:2]\NLW_accum_reg[31]_i_17_O_UNCONNECTED ;
  wire [3:3]\NLW_accum_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_accum_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_accum_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_accum_reg[31]_i_4_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[0]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[3]_i_2_n_7 ),
        .I3(init),
        .I4(accum00_out[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[10]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[11]_i_2_n_5 ),
        .I3(init),
        .I4(accum00_out[10]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[11]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[11]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[11]),
        .O(p_0_in[11]));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \accum[11]_i_10 
       (.I0(\accum_reg[11]_i_18_n_4 ),
        .I1(\accum_reg[11]_i_16_n_5 ),
        .I2(\accum_reg[11]_i_17_n_6 ),
        .I3(\accum[11]_i_6_n_0 ),
        .O(\accum[11]_i_10_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \accum[11]_i_11 
       (.I0(\accum_reg[11]_i_18_n_5 ),
        .I1(\accum_reg[11]_i_16_n_6 ),
        .I2(\accum_reg[11]_i_17_n_7 ),
        .I3(\accum[11]_i_7_n_0 ),
        .O(\accum[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[11]_i_12 
       (.I0(accum[11]),
        .I1(\accum_reg[11]_i_2_n_4 ),
        .O(\accum[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[11]_i_13 
       (.I0(accum[10]),
        .I1(\accum_reg[11]_i_2_n_5 ),
        .O(\accum[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[11]_i_14 
       (.I0(accum[9]),
        .I1(\accum_reg[11]_i_2_n_6 ),
        .O(\accum[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[11]_i_15 
       (.I0(accum[8]),
        .I1(\accum_reg[11]_i_2_n_7 ),
        .O(\accum[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_20 
       (.I0(in_b[5]),
        .I1(in_a[4]),
        .I2(in_b[4]),
        .I3(in_a[5]),
        .I4(in_b[3]),
        .I5(in_a[6]),
        .O(\accum[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_21 
       (.I0(in_b[5]),
        .I1(in_a[3]),
        .I2(in_b[4]),
        .I3(in_a[4]),
        .I4(in_b[3]),
        .I5(in_a[5]),
        .O(\accum[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_22 
       (.I0(in_b[5]),
        .I1(in_a[2]),
        .I2(in_b[4]),
        .I3(in_a[3]),
        .I4(in_b[3]),
        .I5(in_a[4]),
        .O(\accum[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_23 
       (.I0(in_b[5]),
        .I1(in_a[1]),
        .I2(in_b[4]),
        .I3(in_a[2]),
        .I4(in_b[3]),
        .I5(in_a[3]),
        .O(\accum[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \accum[11]_i_24 
       (.I0(\accum[11]_i_20_n_0 ),
        .I1(in_b[4]),
        .I2(in_a[6]),
        .I3(\accum[11]_i_47_n_0 ),
        .I4(in_a[7]),
        .I5(in_b[3]),
        .O(\accum[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \accum[11]_i_25 
       (.I0(\accum[11]_i_21_n_0 ),
        .I1(in_b[4]),
        .I2(in_a[5]),
        .I3(\accum[11]_i_48_n_0 ),
        .I4(in_a[6]),
        .I5(in_b[3]),
        .O(\accum[11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \accum[11]_i_26 
       (.I0(\accum[11]_i_22_n_0 ),
        .I1(in_b[4]),
        .I2(in_a[4]),
        .I3(\accum[11]_i_49_n_0 ),
        .I4(in_a[5]),
        .I5(in_b[3]),
        .O(\accum[11]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \accum[11]_i_27 
       (.I0(\accum[11]_i_23_n_0 ),
        .I1(in_b[4]),
        .I2(in_a[3]),
        .I3(\accum[11]_i_50_n_0 ),
        .I4(in_a[4]),
        .I5(in_b[3]),
        .O(\accum[11]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \accum[11]_i_28 
       (.I0(in_b[1]),
        .I1(in_a[7]),
        .I2(in_b[2]),
        .I3(in_a[6]),
        .O(\accum[11]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    \accum[11]_i_29 
       (.I0(in_b[2]),
        .I1(in_a[5]),
        .I2(in_b[1]),
        .I3(in_a[6]),
        .I4(in_b[0]),
        .I5(in_a[7]),
        .O(\accum[11]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F5F)) 
    \accum[11]_i_30 
       (.I0(in_a[6]),
        .I1(in_b[1]),
        .I2(in_b[2]),
        .I3(in_a[7]),
        .O(\accum[11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h2450F30F4BFFC3FF)) 
    \accum[11]_i_31 
       (.I0(in_b[0]),
        .I1(in_a[5]),
        .I2(in_a[6]),
        .I3(in_b[2]),
        .I4(in_a[7]),
        .I5(in_b[1]),
        .O(\accum[11]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_32 
       (.I0(in_a[1]),
        .I1(in_b[7]),
        .O(\accum[11]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[11]_i_33 
       (.I0(in_b[7]),
        .I1(in_a[1]),
        .O(\accum[11]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_34 
       (.I0(in_a[0]),
        .I1(in_b[7]),
        .O(\accum[11]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h9F606060)) 
    \accum[11]_i_35 
       (.I0(in_a[1]),
        .I1(in_a[2]),
        .I2(in_b[7]),
        .I3(in_a[3]),
        .I4(in_b[6]),
        .O(\accum[11]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \accum[11]_i_36 
       (.I0(in_b[7]),
        .I1(in_a[1]),
        .I2(in_b[6]),
        .I3(in_a[2]),
        .O(\accum[11]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \accum[11]_i_37 
       (.I0(in_b[7]),
        .I1(in_a[0]),
        .I2(in_b[6]),
        .I3(in_a[1]),
        .O(\accum[11]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[11]_i_38 
       (.I0(in_a[0]),
        .I1(in_b[6]),
        .O(\accum[11]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_39 
       (.I0(in_b[2]),
        .I1(in_a[4]),
        .I2(in_b[1]),
        .I3(in_a[5]),
        .I4(in_b[0]),
        .I5(in_a[6]),
        .O(\accum[11]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \accum[11]_i_4 
       (.I0(\accum_reg[31]_i_14_n_7 ),
        .I1(\accum_reg[11]_i_16_n_4 ),
        .I2(\accum_reg[11]_i_17_n_1 ),
        .O(\accum[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_40 
       (.I0(in_b[2]),
        .I1(in_a[3]),
        .I2(in_b[1]),
        .I3(in_a[4]),
        .I4(in_b[0]),
        .I5(in_a[5]),
        .O(\accum[11]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_41 
       (.I0(in_b[2]),
        .I1(in_a[2]),
        .I2(in_b[1]),
        .I3(in_a[3]),
        .I4(in_b[0]),
        .I5(in_a[4]),
        .O(\accum[11]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \accum[11]_i_42 
       (.I0(in_b[2]),
        .I1(in_a[1]),
        .I2(in_b[1]),
        .I3(in_a[2]),
        .I4(in_b[0]),
        .I5(in_a[3]),
        .O(\accum[11]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \accum[11]_i_43 
       (.I0(\accum[11]_i_39_n_0 ),
        .I1(in_b[1]),
        .I2(in_a[6]),
        .I3(\accum[11]_i_51_n_0 ),
        .I4(in_a[7]),
        .I5(in_b[0]),
        .O(\accum[11]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \accum[11]_i_44 
       (.I0(\accum[11]_i_40_n_0 ),
        .I1(in_b[1]),
        .I2(in_a[5]),
        .I3(\accum[11]_i_52_n_0 ),
        .I4(in_a[6]),
        .I5(in_b[0]),
        .O(\accum[11]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \accum[11]_i_45 
       (.I0(\accum[11]_i_41_n_0 ),
        .I1(in_b[1]),
        .I2(in_a[4]),
        .I3(\accum[11]_i_53_n_0 ),
        .I4(in_a[5]),
        .I5(in_b[0]),
        .O(\accum[11]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \accum[11]_i_46 
       (.I0(\accum[11]_i_42_n_0 ),
        .I1(in_b[1]),
        .I2(in_a[3]),
        .I3(\accum[11]_i_54_n_0 ),
        .I4(in_a[4]),
        .I5(in_b[0]),
        .O(\accum[11]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_47 
       (.I0(in_a[5]),
        .I1(in_b[5]),
        .O(\accum[11]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_48 
       (.I0(in_a[4]),
        .I1(in_b[5]),
        .O(\accum[11]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_49 
       (.I0(in_a[3]),
        .I1(in_b[5]),
        .O(\accum[11]_i_49_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \accum[11]_i_5 
       (.I0(\accum_reg[11]_i_18_n_4 ),
        .I1(\accum_reg[11]_i_16_n_5 ),
        .I2(\accum_reg[11]_i_17_n_6 ),
        .O(\accum[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_50 
       (.I0(in_a[2]),
        .I1(in_b[5]),
        .O(\accum[11]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_51 
       (.I0(in_a[5]),
        .I1(in_b[2]),
        .O(\accum[11]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_52 
       (.I0(in_a[4]),
        .I1(in_b[2]),
        .O(\accum[11]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_53 
       (.I0(in_a[3]),
        .I1(in_b[2]),
        .O(\accum[11]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[11]_i_54 
       (.I0(in_a[2]),
        .I1(in_b[2]),
        .O(\accum[11]_i_54_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \accum[11]_i_6 
       (.I0(\accum_reg[11]_i_18_n_5 ),
        .I1(\accum_reg[11]_i_16_n_6 ),
        .I2(\accum_reg[11]_i_17_n_7 ),
        .O(\accum[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \accum[11]_i_7 
       (.I0(\accum_reg[11]_i_18_n_6 ),
        .I1(\accum_reg[11]_i_16_n_7 ),
        .I2(\accum_reg[11]_i_19_n_4 ),
        .O(\accum[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \accum[11]_i_8 
       (.I0(\accum_reg[11]_i_17_n_1 ),
        .I1(\accum_reg[11]_i_16_n_4 ),
        .I2(\accum_reg[31]_i_14_n_7 ),
        .I3(\accum_reg[31]_i_14_n_6 ),
        .I4(\accum_reg[31]_i_17_n_7 ),
        .O(\accum[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \accum[11]_i_9 
       (.I0(\accum[11]_i_5_n_0 ),
        .I1(\accum_reg[11]_i_16_n_4 ),
        .I2(\accum_reg[31]_i_14_n_7 ),
        .I3(\accum_reg[11]_i_17_n_1 ),
        .O(\accum[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[12]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_7 ),
        .I3(init),
        .I4(accum00_out[12]),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[13]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_6 ),
        .I3(init),
        .I4(accum00_out[13]),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[14]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_5 ),
        .I3(init),
        .I4(accum00_out[14]),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[15]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[15]),
        .O(p_0_in[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[15]_i_3 
       (.I0(\accum_reg[31]_i_2_n_4 ),
        .I1(accum[15]),
        .O(\accum[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[15]_i_4 
       (.I0(accum[14]),
        .I1(\accum_reg[31]_i_2_n_5 ),
        .O(\accum[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[15]_i_5 
       (.I0(accum[13]),
        .I1(\accum_reg[31]_i_2_n_6 ),
        .O(\accum[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[15]_i_6 
       (.I0(accum[12]),
        .I1(\accum_reg[31]_i_2_n_7 ),
        .O(\accum[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[16]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[16]),
        .O(p_0_in[16]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[17]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[17]),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[18]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[18]),
        .O(p_0_in[18]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[19]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[19]),
        .O(p_0_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \accum[19]_i_3 
       (.I0(\accum_reg[31]_i_2_n_4 ),
        .O(\accum[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[19]_i_4 
       (.I0(accum[18]),
        .I1(accum[19]),
        .O(\accum[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[19]_i_5 
       (.I0(accum[17]),
        .I1(accum[18]),
        .O(\accum[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[19]_i_6 
       (.I0(accum[16]),
        .I1(accum[17]),
        .O(\accum[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[19]_i_7 
       (.I0(\accum_reg[31]_i_2_n_4 ),
        .I1(accum[16]),
        .O(\accum[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[1]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[3]_i_2_n_6 ),
        .I3(init),
        .I4(accum00_out[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[20]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[20]),
        .O(p_0_in[20]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[21]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[21]),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[22]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[22]),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[23]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[23]),
        .O(p_0_in[23]));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[23]_i_3 
       (.I0(accum[22]),
        .I1(accum[23]),
        .O(\accum[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[23]_i_4 
       (.I0(accum[21]),
        .I1(accum[22]),
        .O(\accum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[23]_i_5 
       (.I0(accum[20]),
        .I1(accum[21]),
        .O(\accum[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[23]_i_6 
       (.I0(accum[19]),
        .I1(accum[20]),
        .O(\accum[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[24]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[24]),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[25]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[25]),
        .O(p_0_in[25]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[26]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[26]),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[27]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[27]),
        .O(p_0_in[27]));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[27]_i_3 
       (.I0(accum[26]),
        .I1(accum[27]),
        .O(\accum[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[27]_i_4 
       (.I0(accum[25]),
        .I1(accum[26]),
        .O(\accum[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[27]_i_5 
       (.I0(accum[24]),
        .I1(accum[25]),
        .O(\accum[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[27]_i_6 
       (.I0(accum[23]),
        .I1(accum[24]),
        .O(\accum[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[28]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[28]),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[29]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[29]),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[2]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[3]_i_2_n_5 ),
        .I3(init),
        .I4(accum00_out[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[30]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[30]),
        .O(p_0_in[30]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[31]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[31]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[31]),
        .O(p_0_in[31]));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[31]_i_10 
       (.I0(accum[30]),
        .I1(accum[31]),
        .O(\accum[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[31]_i_11 
       (.I0(accum[29]),
        .I1(accum[30]),
        .O(\accum[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[31]_i_12 
       (.I0(accum[28]),
        .I1(accum[29]),
        .O(\accum[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \accum[31]_i_13 
       (.I0(accum[27]),
        .I1(accum[28]),
        .O(\accum[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \accum[31]_i_15 
       (.I0(in_b[7]),
        .I1(in_a[6]),
        .I2(in_b[6]),
        .I3(in_a[7]),
        .O(\accum[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    \accum[31]_i_16 
       (.I0(in_b[6]),
        .I1(in_a[6]),
        .I2(in_b[7]),
        .I3(in_a[7]),
        .O(\accum[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \accum[31]_i_18 
       (.I0(in_b[7]),
        .I1(in_a[5]),
        .I2(in_b[6]),
        .I3(in_a[6]),
        .O(\accum[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \accum[31]_i_19 
       (.I0(in_b[7]),
        .I1(in_a[4]),
        .I2(in_b[6]),
        .I3(in_a[5]),
        .O(\accum[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \accum[31]_i_20 
       (.I0(in_b[7]),
        .I1(in_a[3]),
        .I2(in_b[6]),
        .I3(in_a[4]),
        .O(\accum[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \accum[31]_i_21 
       (.I0(in_b[7]),
        .I1(in_a[2]),
        .I2(in_b[6]),
        .I3(in_a[3]),
        .O(\accum[31]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h738CC0C0)) 
    \accum[31]_i_22 
       (.I0(in_a[5]),
        .I1(in_a[6]),
        .I2(in_b[7]),
        .I3(in_a[7]),
        .I4(in_b[6]),
        .O(\accum[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \accum[31]_i_23 
       (.I0(in_a[4]),
        .I1(in_a[5]),
        .I2(in_b[7]),
        .I3(in_a[6]),
        .I4(in_b[6]),
        .O(\accum[31]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \accum[31]_i_24 
       (.I0(in_a[3]),
        .I1(in_a[4]),
        .I2(in_b[7]),
        .I3(in_a[5]),
        .I4(in_b[6]),
        .O(\accum[31]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \accum[31]_i_25 
       (.I0(in_a[2]),
        .I1(in_a[3]),
        .I2(in_b[7]),
        .I3(in_a[4]),
        .I4(in_b[6]),
        .O(\accum[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \accum[31]_i_26 
       (.I0(in_b[4]),
        .I1(in_a[7]),
        .I2(in_b[5]),
        .I3(in_a[6]),
        .O(\accum[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    \accum[31]_i_27 
       (.I0(in_b[5]),
        .I1(in_a[5]),
        .I2(in_b[4]),
        .I3(in_a[6]),
        .I4(in_b[3]),
        .I5(in_a[7]),
        .O(\accum[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F5F)) 
    \accum[31]_i_28 
       (.I0(in_a[6]),
        .I1(in_b[4]),
        .I2(in_b[5]),
        .I3(in_a[7]),
        .O(\accum[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h2450F30F4BFFC3FF)) 
    \accum[31]_i_29 
       (.I0(in_b[3]),
        .I1(in_a[5]),
        .I2(in_a[6]),
        .I3(in_b[5]),
        .I4(in_a[7]),
        .I5(in_b[4]),
        .O(\accum[31]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[31]_i_5 
       (.I0(\accum_reg[31]_i_17_n_6 ),
        .I1(\accum_reg[31]_i_14_n_5 ),
        .O(\accum[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[31]_i_6 
       (.I0(\accum_reg[31]_i_17_n_7 ),
        .I1(\accum_reg[31]_i_14_n_6 ),
        .O(\accum[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \accum[31]_i_7 
       (.I0(\accum_reg[31]_i_17_n_1 ),
        .I1(\accum_reg[31]_i_14_n_4 ),
        .I2(\accum_reg[31]_i_4_n_7 ),
        .O(\accum[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \accum[31]_i_8 
       (.I0(\accum_reg[31]_i_17_n_6 ),
        .I1(\accum_reg[31]_i_14_n_5 ),
        .I2(\accum_reg[31]_i_14_n_4 ),
        .I3(\accum_reg[31]_i_17_n_1 ),
        .O(\accum[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \accum[31]_i_9 
       (.I0(\accum_reg[31]_i_17_n_7 ),
        .I1(\accum_reg[31]_i_14_n_6 ),
        .I2(\accum_reg[31]_i_14_n_5 ),
        .I3(\accum_reg[31]_i_17_n_6 ),
        .O(\accum[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFFCDFFD03300220)) 
    \accum[3]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[3]_i_2_n_4 ),
        .I3(\accum_reg[3]_i_3_n_7 ),
        .I4(init),
        .I5(accum00_out[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h7888)) 
    \accum[3]_i_10 
       (.I0(in_b[0]),
        .I1(in_a[1]),
        .I2(in_b[1]),
        .I3(in_a[0]),
        .O(\accum[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[3]_i_11 
       (.I0(in_a[0]),
        .I1(in_b[0]),
        .O(\accum[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \accum[3]_i_12 
       (.I0(in_b[4]),
        .I1(in_a[2]),
        .I2(in_b[5]),
        .I3(in_a[1]),
        .I4(in_a[3]),
        .I5(in_b[3]),
        .O(\accum[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \accum[3]_i_13 
       (.I0(in_b[4]),
        .I1(in_a[1]),
        .I2(in_b[5]),
        .I3(in_a[0]),
        .O(\accum[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[3]_i_14 
       (.I0(in_b[3]),
        .I1(in_a[1]),
        .O(\accum[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \accum[3]_i_15 
       (.I0(in_a[2]),
        .I1(\accum[3]_i_24_n_0 ),
        .I2(in_a[1]),
        .I3(in_b[4]),
        .I4(in_a[0]),
        .I5(in_b[5]),
        .O(\accum[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \accum[3]_i_16 
       (.I0(in_a[0]),
        .I1(in_b[5]),
        .I2(in_a[1]),
        .I3(in_b[4]),
        .I4(in_b[3]),
        .I5(in_a[2]),
        .O(\accum[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \accum[3]_i_17 
       (.I0(in_b[3]),
        .I1(in_a[1]),
        .I2(in_b[4]),
        .I3(in_a[0]),
        .O(\accum[3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[3]_i_18 
       (.I0(in_a[0]),
        .I1(in_b[3]),
        .O(\accum[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \accum[3]_i_19 
       (.I0(accum[3]),
        .I1(\accum_reg[3]_i_3_n_7 ),
        .I2(\accum_reg[3]_i_2_n_4 ),
        .O(\accum[3]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[3]_i_20 
       (.I0(accum[2]),
        .I1(\accum_reg[3]_i_2_n_5 ),
        .O(\accum[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[3]_i_21 
       (.I0(accum[1]),
        .I1(\accum_reg[3]_i_2_n_6 ),
        .O(\accum[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[3]_i_22 
       (.I0(accum[0]),
        .I1(\accum_reg[3]_i_2_n_7 ),
        .O(\accum[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[3]_i_23 
       (.I0(in_a[3]),
        .I1(in_b[0]),
        .O(\accum[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \accum[3]_i_24 
       (.I0(in_a[3]),
        .I1(in_b[3]),
        .O(\accum[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \accum[3]_i_5 
       (.I0(in_b[1]),
        .I1(in_a[2]),
        .I2(in_b[2]),
        .I3(in_a[1]),
        .I4(in_a[3]),
        .I5(in_b[0]),
        .O(\accum[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \accum[3]_i_6 
       (.I0(in_b[1]),
        .I1(in_a[1]),
        .I2(in_b[2]),
        .I3(in_a[0]),
        .O(\accum[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[3]_i_7 
       (.I0(in_b[0]),
        .I1(in_a[1]),
        .O(\accum[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \accum[3]_i_8 
       (.I0(in_a[2]),
        .I1(\accum[3]_i_23_n_0 ),
        .I2(in_a[1]),
        .I3(in_b[1]),
        .I4(in_a[0]),
        .I5(in_b[2]),
        .O(\accum[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \accum[3]_i_9 
       (.I0(in_a[0]),
        .I1(in_b[2]),
        .I2(in_a[1]),
        .I3(in_b[1]),
        .I4(in_b[0]),
        .I5(in_a[2]),
        .O(\accum[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[4]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[7]_i_2_n_7 ),
        .I3(init),
        .I4(accum00_out[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[5]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[7]_i_2_n_6 ),
        .I3(init),
        .I4(accum00_out[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[6]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[7]_i_2_n_5 ),
        .I3(init),
        .I4(accum00_out[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[7]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[7]_i_2_n_4 ),
        .I3(init),
        .I4(accum00_out[7]),
        .O(p_0_in[7]));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \accum[7]_i_10 
       (.I0(\accum_reg[3]_i_3_n_5 ),
        .I1(\accum_reg[11]_i_19_n_6 ),
        .I2(\accum_reg[11]_i_19_n_7 ),
        .I3(\accum_reg[3]_i_3_n_6 ),
        .O(\accum[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \accum[7]_i_11 
       (.I0(\accum_reg[3]_i_2_n_4 ),
        .I1(\accum_reg[3]_i_3_n_7 ),
        .I2(\accum_reg[3]_i_3_n_6 ),
        .I3(\accum_reg[11]_i_19_n_7 ),
        .O(\accum[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[7]_i_12 
       (.I0(accum[7]),
        .I1(\accum_reg[7]_i_2_n_4 ),
        .O(\accum[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[7]_i_13 
       (.I0(accum[6]),
        .I1(\accum_reg[7]_i_2_n_5 ),
        .O(\accum[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[7]_i_14 
       (.I0(accum[5]),
        .I1(\accum_reg[7]_i_2_n_6 ),
        .O(\accum[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[7]_i_15 
       (.I0(accum[4]),
        .I1(\accum_reg[7]_i_2_n_7 ),
        .O(\accum[7]_i_15_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \accum[7]_i_4 
       (.I0(\accum_reg[11]_i_18_n_7 ),
        .I1(\accum_reg[3]_i_3_n_4 ),
        .I2(\accum_reg[11]_i_19_n_5 ),
        .O(\accum[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \accum[7]_i_5 
       (.I0(\accum_reg[3]_i_3_n_5 ),
        .I1(\accum_reg[11]_i_19_n_6 ),
        .O(\accum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[7]_i_6 
       (.I0(\accum_reg[11]_i_19_n_7 ),
        .I1(\accum_reg[3]_i_3_n_6 ),
        .O(\accum[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accum[7]_i_7 
       (.I0(\accum_reg[3]_i_2_n_4 ),
        .I1(\accum_reg[3]_i_3_n_7 ),
        .O(\accum[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \accum[7]_i_8 
       (.I0(\accum_reg[11]_i_18_n_6 ),
        .I1(\accum_reg[11]_i_16_n_7 ),
        .I2(\accum_reg[11]_i_19_n_4 ),
        .I3(\accum[7]_i_4_n_0 ),
        .O(\accum[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \accum[7]_i_9 
       (.I0(\accum_reg[11]_i_18_n_7 ),
        .I1(\accum_reg[3]_i_3_n_4 ),
        .I2(\accum_reg[11]_i_19_n_5 ),
        .I3(\accum[7]_i_5_n_0 ),
        .O(\accum[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[8]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[11]_i_2_n_7 ),
        .I3(init),
        .I4(accum00_out[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hFCFD3020)) 
    \accum[9]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(\accum_reg[11]_i_2_n_6 ),
        .I3(init),
        .I4(accum00_out[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(accum[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(accum[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(accum[11]),
        .R(rst));
  CARRY4 \accum_reg[11]_i_16 
       (.CI(\accum_reg[3]_i_3_n_0 ),
        .CO({\accum_reg[11]_i_16_n_0 ,\accum_reg[11]_i_16_n_1 ,\accum_reg[11]_i_16_n_2 ,\accum_reg[11]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[11]_i_20_n_0 ,\accum[11]_i_21_n_0 ,\accum[11]_i_22_n_0 ,\accum[11]_i_23_n_0 }),
        .O({\accum_reg[11]_i_16_n_4 ,\accum_reg[11]_i_16_n_5 ,\accum_reg[11]_i_16_n_6 ,\accum_reg[11]_i_16_n_7 }),
        .S({\accum[11]_i_24_n_0 ,\accum[11]_i_25_n_0 ,\accum[11]_i_26_n_0 ,\accum[11]_i_27_n_0 }));
  CARRY4 \accum_reg[11]_i_17 
       (.CI(\accum_reg[11]_i_19_n_0 ),
        .CO({\NLW_accum_reg[11]_i_17_CO_UNCONNECTED [3],\accum_reg[11]_i_17_n_1 ,\NLW_accum_reg[11]_i_17_CO_UNCONNECTED [1],\accum_reg[11]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\accum[11]_i_28_n_0 ,\accum[11]_i_29_n_0 }),
        .O({\NLW_accum_reg[11]_i_17_O_UNCONNECTED [3:2],\accum_reg[11]_i_17_n_6 ,\accum_reg[11]_i_17_n_7 }),
        .S({1'b0,1'b1,\accum[11]_i_30_n_0 ,\accum[11]_i_31_n_0 }));
  CARRY4 \accum_reg[11]_i_18 
       (.CI(1'b0),
        .CO({\accum_reg[11]_i_18_n_0 ,\accum_reg[11]_i_18_n_1 ,\accum_reg[11]_i_18_n_2 ,\accum_reg[11]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[11]_i_32_n_0 ,\accum[11]_i_33_n_0 ,\accum[11]_i_34_n_0 ,1'b0}),
        .O({\accum_reg[11]_i_18_n_4 ,\accum_reg[11]_i_18_n_5 ,\accum_reg[11]_i_18_n_6 ,\accum_reg[11]_i_18_n_7 }),
        .S({\accum[11]_i_35_n_0 ,\accum[11]_i_36_n_0 ,\accum[11]_i_37_n_0 ,\accum[11]_i_38_n_0 }));
  CARRY4 \accum_reg[11]_i_19 
       (.CI(\accum_reg[3]_i_2_n_0 ),
        .CO({\accum_reg[11]_i_19_n_0 ,\accum_reg[11]_i_19_n_1 ,\accum_reg[11]_i_19_n_2 ,\accum_reg[11]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[11]_i_39_n_0 ,\accum[11]_i_40_n_0 ,\accum[11]_i_41_n_0 ,\accum[11]_i_42_n_0 }),
        .O({\accum_reg[11]_i_19_n_4 ,\accum_reg[11]_i_19_n_5 ,\accum_reg[11]_i_19_n_6 ,\accum_reg[11]_i_19_n_7 }),
        .S({\accum[11]_i_43_n_0 ,\accum[11]_i_44_n_0 ,\accum[11]_i_45_n_0 ,\accum[11]_i_46_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[11]_i_2 
       (.CI(\accum_reg[7]_i_2_n_0 ),
        .CO({\accum_reg[11]_i_2_n_0 ,\accum_reg[11]_i_2_n_1 ,\accum_reg[11]_i_2_n_2 ,\accum_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[11]_i_4_n_0 ,\accum[11]_i_5_n_0 ,\accum[11]_i_6_n_0 ,\accum[11]_i_7_n_0 }),
        .O({\accum_reg[11]_i_2_n_4 ,\accum_reg[11]_i_2_n_5 ,\accum_reg[11]_i_2_n_6 ,\accum_reg[11]_i_2_n_7 }),
        .S({\accum[11]_i_8_n_0 ,\accum[11]_i_9_n_0 ,\accum[11]_i_10_n_0 ,\accum[11]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[11]_i_3 
       (.CI(\accum_reg[7]_i_3_n_0 ),
        .CO({\accum_reg[11]_i_3_n_0 ,\accum_reg[11]_i_3_n_1 ,\accum_reg[11]_i_3_n_2 ,\accum_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(accum[11:8]),
        .O(accum00_out[11:8]),
        .S({\accum[11]_i_12_n_0 ,\accum[11]_i_13_n_0 ,\accum[11]_i_14_n_0 ,\accum[11]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(accum[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(accum[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(accum[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(accum[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[15]_i_2 
       (.CI(\accum_reg[11]_i_3_n_0 ),
        .CO({\accum_reg[15]_i_2_n_0 ,\accum_reg[15]_i_2_n_1 ,\accum_reg[15]_i_2_n_2 ,\accum_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum_reg[31]_i_2_n_4 ,accum[14:12]}),
        .O(accum00_out[15:12]),
        .S({\accum[15]_i_3_n_0 ,\accum[15]_i_4_n_0 ,\accum[15]_i_5_n_0 ,\accum[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(accum[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(accum[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(accum[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(accum[19]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[19]_i_2 
       (.CI(\accum_reg[15]_i_2_n_0 ),
        .CO({\accum_reg[19]_i_2_n_0 ,\accum_reg[19]_i_2_n_1 ,\accum_reg[19]_i_2_n_2 ,\accum_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({accum[18:16],\accum[19]_i_3_n_0 }),
        .O(accum00_out[19:16]),
        .S({\accum[19]_i_4_n_0 ,\accum[19]_i_5_n_0 ,\accum[19]_i_6_n_0 ,\accum[19]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(accum[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(accum[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(accum[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(accum[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(accum[23]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[23]_i_2 
       (.CI(\accum_reg[19]_i_2_n_0 ),
        .CO({\accum_reg[23]_i_2_n_0 ,\accum_reg[23]_i_2_n_1 ,\accum_reg[23]_i_2_n_2 ,\accum_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(accum[22:19]),
        .O(accum00_out[23:20]),
        .S({\accum[23]_i_3_n_0 ,\accum[23]_i_4_n_0 ,\accum[23]_i_5_n_0 ,\accum[23]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(accum[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(accum[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[26]),
        .Q(accum[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[27]),
        .Q(accum[27]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[27]_i_2 
       (.CI(\accum_reg[23]_i_2_n_0 ),
        .CO({\accum_reg[27]_i_2_n_0 ,\accum_reg[27]_i_2_n_1 ,\accum_reg[27]_i_2_n_2 ,\accum_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(accum[26:23]),
        .O(accum00_out[27:24]),
        .S({\accum[27]_i_3_n_0 ,\accum[27]_i_4_n_0 ,\accum[27]_i_5_n_0 ,\accum[27]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(accum[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[29]),
        .Q(accum[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(accum[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[30]),
        .Q(accum[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[31]),
        .Q(accum[31]),
        .R(rst));
  CARRY4 \accum_reg[31]_i_14 
       (.CI(\accum_reg[11]_i_18_n_0 ),
        .CO({\accum_reg[31]_i_14_n_0 ,\accum_reg[31]_i_14_n_1 ,\accum_reg[31]_i_14_n_2 ,\accum_reg[31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[31]_i_18_n_0 ,\accum[31]_i_19_n_0 ,\accum[31]_i_20_n_0 ,\accum[31]_i_21_n_0 }),
        .O({\accum_reg[31]_i_14_n_4 ,\accum_reg[31]_i_14_n_5 ,\accum_reg[31]_i_14_n_6 ,\accum_reg[31]_i_14_n_7 }),
        .S({\accum[31]_i_22_n_0 ,\accum[31]_i_23_n_0 ,\accum[31]_i_24_n_0 ,\accum[31]_i_25_n_0 }));
  CARRY4 \accum_reg[31]_i_17 
       (.CI(\accum_reg[11]_i_16_n_0 ),
        .CO({\NLW_accum_reg[31]_i_17_CO_UNCONNECTED [3],\accum_reg[31]_i_17_n_1 ,\NLW_accum_reg[31]_i_17_CO_UNCONNECTED [1],\accum_reg[31]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\accum[31]_i_26_n_0 ,\accum[31]_i_27_n_0 }),
        .O({\NLW_accum_reg[31]_i_17_O_UNCONNECTED [3:2],\accum_reg[31]_i_17_n_6 ,\accum_reg[31]_i_17_n_7 }),
        .S({1'b0,1'b1,\accum[31]_i_28_n_0 ,\accum[31]_i_29_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[31]_i_2 
       (.CI(\accum_reg[11]_i_2_n_0 ),
        .CO({\NLW_accum_reg[31]_i_2_CO_UNCONNECTED [3],\accum_reg[31]_i_2_n_1 ,\accum_reg[31]_i_2_n_2 ,\accum_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\accum_reg[31]_i_4_n_7 ,\accum[31]_i_5_n_0 ,\accum[31]_i_6_n_0 }),
        .O({\accum_reg[31]_i_2_n_4 ,\accum_reg[31]_i_2_n_5 ,\accum_reg[31]_i_2_n_6 ,\accum_reg[31]_i_2_n_7 }),
        .S({\accum_reg[31]_i_4_n_6 ,\accum[31]_i_7_n_0 ,\accum[31]_i_8_n_0 ,\accum[31]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[31]_i_3 
       (.CI(\accum_reg[27]_i_2_n_0 ),
        .CO({\NLW_accum_reg[31]_i_3_CO_UNCONNECTED [3],\accum_reg[31]_i_3_n_1 ,\accum_reg[31]_i_3_n_2 ,\accum_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,accum[29:27]}),
        .O(accum00_out[31:28]),
        .S({\accum[31]_i_10_n_0 ,\accum[31]_i_11_n_0 ,\accum[31]_i_12_n_0 ,\accum[31]_i_13_n_0 }));
  CARRY4 \accum_reg[31]_i_4 
       (.CI(\accum_reg[31]_i_14_n_0 ),
        .CO({\NLW_accum_reg[31]_i_4_CO_UNCONNECTED [3:1],\accum_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accum[31]_i_15_n_0 }),
        .O({\NLW_accum_reg[31]_i_4_O_UNCONNECTED [3:2],\accum_reg[31]_i_4_n_6 ,\accum_reg[31]_i_4_n_7 }),
        .S({1'b0,1'b0,1'b1,\accum[31]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(accum[3]),
        .R(rst));
  CARRY4 \accum_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\accum_reg[3]_i_2_n_0 ,\accum_reg[3]_i_2_n_1 ,\accum_reg[3]_i_2_n_2 ,\accum_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[3]_i_5_n_0 ,\accum[3]_i_6_n_0 ,\accum[3]_i_7_n_0 ,1'b0}),
        .O({\accum_reg[3]_i_2_n_4 ,\accum_reg[3]_i_2_n_5 ,\accum_reg[3]_i_2_n_6 ,\accum_reg[3]_i_2_n_7 }),
        .S({\accum[3]_i_8_n_0 ,\accum[3]_i_9_n_0 ,\accum[3]_i_10_n_0 ,\accum[3]_i_11_n_0 }));
  CARRY4 \accum_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\accum_reg[3]_i_3_n_0 ,\accum_reg[3]_i_3_n_1 ,\accum_reg[3]_i_3_n_2 ,\accum_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[3]_i_12_n_0 ,\accum[3]_i_13_n_0 ,\accum[3]_i_14_n_0 ,1'b0}),
        .O({\accum_reg[3]_i_3_n_4 ,\accum_reg[3]_i_3_n_5 ,\accum_reg[3]_i_3_n_6 ,\accum_reg[3]_i_3_n_7 }),
        .S({\accum[3]_i_15_n_0 ,\accum[3]_i_16_n_0 ,\accum[3]_i_17_n_0 ,\accum[3]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\accum_reg[3]_i_4_n_0 ,\accum_reg[3]_i_4_n_1 ,\accum_reg[3]_i_4_n_2 ,\accum_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(accum[3:0]),
        .O(accum00_out[3:0]),
        .S({\accum[3]_i_19_n_0 ,\accum[3]_i_20_n_0 ,\accum[3]_i_21_n_0 ,\accum[3]_i_22_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(accum[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(accum[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(accum[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(accum[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\accum_reg[7]_i_2_n_0 ,\accum_reg[7]_i_2_n_1 ,\accum_reg[7]_i_2_n_2 ,\accum_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\accum[7]_i_4_n_0 ,\accum[7]_i_5_n_0 ,\accum[7]_i_6_n_0 ,\accum[7]_i_7_n_0 }),
        .O({\accum_reg[7]_i_2_n_4 ,\accum_reg[7]_i_2_n_5 ,\accum_reg[7]_i_2_n_6 ,\accum_reg[7]_i_2_n_7 }),
        .S({\accum[7]_i_8_n_0 ,\accum[7]_i_9_n_0 ,\accum[7]_i_10_n_0 ,\accum[7]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accum_reg[7]_i_3 
       (.CI(\accum_reg[3]_i_4_n_0 ),
        .CO({\accum_reg[7]_i_3_n_0 ,\accum_reg[7]_i_3_n_1 ,\accum_reg[7]_i_3_n_2 ,\accum_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(accum[7:4]),
        .O(accum00_out[7:4]),
        .S({\accum[7]_i_12_n_0 ,\accum[7]_i_13_n_0 ,\accum[7]_i_14_n_0 ,\accum[7]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(accum[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(accum[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h4)) 
    \backedup[0]_i_1 
       (.I0(rst),
        .I1(in_valid),
        .O(\backedup[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \backedup_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\backedup[0]_i_1_n_0 ),
        .Q(backedup),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \in_data_reg[31]_i_1 
       (.I0(in_valid),
        .I1(init),
        .I2(backedup),
        .O(\in_data_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[0] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[0]),
        .Q(in_data_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[10] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[10]),
        .Q(in_data_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[11] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[11]),
        .Q(in_data_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[12] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[12]),
        .Q(in_data_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[13] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[13]),
        .Q(in_data_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[14] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[14]),
        .Q(in_data_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[15] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[15]),
        .Q(in_data_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[16] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[16]),
        .Q(in_data_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[17] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[17]),
        .Q(in_data_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[18] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[18]),
        .Q(in_data_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[19] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[19]),
        .Q(in_data_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[1] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[1]),
        .Q(in_data_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[20] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[20]),
        .Q(in_data_reg[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[21] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[21]),
        .Q(in_data_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[22] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[22]),
        .Q(in_data_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[23] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[23]),
        .Q(in_data_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[24] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[24]),
        .Q(in_data_reg[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[25] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[25]),
        .Q(in_data_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[26] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[26]),
        .Q(in_data_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[27] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[27]),
        .Q(in_data_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[28] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[28]),
        .Q(in_data_reg[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[29] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[29]),
        .Q(in_data_reg[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[2] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[2]),
        .Q(in_data_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[30] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[30]),
        .Q(in_data_reg[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[31] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[31]),
        .Q(in_data_reg[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[3] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[3]),
        .Q(in_data_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[4] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[4]),
        .Q(in_data_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[5] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[5]),
        .Q(in_data_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[6] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[6]),
        .Q(in_data_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[7] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[7]),
        .Q(in_data_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[8] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[8]),
        .Q(in_data_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg_reg[9] 
       (.C(clk),
        .CE(\in_data_reg[31]_i_1_n_0 ),
        .D(in_data[9]),
        .Q(in_data_reg[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[0]),
        .Q(out_a[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[1]),
        .Q(out_a[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[2]),
        .Q(out_a[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[3]),
        .Q(out_a[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[4]),
        .Q(out_a[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[5]),
        .Q(out_a[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[6]),
        .Q(out_a[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_a_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(in_a[7]),
        .Q(out_a[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[0]),
        .Q(out_b[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[1]),
        .Q(out_b[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[2]),
        .Q(out_b[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[3]),
        .Q(out_b[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[4]),
        .Q(out_b[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[5]),
        .Q(out_b[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[6]),
        .Q(out_b[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_b_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(in_b[7]),
        .Q(out_b[7]),
        .R(rst));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[0]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[0]),
        .I3(accum[0]),
        .I4(init),
        .I5(in_data[0]),
        .O(\out_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[10]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[10]),
        .I3(accum[10]),
        .I4(init),
        .I5(in_data[10]),
        .O(\out_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[11]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[11]),
        .I3(accum[11]),
        .I4(init),
        .I5(in_data[11]),
        .O(\out_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[12]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[12]),
        .I3(accum[12]),
        .I4(init),
        .I5(in_data[12]),
        .O(\out_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[13]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[13]),
        .I3(accum[13]),
        .I4(init),
        .I5(in_data[13]),
        .O(\out_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[14]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[14]),
        .I3(accum[14]),
        .I4(init),
        .I5(in_data[14]),
        .O(\out_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[15]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[15]),
        .I3(accum[15]),
        .I4(init),
        .I5(in_data[15]),
        .O(\out_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[16]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[16]),
        .I3(accum[16]),
        .I4(init),
        .I5(in_data[16]),
        .O(\out_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[17]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[17]),
        .I3(accum[17]),
        .I4(init),
        .I5(in_data[17]),
        .O(\out_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[18]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[18]),
        .I3(accum[18]),
        .I4(init),
        .I5(in_data[18]),
        .O(\out_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[19]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[19]),
        .I3(accum[19]),
        .I4(init),
        .I5(in_data[19]),
        .O(\out_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[1]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[1]),
        .I3(accum[1]),
        .I4(init),
        .I5(in_data[1]),
        .O(\out_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[20]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[20]),
        .I3(accum[20]),
        .I4(init),
        .I5(in_data[20]),
        .O(\out_data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[21]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[21]),
        .I3(accum[21]),
        .I4(init),
        .I5(in_data[21]),
        .O(\out_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[22]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[22]),
        .I3(accum[22]),
        .I4(init),
        .I5(in_data[22]),
        .O(\out_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[23]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[23]),
        .I3(accum[23]),
        .I4(init),
        .I5(in_data[23]),
        .O(\out_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[24]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[24]),
        .I3(accum[24]),
        .I4(init),
        .I5(in_data[24]),
        .O(\out_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[25]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[25]),
        .I3(accum[25]),
        .I4(init),
        .I5(in_data[25]),
        .O(\out_data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[26]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[26]),
        .I3(accum[26]),
        .I4(init),
        .I5(in_data[26]),
        .O(\out_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[27]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[27]),
        .I3(accum[27]),
        .I4(init),
        .I5(in_data[27]),
        .O(\out_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[28]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[28]),
        .I3(accum[28]),
        .I4(init),
        .I5(in_data[28]),
        .O(\out_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[29]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[29]),
        .I3(accum[29]),
        .I4(init),
        .I5(in_data[29]),
        .O(\out_data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[2]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[2]),
        .I3(accum[2]),
        .I4(init),
        .I5(in_data[2]),
        .O(\out_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[30]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[30]),
        .I3(accum[30]),
        .I4(init),
        .I5(in_data[30]),
        .O(\out_data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[31]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[31]),
        .I3(accum[31]),
        .I4(init),
        .I5(in_data[31]),
        .O(\out_data[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[3]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[3]),
        .I3(accum[3]),
        .I4(init),
        .I5(in_data[3]),
        .O(\out_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[4]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[4]),
        .I3(accum[4]),
        .I4(init),
        .I5(in_data[4]),
        .O(\out_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[5]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[5]),
        .I3(accum[5]),
        .I4(init),
        .I5(in_data[5]),
        .O(\out_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[6]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[6]),
        .I3(accum[6]),
        .I4(init),
        .I5(in_data[6]),
        .O(\out_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[7]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[7]),
        .I3(accum[7]),
        .I4(init),
        .I5(in_data[7]),
        .O(\out_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[8]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[8]),
        .I3(accum[8]),
        .I4(init),
        .I5(in_data[8]),
        .O(\out_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0F3D1F3C0E2C0)) 
    \out_data[9]_i_1 
       (.I0(in_valid),
        .I1(backedup),
        .I2(in_data_reg[9]),
        .I3(accum[9]),
        .I4(init),
        .I5(in_data[9]),
        .O(\out_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[0]_i_1_n_0 ),
        .Q(out_data[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[10]_i_1_n_0 ),
        .Q(out_data[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[11]_i_1_n_0 ),
        .Q(out_data[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[12]_i_1_n_0 ),
        .Q(out_data[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[13]_i_1_n_0 ),
        .Q(out_data[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[14]_i_1_n_0 ),
        .Q(out_data[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[15]_i_1_n_0 ),
        .Q(out_data[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[16]_i_1_n_0 ),
        .Q(out_data[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[17]_i_1_n_0 ),
        .Q(out_data[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[18]_i_1_n_0 ),
        .Q(out_data[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[19]_i_1_n_0 ),
        .Q(out_data[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[1]_i_1_n_0 ),
        .Q(out_data[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[20]_i_1_n_0 ),
        .Q(out_data[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[21]_i_1_n_0 ),
        .Q(out_data[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[22]_i_1_n_0 ),
        .Q(out_data[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[23]_i_1_n_0 ),
        .Q(out_data[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[24]_i_1_n_0 ),
        .Q(out_data[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[25]_i_1_n_0 ),
        .Q(out_data[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[26]_i_1_n_0 ),
        .Q(out_data[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[27]_i_1_n_0 ),
        .Q(out_data[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[28]_i_1_n_0 ),
        .Q(out_data[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[29]_i_1_n_0 ),
        .Q(out_data[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[2]_i_1_n_0 ),
        .Q(out_data[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[30]_i_1_n_0 ),
        .Q(out_data[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[31]_i_1_n_0 ),
        .Q(out_data[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[3]_i_1_n_0 ),
        .Q(out_data[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[4]_i_1_n_0 ),
        .Q(out_data[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[5]_i_1_n_0 ),
        .Q(out_data[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[6]_i_1_n_0 ),
        .Q(out_data[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[7]_i_1_n_0 ),
        .Q(out_data[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[8]_i_1_n_0 ),
        .Q(out_data[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_data[9]_i_1_n_0 ),
        .Q(out_data[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    out_valid_i_1
       (.I0(init),
        .I1(in_valid),
        .I2(backedup),
        .O(out_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_valid_i_1_n_0),
        .Q(out_valid),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
