// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Mar 22 15:10:40 2024
// Host        : deathstar.eng running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim div_synth.sv
// Design      : div
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* verilator lint_off UNDRIVEN */
/* verilator coverage_off */
// verilator tracing_on

// (* D_W = "32" *) 
// (* NotValidForBitStream *)
module div
#(
    parameter integer D_W = 32
)
   (clk,
    rst,
    in_valid,
    divisor,
    divident,
    quotient,
    out_valid);
  input clk;
  input rst;
  input in_valid;
  input [31:0]divisor;
  input [31:0]divident;
  output [31:0]quotient;
  output out_valid;

  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire clk;
  wire div_done_r;
  wire div_done_r_i_10_n_0;
  wire div_done_r_i_11_n_0;
  wire div_done_r_i_12_n_0;
  wire div_done_r_i_13_n_0;
  wire div_done_r_i_15_n_0;
  wire div_done_r_i_16_n_0;
  wire div_done_r_i_17_n_0;
  wire div_done_r_i_18_n_0;
  wire div_done_r_i_19_n_0;
  wire div_done_r_i_1_n_0;
  wire div_done_r_i_20_n_0;
  wire div_done_r_i_21_n_0;
  wire div_done_r_i_22_n_0;
  wire div_done_r_i_24_n_0;
  wire div_done_r_i_25_n_0;
  wire div_done_r_i_26_n_0;
  wire div_done_r_i_27_n_0;
  wire div_done_r_i_28_n_0;
  wire div_done_r_i_29_n_0;
  wire div_done_r_i_30_n_0;
  wire div_done_r_i_31_n_0;
  wire div_done_r_i_33_n_0;
  wire div_done_r_i_34_n_0;
  wire div_done_r_i_35_n_0;
  wire div_done_r_i_36_n_0;
  wire div_done_r_i_37_n_0;
  wire div_done_r_i_38_n_0;
  wire div_done_r_i_39_n_0;
  wire div_done_r_i_40_n_0;
  wire div_done_r_i_42_n_0;
  wire div_done_r_i_43_n_0;
  wire div_done_r_i_44_n_0;
  wire div_done_r_i_45_n_0;
  wire div_done_r_i_46_n_0;
  wire div_done_r_i_47_n_0;
  wire div_done_r_i_48_n_0;
  wire div_done_r_i_49_n_0;
  wire div_done_r_i_51_n_0;
  wire div_done_r_i_52_n_0;
  wire div_done_r_i_53_n_0;
  wire div_done_r_i_54_n_0;
  wire div_done_r_i_55_n_0;
  wire div_done_r_i_56_n_0;
  wire div_done_r_i_57_n_0;
  wire div_done_r_i_58_n_0;
  wire div_done_r_i_59_n_0;
  wire div_done_r_i_60_n_0;
  wire div_done_r_i_61_n_0;
  wire div_done_r_i_62_n_0;
  wire div_done_r_i_63_n_0;
  wire div_done_r_i_64_n_0;
  wire div_done_r_i_65_n_0;
  wire div_done_r_i_66_n_0;
  wire div_done_r_i_67_n_0;
  wire div_done_r_i_68_n_0;
  wire div_done_r_i_69_n_0;
  wire div_done_r_i_6_n_0;
  wire div_done_r_i_70_n_0;
  wire div_done_r_i_71_n_0;
  wire div_done_r_i_72_n_0;
  wire div_done_r_i_73_n_0;
  wire div_done_r_i_74_n_0;
  wire div_done_r_i_7_n_0;
  wire div_done_r_i_8_n_0;
  wire div_done_r_i_9_n_0;
  wire div_done_r_reg_i_14_n_0;
  wire div_done_r_reg_i_14_n_1;
  wire div_done_r_reg_i_14_n_2;
  wire div_done_r_reg_i_14_n_3;
  wire div_done_r_reg_i_23_n_0;
  wire div_done_r_reg_i_23_n_1;
  wire div_done_r_reg_i_23_n_2;
  wire div_done_r_reg_i_23_n_3;
  wire div_done_r_reg_i_32_n_0;
  wire div_done_r_reg_i_32_n_1;
  wire div_done_r_reg_i_32_n_2;
  wire div_done_r_reg_i_32_n_3;
  wire div_done_r_reg_i_3_n_0;
  wire div_done_r_reg_i_3_n_1;
  wire div_done_r_reg_i_3_n_2;
  wire div_done_r_reg_i_3_n_3;
  wire div_done_r_reg_i_41_n_0;
  wire div_done_r_reg_i_41_n_1;
  wire div_done_r_reg_i_41_n_2;
  wire div_done_r_reg_i_41_n_3;
  wire div_done_r_reg_i_4_n_0;
  wire div_done_r_reg_i_4_n_1;
  wire div_done_r_reg_i_4_n_2;
  wire div_done_r_reg_i_4_n_3;
  wire div_done_r_reg_i_50_n_0;
  wire div_done_r_reg_i_50_n_1;
  wire div_done_r_reg_i_50_n_2;
  wire div_done_r_reg_i_50_n_3;
  wire div_done_r_reg_i_5_n_0;
  wire div_done_r_reg_i_5_n_1;
  wire div_done_r_reg_i_5_n_2;
  wire div_done_r_reg_i_5_n_3;
  wire [31:0]divident;
  wire [31:0]divisor;
  wire [4:0]divisor_log2;
  wire [4:0]divisor_log2_r;
  wire \divisor_log2_r[0]_i_2_n_0 ;
  wire \divisor_log2_r[0]_i_3_n_0 ;
  wire \divisor_log2_r[0]_i_4_n_0 ;
  wire \divisor_log2_r[0]_i_5_n_0 ;
  wire \divisor_log2_r[0]_i_6_n_0 ;
  wire \divisor_log2_r[0]_i_7_n_0 ;
  wire \divisor_log2_r[0]_i_8_n_0 ;
  wire \divisor_log2_r[1]_i_2_n_0 ;
  wire \divisor_log2_r[1]_i_3_n_0 ;
  wire \divisor_log2_r[1]_i_4_n_0 ;
  wire \divisor_log2_r[1]_i_5_n_0 ;
  wire \divisor_log2_r[1]_i_6_n_0 ;
  wire \divisor_log2_r[2]_i_2_n_0 ;
  wire \divisor_log2_r[2]_i_3_n_0 ;
  wire \divisor_log2_r[2]_i_4_n_0 ;
  wire \divisor_log2_r[2]_i_5_n_0 ;
  wire \divisor_log2_r[2]_i_6_n_0 ;
  wire \divisor_log2_r[3]_i_2_n_0 ;
  wire \divisor_log2_r[3]_i_3_n_0 ;
  wire \divisor_log2_r[3]_i_4_n_0 ;
  wire \divisor_log2_r[4]_i_3_n_0 ;
  wire \divisor_log2_r[4]_i_4_n_0 ;
  wire divisor_r1;
  wire [31:0]divisor_r1__0;
  wire \divisor_r[0]_i_1_n_0 ;
  wire \divisor_r[10]_i_1_n_0 ;
  wire \divisor_r[11]_i_1_n_0 ;
  wire \divisor_r[12]_i_1_n_0 ;
  wire \divisor_r[13]_i_1_n_0 ;
  wire \divisor_r[14]_i_1_n_0 ;
  wire \divisor_r[15]_i_1_n_0 ;
  wire \divisor_r[16]_i_1_n_0 ;
  wire \divisor_r[17]_i_1_n_0 ;
  wire \divisor_r[18]_i_1_n_0 ;
  wire \divisor_r[19]_i_1_n_0 ;
  wire \divisor_r[1]_i_1_n_0 ;
  wire \divisor_r[20]_i_1_n_0 ;
  wire \divisor_r[21]_i_1_n_0 ;
  wire \divisor_r[22]_i_1_n_0 ;
  wire \divisor_r[23]_i_1_n_0 ;
  wire \divisor_r[24]_i_1_n_0 ;
  wire \divisor_r[25]_i_1_n_0 ;
  wire \divisor_r[26]_i_1_n_0 ;
  wire \divisor_r[27]_i_1_n_0 ;
  wire \divisor_r[28]_i_1_n_0 ;
  wire \divisor_r[29]_i_1_n_0 ;
  wire \divisor_r[2]_i_1_n_0 ;
  wire \divisor_r[30]_i_1_n_0 ;
  wire \divisor_r[31]_i_1_n_0 ;
  wire \divisor_r[31]_i_2_n_0 ;
  wire \divisor_r[3]_i_1_n_0 ;
  wire \divisor_r[4]_i_1_n_0 ;
  wire \divisor_r[5]_i_1_n_0 ;
  wire \divisor_r[6]_i_1_n_0 ;
  wire \divisor_r[7]_i_1_n_0 ;
  wire \divisor_r[8]_i_1_n_0 ;
  wire \divisor_r[9]_i_1_n_0 ;
  wire \divisor_r_reg_n_0_[0] ;
  wire \divisor_r_reg_n_0_[10] ;
  wire \divisor_r_reg_n_0_[11] ;
  wire \divisor_r_reg_n_0_[12] ;
  wire \divisor_r_reg_n_0_[13] ;
  wire \divisor_r_reg_n_0_[14] ;
  wire \divisor_r_reg_n_0_[15] ;
  wire \divisor_r_reg_n_0_[16] ;
  wire \divisor_r_reg_n_0_[17] ;
  wire \divisor_r_reg_n_0_[18] ;
  wire \divisor_r_reg_n_0_[19] ;
  wire \divisor_r_reg_n_0_[1] ;
  wire \divisor_r_reg_n_0_[20] ;
  wire \divisor_r_reg_n_0_[21] ;
  wire \divisor_r_reg_n_0_[22] ;
  wire \divisor_r_reg_n_0_[23] ;
  wire \divisor_r_reg_n_0_[24] ;
  wire \divisor_r_reg_n_0_[25] ;
  wire \divisor_r_reg_n_0_[26] ;
  wire \divisor_r_reg_n_0_[27] ;
  wire \divisor_r_reg_n_0_[28] ;
  wire \divisor_r_reg_n_0_[29] ;
  wire \divisor_r_reg_n_0_[2] ;
  wire \divisor_r_reg_n_0_[30] ;
  wire \divisor_r_reg_n_0_[31] ;
  wire \divisor_r_reg_n_0_[3] ;
  wire \divisor_r_reg_n_0_[4] ;
  wire \divisor_r_reg_n_0_[5] ;
  wire \divisor_r_reg_n_0_[6] ;
  wire \divisor_r_reg_n_0_[7] ;
  wire \divisor_r_reg_n_0_[8] ;
  wire \divisor_r_reg_n_0_[9] ;
  wire [31:0]in10;
  wire in_valid;
  wire out_valid;
  wire p_0_in;
  wire [31:0]quotient;
  wire \quotient_r[0]_i_1_n_0 ;
  wire \quotient_r[0]_i_2_n_0 ;
  wire \quotient_r[10]_i_1_n_0 ;
  wire \quotient_r[10]_i_2_n_0 ;
  wire \quotient_r[11]_i_1_n_0 ;
  wire \quotient_r[12]_i_1_n_0 ;
  wire \quotient_r[12]_i_2_n_0 ;
  wire \quotient_r[13]_i_1_n_0 ;
  wire \quotient_r[13]_i_2_n_0 ;
  wire \quotient_r[13]_i_3_n_0 ;
  wire \quotient_r[14]_i_1_n_0 ;
  wire \quotient_r[14]_i_2_n_0 ;
  wire \quotient_r[14]_i_3_n_0 ;
  wire \quotient_r[15]_i_1_n_0 ;
  wire \quotient_r[15]_i_2_n_0 ;
  wire \quotient_r[16]_i_1_n_0 ;
  wire \quotient_r[16]_i_2_n_0 ;
  wire \quotient_r[17]_i_1_n_0 ;
  wire \quotient_r[17]_i_2_n_0 ;
  wire \quotient_r[18]_i_1_n_0 ;
  wire \quotient_r[18]_i_2_n_0 ;
  wire \quotient_r[18]_i_3_n_0 ;
  wire \quotient_r[18]_i_4_n_0 ;
  wire \quotient_r[19]_i_1_n_0 ;
  wire \quotient_r[1]_i_1_n_0 ;
  wire \quotient_r[1]_i_2_n_0 ;
  wire \quotient_r[1]_i_3_n_0 ;
  wire \quotient_r[20]_i_1_n_0 ;
  wire \quotient_r[20]_i_2_n_0 ;
  wire \quotient_r[20]_i_3_n_0 ;
  wire \quotient_r[21]_i_1_n_0 ;
  wire \quotient_r[21]_i_2_n_0 ;
  wire \quotient_r[21]_i_3_n_0 ;
  wire \quotient_r[22]_i_1_n_0 ;
  wire \quotient_r[22]_i_2_n_0 ;
  wire \quotient_r[22]_i_3_n_0 ;
  wire \quotient_r[22]_i_4_n_0 ;
  wire \quotient_r[23]_i_1_n_0 ;
  wire \quotient_r[23]_i_2_n_0 ;
  wire \quotient_r[24]_i_1_n_0 ;
  wire \quotient_r[24]_i_2_n_0 ;
  wire \quotient_r[24]_i_3_n_0 ;
  wire \quotient_r[24]_i_4_n_0 ;
  wire \quotient_r[25]_i_1_n_0 ;
  wire \quotient_r[25]_i_2_n_0 ;
  wire \quotient_r[25]_i_3_n_0 ;
  wire \quotient_r[26]_i_1_n_0 ;
  wire \quotient_r[26]_i_2_n_0 ;
  wire \quotient_r[26]_i_3_n_0 ;
  wire \quotient_r[26]_i_4_n_0 ;
  wire \quotient_r[27]_i_1_n_0 ;
  wire \quotient_r[27]_i_2_n_0 ;
  wire \quotient_r[28]_i_1_n_0 ;
  wire \quotient_r[28]_i_2_n_0 ;
  wire \quotient_r[28]_i_3_n_0 ;
  wire \quotient_r[29]_i_1_n_0 ;
  wire \quotient_r[29]_i_2_n_0 ;
  wire \quotient_r[29]_i_3_n_0 ;
  wire \quotient_r[29]_i_4_n_0 ;
  wire \quotient_r[29]_i_5_n_0 ;
  wire \quotient_r[2]_i_1_n_0 ;
  wire \quotient_r[2]_i_2_n_0 ;
  wire \quotient_r[30]_i_1_n_0 ;
  wire \quotient_r[30]_i_2_n_0 ;
  wire \quotient_r[30]_i_3_n_0 ;
  wire \quotient_r[30]_i_4_n_0 ;
  wire \quotient_r[30]_i_5_n_0 ;
  wire \quotient_r[31]_i_10_n_0 ;
  wire \quotient_r[31]_i_11_n_0 ;
  wire \quotient_r[31]_i_12_n_0 ;
  wire \quotient_r[31]_i_13_n_0 ;
  wire \quotient_r[31]_i_14_n_0 ;
  wire \quotient_r[31]_i_15_n_0 ;
  wire \quotient_r[31]_i_16_n_0 ;
  wire \quotient_r[31]_i_18_n_0 ;
  wire \quotient_r[31]_i_19_n_0 ;
  wire \quotient_r[31]_i_1_n_0 ;
  wire \quotient_r[31]_i_20_n_0 ;
  wire \quotient_r[31]_i_21_n_0 ;
  wire \quotient_r[31]_i_22_n_0 ;
  wire \quotient_r[31]_i_23_n_0 ;
  wire \quotient_r[31]_i_24_n_0 ;
  wire \quotient_r[31]_i_25_n_0 ;
  wire \quotient_r[31]_i_26_n_0 ;
  wire \quotient_r[31]_i_28_n_0 ;
  wire \quotient_r[31]_i_29_n_0 ;
  wire \quotient_r[31]_i_2_n_0 ;
  wire \quotient_r[31]_i_30_n_0 ;
  wire \quotient_r[31]_i_31_n_0 ;
  wire \quotient_r[31]_i_32_n_0 ;
  wire \quotient_r[31]_i_33_n_0 ;
  wire \quotient_r[31]_i_34_n_0 ;
  wire \quotient_r[31]_i_35_n_0 ;
  wire \quotient_r[31]_i_36_n_0 ;
  wire \quotient_r[31]_i_37_n_0 ;
  wire \quotient_r[31]_i_38_n_0 ;
  wire \quotient_r[31]_i_39_n_0 ;
  wire \quotient_r[31]_i_3_n_0 ;
  wire \quotient_r[31]_i_40_n_0 ;
  wire \quotient_r[31]_i_41_n_0 ;
  wire \quotient_r[31]_i_42_n_0 ;
  wire \quotient_r[31]_i_43_n_0 ;
  wire \quotient_r[31]_i_44_n_0 ;
  wire \quotient_r[31]_i_45_n_0 ;
  wire \quotient_r[31]_i_46_n_0 ;
  wire \quotient_r[31]_i_47_n_0 ;
  wire \quotient_r[31]_i_48_n_0 ;
  wire \quotient_r[31]_i_49_n_0 ;
  wire \quotient_r[31]_i_4_n_0 ;
  wire \quotient_r[31]_i_50_n_0 ;
  wire \quotient_r[31]_i_51_n_0 ;
  wire \quotient_r[31]_i_6_n_0 ;
  wire \quotient_r[31]_i_7_n_0 ;
  wire \quotient_r[31]_i_9_n_0 ;
  wire \quotient_r[3]_i_1_n_0 ;
  wire \quotient_r[4]_i_1_n_0 ;
  wire \quotient_r[4]_i_2_n_0 ;
  wire \quotient_r[5]_i_1_n_0 ;
  wire \quotient_r[5]_i_2_n_0 ;
  wire \quotient_r[5]_i_3_n_0 ;
  wire \quotient_r[5]_i_4_n_0 ;
  wire \quotient_r[6]_i_1_n_0 ;
  wire \quotient_r[6]_i_2_n_0 ;
  wire \quotient_r[6]_i_3_n_0 ;
  wire \quotient_r[7]_i_1_n_0 ;
  wire \quotient_r[7]_i_2_n_0 ;
  wire \quotient_r[8]_i_1_n_0 ;
  wire \quotient_r[8]_i_2_n_0 ;
  wire \quotient_r[9]_i_1_n_0 ;
  wire \quotient_r[9]_i_2_n_0 ;
  wire \quotient_r[9]_i_3_n_0 ;
  wire \quotient_r_reg[31]_i_17_n_0 ;
  wire \quotient_r_reg[31]_i_17_n_1 ;
  wire \quotient_r_reg[31]_i_17_n_2 ;
  wire \quotient_r_reg[31]_i_17_n_3 ;
  wire \quotient_r_reg[31]_i_27_n_0 ;
  wire \quotient_r_reg[31]_i_27_n_1 ;
  wire \quotient_r_reg[31]_i_27_n_2 ;
  wire \quotient_r_reg[31]_i_27_n_3 ;
  wire \quotient_r_reg[31]_i_5_n_0 ;
  wire \quotient_r_reg[31]_i_5_n_1 ;
  wire \quotient_r_reg[31]_i_5_n_2 ;
  wire \quotient_r_reg[31]_i_5_n_3 ;
  wire \quotient_r_reg[31]_i_8_n_0 ;
  wire \quotient_r_reg[31]_i_8_n_1 ;
  wire \quotient_r_reg[31]_i_8_n_2 ;
  wire \quotient_r_reg[31]_i_8_n_3 ;
  wire [4:0]remainder_log2;
  wire [4:0]remainder_log2_r;
  wire \remainder_log2_r[0]_i_2_n_0 ;
  wire \remainder_log2_r[0]_i_3_n_0 ;
  wire \remainder_log2_r[0]_i_4_n_0 ;
  wire \remainder_log2_r[0]_i_5_n_0 ;
  wire \remainder_log2_r[0]_i_6_n_0 ;
  wire \remainder_log2_r[0]_i_7_n_0 ;
  wire \remainder_log2_r[0]_i_8_n_0 ;
  wire \remainder_log2_r[1]_i_2_n_0 ;
  wire \remainder_log2_r[1]_i_3_n_0 ;
  wire \remainder_log2_r[1]_i_4_n_0 ;
  wire \remainder_log2_r[1]_i_5_n_0 ;
  wire \remainder_log2_r[1]_i_6_n_0 ;
  wire \remainder_log2_r[2]_i_2_n_0 ;
  wire \remainder_log2_r[2]_i_3_n_0 ;
  wire \remainder_log2_r[2]_i_4_n_0 ;
  wire \remainder_log2_r[2]_i_5_n_0 ;
  wire \remainder_log2_r[2]_i_6_n_0 ;
  wire \remainder_log2_r[3]_i_2_n_0 ;
  wire \remainder_log2_r[3]_i_3_n_0 ;
  wire \remainder_log2_r[3]_i_4_n_0 ;
  wire \remainder_log2_r[4]_i_2_n_0 ;
  wire \remainder_log2_r[4]_i_3_n_0 ;
  wire [31:0]remainder_r1;
  wire \remainder_r[0]_i_1_n_0 ;
  wire \remainder_r[10]_i_1_n_0 ;
  wire \remainder_r[11]_i_10_n_0 ;
  wire \remainder_r[11]_i_11_n_0 ;
  wire \remainder_r[11]_i_12_n_0 ;
  wire \remainder_r[11]_i_13_n_0 ;
  wire \remainder_r[11]_i_14_n_0 ;
  wire \remainder_r[11]_i_15_n_0 ;
  wire \remainder_r[11]_i_16_n_0 ;
  wire \remainder_r[11]_i_17_n_0 ;
  wire \remainder_r[11]_i_18_n_0 ;
  wire \remainder_r[11]_i_19_n_0 ;
  wire \remainder_r[11]_i_1_n_0 ;
  wire \remainder_r[11]_i_20_n_0 ;
  wire \remainder_r[11]_i_21_n_0 ;
  wire \remainder_r[11]_i_22_n_0 ;
  wire \remainder_r[11]_i_3_n_0 ;
  wire \remainder_r[11]_i_4_n_0 ;
  wire \remainder_r[11]_i_5_n_0 ;
  wire \remainder_r[11]_i_6_n_0 ;
  wire \remainder_r[11]_i_7_n_0 ;
  wire \remainder_r[11]_i_8_n_0 ;
  wire \remainder_r[11]_i_9_n_0 ;
  wire \remainder_r[12]_i_1_n_0 ;
  wire \remainder_r[13]_i_1_n_0 ;
  wire \remainder_r[14]_i_1_n_0 ;
  wire \remainder_r[15]_i_10_n_0 ;
  wire \remainder_r[15]_i_11_n_0 ;
  wire \remainder_r[15]_i_12_n_0 ;
  wire \remainder_r[15]_i_13_n_0 ;
  wire \remainder_r[15]_i_14_n_0 ;
  wire \remainder_r[15]_i_15_n_0 ;
  wire \remainder_r[15]_i_16_n_0 ;
  wire \remainder_r[15]_i_17_n_0 ;
  wire \remainder_r[15]_i_18_n_0 ;
  wire \remainder_r[15]_i_19_n_0 ;
  wire \remainder_r[15]_i_1_n_0 ;
  wire \remainder_r[15]_i_20_n_0 ;
  wire \remainder_r[15]_i_21_n_0 ;
  wire \remainder_r[15]_i_22_n_0 ;
  wire \remainder_r[15]_i_23_n_0 ;
  wire \remainder_r[15]_i_24_n_0 ;
  wire \remainder_r[15]_i_25_n_0 ;
  wire \remainder_r[15]_i_26_n_0 ;
  wire \remainder_r[15]_i_27_n_0 ;
  wire \remainder_r[15]_i_28_n_0 ;
  wire \remainder_r[15]_i_3_n_0 ;
  wire \remainder_r[15]_i_4_n_0 ;
  wire \remainder_r[15]_i_5_n_0 ;
  wire \remainder_r[15]_i_6_n_0 ;
  wire \remainder_r[15]_i_7_n_0 ;
  wire \remainder_r[15]_i_8_n_0 ;
  wire \remainder_r[15]_i_9_n_0 ;
  wire \remainder_r[16]_i_1_n_0 ;
  wire \remainder_r[17]_i_1_n_0 ;
  wire \remainder_r[18]_i_1_n_0 ;
  wire \remainder_r[19]_i_10_n_0 ;
  wire \remainder_r[19]_i_11_n_0 ;
  wire \remainder_r[19]_i_12_n_0 ;
  wire \remainder_r[19]_i_13_n_0 ;
  wire \remainder_r[19]_i_14_n_0 ;
  wire \remainder_r[19]_i_15_n_0 ;
  wire \remainder_r[19]_i_16_n_0 ;
  wire \remainder_r[19]_i_17_n_0 ;
  wire \remainder_r[19]_i_18_n_0 ;
  wire \remainder_r[19]_i_19_n_0 ;
  wire \remainder_r[19]_i_1_n_0 ;
  wire \remainder_r[19]_i_20_n_0 ;
  wire \remainder_r[19]_i_21_n_0 ;
  wire \remainder_r[19]_i_22_n_0 ;
  wire \remainder_r[19]_i_23_n_0 ;
  wire \remainder_r[19]_i_24_n_0 ;
  wire \remainder_r[19]_i_25_n_0 ;
  wire \remainder_r[19]_i_26_n_0 ;
  wire \remainder_r[19]_i_27_n_0 ;
  wire \remainder_r[19]_i_3_n_0 ;
  wire \remainder_r[19]_i_4_n_0 ;
  wire \remainder_r[19]_i_5_n_0 ;
  wire \remainder_r[19]_i_6_n_0 ;
  wire \remainder_r[19]_i_7_n_0 ;
  wire \remainder_r[19]_i_8_n_0 ;
  wire \remainder_r[19]_i_9_n_0 ;
  wire \remainder_r[1]_i_1_n_0 ;
  wire \remainder_r[20]_i_1_n_0 ;
  wire \remainder_r[21]_i_1_n_0 ;
  wire \remainder_r[22]_i_1_n_0 ;
  wire \remainder_r[23]_i_10_n_0 ;
  wire \remainder_r[23]_i_11_n_0 ;
  wire \remainder_r[23]_i_12_n_0 ;
  wire \remainder_r[23]_i_13_n_0 ;
  wire \remainder_r[23]_i_14_n_0 ;
  wire \remainder_r[23]_i_15_n_0 ;
  wire \remainder_r[23]_i_16_n_0 ;
  wire \remainder_r[23]_i_17_n_0 ;
  wire \remainder_r[23]_i_18_n_0 ;
  wire \remainder_r[23]_i_19_n_0 ;
  wire \remainder_r[23]_i_1_n_0 ;
  wire \remainder_r[23]_i_20_n_0 ;
  wire \remainder_r[23]_i_21_n_0 ;
  wire \remainder_r[23]_i_22_n_0 ;
  wire \remainder_r[23]_i_23_n_0 ;
  wire \remainder_r[23]_i_24_n_0 ;
  wire \remainder_r[23]_i_25_n_0 ;
  wire \remainder_r[23]_i_3_n_0 ;
  wire \remainder_r[23]_i_4_n_0 ;
  wire \remainder_r[23]_i_5_n_0 ;
  wire \remainder_r[23]_i_6_n_0 ;
  wire \remainder_r[23]_i_7_n_0 ;
  wire \remainder_r[23]_i_8_n_0 ;
  wire \remainder_r[23]_i_9_n_0 ;
  wire \remainder_r[24]_i_1_n_0 ;
  wire \remainder_r[25]_i_1_n_0 ;
  wire \remainder_r[26]_i_1_n_0 ;
  wire \remainder_r[27]_i_10_n_0 ;
  wire \remainder_r[27]_i_11_n_0 ;
  wire \remainder_r[27]_i_12_n_0 ;
  wire \remainder_r[27]_i_13_n_0 ;
  wire \remainder_r[27]_i_14_n_0 ;
  wire \remainder_r[27]_i_15_n_0 ;
  wire \remainder_r[27]_i_16_n_0 ;
  wire \remainder_r[27]_i_17_n_0 ;
  wire \remainder_r[27]_i_18_n_0 ;
  wire \remainder_r[27]_i_19_n_0 ;
  wire \remainder_r[27]_i_1_n_0 ;
  wire \remainder_r[27]_i_20_n_0 ;
  wire \remainder_r[27]_i_21_n_0 ;
  wire \remainder_r[27]_i_22_n_0 ;
  wire \remainder_r[27]_i_23_n_0 ;
  wire \remainder_r[27]_i_24_n_0 ;
  wire \remainder_r[27]_i_25_n_0 ;
  wire \remainder_r[27]_i_26_n_0 ;
  wire \remainder_r[27]_i_27_n_0 ;
  wire \remainder_r[27]_i_28_n_0 ;
  wire \remainder_r[27]_i_29_n_0 ;
  wire \remainder_r[27]_i_30_n_0 ;
  wire \remainder_r[27]_i_3_n_0 ;
  wire \remainder_r[27]_i_4_n_0 ;
  wire \remainder_r[27]_i_5_n_0 ;
  wire \remainder_r[27]_i_6_n_0 ;
  wire \remainder_r[27]_i_7_n_0 ;
  wire \remainder_r[27]_i_8_n_0 ;
  wire \remainder_r[27]_i_9_n_0 ;
  wire \remainder_r[28]_i_1_n_0 ;
  wire \remainder_r[29]_i_1_n_0 ;
  wire \remainder_r[2]_i_1_n_0 ;
  wire \remainder_r[30]_i_1_n_0 ;
  wire \remainder_r[31]_i_10_n_0 ;
  wire \remainder_r[31]_i_11_n_0 ;
  wire \remainder_r[31]_i_12_n_0 ;
  wire \remainder_r[31]_i_13_n_0 ;
  wire \remainder_r[31]_i_14_n_0 ;
  wire \remainder_r[31]_i_15_n_0 ;
  wire \remainder_r[31]_i_16_n_0 ;
  wire \remainder_r[31]_i_17_n_0 ;
  wire \remainder_r[31]_i_18_n_0 ;
  wire \remainder_r[31]_i_19_n_0 ;
  wire \remainder_r[31]_i_1_n_0 ;
  wire \remainder_r[31]_i_20_n_0 ;
  wire \remainder_r[31]_i_21_n_0 ;
  wire \remainder_r[31]_i_22_n_0 ;
  wire \remainder_r[31]_i_23_n_0 ;
  wire \remainder_r[31]_i_24_n_0 ;
  wire \remainder_r[31]_i_25_n_0 ;
  wire \remainder_r[31]_i_26_n_0 ;
  wire \remainder_r[31]_i_27_n_0 ;
  wire \remainder_r[31]_i_28_n_0 ;
  wire \remainder_r[31]_i_29_n_0 ;
  wire \remainder_r[31]_i_30_n_0 ;
  wire \remainder_r[31]_i_31_n_0 ;
  wire \remainder_r[31]_i_32_n_0 ;
  wire \remainder_r[31]_i_33_n_0 ;
  wire \remainder_r[31]_i_34_n_0 ;
  wire \remainder_r[31]_i_35_n_0 ;
  wire \remainder_r[31]_i_36_n_0 ;
  wire \remainder_r[31]_i_37_n_0 ;
  wire \remainder_r[31]_i_38_n_0 ;
  wire \remainder_r[31]_i_39_n_0 ;
  wire \remainder_r[31]_i_3_n_0 ;
  wire \remainder_r[31]_i_40_n_0 ;
  wire \remainder_r[31]_i_41_n_0 ;
  wire \remainder_r[31]_i_42_n_0 ;
  wire \remainder_r[31]_i_43_n_0 ;
  wire \remainder_r[31]_i_44_n_0 ;
  wire \remainder_r[31]_i_45_n_0 ;
  wire \remainder_r[31]_i_46_n_0 ;
  wire \remainder_r[31]_i_47_n_0 ;
  wire \remainder_r[31]_i_48_n_0 ;
  wire \remainder_r[31]_i_49_n_0 ;
  wire \remainder_r[31]_i_4_n_0 ;
  wire \remainder_r[31]_i_50_n_0 ;
  wire \remainder_r[31]_i_51_n_0 ;
  wire \remainder_r[31]_i_52_n_0 ;
  wire \remainder_r[31]_i_53_n_0 ;
  wire \remainder_r[31]_i_5_n_0 ;
  wire \remainder_r[31]_i_6_n_0 ;
  wire \remainder_r[31]_i_7_n_0 ;
  wire \remainder_r[31]_i_8_n_0 ;
  wire \remainder_r[31]_i_9_n_0 ;
  wire \remainder_r[3]_i_10_n_0 ;
  wire \remainder_r[3]_i_11_n_0 ;
  wire \remainder_r[3]_i_12_n_0 ;
  wire \remainder_r[3]_i_13_n_0 ;
  wire \remainder_r[3]_i_14_n_0 ;
  wire \remainder_r[3]_i_15_n_0 ;
  wire \remainder_r[3]_i_16_n_0 ;
  wire \remainder_r[3]_i_17_n_0 ;
  wire \remainder_r[3]_i_1_n_0 ;
  wire \remainder_r[3]_i_3_n_0 ;
  wire \remainder_r[3]_i_4_n_0 ;
  wire \remainder_r[3]_i_5_n_0 ;
  wire \remainder_r[3]_i_6_n_0 ;
  wire \remainder_r[3]_i_7_n_0 ;
  wire \remainder_r[3]_i_8_n_0 ;
  wire \remainder_r[3]_i_9_n_0 ;
  wire \remainder_r[4]_i_1_n_0 ;
  wire \remainder_r[5]_i_1_n_0 ;
  wire \remainder_r[6]_i_1_n_0 ;
  wire \remainder_r[7]_i_10_n_0 ;
  wire \remainder_r[7]_i_11_n_0 ;
  wire \remainder_r[7]_i_12_n_0 ;
  wire \remainder_r[7]_i_13_n_0 ;
  wire \remainder_r[7]_i_14_n_0 ;
  wire \remainder_r[7]_i_15_n_0 ;
  wire \remainder_r[7]_i_16_n_0 ;
  wire \remainder_r[7]_i_17_n_0 ;
  wire \remainder_r[7]_i_18_n_0 ;
  wire \remainder_r[7]_i_19_n_0 ;
  wire \remainder_r[7]_i_1_n_0 ;
  wire \remainder_r[7]_i_3_n_0 ;
  wire \remainder_r[7]_i_4_n_0 ;
  wire \remainder_r[7]_i_5_n_0 ;
  wire \remainder_r[7]_i_6_n_0 ;
  wire \remainder_r[7]_i_7_n_0 ;
  wire \remainder_r[7]_i_8_n_0 ;
  wire \remainder_r[7]_i_9_n_0 ;
  wire \remainder_r[8]_i_1_n_0 ;
  wire \remainder_r[9]_i_1_n_0 ;
  wire \remainder_r_reg[11]_i_2_n_0 ;
  wire \remainder_r_reg[11]_i_2_n_1 ;
  wire \remainder_r_reg[11]_i_2_n_2 ;
  wire \remainder_r_reg[11]_i_2_n_3 ;
  wire \remainder_r_reg[15]_i_2_n_0 ;
  wire \remainder_r_reg[15]_i_2_n_1 ;
  wire \remainder_r_reg[15]_i_2_n_2 ;
  wire \remainder_r_reg[15]_i_2_n_3 ;
  wire \remainder_r_reg[19]_i_2_n_0 ;
  wire \remainder_r_reg[19]_i_2_n_1 ;
  wire \remainder_r_reg[19]_i_2_n_2 ;
  wire \remainder_r_reg[19]_i_2_n_3 ;
  wire \remainder_r_reg[23]_i_2_n_0 ;
  wire \remainder_r_reg[23]_i_2_n_1 ;
  wire \remainder_r_reg[23]_i_2_n_2 ;
  wire \remainder_r_reg[23]_i_2_n_3 ;
  wire \remainder_r_reg[27]_i_2_n_0 ;
  wire \remainder_r_reg[27]_i_2_n_1 ;
  wire \remainder_r_reg[27]_i_2_n_2 ;
  wire \remainder_r_reg[27]_i_2_n_3 ;
  wire \remainder_r_reg[31]_i_2_n_1 ;
  wire \remainder_r_reg[31]_i_2_n_2 ;
  wire \remainder_r_reg[31]_i_2_n_3 ;
  wire \remainder_r_reg[3]_i_2_n_0 ;
  wire \remainder_r_reg[3]_i_2_n_1 ;
  wire \remainder_r_reg[3]_i_2_n_2 ;
  wire \remainder_r_reg[3]_i_2_n_3 ;
  wire \remainder_r_reg[7]_i_2_n_0 ;
  wire \remainder_r_reg[7]_i_2_n_1 ;
  wire \remainder_r_reg[7]_i_2_n_2 ;
  wire \remainder_r_reg[7]_i_2_n_3 ;
  wire \remainder_r_reg_n_0_[0] ;
  wire \remainder_r_reg_n_0_[10] ;
  wire \remainder_r_reg_n_0_[11] ;
  wire \remainder_r_reg_n_0_[12] ;
  wire \remainder_r_reg_n_0_[13] ;
  wire \remainder_r_reg_n_0_[14] ;
  wire \remainder_r_reg_n_0_[15] ;
  wire \remainder_r_reg_n_0_[16] ;
  wire \remainder_r_reg_n_0_[17] ;
  wire \remainder_r_reg_n_0_[18] ;
  wire \remainder_r_reg_n_0_[19] ;
  wire \remainder_r_reg_n_0_[1] ;
  wire \remainder_r_reg_n_0_[20] ;
  wire \remainder_r_reg_n_0_[21] ;
  wire \remainder_r_reg_n_0_[22] ;
  wire \remainder_r_reg_n_0_[23] ;
  wire \remainder_r_reg_n_0_[24] ;
  wire \remainder_r_reg_n_0_[25] ;
  wire \remainder_r_reg_n_0_[26] ;
  wire \remainder_r_reg_n_0_[27] ;
  wire \remainder_r_reg_n_0_[28] ;
  wire \remainder_r_reg_n_0_[29] ;
  wire \remainder_r_reg_n_0_[2] ;
  wire \remainder_r_reg_n_0_[30] ;
  wire \remainder_r_reg_n_0_[31] ;
  wire \remainder_r_reg_n_0_[3] ;
  wire \remainder_r_reg_n_0_[4] ;
  wire \remainder_r_reg_n_0_[5] ;
  wire \remainder_r_reg_n_0_[6] ;
  wire \remainder_r_reg_n_0_[7] ;
  wire \remainder_r_reg_n_0_[8] ;
  wire \remainder_r_reg_n_0_[9] ;
  wire rst;
  wire [0:0]state;
  wire [2:0]state__0;
  wire [3:0]NLW_div_done_r_reg_i_14_O_UNCONNECTED;
  wire [3:0]NLW_div_done_r_reg_i_23_O_UNCONNECTED;
  wire [3:0]NLW_div_done_r_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_div_done_r_reg_i_32_O_UNCONNECTED;
  wire [3:0]NLW_div_done_r_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_div_done_r_reg_i_41_O_UNCONNECTED;
  wire [3:0]NLW_div_done_r_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_div_done_r_reg_i_50_O_UNCONNECTED;
  wire [3:0]\NLW_quotient_r_reg[31]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_quotient_r_reg[31]_i_27_O_UNCONNECTED ;
  wire [3:0]\NLW_quotient_r_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_quotient_r_reg[31]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_remainder_r_reg[31]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(divisor_r1),
        .I1(div_done_r_reg_i_4_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(div_done_r_reg_i_3_n_0),
        .I4(in_valid),
        .I5(state),
        .O(state__0[0]));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(div_done_r_reg_i_3_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in_valid),
        .I3(state),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(divisor_r1),
        .I1(div_done_r_reg_i_4_n_0),
        .O(state__0[2]));
  (* FSM_ENCODED_STATES = "COMP2:100,COMP1:010,INIT:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(div_done_r_i_1_n_0),
        .D(state__0[0]),
        .Q(state),
        .S(rst));
  (* FSM_ENCODED_STATES = "COMP2:100,COMP1:010,INIT:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(div_done_r_i_1_n_0),
        .D(state__0[1]),
        .Q(divisor_r1),
        .R(rst));
  (* FSM_ENCODED_STATES = "COMP2:100,COMP1:010,INIT:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(div_done_r_i_1_n_0),
        .D(state__0[2]),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst));
  LUT3 #(
    .INIT(8'hFE)) 
    div_done_r_i_1
       (.I0(divisor_r1),
        .I1(state),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(div_done_r_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_10
       (.I0(divisor_r1__0[31]),
        .I1(remainder_r1[31]),
        .I2(divisor_r1__0[30]),
        .I3(remainder_r1[30]),
        .O(div_done_r_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_11
       (.I0(divisor_r1__0[29]),
        .I1(remainder_r1[29]),
        .I2(divisor_r1__0[28]),
        .I3(remainder_r1[28]),
        .O(div_done_r_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_12
       (.I0(divisor_r1__0[27]),
        .I1(remainder_r1[27]),
        .I2(divisor_r1__0[26]),
        .I3(remainder_r1[26]),
        .O(div_done_r_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_13
       (.I0(divisor_r1__0[25]),
        .I1(remainder_r1[25]),
        .I2(divisor_r1__0[24]),
        .I3(remainder_r1[24]),
        .O(div_done_r_i_13_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_15
       (.I0(\divisor_r_reg_n_0_[31] ),
        .I1(\remainder_r_reg_n_0_[31] ),
        .I2(\divisor_r_reg_n_0_[30] ),
        .I3(\remainder_r_reg_n_0_[30] ),
        .O(div_done_r_i_15_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_16
       (.I0(\divisor_r_reg_n_0_[29] ),
        .I1(\remainder_r_reg_n_0_[29] ),
        .I2(\divisor_r_reg_n_0_[28] ),
        .I3(\remainder_r_reg_n_0_[28] ),
        .O(div_done_r_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_17
       (.I0(\divisor_r_reg_n_0_[27] ),
        .I1(\remainder_r_reg_n_0_[27] ),
        .I2(\divisor_r_reg_n_0_[26] ),
        .I3(\remainder_r_reg_n_0_[26] ),
        .O(div_done_r_i_17_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_18
       (.I0(\divisor_r_reg_n_0_[25] ),
        .I1(\remainder_r_reg_n_0_[25] ),
        .I2(\divisor_r_reg_n_0_[24] ),
        .I3(\remainder_r_reg_n_0_[24] ),
        .O(div_done_r_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_19
       (.I0(\remainder_r_reg_n_0_[31] ),
        .I1(\divisor_r_reg_n_0_[31] ),
        .I2(\remainder_r_reg_n_0_[30] ),
        .I3(\divisor_r_reg_n_0_[30] ),
        .O(div_done_r_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    div_done_r_i_2
       (.I0(div_done_r_reg_i_3_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(div_done_r_reg_i_4_n_0),
        .I3(divisor_r1),
        .O(div_done_r));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_20
       (.I0(\remainder_r_reg_n_0_[29] ),
        .I1(\divisor_r_reg_n_0_[29] ),
        .I2(\remainder_r_reg_n_0_[28] ),
        .I3(\divisor_r_reg_n_0_[28] ),
        .O(div_done_r_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_21
       (.I0(\remainder_r_reg_n_0_[27] ),
        .I1(\divisor_r_reg_n_0_[27] ),
        .I2(\remainder_r_reg_n_0_[26] ),
        .I3(\divisor_r_reg_n_0_[26] ),
        .O(div_done_r_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_22
       (.I0(\remainder_r_reg_n_0_[25] ),
        .I1(\divisor_r_reg_n_0_[25] ),
        .I2(\remainder_r_reg_n_0_[24] ),
        .I3(\divisor_r_reg_n_0_[24] ),
        .O(div_done_r_i_22_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_24
       (.I0(remainder_r1[23]),
        .I1(divisor_r1__0[23]),
        .I2(divisor_r1__0[22]),
        .I3(remainder_r1[22]),
        .O(div_done_r_i_24_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_25
       (.I0(remainder_r1[21]),
        .I1(divisor_r1__0[21]),
        .I2(divisor_r1__0[20]),
        .I3(remainder_r1[20]),
        .O(div_done_r_i_25_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_26
       (.I0(remainder_r1[19]),
        .I1(divisor_r1__0[19]),
        .I2(divisor_r1__0[18]),
        .I3(remainder_r1[18]),
        .O(div_done_r_i_26_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_27
       (.I0(remainder_r1[17]),
        .I1(divisor_r1__0[17]),
        .I2(divisor_r1__0[16]),
        .I3(remainder_r1[16]),
        .O(div_done_r_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_28
       (.I0(divisor_r1__0[23]),
        .I1(remainder_r1[23]),
        .I2(divisor_r1__0[22]),
        .I3(remainder_r1[22]),
        .O(div_done_r_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_29
       (.I0(divisor_r1__0[21]),
        .I1(remainder_r1[21]),
        .I2(divisor_r1__0[20]),
        .I3(remainder_r1[20]),
        .O(div_done_r_i_29_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_30
       (.I0(divisor_r1__0[19]),
        .I1(remainder_r1[19]),
        .I2(divisor_r1__0[18]),
        .I3(remainder_r1[18]),
        .O(div_done_r_i_30_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_31
       (.I0(divisor_r1__0[17]),
        .I1(remainder_r1[17]),
        .I2(divisor_r1__0[16]),
        .I3(remainder_r1[16]),
        .O(div_done_r_i_31_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_33
       (.I0(\divisor_r_reg_n_0_[23] ),
        .I1(\remainder_r_reg_n_0_[23] ),
        .I2(\divisor_r_reg_n_0_[22] ),
        .I3(\remainder_r_reg_n_0_[22] ),
        .O(div_done_r_i_33_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_34
       (.I0(\divisor_r_reg_n_0_[21] ),
        .I1(\remainder_r_reg_n_0_[21] ),
        .I2(\divisor_r_reg_n_0_[20] ),
        .I3(\remainder_r_reg_n_0_[20] ),
        .O(div_done_r_i_34_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_35
       (.I0(\divisor_r_reg_n_0_[19] ),
        .I1(\remainder_r_reg_n_0_[19] ),
        .I2(\divisor_r_reg_n_0_[18] ),
        .I3(\remainder_r_reg_n_0_[18] ),
        .O(div_done_r_i_35_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_36
       (.I0(\divisor_r_reg_n_0_[17] ),
        .I1(\remainder_r_reg_n_0_[17] ),
        .I2(\divisor_r_reg_n_0_[16] ),
        .I3(\remainder_r_reg_n_0_[16] ),
        .O(div_done_r_i_36_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_37
       (.I0(\remainder_r_reg_n_0_[23] ),
        .I1(\divisor_r_reg_n_0_[23] ),
        .I2(\remainder_r_reg_n_0_[22] ),
        .I3(\divisor_r_reg_n_0_[22] ),
        .O(div_done_r_i_37_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_38
       (.I0(\remainder_r_reg_n_0_[21] ),
        .I1(\divisor_r_reg_n_0_[21] ),
        .I2(\remainder_r_reg_n_0_[20] ),
        .I3(\divisor_r_reg_n_0_[20] ),
        .O(div_done_r_i_38_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_39
       (.I0(\remainder_r_reg_n_0_[19] ),
        .I1(\divisor_r_reg_n_0_[19] ),
        .I2(\remainder_r_reg_n_0_[18] ),
        .I3(\divisor_r_reg_n_0_[18] ),
        .O(div_done_r_i_39_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_40
       (.I0(\remainder_r_reg_n_0_[17] ),
        .I1(\divisor_r_reg_n_0_[17] ),
        .I2(\remainder_r_reg_n_0_[16] ),
        .I3(\divisor_r_reg_n_0_[16] ),
        .O(div_done_r_i_40_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_42
       (.I0(remainder_r1[15]),
        .I1(divisor_r1__0[15]),
        .I2(divisor_r1__0[14]),
        .I3(remainder_r1[14]),
        .O(div_done_r_i_42_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_43
       (.I0(remainder_r1[13]),
        .I1(divisor_r1__0[13]),
        .I2(divisor_r1__0[12]),
        .I3(remainder_r1[12]),
        .O(div_done_r_i_43_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_44
       (.I0(remainder_r1[11]),
        .I1(divisor_r1__0[11]),
        .I2(divisor_r1__0[10]),
        .I3(remainder_r1[10]),
        .O(div_done_r_i_44_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_45
       (.I0(remainder_r1[9]),
        .I1(divisor_r1__0[9]),
        .I2(divisor_r1__0[8]),
        .I3(remainder_r1[8]),
        .O(div_done_r_i_45_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_46
       (.I0(divisor_r1__0[15]),
        .I1(remainder_r1[15]),
        .I2(divisor_r1__0[14]),
        .I3(remainder_r1[14]),
        .O(div_done_r_i_46_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_47
       (.I0(divisor_r1__0[13]),
        .I1(remainder_r1[13]),
        .I2(divisor_r1__0[12]),
        .I3(remainder_r1[12]),
        .O(div_done_r_i_47_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_48
       (.I0(divisor_r1__0[11]),
        .I1(remainder_r1[11]),
        .I2(divisor_r1__0[10]),
        .I3(remainder_r1[10]),
        .O(div_done_r_i_48_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_49
       (.I0(divisor_r1__0[9]),
        .I1(remainder_r1[9]),
        .I2(divisor_r1__0[8]),
        .I3(remainder_r1[8]),
        .O(div_done_r_i_49_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_51
       (.I0(\divisor_r_reg_n_0_[15] ),
        .I1(\remainder_r_reg_n_0_[15] ),
        .I2(\divisor_r_reg_n_0_[14] ),
        .I3(\remainder_r_reg_n_0_[14] ),
        .O(div_done_r_i_51_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_52
       (.I0(\divisor_r_reg_n_0_[13] ),
        .I1(\remainder_r_reg_n_0_[13] ),
        .I2(\divisor_r_reg_n_0_[12] ),
        .I3(\remainder_r_reg_n_0_[12] ),
        .O(div_done_r_i_52_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_53
       (.I0(\divisor_r_reg_n_0_[11] ),
        .I1(\remainder_r_reg_n_0_[11] ),
        .I2(\divisor_r_reg_n_0_[10] ),
        .I3(\remainder_r_reg_n_0_[10] ),
        .O(div_done_r_i_53_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_54
       (.I0(\divisor_r_reg_n_0_[9] ),
        .I1(\remainder_r_reg_n_0_[9] ),
        .I2(\divisor_r_reg_n_0_[8] ),
        .I3(\remainder_r_reg_n_0_[8] ),
        .O(div_done_r_i_54_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_55
       (.I0(\remainder_r_reg_n_0_[15] ),
        .I1(\divisor_r_reg_n_0_[15] ),
        .I2(\remainder_r_reg_n_0_[14] ),
        .I3(\divisor_r_reg_n_0_[14] ),
        .O(div_done_r_i_55_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_56
       (.I0(\remainder_r_reg_n_0_[13] ),
        .I1(\divisor_r_reg_n_0_[13] ),
        .I2(\remainder_r_reg_n_0_[12] ),
        .I3(\divisor_r_reg_n_0_[12] ),
        .O(div_done_r_i_56_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_57
       (.I0(\remainder_r_reg_n_0_[11] ),
        .I1(\divisor_r_reg_n_0_[11] ),
        .I2(\remainder_r_reg_n_0_[10] ),
        .I3(\divisor_r_reg_n_0_[10] ),
        .O(div_done_r_i_57_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_58
       (.I0(\remainder_r_reg_n_0_[9] ),
        .I1(\divisor_r_reg_n_0_[9] ),
        .I2(\remainder_r_reg_n_0_[8] ),
        .I3(\divisor_r_reg_n_0_[8] ),
        .O(div_done_r_i_58_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_59
       (.I0(remainder_r1[7]),
        .I1(divisor_r1__0[7]),
        .I2(divisor_r1__0[6]),
        .I3(remainder_r1[6]),
        .O(div_done_r_i_59_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_6
       (.I0(remainder_r1[31]),
        .I1(divisor_r1__0[31]),
        .I2(divisor_r1__0[30]),
        .I3(remainder_r1[30]),
        .O(div_done_r_i_6_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_60
       (.I0(remainder_r1[5]),
        .I1(divisor_r1__0[5]),
        .I2(divisor_r1__0[4]),
        .I3(remainder_r1[4]),
        .O(div_done_r_i_60_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_61
       (.I0(remainder_r1[3]),
        .I1(divisor_r1__0[3]),
        .I2(divisor_r1__0[2]),
        .I3(remainder_r1[2]),
        .O(div_done_r_i_61_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    div_done_r_i_62
       (.I0(remainder_r1[1]),
        .I1(divisor_r1__0[1]),
        .I2(remainder_r1[0]),
        .I3(divisor_r1__0[0]),
        .O(div_done_r_i_62_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_63
       (.I0(divisor_r1__0[7]),
        .I1(remainder_r1[7]),
        .I2(divisor_r1__0[6]),
        .I3(remainder_r1[6]),
        .O(div_done_r_i_63_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_64
       (.I0(divisor_r1__0[5]),
        .I1(remainder_r1[5]),
        .I2(divisor_r1__0[4]),
        .I3(remainder_r1[4]),
        .O(div_done_r_i_64_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_65
       (.I0(divisor_r1__0[3]),
        .I1(remainder_r1[3]),
        .I2(divisor_r1__0[2]),
        .I3(remainder_r1[2]),
        .O(div_done_r_i_65_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_66
       (.I0(divisor_r1__0[1]),
        .I1(remainder_r1[1]),
        .I2(divisor_r1__0[0]),
        .I3(remainder_r1[0]),
        .O(div_done_r_i_66_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_67
       (.I0(\divisor_r_reg_n_0_[7] ),
        .I1(\remainder_r_reg_n_0_[7] ),
        .I2(\divisor_r_reg_n_0_[6] ),
        .I3(\remainder_r_reg_n_0_[6] ),
        .O(div_done_r_i_67_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_68
       (.I0(\divisor_r_reg_n_0_[5] ),
        .I1(\remainder_r_reg_n_0_[5] ),
        .I2(\divisor_r_reg_n_0_[4] ),
        .I3(\remainder_r_reg_n_0_[4] ),
        .O(div_done_r_i_68_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_69
       (.I0(\divisor_r_reg_n_0_[3] ),
        .I1(\remainder_r_reg_n_0_[3] ),
        .I2(\divisor_r_reg_n_0_[2] ),
        .I3(\remainder_r_reg_n_0_[2] ),
        .O(div_done_r_i_69_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_7
       (.I0(remainder_r1[29]),
        .I1(divisor_r1__0[29]),
        .I2(divisor_r1__0[28]),
        .I3(remainder_r1[28]),
        .O(div_done_r_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    div_done_r_i_70
       (.I0(\divisor_r_reg_n_0_[1] ),
        .I1(\remainder_r_reg_n_0_[1] ),
        .I2(\divisor_r_reg_n_0_[0] ),
        .I3(\remainder_r_reg_n_0_[0] ),
        .O(div_done_r_i_70_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_71
       (.I0(\remainder_r_reg_n_0_[7] ),
        .I1(\divisor_r_reg_n_0_[7] ),
        .I2(\remainder_r_reg_n_0_[6] ),
        .I3(\divisor_r_reg_n_0_[6] ),
        .O(div_done_r_i_71_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_72
       (.I0(\remainder_r_reg_n_0_[5] ),
        .I1(\divisor_r_reg_n_0_[5] ),
        .I2(\remainder_r_reg_n_0_[4] ),
        .I3(\divisor_r_reg_n_0_[4] ),
        .O(div_done_r_i_72_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_73
       (.I0(\remainder_r_reg_n_0_[3] ),
        .I1(\divisor_r_reg_n_0_[3] ),
        .I2(\remainder_r_reg_n_0_[2] ),
        .I3(\divisor_r_reg_n_0_[2] ),
        .O(div_done_r_i_73_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    div_done_r_i_74
       (.I0(\remainder_r_reg_n_0_[1] ),
        .I1(\divisor_r_reg_n_0_[1] ),
        .I2(\remainder_r_reg_n_0_[0] ),
        .I3(\divisor_r_reg_n_0_[0] ),
        .O(div_done_r_i_74_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_8
       (.I0(remainder_r1[27]),
        .I1(divisor_r1__0[27]),
        .I2(divisor_r1__0[26]),
        .I3(remainder_r1[26]),
        .O(div_done_r_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    div_done_r_i_9
       (.I0(remainder_r1[25]),
        .I1(divisor_r1__0[25]),
        .I2(divisor_r1__0[24]),
        .I3(remainder_r1[24]),
        .O(div_done_r_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    div_done_r_reg
       (.C(clk),
        .CE(div_done_r_i_1_n_0),
        .D(div_done_r),
        .Q(out_valid),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_14
       (.CI(div_done_r_reg_i_32_n_0),
        .CO({div_done_r_reg_i_14_n_0,div_done_r_reg_i_14_n_1,div_done_r_reg_i_14_n_2,div_done_r_reg_i_14_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_33_n_0,div_done_r_i_34_n_0,div_done_r_i_35_n_0,div_done_r_i_36_n_0}),
        .O(NLW_div_done_r_reg_i_14_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_37_n_0,div_done_r_i_38_n_0,div_done_r_i_39_n_0,div_done_r_i_40_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_23
       (.CI(div_done_r_reg_i_41_n_0),
        .CO({div_done_r_reg_i_23_n_0,div_done_r_reg_i_23_n_1,div_done_r_reg_i_23_n_2,div_done_r_reg_i_23_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_42_n_0,div_done_r_i_43_n_0,div_done_r_i_44_n_0,div_done_r_i_45_n_0}),
        .O(NLW_div_done_r_reg_i_23_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_46_n_0,div_done_r_i_47_n_0,div_done_r_i_48_n_0,div_done_r_i_49_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_3
       (.CI(div_done_r_reg_i_5_n_0),
        .CO({div_done_r_reg_i_3_n_0,div_done_r_reg_i_3_n_1,div_done_r_reg_i_3_n_2,div_done_r_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_6_n_0,div_done_r_i_7_n_0,div_done_r_i_8_n_0,div_done_r_i_9_n_0}),
        .O(NLW_div_done_r_reg_i_3_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_10_n_0,div_done_r_i_11_n_0,div_done_r_i_12_n_0,div_done_r_i_13_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_32
       (.CI(div_done_r_reg_i_50_n_0),
        .CO({div_done_r_reg_i_32_n_0,div_done_r_reg_i_32_n_1,div_done_r_reg_i_32_n_2,div_done_r_reg_i_32_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_51_n_0,div_done_r_i_52_n_0,div_done_r_i_53_n_0,div_done_r_i_54_n_0}),
        .O(NLW_div_done_r_reg_i_32_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_55_n_0,div_done_r_i_56_n_0,div_done_r_i_57_n_0,div_done_r_i_58_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_4
       (.CI(div_done_r_reg_i_14_n_0),
        .CO({div_done_r_reg_i_4_n_0,div_done_r_reg_i_4_n_1,div_done_r_reg_i_4_n_2,div_done_r_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_15_n_0,div_done_r_i_16_n_0,div_done_r_i_17_n_0,div_done_r_i_18_n_0}),
        .O(NLW_div_done_r_reg_i_4_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_19_n_0,div_done_r_i_20_n_0,div_done_r_i_21_n_0,div_done_r_i_22_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_41
       (.CI(1'b0),
        .CO({div_done_r_reg_i_41_n_0,div_done_r_reg_i_41_n_1,div_done_r_reg_i_41_n_2,div_done_r_reg_i_41_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_59_n_0,div_done_r_i_60_n_0,div_done_r_i_61_n_0,div_done_r_i_62_n_0}),
        .O(NLW_div_done_r_reg_i_41_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_63_n_0,div_done_r_i_64_n_0,div_done_r_i_65_n_0,div_done_r_i_66_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_5
       (.CI(div_done_r_reg_i_23_n_0),
        .CO({div_done_r_reg_i_5_n_0,div_done_r_reg_i_5_n_1,div_done_r_reg_i_5_n_2,div_done_r_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_24_n_0,div_done_r_i_25_n_0,div_done_r_i_26_n_0,div_done_r_i_27_n_0}),
        .O(NLW_div_done_r_reg_i_5_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_28_n_0,div_done_r_i_29_n_0,div_done_r_i_30_n_0,div_done_r_i_31_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 div_done_r_reg_i_50
       (.CI(1'b0),
        .CO({div_done_r_reg_i_50_n_0,div_done_r_reg_i_50_n_1,div_done_r_reg_i_50_n_2,div_done_r_reg_i_50_n_3}),
        .CYINIT(1'b0),
        .DI({div_done_r_i_67_n_0,div_done_r_i_68_n_0,div_done_r_i_69_n_0,div_done_r_i_70_n_0}),
        .O(NLW_div_done_r_reg_i_50_O_UNCONNECTED[3:0]),
        .S({div_done_r_i_71_n_0,div_done_r_i_72_n_0,div_done_r_i_73_n_0,div_done_r_i_74_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF10)) 
    \divisor_log2_r[0]_i_1 
       (.I0(\divisor_log2_r[0]_i_2_n_0 ),
        .I1(\divisor_r_reg_n_0_[28] ),
        .I2(\divisor_log2_r[0]_i_3_n_0 ),
        .I3(\divisor_r_reg_n_0_[29] ),
        .I4(\divisor_r_reg_n_0_[30] ),
        .I5(\divisor_r_reg_n_0_[31] ),
        .O(divisor_log2[0]));
  LUT6 #(
    .INIT(64'h000000000F000F0D)) 
    \divisor_log2_r[0]_i_2 
       (.I0(\divisor_log2_r[0]_i_4_n_0 ),
        .I1(\divisor_r_reg_n_0_[24] ),
        .I2(\divisor_r_reg_n_0_[27] ),
        .I3(\divisor_r_reg_n_0_[26] ),
        .I4(\divisor_r_reg_n_0_[25] ),
        .I5(\divisor_log2_r[4]_i_4_n_0 ),
        .O(\divisor_log2_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F44FFFFFFFF)) 
    \divisor_log2_r[0]_i_3 
       (.I0(\divisor_log2_r[0]_i_5_n_0 ),
        .I1(\divisor_log2_r[0]_i_6_n_0 ),
        .I2(\divisor_r_reg_n_0_[18] ),
        .I3(\divisor_r_reg_n_0_[17] ),
        .I4(\divisor_log2_r[0]_i_7_n_0 ),
        .I5(\divisor_log2_r[4]_i_4_n_0 ),
        .O(\divisor_log2_r[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAAAAFFAE)) 
    \divisor_log2_r[0]_i_4 
       (.I0(\divisor_r_reg_n_0_[23] ),
        .I1(\divisor_r_reg_n_0_[19] ),
        .I2(\divisor_r_reg_n_0_[20] ),
        .I3(\divisor_r_reg_n_0_[21] ),
        .I4(\divisor_r_reg_n_0_[22] ),
        .O(\divisor_log2_r[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \divisor_log2_r[0]_i_5 
       (.I0(\divisor_log2_r[0]_i_8_n_0 ),
        .I1(\divisor_r_reg_n_0_[7] ),
        .I2(\divisor_r_reg_n_0_[8] ),
        .I3(\divisor_r_reg_n_0_[9] ),
        .O(\divisor_log2_r[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \divisor_log2_r[0]_i_6 
       (.I0(\divisor_r_reg_n_0_[16] ),
        .I1(\divisor_r_reg_n_0_[18] ),
        .I2(\divisor_r_reg_n_0_[17] ),
        .I3(\divisor_log2_r[2]_i_5_n_0 ),
        .I4(\divisor_r_reg_n_0_[10] ),
        .I5(\divisor_r_reg_n_0_[11] ),
        .O(\divisor_log2_r[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDDCDDDCC00000000)) 
    \divisor_log2_r[0]_i_7 
       (.I0(\divisor_r_reg_n_0_[14] ),
        .I1(\divisor_r_reg_n_0_[15] ),
        .I2(\divisor_r_reg_n_0_[12] ),
        .I3(\divisor_r_reg_n_0_[13] ),
        .I4(\divisor_r_reg_n_0_[11] ),
        .I5(\divisor_log2_r[2]_i_4_n_0 ),
        .O(\divisor_log2_r[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABABABBBABB)) 
    \divisor_log2_r[0]_i_8 
       (.I0(\divisor_r_reg_n_0_[6] ),
        .I1(\divisor_r_reg_n_0_[5] ),
        .I2(\divisor_r_reg_n_0_[4] ),
        .I3(\divisor_r_reg_n_0_[3] ),
        .I4(\divisor_r_reg_n_0_[2] ),
        .I5(\divisor_r_reg_n_0_[1] ),
        .O(\divisor_log2_r[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \divisor_log2_r[1]_i_1 
       (.I0(\divisor_r_reg_n_0_[31] ),
        .I1(\divisor_r_reg_n_0_[30] ),
        .I2(\divisor_r_reg_n_0_[29] ),
        .I3(\divisor_r_reg_n_0_[28] ),
        .I4(\divisor_log2_r[1]_i_2_n_0 ),
        .O(divisor_log2[1]));
  LUT6 #(
    .INIT(64'h0100010001000101)) 
    \divisor_log2_r[1]_i_2 
       (.I0(\divisor_log2_r[1]_i_3_n_0 ),
        .I1(\divisor_r_reg_n_0_[26] ),
        .I2(\divisor_r_reg_n_0_[27] ),
        .I3(\divisor_log2_r[1]_i_4_n_0 ),
        .I4(\divisor_r_reg_n_0_[18] ),
        .I5(\divisor_log2_r[1]_i_5_n_0 ),
        .O(\divisor_log2_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0020)) 
    \divisor_log2_r[1]_i_3 
       (.I0(\divisor_log2_r[3]_i_3_n_0 ),
        .I1(\divisor_r_reg_n_0_[21] ),
        .I2(\divisor_r_reg_n_0_[19] ),
        .I3(\divisor_r_reg_n_0_[20] ),
        .I4(\divisor_r_reg_n_0_[22] ),
        .I5(\divisor_r_reg_n_0_[23] ),
        .O(\divisor_log2_r[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD5)) 
    \divisor_log2_r[1]_i_4 
       (.I0(\divisor_log2_r[4]_i_4_n_0 ),
        .I1(\divisor_log2_r[0]_i_6_n_0 ),
        .I2(\divisor_r_reg_n_0_[9] ),
        .I3(\divisor_r_reg_n_0_[8] ),
        .I4(\divisor_log2_r[1]_i_6_n_0 ),
        .O(\divisor_log2_r[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFF10000)) 
    \divisor_log2_r[1]_i_5 
       (.I0(\divisor_r_reg_n_0_[12] ),
        .I1(\divisor_r_reg_n_0_[13] ),
        .I2(\divisor_r_reg_n_0_[15] ),
        .I3(\divisor_r_reg_n_0_[14] ),
        .I4(\divisor_log2_r[2]_i_4_n_0 ),
        .O(\divisor_log2_r[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \divisor_log2_r[1]_i_6 
       (.I0(\divisor_r_reg_n_0_[7] ),
        .I1(\divisor_r_reg_n_0_[6] ),
        .I2(\divisor_r_reg_n_0_[2] ),
        .I3(\divisor_r_reg_n_0_[3] ),
        .I4(\divisor_r_reg_n_0_[4] ),
        .I5(\divisor_r_reg_n_0_[5] ),
        .O(\divisor_log2_r[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF555755FF555555)) 
    \divisor_log2_r[2]_i_1 
       (.I0(\divisor_log2_r[3]_i_4_n_0 ),
        .I1(\divisor_log2_r[2]_i_2_n_0 ),
        .I2(\divisor_r_reg_n_0_[19] ),
        .I3(\divisor_log2_r[3]_i_3_n_0 ),
        .I4(\divisor_log2_r[2]_i_3_n_0 ),
        .I5(\divisor_log2_r[2]_i_4_n_0 ),
        .O(divisor_log2[2]));
  LUT6 #(
    .INIT(64'h0000000155555555)) 
    \divisor_log2_r[2]_i_2 
       (.I0(\divisor_log2_r[2]_i_5_n_0 ),
        .I1(\divisor_r_reg_n_0_[5] ),
        .I2(\divisor_r_reg_n_0_[4] ),
        .I3(\divisor_r_reg_n_0_[7] ),
        .I4(\divisor_r_reg_n_0_[6] ),
        .I5(\divisor_log2_r[2]_i_6_n_0 ),
        .O(\divisor_log2_r[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \divisor_log2_r[2]_i_3 
       (.I0(\divisor_r_reg_n_0_[23] ),
        .I1(\divisor_r_reg_n_0_[22] ),
        .I2(\divisor_r_reg_n_0_[21] ),
        .I3(\divisor_r_reg_n_0_[20] ),
        .O(\divisor_log2_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \divisor_log2_r[2]_i_4 
       (.I0(\divisor_r_reg_n_0_[17] ),
        .I1(\divisor_r_reg_n_0_[18] ),
        .I2(\divisor_r_reg_n_0_[16] ),
        .O(\divisor_log2_r[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \divisor_log2_r[2]_i_5 
       (.I0(\divisor_r_reg_n_0_[13] ),
        .I1(\divisor_r_reg_n_0_[12] ),
        .I2(\divisor_r_reg_n_0_[15] ),
        .I3(\divisor_r_reg_n_0_[14] ),
        .O(\divisor_log2_r[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \divisor_log2_r[2]_i_6 
       (.I0(\divisor_log2_r[2]_i_5_n_0 ),
        .I1(\divisor_r_reg_n_0_[10] ),
        .I2(\divisor_r_reg_n_0_[11] ),
        .I3(\divisor_r_reg_n_0_[9] ),
        .I4(\divisor_r_reg_n_0_[8] ),
        .O(\divisor_log2_r[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FFFFFFFFFFFF)) 
    \divisor_log2_r[3]_i_1 
       (.I0(\divisor_log2_r[3]_i_2_n_0 ),
        .I1(\divisor_r_reg_n_0_[9] ),
        .I2(\divisor_r_reg_n_0_[8] ),
        .I3(\divisor_log2_r[4]_i_3_n_0 ),
        .I4(\divisor_log2_r[3]_i_3_n_0 ),
        .I5(\divisor_log2_r[3]_i_4_n_0 ),
        .O(divisor_log2[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \divisor_log2_r[3]_i_2 
       (.I0(\divisor_r_reg_n_0_[11] ),
        .I1(\divisor_r_reg_n_0_[10] ),
        .I2(\divisor_r_reg_n_0_[14] ),
        .I3(\divisor_r_reg_n_0_[15] ),
        .I4(\divisor_r_reg_n_0_[12] ),
        .I5(\divisor_r_reg_n_0_[13] ),
        .O(\divisor_log2_r[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \divisor_log2_r[3]_i_3 
       (.I0(\divisor_r_reg_n_0_[27] ),
        .I1(\divisor_r_reg_n_0_[26] ),
        .I2(\divisor_r_reg_n_0_[25] ),
        .I3(\divisor_r_reg_n_0_[24] ),
        .O(\divisor_log2_r[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \divisor_log2_r[3]_i_4 
       (.I0(\divisor_r_reg_n_0_[31] ),
        .I1(\divisor_r_reg_n_0_[30] ),
        .I2(\divisor_r_reg_n_0_[29] ),
        .I3(\divisor_r_reg_n_0_[28] ),
        .O(\divisor_log2_r[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divisor_log2_r[4]_i_1 
       (.I0(rst),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \divisor_log2_r[4]_i_2 
       (.I0(\divisor_r_reg_n_0_[28] ),
        .I1(\divisor_r_reg_n_0_[29] ),
        .I2(\divisor_r_reg_n_0_[30] ),
        .I3(\divisor_r_reg_n_0_[31] ),
        .I4(\divisor_log2_r[4]_i_3_n_0 ),
        .O(divisor_log2[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \divisor_log2_r[4]_i_3 
       (.I0(\divisor_log2_r[4]_i_4_n_0 ),
        .I1(\divisor_r_reg_n_0_[16] ),
        .I2(\divisor_r_reg_n_0_[18] ),
        .I3(\divisor_r_reg_n_0_[17] ),
        .O(\divisor_log2_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \divisor_log2_r[4]_i_4 
       (.I0(\divisor_r_reg_n_0_[20] ),
        .I1(\divisor_r_reg_n_0_[21] ),
        .I2(\divisor_r_reg_n_0_[22] ),
        .I3(\divisor_r_reg_n_0_[23] ),
        .I4(\divisor_log2_r[3]_i_3_n_0 ),
        .I5(\divisor_r_reg_n_0_[19] ),
        .O(\divisor_log2_r[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_log2_r_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(divisor_log2[0]),
        .Q(divisor_log2_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_log2_r_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(divisor_log2[1]),
        .Q(divisor_log2_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_log2_r_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(divisor_log2[2]),
        .Q(divisor_log2_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_log2_r_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(divisor_log2[3]),
        .Q(divisor_log2_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_log2_r_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(divisor_log2[4]),
        .Q(divisor_log2_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[0] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[0] ),
        .Q(divisor_r1__0[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[10] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[10] ),
        .Q(divisor_r1__0[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[11] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[11] ),
        .Q(divisor_r1__0[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[12] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[12] ),
        .Q(divisor_r1__0[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[13] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[13] ),
        .Q(divisor_r1__0[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[14] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[14] ),
        .Q(divisor_r1__0[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[15] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[15] ),
        .Q(divisor_r1__0[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[16] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[16] ),
        .Q(divisor_r1__0[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[17] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[17] ),
        .Q(divisor_r1__0[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[18] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[18] ),
        .Q(divisor_r1__0[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[19] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[19] ),
        .Q(divisor_r1__0[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[1] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[1] ),
        .Q(divisor_r1__0[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[20] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[20] ),
        .Q(divisor_r1__0[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[21] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[21] ),
        .Q(divisor_r1__0[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[22] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[22] ),
        .Q(divisor_r1__0[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[23] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[23] ),
        .Q(divisor_r1__0[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[24] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[24] ),
        .Q(divisor_r1__0[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[25] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[25] ),
        .Q(divisor_r1__0[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[26] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[26] ),
        .Q(divisor_r1__0[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[27] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[27] ),
        .Q(divisor_r1__0[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[28] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[28] ),
        .Q(divisor_r1__0[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[29] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[29] ),
        .Q(divisor_r1__0[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[2] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[2] ),
        .Q(divisor_r1__0[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[30] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[30] ),
        .Q(divisor_r1__0[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[31] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[31] ),
        .Q(divisor_r1__0[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[3] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[3] ),
        .Q(divisor_r1__0[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[4] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[4] ),
        .Q(divisor_r1__0[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[5] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[5] ),
        .Q(divisor_r1__0[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[6] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[6] ),
        .Q(divisor_r1__0[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[7] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[7] ),
        .Q(divisor_r1__0[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[8] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[8] ),
        .Q(divisor_r1__0[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r1_reg[9] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\divisor_r_reg_n_0_[9] ),
        .Q(divisor_r1__0[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[0]_i_1 
       (.I0(divisor_r1__0[0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[0]),
        .I4(divisor_r1),
        .O(\divisor_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[10]_i_1 
       (.I0(divisor_r1__0[10]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[10]),
        .I4(divisor_r1),
        .O(\divisor_r[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[11]_i_1 
       (.I0(divisor_r1__0[11]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[11]),
        .I4(divisor_r1),
        .O(\divisor_r[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[12]_i_1 
       (.I0(divisor_r1__0[12]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[12]),
        .I4(divisor_r1),
        .O(\divisor_r[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[13]_i_1 
       (.I0(divisor_r1__0[13]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[13]),
        .I4(divisor_r1),
        .O(\divisor_r[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[14]_i_1 
       (.I0(divisor_r1__0[14]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[14]),
        .I4(divisor_r1),
        .O(\divisor_r[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[15]_i_1 
       (.I0(divisor_r1__0[15]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[15]),
        .I4(divisor_r1),
        .O(\divisor_r[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[16]_i_1 
       (.I0(divisor_r1__0[16]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[16]),
        .I4(divisor_r1),
        .O(\divisor_r[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[17]_i_1 
       (.I0(divisor_r1__0[17]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[17]),
        .I4(divisor_r1),
        .O(\divisor_r[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[18]_i_1 
       (.I0(divisor_r1__0[18]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[18]),
        .I4(divisor_r1),
        .O(\divisor_r[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[19]_i_1 
       (.I0(divisor_r1__0[19]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[19]),
        .I4(divisor_r1),
        .O(\divisor_r[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[1]_i_1 
       (.I0(divisor_r1__0[1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[1]),
        .I4(divisor_r1),
        .O(\divisor_r[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[20]_i_1 
       (.I0(divisor_r1__0[20]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[20]),
        .I4(divisor_r1),
        .O(\divisor_r[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[21]_i_1 
       (.I0(divisor_r1__0[21]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[21]),
        .I4(divisor_r1),
        .O(\divisor_r[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[22]_i_1 
       (.I0(divisor_r1__0[22]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[22]),
        .I4(divisor_r1),
        .O(\divisor_r[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[23]_i_1 
       (.I0(divisor_r1__0[23]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[23]),
        .I4(divisor_r1),
        .O(\divisor_r[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[24]_i_1 
       (.I0(divisor_r1__0[24]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[24]),
        .I4(divisor_r1),
        .O(\divisor_r[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[25]_i_1 
       (.I0(divisor_r1__0[25]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[25]),
        .I4(divisor_r1),
        .O(\divisor_r[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[26]_i_1 
       (.I0(divisor_r1__0[26]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[26]),
        .I4(divisor_r1),
        .O(\divisor_r[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[27]_i_1 
       (.I0(divisor_r1__0[27]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[27]),
        .I4(divisor_r1),
        .O(\divisor_r[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[28]_i_1 
       (.I0(divisor_r1__0[28]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[28]),
        .I4(divisor_r1),
        .O(\divisor_r[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[29]_i_1 
       (.I0(divisor_r1__0[29]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[29]),
        .I4(divisor_r1),
        .O(\divisor_r[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[2]_i_1 
       (.I0(divisor_r1__0[2]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[2]),
        .I4(divisor_r1),
        .O(\divisor_r[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[30]_i_1 
       (.I0(divisor_r1__0[30]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[30]),
        .I4(divisor_r1),
        .O(\divisor_r[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divisor_r[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state),
        .O(\divisor_r[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[31]_i_2 
       (.I0(divisor_r1__0[31]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[31]),
        .I4(divisor_r1),
        .O(\divisor_r[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[3]_i_1 
       (.I0(divisor_r1__0[3]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[3]),
        .I4(divisor_r1),
        .O(\divisor_r[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[4]_i_1 
       (.I0(divisor_r1__0[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[4]),
        .I4(divisor_r1),
        .O(\divisor_r[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[5]_i_1 
       (.I0(divisor_r1__0[5]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[5]),
        .I4(divisor_r1),
        .O(\divisor_r[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[6]_i_1 
       (.I0(divisor_r1__0[6]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[6]),
        .I4(divisor_r1),
        .O(\divisor_r[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[7]_i_1 
       (.I0(divisor_r1__0[7]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[7]),
        .I4(divisor_r1),
        .O(\divisor_r[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[8]_i_1 
       (.I0(divisor_r1__0[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[8]),
        .I4(divisor_r1),
        .O(\divisor_r[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \divisor_r[9]_i_1 
       (.I0(divisor_r1__0[9]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divisor[9]),
        .I4(divisor_r1),
        .O(\divisor_r[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[0] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[0]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[10] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[10]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[11] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[11]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[12] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[12]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[13] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[13]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[14] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[14]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[15] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[15]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[16] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[16]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[17] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[17]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[18] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[18]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[19] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[19]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[1] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[1]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[20] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[20]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[21] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[21]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[22] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[22]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[23] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[23]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[24] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[24]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[25] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[25]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[26] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[26]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[27] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[27]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[28] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[28]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[29] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[29]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[2] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[2]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[30] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[30]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[31] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[31]_i_2_n_0 ),
        .Q(\divisor_r_reg_n_0_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[3] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[3]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[4] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[4]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[5] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[5]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[6] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[6]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[7] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[7]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[8] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[8]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divisor_r_reg[9] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\divisor_r[9]_i_1_n_0 ),
        .Q(\divisor_r_reg_n_0_[9] ),
        .R(rst));
  LUT4 #(
    .INIT(16'hABA8)) 
    \quotient_r[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state),
        .I2(\quotient_r[0]_i_2_n_0 ),
        .I3(quotient[0]),
        .O(\quotient_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2002002000000020)) 
    \quotient_r[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[24]_i_3_n_0 ),
        .I4(\quotient_r_reg[31]_i_5_n_0 ),
        .I5(\quotient_r[24]_i_4_n_0 ),
        .O(\quotient_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF55FF00EA00)) 
    \quotient_r[10]_i_1 
       (.I0(\quotient_r[10]_i_2_n_0 ),
        .I1(\quotient_r[26]_i_2_n_0 ),
        .I2(\quotient_r[14]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(state),
        .I5(quotient[10]),
        .O(\quotient_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \quotient_r[10]_i_2 
       (.I0(\quotient_r[13]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r_reg[31]_i_5_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\quotient_r[30]_i_5_n_0 ),
        .O(\quotient_r[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDD888C8888)) 
    \quotient_r[11]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(\quotient_r[27]_i_2_n_0 ),
        .I5(quotient[11]),
        .O(\quotient_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8A88AAAA)) 
    \quotient_r[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state),
        .I2(\quotient_r[20]_i_3_n_0 ),
        .I3(\quotient_r[14]_i_2_n_0 ),
        .I4(\quotient_r[12]_i_2_n_0 ),
        .I5(quotient[12]),
        .O(\quotient_r[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \quotient_r[12]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[29]_i_5_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(\quotient_r[18]_i_3_n_0 ),
        .O(\quotient_r[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBA8AAA8A8)) 
    \quotient_r[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state),
        .I2(\quotient_r[13]_i_2_n_0 ),
        .I3(\quotient_r[29]_i_2_n_0 ),
        .I4(\quotient_r[13]_i_3_n_0 ),
        .I5(quotient[13]),
        .O(\quotient_r[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \quotient_r[13]_i_2 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r[29]_i_5_n_0 ),
        .I4(\quotient_r[30]_i_5_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \quotient_r[13]_i_3 
       (.I0(\quotient_r[18]_i_3_n_0 ),
        .I1(\quotient_r[9]_i_2_n_0 ),
        .O(\quotient_r[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8A88AAAA)) 
    \quotient_r[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state),
        .I2(\quotient_r[22]_i_3_n_0 ),
        .I3(\quotient_r[14]_i_2_n_0 ),
        .I4(\quotient_r[14]_i_3_n_0 ),
        .I5(quotient[14]),
        .O(\quotient_r[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \quotient_r[14]_i_2 
       (.I0(\quotient_r[31]_i_3_n_0 ),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .O(\quotient_r[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \quotient_r[14]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(\quotient_r[18]_i_3_n_0 ),
        .O(\quotient_r[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \quotient_r[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state),
        .I2(\quotient_r[15]_i_2_n_0 ),
        .I3(quotient[15]),
        .O(\quotient_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200828002000200)) 
    \quotient_r[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_2_n_0 ),
        .I4(\quotient_r[24]_i_3_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \quotient_r[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state),
        .I2(\quotient_r[16]_i_2_n_0 ),
        .I3(quotient[16]),
        .O(\quotient_r[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8028000000200000)) 
    \quotient_r[16]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[24]_i_3_n_0 ),
        .I4(\quotient_r[31]_i_4_n_0 ),
        .I5(\quotient_r[24]_i_4_n_0 ),
        .O(\quotient_r[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFAE0000)) 
    \quotient_r[17]_i_1 
       (.I0(state),
        .I1(\quotient_r[21]_i_2_n_0 ),
        .I2(\quotient_r[25]_i_2_n_0 ),
        .I3(\quotient_r[17]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[17]),
        .O(\quotient_r[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \quotient_r[17]_i_2 
       (.I0(\quotient_r[31]_i_3_n_0 ),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(\quotient_r_reg[31]_i_5_n_0 ),
        .I3(\quotient_r[29]_i_4_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\quotient_r[30]_i_5_n_0 ),
        .O(\quotient_r[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \quotient_r[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\quotient_r[18]_i_2_n_0 ),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(\quotient_r[18]_i_4_n_0 ),
        .I5(quotient[18]),
        .O(\quotient_r[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0060000000000000)) 
    \quotient_r[18]_i_2 
       (.I0(remainder_log2_r[0]),
        .I1(divisor_log2_r[0]),
        .I2(\quotient_r[29]_i_5_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\quotient_r_reg[31]_i_5_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\quotient_r[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \quotient_r[18]_i_3 
       (.I0(\quotient_r[31]_i_7_n_0 ),
        .I1(divisor_log2_r[3]),
        .I2(remainder_log2_r[3]),
        .I3(\quotient_r[24]_i_3_n_0 ),
        .O(\quotient_r[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \quotient_r[18]_i_4 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[26]_i_2_n_0 ),
        .O(\quotient_r[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDC8888888)) 
    \quotient_r[19]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[27]_i_2_n_0 ),
        .I5(quotient[19]),
        .O(\quotient_r[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555BFBB0000)) 
    \quotient_r[1]_i_1 
       (.I0(state),
        .I1(\quotient_r[1]_i_2_n_0 ),
        .I2(\quotient_r[6]_i_3_n_0 ),
        .I3(\quotient_r[1]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[1]),
        .O(\quotient_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFDFF)) 
    \quotient_r[1]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(divisor_log2_r[1]),
        .I4(remainder_log2_r[1]),
        .I5(\quotient_r[5]_i_4_n_0 ),
        .O(\quotient_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000960)) 
    \quotient_r[1]_i_3 
       (.I0(divisor_log2_r[1]),
        .I1(remainder_log2_r[1]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555BFBB0000)) 
    \quotient_r[20]_i_1 
       (.I0(state),
        .I1(\quotient_r[20]_i_2_n_0 ),
        .I2(\quotient_r[20]_i_3_n_0 ),
        .I3(\quotient_r[22]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[20]),
        .O(\quotient_r[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \quotient_r[20]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[29]_i_5_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\quotient_r[18]_i_3_n_0 ),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\quotient_r[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBEFFFFBEFFFFFFFF)) 
    \quotient_r[20]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\quotient_r[31]_i_6_n_0 ),
        .O(\quotient_r[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFAE0000)) 
    \quotient_r[21]_i_1 
       (.I0(state),
        .I1(\quotient_r[21]_i_2_n_0 ),
        .I2(\quotient_r[29]_i_2_n_0 ),
        .I3(\quotient_r[21]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[21]),
        .O(\quotient_r[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \quotient_r[21]_i_2 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .O(\quotient_r[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \quotient_r[21]_i_3 
       (.I0(\quotient_r[31]_i_3_n_0 ),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r[29]_i_5_n_0 ),
        .I4(\quotient_r[30]_i_5_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555BFBB0000)) 
    \quotient_r[22]_i_1 
       (.I0(state),
        .I1(\quotient_r[22]_i_2_n_0 ),
        .I2(\quotient_r[22]_i_3_n_0 ),
        .I3(\quotient_r[22]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[22]),
        .O(\quotient_r[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \quotient_r[22]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\quotient_r[18]_i_3_n_0 ),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\quotient_r[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEBFFFFEBFFFFFFFF)) 
    \quotient_r[22]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(remainder_log2_r[1]),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[0]),
        .I4(divisor_log2_r[0]),
        .I5(\quotient_r[31]_i_6_n_0 ),
        .O(\quotient_r[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_r[22]_i_4 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .O(\quotient_r[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFD0C)) 
    \quotient_r[23]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[23]_i_2_n_0 ),
        .I3(quotient[23]),
        .O(\quotient_r[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000DFFFDFF)) 
    \quotient_r[23]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[24]_i_3_n_0 ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_2_n_0 ),
        .I5(state),
        .O(\quotient_r[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFD0C)) 
    \quotient_r[24]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[24]_i_2_n_0 ),
        .I3(quotient[24]),
        .O(\quotient_r[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFFEFEF)) 
    \quotient_r[24]_i_2 
       (.I0(\quotient_r[31]_i_3_n_0 ),
        .I1(\quotient_r[24]_i_3_n_0 ),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(\quotient_r[24]_i_4_n_0 ),
        .I4(\quotient_r_reg[31]_i_5_n_0 ),
        .I5(state),
        .O(\quotient_r[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \quotient_r[24]_i_3 
       (.I0(remainder_log2_r[2]),
        .I1(divisor_log2_r[2]),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[0]),
        .I5(remainder_log2_r[0]),
        .O(\quotient_r[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0090060009000090)) 
    \quotient_r[24]_i_4 
       (.I0(divisor_log2_r[2]),
        .I1(remainder_log2_r[2]),
        .I2(remainder_log2_r[0]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[1]),
        .I5(divisor_log2_r[1]),
        .O(\quotient_r[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFAE0000)) 
    \quotient_r[25]_i_1 
       (.I0(state),
        .I1(\quotient_r[30]_i_2_n_0 ),
        .I2(\quotient_r[25]_i_2_n_0 ),
        .I3(\quotient_r[25]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[25]),
        .O(\quotient_r[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF9FF9FFFFFFFF)) 
    \quotient_r[25]_i_2 
       (.I0(remainder_log2_r[1]),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[0]),
        .I3(divisor_log2_r[0]),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \quotient_r[25]_i_3 
       (.I0(\quotient_r[31]_i_3_n_0 ),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(\quotient_r_reg[31]_i_5_n_0 ),
        .I3(\quotient_r[29]_i_4_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\quotient_r[30]_i_5_n_0 ),
        .O(\quotient_r[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0FFF0F0F080)) 
    \quotient_r[26]_i_1 
       (.I0(\quotient_r[26]_i_2_n_0 ),
        .I1(\quotient_r[26]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\quotient_r[26]_i_4_n_0 ),
        .I4(state),
        .I5(quotient[26]),
        .O(\quotient_r[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014000014)) 
    \quotient_r[26]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(remainder_log2_r[1]),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[0]),
        .I4(divisor_log2_r[0]),
        .I5(\quotient_r[31]_i_6_n_0 ),
        .O(\quotient_r[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \quotient_r[26]_i_3 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .O(\quotient_r[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \quotient_r[26]_i_4 
       (.I0(\quotient_r[30]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r_reg[31]_i_5_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\quotient_r[30]_i_5_n_0 ),
        .O(\quotient_r[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555AEAA0000)) 
    \quotient_r[27]_i_1 
       (.I0(state),
        .I1(\quotient_r[27]_i_2_n_0 ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[27]),
        .O(\quotient_r[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8108001000108108)) 
    \quotient_r[27]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(remainder_log2_r[0]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[1]),
        .I5(divisor_log2_r[1]),
        .O(\quotient_r[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFAE0000)) 
    \quotient_r[28]_i_1 
       (.I0(state),
        .I1(\quotient_r[30]_i_2_n_0 ),
        .I2(\quotient_r[28]_i_2_n_0 ),
        .I3(\quotient_r[28]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[28]),
        .O(\quotient_r[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF69FFFFFFFFFFFFF)) 
    \quotient_r[28]_i_2 
       (.I0(divisor_log2_r[1]),
        .I1(remainder_log2_r[1]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008008)) 
    \quotient_r[28]_i_3 
       (.I0(\quotient_r[26]_i_3_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[1]),
        .I4(\quotient_r[30]_i_5_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFAE0000)) 
    \quotient_r[29]_i_1 
       (.I0(state),
        .I1(\quotient_r[30]_i_2_n_0 ),
        .I2(\quotient_r[29]_i_2_n_0 ),
        .I3(\quotient_r[29]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[29]),
        .O(\quotient_r[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FF9FFFFFFFFFFFF)) 
    \quotient_r[29]_i_2 
       (.I0(remainder_log2_r[1]),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[0]),
        .I3(divisor_log2_r[0]),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \quotient_r[29]_i_3 
       (.I0(\quotient_r[31]_i_3_n_0 ),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r[29]_i_5_n_0 ),
        .I4(\quotient_r[30]_i_5_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6966996969666966)) 
    \quotient_r[29]_i_4 
       (.I0(remainder_log2_r[2]),
        .I1(divisor_log2_r[2]),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[0]),
        .I5(remainder_log2_r[0]),
        .O(\quotient_r[29]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \quotient_r[29]_i_5 
       (.I0(remainder_log2_r[0]),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[1]),
        .O(\quotient_r[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F5F5F0F0A0E0)) 
    \quotient_r[2]_i_1 
       (.I0(\quotient_r[2]_i_2_n_0 ),
        .I1(\quotient_r[26]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\quotient_r[6]_i_3_n_0 ),
        .I4(state),
        .I5(quotient[2]),
        .O(\quotient_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \quotient_r[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\quotient_r[31]_i_6_n_0 ),
        .I3(\quotient_r[29]_i_5_n_0 ),
        .I4(\quotient_r[30]_i_5_n_0 ),
        .I5(\quotient_r[5]_i_4_n_0 ),
        .O(\quotient_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFAE0000)) 
    \quotient_r[30]_i_1 
       (.I0(state),
        .I1(\quotient_r[30]_i_2_n_0 ),
        .I2(\quotient_r[30]_i_3_n_0 ),
        .I3(\quotient_r[30]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[30]),
        .O(\quotient_r[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA8AA8)) 
    \quotient_r[30]_i_2 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[1]),
        .I4(\quotient_r[30]_i_5_n_0 ),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\quotient_r[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFD77DFFFFFFFFFF)) 
    \quotient_r[30]_i_3 
       (.I0(\quotient_r[31]_i_6_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080800)) 
    \quotient_r[30]_i_4 
       (.I0(\quotient_r[26]_i_3_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(divisor_log2_r[1]),
        .I4(remainder_log2_r[1]),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[30]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \quotient_r[30]_i_5 
       (.I0(divisor_log2_r[0]),
        .I1(remainder_log2_r[0]),
        .O(\quotient_r[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555AEAA0000)) 
    \quotient_r[31]_i_1 
       (.I0(state),
        .I1(\quotient_r[31]_i_2_n_0 ),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[31]),
        .O(\quotient_r[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0151015157F70151)) 
    \quotient_r[31]_i_10 
       (.I0(remainder_r1[29]),
        .I1(\remainder_r[31]_i_13_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[31]_i_14_n_0 ),
        .I4(\quotient_r[31]_i_26_n_0 ),
        .I5(remainder_r1[28]),
        .O(\quotient_r[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h54045404FD545D04)) 
    \quotient_r[31]_i_11 
       (.I0(remainder_r1[27]),
        .I1(\remainder_r[31]_i_16_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[27]_i_7_n_0 ),
        .I4(\remainder_r[27]_i_9_n_0 ),
        .I5(remainder_r1[26]),
        .O(\quotient_r[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h54045404FD545D04)) 
    \quotient_r[31]_i_12 
       (.I0(remainder_r1[25]),
        .I1(\remainder_r[27]_i_9_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[27]_i_11_n_0 ),
        .I4(\remainder_r[27]_i_13_n_0 ),
        .I5(remainder_r1[24]),
        .O(\quotient_r[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h03000C663066C000)) 
    \quotient_r[31]_i_13 
       (.I0(\remainder_r[31]_i_7_n_0 ),
        .I1(remainder_r1[31]),
        .I2(\remainder_r[31]_i_13_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[31]_i_8_n_0 ),
        .I5(remainder_r1[30]),
        .O(\quotient_r[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h47B80000000047B8)) 
    \quotient_r[31]_i_14 
       (.I0(\remainder_r[31]_i_14_n_0 ),
        .I1(\quotient_r[30]_i_5_n_0 ),
        .I2(\remainder_r[31]_i_13_n_0 ),
        .I3(remainder_r1[29]),
        .I4(\quotient_r[31]_i_26_n_0 ),
        .I5(remainder_r1[28]),
        .O(\quotient_r[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hC09930000C000399)) 
    \quotient_r[31]_i_15 
       (.I0(\remainder_r[31]_i_16_n_0 ),
        .I1(remainder_r1[27]),
        .I2(\remainder_r[27]_i_9_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[27]_i_7_n_0 ),
        .I5(remainder_r1[26]),
        .O(\quotient_r[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hC09930000C000399)) 
    \quotient_r[31]_i_16 
       (.I0(\remainder_r[27]_i_9_n_0 ),
        .I1(remainder_r1[25]),
        .I2(\remainder_r[27]_i_13_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[27]_i_11_n_0 ),
        .I5(remainder_r1[24]),
        .O(\quotient_r[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h54045404FD545D04)) 
    \quotient_r[31]_i_18 
       (.I0(remainder_r1[23]),
        .I1(\remainder_r[27]_i_13_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[23]_i_7_n_0 ),
        .I4(\remainder_r[23]_i_9_n_0 ),
        .I5(remainder_r1[22]),
        .O(\quotient_r[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h54045404FD545D04)) 
    \quotient_r[31]_i_19 
       (.I0(remainder_r1[21]),
        .I1(\remainder_r[23]_i_9_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[23]_i_11_n_0 ),
        .I4(\remainder_r[23]_i_13_n_0 ),
        .I5(remainder_r1[20]),
        .O(\quotient_r[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000044040040000)) 
    \quotient_r[31]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[0]),
        .I5(remainder_log2_r[0]),
        .O(\quotient_r[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h54045404FD545D04)) 
    \quotient_r[31]_i_20 
       (.I0(remainder_r1[19]),
        .I1(\remainder_r[23]_i_13_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[19]_i_7_n_0 ),
        .I4(\remainder_r[19]_i_9_n_0 ),
        .I5(remainder_r1[18]),
        .O(\quotient_r[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h444D)) 
    \quotient_r[31]_i_21 
       (.I0(remainder_r1[17]),
        .I1(\quotient_r[31]_i_36_n_0 ),
        .I2(remainder_r1[16]),
        .I3(\remainder_r[19]_i_13_n_0 ),
        .O(\quotient_r[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hC09930000C000399)) 
    \quotient_r[31]_i_22 
       (.I0(\remainder_r[27]_i_13_n_0 ),
        .I1(remainder_r1[23]),
        .I2(\remainder_r[23]_i_9_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[23]_i_7_n_0 ),
        .I5(remainder_r1[22]),
        .O(\quotient_r[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hC09930000C000399)) 
    \quotient_r[31]_i_23 
       (.I0(\remainder_r[23]_i_9_n_0 ),
        .I1(remainder_r1[21]),
        .I2(\remainder_r[23]_i_13_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[23]_i_11_n_0 ),
        .I5(remainder_r1[20]),
        .O(\quotient_r[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hC09930000C000399)) 
    \quotient_r[31]_i_24 
       (.I0(\remainder_r[23]_i_13_n_0 ),
        .I1(remainder_r1[19]),
        .I2(\remainder_r[19]_i_9_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[19]_i_7_n_0 ),
        .I5(remainder_r1[18]),
        .O(\quotient_r[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \quotient_r[31]_i_25 
       (.I0(\quotient_r[31]_i_36_n_0 ),
        .I1(remainder_r1[17]),
        .I2(\remainder_r[19]_i_13_n_0 ),
        .I3(remainder_r1[16]),
        .O(\quotient_r[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFA0A03F303F30)) 
    \quotient_r[31]_i_26 
       (.I0(\remainder_r[31]_i_38_n_0 ),
        .I1(\remainder_r[31]_i_26_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[31]_i_21_n_0 ),
        .I4(\remainder_r[31]_i_37_n_0 ),
        .I5(\quotient_r[29]_i_5_n_0 ),
        .O(\quotient_r[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \quotient_r[31]_i_28 
       (.I0(remainder_r1[15]),
        .I1(\quotient_r[31]_i_45_n_0 ),
        .I2(\quotient_r[31]_i_46_n_0 ),
        .I3(remainder_r1[14]),
        .O(\quotient_r[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \quotient_r[31]_i_29 
       (.I0(remainder_r1[13]),
        .I1(\quotient_r[31]_i_47_n_0 ),
        .I2(\quotient_r[31]_i_48_n_0 ),
        .I3(remainder_r1[12]),
        .O(\quotient_r[31]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \quotient_r[31]_i_3 
       (.I0(remainder_log2_r[3]),
        .I1(divisor_log2_r[3]),
        .I2(\quotient_r[31]_i_7_n_0 ),
        .O(\quotient_r[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \quotient_r[31]_i_30 
       (.I0(remainder_r1[11]),
        .I1(\quotient_r[31]_i_49_n_0 ),
        .I2(\quotient_r[31]_i_50_n_0 ),
        .I3(remainder_r1[10]),
        .O(\quotient_r[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h1117)) 
    \quotient_r[31]_i_31 
       (.I0(remainder_r1[9]),
        .I1(\remainder_r[11]_i_11_n_0 ),
        .I2(remainder_r1[8]),
        .I3(\remainder_r[11]_i_13_n_0 ),
        .O(\quotient_r[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \quotient_r[31]_i_32 
       (.I0(\quotient_r[31]_i_45_n_0 ),
        .I1(remainder_r1[15]),
        .I2(\quotient_r[31]_i_46_n_0 ),
        .I3(remainder_r1[14]),
        .O(\quotient_r[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \quotient_r[31]_i_33 
       (.I0(\quotient_r[31]_i_47_n_0 ),
        .I1(remainder_r1[13]),
        .I2(\quotient_r[31]_i_48_n_0 ),
        .I3(remainder_r1[12]),
        .O(\quotient_r[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \quotient_r[31]_i_34 
       (.I0(\quotient_r[31]_i_49_n_0 ),
        .I1(remainder_r1[11]),
        .I2(\quotient_r[31]_i_50_n_0 ),
        .I3(remainder_r1[10]),
        .O(\quotient_r[31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \quotient_r[31]_i_35 
       (.I0(\remainder_r[11]_i_11_n_0 ),
        .I1(remainder_r1[9]),
        .I2(\remainder_r[11]_i_13_n_0 ),
        .I3(remainder_r1[8]),
        .O(\quotient_r[31]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \quotient_r[31]_i_36 
       (.I0(\remainder_r[19]_i_19_n_0 ),
        .I1(\remainder_r[19]_i_15_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[19]_i_17_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[23]_i_21_n_0 ),
        .O(\quotient_r[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h1117)) 
    \quotient_r[31]_i_37 
       (.I0(remainder_r1[7]),
        .I1(\remainder_r[7]_i_7_n_0 ),
        .I2(remainder_r1[6]),
        .I3(\remainder_r[7]_i_9_n_0 ),
        .O(\quotient_r[31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h1117)) 
    \quotient_r[31]_i_38 
       (.I0(remainder_r1[5]),
        .I1(\remainder_r[7]_i_11_n_0 ),
        .I2(remainder_r1[4]),
        .I3(\quotient_r[31]_i_51_n_0 ),
        .O(\quotient_r[31]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h1117)) 
    \quotient_r[31]_i_39 
       (.I0(remainder_r1[3]),
        .I1(\remainder_r[3]_i_7_n_0 ),
        .I2(remainder_r1[2]),
        .I3(\remainder_r[3]_i_9_n_0 ),
        .O(\quotient_r[31]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    \quotient_r[31]_i_4 
       (.I0(remainder_log2_r[3]),
        .I1(divisor_log2_r[3]),
        .I2(\quotient_r[31]_i_7_n_0 ),
        .I3(remainder_log2_r[4]),
        .I4(divisor_log2_r[4]),
        .O(\quotient_r[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h11117111)) 
    \quotient_r[31]_i_40 
       (.I0(remainder_r1[1]),
        .I1(\remainder_r[3]_i_13_n_0 ),
        .I2(\remainder_r[31]_i_25_n_0 ),
        .I3(divisor_r1__0[0]),
        .I4(remainder_r1[0]),
        .O(\quotient_r[31]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \quotient_r[31]_i_41 
       (.I0(\remainder_r[7]_i_7_n_0 ),
        .I1(remainder_r1[7]),
        .I2(\remainder_r[7]_i_9_n_0 ),
        .I3(remainder_r1[6]),
        .O(\quotient_r[31]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \quotient_r[31]_i_42 
       (.I0(\remainder_r[7]_i_11_n_0 ),
        .I1(remainder_r1[5]),
        .I2(\quotient_r[31]_i_51_n_0 ),
        .I3(remainder_r1[4]),
        .O(\quotient_r[31]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \quotient_r[31]_i_43 
       (.I0(\remainder_r[3]_i_7_n_0 ),
        .I1(remainder_r1[3]),
        .I2(\remainder_r[3]_i_9_n_0 ),
        .I3(remainder_r1[2]),
        .O(\quotient_r[31]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000060066666066)) 
    \quotient_r[31]_i_44 
       (.I0(\remainder_r[3]_i_13_n_0 ),
        .I1(remainder_r1[1]),
        .I2(\quotient_r[24]_i_3_n_0 ),
        .I3(divisor_r1__0[0]),
        .I4(\quotient_r[6]_i_3_n_0 ),
        .I5(remainder_r1[0]),
        .O(\quotient_r[31]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hEB28EBEBEB282828)) 
    \quotient_r[31]_i_45 
       (.I0(\remainder_r[15]_i_8_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[19]_i_21_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[19]_i_17_n_0 ),
        .O(\quotient_r[31]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8B8FF00B8B800)) 
    \quotient_r[31]_i_46 
       (.I0(\remainder_r[15]_i_21_n_0 ),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\remainder_r[19]_i_21_n_0 ),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[15]_i_8_n_0 ),
        .O(\quotient_r[31]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \quotient_r[31]_i_47 
       (.I0(\remainder_r[15]_i_23_n_0 ),
        .I1(\remainder_r[15]_i_24_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[15]_i_21_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[19]_i_21_n_0 ),
        .O(\quotient_r[31]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hEB28EBEBEB282828)) 
    \quotient_r[31]_i_48 
       (.I0(\remainder_r[15]_i_14_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[15]_i_23_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[15]_i_24_n_0 ),
        .O(\quotient_r[31]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \quotient_r[31]_i_49 
       (.I0(\remainder_r[11]_i_7_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[15]_i_14_n_0 ),
        .O(\quotient_r[31]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hD714)) 
    \quotient_r[31]_i_50 
       (.I0(\remainder_r[11]_i_9_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[11]_i_7_n_0 ),
        .O(\quotient_r[31]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \quotient_r[31]_i_51 
       (.I0(\remainder_r[7]_i_14_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[7]_i_13_n_0 ),
        .O(\quotient_r[31]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    \quotient_r[31]_i_6 
       (.I0(remainder_log2_r[0]),
        .I1(divisor_log2_r[0]),
        .I2(divisor_log2_r[1]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[2]),
        .I5(remainder_log2_r[2]),
        .O(\quotient_r[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFF0000BB2B)) 
    \quotient_r[31]_i_7 
       (.I0(remainder_log2_r[1]),
        .I1(divisor_log2_r[1]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .I4(divisor_log2_r[2]),
        .I5(remainder_log2_r[2]),
        .O(\quotient_r[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h01510157015151F7)) 
    \quotient_r[31]_i_9 
       (.I0(remainder_r1[31]),
        .I1(\remainder_r[31]_i_7_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[31]_i_8_n_0 ),
        .I4(remainder_r1[30]),
        .I5(\remainder_r[31]_i_13_n_0 ),
        .O(\quotient_r[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55AE00AA00)) 
    \quotient_r[3]_i_1 
       (.I0(state),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\quotient_r[27]_i_2_n_0 ),
        .I5(quotient[3]),
        .O(\quotient_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555BBBF0000)) 
    \quotient_r[4]_i_1 
       (.I0(state),
        .I1(\quotient_r[4]_i_2_n_0 ),
        .I2(\quotient_r[20]_i_3_n_0 ),
        .I3(\quotient_r[6]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[4]),
        .O(\quotient_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \quotient_r[4]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[29]_i_5_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\quotient_r[18]_i_3_n_0 ),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\quotient_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555BBBF0000)) 
    \quotient_r[5]_i_1 
       (.I0(state),
        .I1(\quotient_r[5]_i_2_n_0 ),
        .I2(\quotient_r[5]_i_3_n_0 ),
        .I3(\quotient_r[6]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[5]),
        .O(\quotient_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7F7FF)) 
    \quotient_r[5]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(divisor_log2_r[1]),
        .I4(remainder_log2_r[1]),
        .I5(\quotient_r[5]_i_4_n_0 ),
        .O(\quotient_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEEBFFFFFFFFFF)) 
    \quotient_r[5]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\quotient_r[31]_i_6_n_0 ),
        .O(\quotient_r[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \quotient_r[5]_i_4 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .O(\quotient_r[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555BBBF0000)) 
    \quotient_r[6]_i_1 
       (.I0(state),
        .I1(\quotient_r[6]_i_2_n_0 ),
        .I2(\quotient_r[22]_i_3_n_0 ),
        .I3(\quotient_r[6]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(quotient[6]),
        .O(\quotient_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \quotient_r[6]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\quotient_r[18]_i_3_n_0 ),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\quotient_r[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \quotient_r[6]_i_3 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .O(\quotient_r[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFD0C)) 
    \quotient_r[7]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[7]_i_2_n_0 ),
        .I3(quotient[7]),
        .O(\quotient_r[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0FDD)) 
    \quotient_r[7]_i_2 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\quotient_r[24]_i_3_n_0 ),
        .I2(\quotient_r[31]_i_2_n_0 ),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(\quotient_r[31]_i_4_n_0 ),
        .I5(state),
        .O(\quotient_r[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF5B0)) 
    \quotient_r[8]_i_1 
       (.I0(state),
        .I1(\quotient_r[8]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(quotient[8]),
        .O(\quotient_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDF00FFFFFFFF)) 
    \quotient_r[8]_i_2 
       (.I0(\quotient_r[30]_i_5_n_0 ),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r_reg[31]_i_5_n_0 ),
        .I4(\quotient_r[24]_i_3_n_0 ),
        .I5(\quotient_r[14]_i_2_n_0 ),
        .O(\quotient_r[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCFFFFCCCC0040)) 
    \quotient_r[9]_i_1 
       (.I0(\quotient_r[25]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(\quotient_r[9]_i_3_n_0 ),
        .I5(quotient[9]),
        .O(\quotient_r[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6999666999966999)) 
    \quotient_r[9]_i_2 
       (.I0(divisor_log2_r[4]),
        .I1(remainder_log2_r[4]),
        .I2(\quotient_r[24]_i_3_n_0 ),
        .I3(remainder_log2_r[3]),
        .I4(divisor_log2_r[3]),
        .I5(\quotient_r[31]_i_7_n_0 ),
        .O(\quotient_r[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \quotient_r[9]_i_3 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(\quotient_r[24]_i_4_n_0 ),
        .I5(\quotient_r_reg[31]_i_5_n_0 ),
        .O(\quotient_r[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[0]_i_1_n_0 ),
        .Q(quotient[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[10]_i_1_n_0 ),
        .Q(quotient[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[11]_i_1_n_0 ),
        .Q(quotient[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[12]_i_1_n_0 ),
        .Q(quotient[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[13]_i_1_n_0 ),
        .Q(quotient[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[14]_i_1_n_0 ),
        .Q(quotient[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[15]_i_1_n_0 ),
        .Q(quotient[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[16]_i_1_n_0 ),
        .Q(quotient[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[17]_i_1_n_0 ),
        .Q(quotient[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[18]_i_1_n_0 ),
        .Q(quotient[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[19]_i_1_n_0 ),
        .Q(quotient[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[1]_i_1_n_0 ),
        .Q(quotient[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[20]_i_1_n_0 ),
        .Q(quotient[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[21]_i_1_n_0 ),
        .Q(quotient[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[22]_i_1_n_0 ),
        .Q(quotient[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[23]_i_1_n_0 ),
        .Q(quotient[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[24]_i_1_n_0 ),
        .Q(quotient[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[25]_i_1_n_0 ),
        .Q(quotient[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[26]_i_1_n_0 ),
        .Q(quotient[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[27]_i_1_n_0 ),
        .Q(quotient[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[28]_i_1_n_0 ),
        .Q(quotient[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[29]_i_1_n_0 ),
        .Q(quotient[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[2]_i_1_n_0 ),
        .Q(quotient[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[30]_i_1_n_0 ),
        .Q(quotient[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[31]_i_1_n_0 ),
        .Q(quotient[31]),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \quotient_r_reg[31]_i_17 
       (.CI(\quotient_r_reg[31]_i_27_n_0 ),
        .CO({\quotient_r_reg[31]_i_17_n_0 ,\quotient_r_reg[31]_i_17_n_1 ,\quotient_r_reg[31]_i_17_n_2 ,\quotient_r_reg[31]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\quotient_r[31]_i_28_n_0 ,\quotient_r[31]_i_29_n_0 ,\quotient_r[31]_i_30_n_0 ,\quotient_r[31]_i_31_n_0 }),
        .O(\NLW_quotient_r_reg[31]_i_17_O_UNCONNECTED [3:0]),
        .S({\quotient_r[31]_i_32_n_0 ,\quotient_r[31]_i_33_n_0 ,\quotient_r[31]_i_34_n_0 ,\quotient_r[31]_i_35_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \quotient_r_reg[31]_i_27 
       (.CI(1'b0),
        .CO({\quotient_r_reg[31]_i_27_n_0 ,\quotient_r_reg[31]_i_27_n_1 ,\quotient_r_reg[31]_i_27_n_2 ,\quotient_r_reg[31]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({\quotient_r[31]_i_37_n_0 ,\quotient_r[31]_i_38_n_0 ,\quotient_r[31]_i_39_n_0 ,\quotient_r[31]_i_40_n_0 }),
        .O(\NLW_quotient_r_reg[31]_i_27_O_UNCONNECTED [3:0]),
        .S({\quotient_r[31]_i_41_n_0 ,\quotient_r[31]_i_42_n_0 ,\quotient_r[31]_i_43_n_0 ,\quotient_r[31]_i_44_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \quotient_r_reg[31]_i_5 
       (.CI(\quotient_r_reg[31]_i_8_n_0 ),
        .CO({\quotient_r_reg[31]_i_5_n_0 ,\quotient_r_reg[31]_i_5_n_1 ,\quotient_r_reg[31]_i_5_n_2 ,\quotient_r_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\quotient_r[31]_i_9_n_0 ,\quotient_r[31]_i_10_n_0 ,\quotient_r[31]_i_11_n_0 ,\quotient_r[31]_i_12_n_0 }),
        .O(\NLW_quotient_r_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\quotient_r[31]_i_13_n_0 ,\quotient_r[31]_i_14_n_0 ,\quotient_r[31]_i_15_n_0 ,\quotient_r[31]_i_16_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \quotient_r_reg[31]_i_8 
       (.CI(\quotient_r_reg[31]_i_17_n_0 ),
        .CO({\quotient_r_reg[31]_i_8_n_0 ,\quotient_r_reg[31]_i_8_n_1 ,\quotient_r_reg[31]_i_8_n_2 ,\quotient_r_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\quotient_r[31]_i_18_n_0 ,\quotient_r[31]_i_19_n_0 ,\quotient_r[31]_i_20_n_0 ,\quotient_r[31]_i_21_n_0 }),
        .O(\NLW_quotient_r_reg[31]_i_8_O_UNCONNECTED [3:0]),
        .S({\quotient_r[31]_i_22_n_0 ,\quotient_r[31]_i_23_n_0 ,\quotient_r[31]_i_24_n_0 ,\quotient_r[31]_i_25_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[3]_i_1_n_0 ),
        .Q(quotient[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[4]_i_1_n_0 ),
        .Q(quotient[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[5]_i_1_n_0 ),
        .Q(quotient[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[6]_i_1_n_0 ),
        .Q(quotient[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[7]_i_1_n_0 ),
        .Q(quotient[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[8]_i_1_n_0 ),
        .Q(quotient[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \quotient_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\quotient_r[9]_i_1_n_0 ),
        .Q(quotient[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF10)) 
    \remainder_log2_r[0]_i_1 
       (.I0(\remainder_log2_r[0]_i_2_n_0 ),
        .I1(\remainder_r_reg_n_0_[28] ),
        .I2(\remainder_log2_r[0]_i_3_n_0 ),
        .I3(\remainder_r_reg_n_0_[29] ),
        .I4(\remainder_r_reg_n_0_[30] ),
        .I5(\remainder_r_reg_n_0_[31] ),
        .O(remainder_log2[0]));
  LUT6 #(
    .INIT(64'h000000000F000F0D)) 
    \remainder_log2_r[0]_i_2 
       (.I0(\remainder_log2_r[0]_i_4_n_0 ),
        .I1(\remainder_r_reg_n_0_[24] ),
        .I2(\remainder_r_reg_n_0_[27] ),
        .I3(\remainder_r_reg_n_0_[26] ),
        .I4(\remainder_r_reg_n_0_[25] ),
        .I5(\remainder_log2_r[4]_i_3_n_0 ),
        .O(\remainder_log2_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F44FFFFFFFF)) 
    \remainder_log2_r[0]_i_3 
       (.I0(\remainder_log2_r[0]_i_5_n_0 ),
        .I1(\remainder_log2_r[0]_i_6_n_0 ),
        .I2(\remainder_r_reg_n_0_[18] ),
        .I3(\remainder_r_reg_n_0_[17] ),
        .I4(\remainder_log2_r[0]_i_7_n_0 ),
        .I5(\remainder_log2_r[4]_i_3_n_0 ),
        .O(\remainder_log2_r[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hAAAAFFAE)) 
    \remainder_log2_r[0]_i_4 
       (.I0(\remainder_r_reg_n_0_[23] ),
        .I1(\remainder_r_reg_n_0_[19] ),
        .I2(\remainder_r_reg_n_0_[20] ),
        .I3(\remainder_r_reg_n_0_[21] ),
        .I4(\remainder_r_reg_n_0_[22] ),
        .O(\remainder_log2_r[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \remainder_log2_r[0]_i_5 
       (.I0(\remainder_log2_r[0]_i_8_n_0 ),
        .I1(\remainder_r_reg_n_0_[7] ),
        .I2(\remainder_r_reg_n_0_[8] ),
        .I3(\remainder_r_reg_n_0_[9] ),
        .O(\remainder_log2_r[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \remainder_log2_r[0]_i_6 
       (.I0(\remainder_r_reg_n_0_[16] ),
        .I1(\remainder_r_reg_n_0_[18] ),
        .I2(\remainder_r_reg_n_0_[17] ),
        .I3(\remainder_log2_r[2]_i_5_n_0 ),
        .I4(\remainder_r_reg_n_0_[10] ),
        .I5(\remainder_r_reg_n_0_[11] ),
        .O(\remainder_log2_r[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDDCDDDCC00000000)) 
    \remainder_log2_r[0]_i_7 
       (.I0(\remainder_r_reg_n_0_[14] ),
        .I1(\remainder_r_reg_n_0_[15] ),
        .I2(\remainder_r_reg_n_0_[12] ),
        .I3(\remainder_r_reg_n_0_[13] ),
        .I4(\remainder_r_reg_n_0_[11] ),
        .I5(\remainder_log2_r[2]_i_4_n_0 ),
        .O(\remainder_log2_r[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABABABBBABB)) 
    \remainder_log2_r[0]_i_8 
       (.I0(\remainder_r_reg_n_0_[6] ),
        .I1(\remainder_r_reg_n_0_[5] ),
        .I2(\remainder_r_reg_n_0_[4] ),
        .I3(\remainder_r_reg_n_0_[3] ),
        .I4(\remainder_r_reg_n_0_[2] ),
        .I5(\remainder_r_reg_n_0_[1] ),
        .O(\remainder_log2_r[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \remainder_log2_r[1]_i_1 
       (.I0(\remainder_r_reg_n_0_[31] ),
        .I1(\remainder_r_reg_n_0_[30] ),
        .I2(\remainder_r_reg_n_0_[29] ),
        .I3(\remainder_r_reg_n_0_[28] ),
        .I4(\remainder_log2_r[1]_i_2_n_0 ),
        .O(remainder_log2[1]));
  LUT6 #(
    .INIT(64'h0100010001000101)) 
    \remainder_log2_r[1]_i_2 
       (.I0(\remainder_log2_r[1]_i_3_n_0 ),
        .I1(\remainder_r_reg_n_0_[26] ),
        .I2(\remainder_r_reg_n_0_[27] ),
        .I3(\remainder_log2_r[1]_i_4_n_0 ),
        .I4(\remainder_r_reg_n_0_[18] ),
        .I5(\remainder_log2_r[1]_i_5_n_0 ),
        .O(\remainder_log2_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0020)) 
    \remainder_log2_r[1]_i_3 
       (.I0(\remainder_log2_r[3]_i_3_n_0 ),
        .I1(\remainder_r_reg_n_0_[21] ),
        .I2(\remainder_r_reg_n_0_[19] ),
        .I3(\remainder_r_reg_n_0_[20] ),
        .I4(\remainder_r_reg_n_0_[22] ),
        .I5(\remainder_r_reg_n_0_[23] ),
        .O(\remainder_log2_r[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD5)) 
    \remainder_log2_r[1]_i_4 
       (.I0(\remainder_log2_r[4]_i_3_n_0 ),
        .I1(\remainder_log2_r[0]_i_6_n_0 ),
        .I2(\remainder_r_reg_n_0_[9] ),
        .I3(\remainder_r_reg_n_0_[8] ),
        .I4(\remainder_log2_r[1]_i_6_n_0 ),
        .O(\remainder_log2_r[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFF10000)) 
    \remainder_log2_r[1]_i_5 
       (.I0(\remainder_r_reg_n_0_[12] ),
        .I1(\remainder_r_reg_n_0_[13] ),
        .I2(\remainder_r_reg_n_0_[15] ),
        .I3(\remainder_r_reg_n_0_[14] ),
        .I4(\remainder_log2_r[2]_i_4_n_0 ),
        .O(\remainder_log2_r[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \remainder_log2_r[1]_i_6 
       (.I0(\remainder_r_reg_n_0_[7] ),
        .I1(\remainder_r_reg_n_0_[6] ),
        .I2(\remainder_r_reg_n_0_[2] ),
        .I3(\remainder_r_reg_n_0_[3] ),
        .I4(\remainder_r_reg_n_0_[4] ),
        .I5(\remainder_r_reg_n_0_[5] ),
        .O(\remainder_log2_r[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF555755FF555555)) 
    \remainder_log2_r[2]_i_1 
       (.I0(\remainder_log2_r[3]_i_4_n_0 ),
        .I1(\remainder_log2_r[2]_i_2_n_0 ),
        .I2(\remainder_r_reg_n_0_[19] ),
        .I3(\remainder_log2_r[3]_i_3_n_0 ),
        .I4(\remainder_log2_r[2]_i_3_n_0 ),
        .I5(\remainder_log2_r[2]_i_4_n_0 ),
        .O(remainder_log2[2]));
  LUT6 #(
    .INIT(64'h0000000155555555)) 
    \remainder_log2_r[2]_i_2 
       (.I0(\remainder_log2_r[2]_i_5_n_0 ),
        .I1(\remainder_r_reg_n_0_[5] ),
        .I2(\remainder_r_reg_n_0_[4] ),
        .I3(\remainder_r_reg_n_0_[7] ),
        .I4(\remainder_r_reg_n_0_[6] ),
        .I5(\remainder_log2_r[2]_i_6_n_0 ),
        .O(\remainder_log2_r[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \remainder_log2_r[2]_i_3 
       (.I0(\remainder_r_reg_n_0_[23] ),
        .I1(\remainder_r_reg_n_0_[22] ),
        .I2(\remainder_r_reg_n_0_[21] ),
        .I3(\remainder_r_reg_n_0_[20] ),
        .O(\remainder_log2_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \remainder_log2_r[2]_i_4 
       (.I0(\remainder_r_reg_n_0_[17] ),
        .I1(\remainder_r_reg_n_0_[18] ),
        .I2(\remainder_r_reg_n_0_[16] ),
        .O(\remainder_log2_r[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \remainder_log2_r[2]_i_5 
       (.I0(\remainder_r_reg_n_0_[13] ),
        .I1(\remainder_r_reg_n_0_[12] ),
        .I2(\remainder_r_reg_n_0_[15] ),
        .I3(\remainder_r_reg_n_0_[14] ),
        .O(\remainder_log2_r[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \remainder_log2_r[2]_i_6 
       (.I0(\remainder_log2_r[2]_i_5_n_0 ),
        .I1(\remainder_r_reg_n_0_[10] ),
        .I2(\remainder_r_reg_n_0_[11] ),
        .I3(\remainder_r_reg_n_0_[9] ),
        .I4(\remainder_r_reg_n_0_[8] ),
        .O(\remainder_log2_r[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FFFFFFFFFFFF)) 
    \remainder_log2_r[3]_i_1 
       (.I0(\remainder_log2_r[3]_i_2_n_0 ),
        .I1(\remainder_r_reg_n_0_[9] ),
        .I2(\remainder_r_reg_n_0_[8] ),
        .I3(\remainder_log2_r[4]_i_2_n_0 ),
        .I4(\remainder_log2_r[3]_i_3_n_0 ),
        .I5(\remainder_log2_r[3]_i_4_n_0 ),
        .O(remainder_log2[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \remainder_log2_r[3]_i_2 
       (.I0(\remainder_r_reg_n_0_[11] ),
        .I1(\remainder_r_reg_n_0_[10] ),
        .I2(\remainder_r_reg_n_0_[14] ),
        .I3(\remainder_r_reg_n_0_[15] ),
        .I4(\remainder_r_reg_n_0_[12] ),
        .I5(\remainder_r_reg_n_0_[13] ),
        .O(\remainder_log2_r[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \remainder_log2_r[3]_i_3 
       (.I0(\remainder_r_reg_n_0_[27] ),
        .I1(\remainder_r_reg_n_0_[26] ),
        .I2(\remainder_r_reg_n_0_[25] ),
        .I3(\remainder_r_reg_n_0_[24] ),
        .O(\remainder_log2_r[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \remainder_log2_r[3]_i_4 
       (.I0(\remainder_r_reg_n_0_[31] ),
        .I1(\remainder_r_reg_n_0_[30] ),
        .I2(\remainder_r_reg_n_0_[29] ),
        .I3(\remainder_r_reg_n_0_[28] ),
        .O(\remainder_log2_r[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \remainder_log2_r[4]_i_1 
       (.I0(\remainder_r_reg_n_0_[28] ),
        .I1(\remainder_r_reg_n_0_[29] ),
        .I2(\remainder_r_reg_n_0_[30] ),
        .I3(\remainder_r_reg_n_0_[31] ),
        .I4(\remainder_log2_r[4]_i_2_n_0 ),
        .O(remainder_log2[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \remainder_log2_r[4]_i_2 
       (.I0(\remainder_log2_r[4]_i_3_n_0 ),
        .I1(\remainder_r_reg_n_0_[16] ),
        .I2(\remainder_r_reg_n_0_[18] ),
        .I3(\remainder_r_reg_n_0_[17] ),
        .O(\remainder_log2_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \remainder_log2_r[4]_i_3 
       (.I0(\remainder_r_reg_n_0_[20] ),
        .I1(\remainder_r_reg_n_0_[21] ),
        .I2(\remainder_r_reg_n_0_[22] ),
        .I3(\remainder_r_reg_n_0_[23] ),
        .I4(\remainder_log2_r[3]_i_3_n_0 ),
        .I5(\remainder_r_reg_n_0_[19] ),
        .O(\remainder_log2_r[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_log2_r_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(remainder_log2[0]),
        .Q(remainder_log2_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_log2_r_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(remainder_log2[1]),
        .Q(remainder_log2_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_log2_r_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(remainder_log2[2]),
        .Q(remainder_log2_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_log2_r_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(remainder_log2[3]),
        .Q(remainder_log2_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_log2_r_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(remainder_log2[4]),
        .Q(remainder_log2_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[0] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[0] ),
        .Q(remainder_r1[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[10] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[10] ),
        .Q(remainder_r1[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[11] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[11] ),
        .Q(remainder_r1[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[12] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[12] ),
        .Q(remainder_r1[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[13] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[13] ),
        .Q(remainder_r1[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[14] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[14] ),
        .Q(remainder_r1[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[15] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[15] ),
        .Q(remainder_r1[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[16] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[16] ),
        .Q(remainder_r1[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[17] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[17] ),
        .Q(remainder_r1[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[18] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[18] ),
        .Q(remainder_r1[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[19] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[19] ),
        .Q(remainder_r1[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[1] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[1] ),
        .Q(remainder_r1[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[20] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[20] ),
        .Q(remainder_r1[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[21] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[21] ),
        .Q(remainder_r1[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[22] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[22] ),
        .Q(remainder_r1[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[23] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[23] ),
        .Q(remainder_r1[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[24] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[24] ),
        .Q(remainder_r1[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[25] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[25] ),
        .Q(remainder_r1[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[26] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[26] ),
        .Q(remainder_r1[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[27] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[27] ),
        .Q(remainder_r1[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[28] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[28] ),
        .Q(remainder_r1[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[29] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[29] ),
        .Q(remainder_r1[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[2] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[2] ),
        .Q(remainder_r1[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[30] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[30] ),
        .Q(remainder_r1[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[31] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[31] ),
        .Q(remainder_r1[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[3] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[3] ),
        .Q(remainder_r1[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[4] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[4] ),
        .Q(remainder_r1[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[5] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[5] ),
        .Q(remainder_r1[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[6] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[6] ),
        .Q(remainder_r1[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[7] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[7] ),
        .Q(remainder_r1[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[8] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[8] ),
        .Q(remainder_r1[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r1_reg[9] 
       (.C(clk),
        .CE(divisor_r1),
        .D(\remainder_r_reg_n_0_[9] ),
        .Q(remainder_r1[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[0]_i_1 
       (.I0(in10[0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[0]),
        .I4(divisor_r1),
        .O(\remainder_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[10]_i_1 
       (.I0(in10[10]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[10]),
        .I4(divisor_r1),
        .O(\remainder_r[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[11]_i_1 
       (.I0(in10[11]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[11]),
        .I4(divisor_r1),
        .O(\remainder_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[11]_i_10 
       (.I0(\remainder_r[11]_i_18_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[15]_i_27_n_0 ),
        .O(\remainder_r[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \remainder_r[11]_i_11 
       (.I0(\remainder_r[11]_i_15_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[11]_i_9_n_0 ),
        .O(\remainder_r[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[11]_i_12 
       (.I0(\remainder_r[11]_i_19_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[11]_i_17_n_0 ),
        .O(\remainder_r[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \remainder_r[11]_i_13 
       (.I0(\remainder_r[11]_i_20_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[11]_i_15_n_0 ),
        .O(\remainder_r[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[11]_i_14 
       (.I0(\remainder_r[11]_i_21_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[11]_i_18_n_0 ),
        .O(\remainder_r[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF470000FF47FFFF)) 
    \remainder_r[11]_i_15 
       (.I0(divisor_r1__0[2]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[6]),
        .I3(\quotient_r[6]_i_3_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[11]_i_16_n_0 ),
        .O(\remainder_r[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B833B800)) 
    \remainder_r[11]_i_16 
       (.I0(divisor_r1__0[4]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[8]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(divisor_r1__0[0]),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F305F3F)) 
    \remainder_r[11]_i_17 
       (.I0(divisor_r1__0[0]),
        .I1(divisor_r1__0[8]),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(divisor_r1__0[4]),
        .I5(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \remainder_r[11]_i_18 
       (.I0(divisor_r1__0[7]),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[3]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[11]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \remainder_r[11]_i_19 
       (.I0(divisor_r1__0[6]),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[2]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    \remainder_r[11]_i_20 
       (.I0(divisor_r1__0[1]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[5]),
        .I3(\quotient_r[6]_i_3_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[11]_i_22_n_0 ),
        .O(\remainder_r[11]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \remainder_r[11]_i_21 
       (.I0(divisor_r1__0[5]),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[1]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[11]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF47FF)) 
    \remainder_r[11]_i_22 
       (.I0(divisor_r1__0[3]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[7]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[11]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[15]_i_14_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[11]_i_7_n_0 ),
        .I4(\remainder_r[11]_i_8_n_0 ),
        .I5(remainder_r1[11]),
        .O(\remainder_r[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h84D48EDE7B2B7121)) 
    \remainder_r[11]_i_4 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[11]_i_7_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[11]_i_9_n_0 ),
        .I4(\remainder_r[11]_i_10_n_0 ),
        .I5(remainder_r1[10]),
        .O(\remainder_r[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[11]_i_5 
       (.I0(\remainder_r[11]_i_11_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[11]_i_12_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[11]_i_10_n_0 ),
        .I5(remainder_r1[9]),
        .O(\remainder_r[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[11]_i_6 
       (.I0(\remainder_r[11]_i_13_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[11]_i_14_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[11]_i_15_n_0 ),
        .I5(remainder_r1[8]),
        .O(\remainder_r[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[11]_i_7 
       (.I0(\remainder_r[11]_i_16_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[15]_i_23_n_0 ),
        .O(\remainder_r[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[11]_i_8 
       (.I0(\remainder_r[15]_i_25_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[11]_i_17_n_0 ),
        .O(\remainder_r[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF470000FF47FFFF)) 
    \remainder_r[11]_i_9 
       (.I0(divisor_r1__0[3]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[7]),
        .I3(\quotient_r[6]_i_3_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[15]_i_26_n_0 ),
        .O(\remainder_r[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[12]_i_1 
       (.I0(in10[12]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[12]),
        .I4(divisor_r1),
        .O(\remainder_r[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[13]_i_1 
       (.I0(in10[13]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[13]),
        .I4(divisor_r1),
        .O(\remainder_r[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[14]_i_1 
       (.I0(in10[14]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[14]),
        .I4(divisor_r1),
        .O(\remainder_r[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[15]_i_1 
       (.I0(in10[15]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[15]),
        .I4(divisor_r1),
        .O(\remainder_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[15]_i_10 
       (.I0(\remainder_r[15]_i_21_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[19]_i_21_n_0 ),
        .O(\remainder_r[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[15]_i_11 
       (.I0(\remainder_r[19]_i_22_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[15]_i_22_n_0 ),
        .O(\remainder_r[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[15]_i_12 
       (.I0(\remainder_r[15]_i_23_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[15]_i_24_n_0 ),
        .O(\remainder_r[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[15]_i_13 
       (.I0(\remainder_r[15]_i_20_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[15]_i_25_n_0 ),
        .O(\remainder_r[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[15]_i_14 
       (.I0(\remainder_r[15]_i_26_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[15]_i_21_n_0 ),
        .O(\remainder_r[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[15]_i_15 
       (.I0(\remainder_r[15]_i_22_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[15]_i_27_n_0 ),
        .O(\remainder_r[15]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \remainder_r[15]_i_16 
       (.I0(divisor_r1__0[8]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[0]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[15]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \remainder_r[15]_i_17 
       (.I0(divisor_r1__0[12]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[4]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[15]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \remainder_r[15]_i_18 
       (.I0(divisor_r1__0[10]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[2]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[15]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3022)) 
    \remainder_r[15]_i_19 
       (.I0(divisor_r1__0[6]),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(divisor_r1__0[14]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    \remainder_r[15]_i_20 
       (.I0(divisor_r1__0[4]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[12]),
        .I4(\quotient_r[29]_i_4_n_0 ),
        .I5(\remainder_r[15]_i_28_n_0 ),
        .O(\remainder_r[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B833B800)) 
    \remainder_r[15]_i_21 
       (.I0(divisor_r1__0[7]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[11]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(divisor_r1__0[3]),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F305F3F)) 
    \remainder_r[15]_i_22 
       (.I0(divisor_r1__0[3]),
        .I1(divisor_r1__0[11]),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(divisor_r1__0[7]),
        .I5(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B833B800)) 
    \remainder_r[15]_i_23 
       (.I0(divisor_r1__0[6]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[10]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(divisor_r1__0[2]),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \remainder_r[15]_i_24 
       (.I0(divisor_r1__0[8]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[0]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[15]_i_17_n_0 ),
        .O(\remainder_r[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F305F3F)) 
    \remainder_r[15]_i_25 
       (.I0(divisor_r1__0[2]),
        .I1(divisor_r1__0[10]),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(divisor_r1__0[6]),
        .I5(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B833B800)) 
    \remainder_r[15]_i_26 
       (.I0(divisor_r1__0[5]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[9]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(divisor_r1__0[1]),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F305F3F)) 
    \remainder_r[15]_i_27 
       (.I0(divisor_r1__0[1]),
        .I1(divisor_r1__0[9]),
        .I2(\quotient_r[29]_i_4_n_0 ),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(divisor_r1__0[5]),
        .I5(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[15]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \remainder_r[15]_i_28 
       (.I0(divisor_r1__0[0]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[8]),
        .O(\remainder_r[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[15]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[15]_i_7_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[15]_i_8_n_0 ),
        .I4(\remainder_r[15]_i_9_n_0 ),
        .I5(remainder_r1[15]),
        .O(\remainder_r[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[15]_i_4 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[15]_i_8_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[15]_i_10_n_0 ),
        .I4(\remainder_r[15]_i_11_n_0 ),
        .I5(remainder_r1[14]),
        .O(\remainder_r[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[15]_i_5 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[15]_i_10_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[15]_i_12_n_0 ),
        .I4(\remainder_r[15]_i_13_n_0 ),
        .I5(remainder_r1[13]),
        .O(\remainder_r[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[15]_i_6 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[15]_i_12_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[15]_i_14_n_0 ),
        .I4(\remainder_r[15]_i_15_n_0 ),
        .I5(remainder_r1[12]),
        .O(\remainder_r[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[15]_i_7 
       (.I0(\remainder_r[19]_i_21_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[19]_i_17_n_0 ),
        .O(\remainder_r[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \remainder_r[15]_i_8 
       (.I0(\remainder_r[15]_i_16_n_0 ),
        .I1(\remainder_r[15]_i_17_n_0 ),
        .I2(\quotient_r[29]_i_5_n_0 ),
        .I3(\remainder_r[15]_i_18_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[15]_i_19_n_0 ),
        .O(\remainder_r[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[15]_i_9 
       (.I0(\remainder_r[19]_i_20_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[15]_i_20_n_0 ),
        .O(\remainder_r[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[16]_i_1 
       (.I0(in10[16]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[16]),
        .I4(divisor_r1),
        .O(\remainder_r[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[17]_i_1 
       (.I0(in10[17]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[17]),
        .I4(divisor_r1),
        .O(\remainder_r[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[18]_i_1 
       (.I0(in10[18]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[18]),
        .I4(divisor_r1),
        .O(\remainder_r[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[19]_i_1 
       (.I0(in10[19]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[19]),
        .I4(divisor_r1),
        .O(\remainder_r[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[19]_i_10 
       (.I0(\remainder_r[23]_i_22_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[19]_i_18_n_0 ),
        .O(\remainder_r[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[19]_i_11 
       (.I0(\remainder_r[19]_i_19_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[19]_i_15_n_0 ),
        .O(\remainder_r[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[19]_i_12 
       (.I0(\remainder_r[19]_i_20_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[19]_i_16_n_0 ),
        .O(\remainder_r[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \remainder_r[19]_i_13 
       (.I0(\remainder_r[19]_i_19_n_0 ),
        .I1(\remainder_r[19]_i_15_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[19]_i_21_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[19]_i_17_n_0 ),
        .O(\remainder_r[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[19]_i_14 
       (.I0(\remainder_r[19]_i_22_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[19]_i_18_n_0 ),
        .O(\remainder_r[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \remainder_r[19]_i_15 
       (.I0(divisor_r1__0[12]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[4]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[23]_i_23_n_0 ),
        .O(\remainder_r[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \remainder_r[19]_i_16 
       (.I0(\remainder_r[23]_i_24_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(divisor_r1__0[4]),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[12]),
        .O(\remainder_r[19]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \remainder_r[19]_i_17 
       (.I0(divisor_r1__0[11]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[3]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[19]_i_23_n_0 ),
        .O(\remainder_r[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    \remainder_r[19]_i_18 
       (.I0(divisor_r1__0[7]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[15]),
        .I4(\quotient_r[29]_i_4_n_0 ),
        .I5(\remainder_r[19]_i_24_n_0 ),
        .O(\remainder_r[19]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \remainder_r[19]_i_19 
       (.I0(divisor_r1__0[10]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[2]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[15]_i_19_n_0 ),
        .O(\remainder_r[19]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \remainder_r[19]_i_20 
       (.I0(\remainder_r[19]_i_25_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(divisor_r1__0[2]),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[10]),
        .O(\remainder_r[19]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \remainder_r[19]_i_21 
       (.I0(divisor_r1__0[9]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[1]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[19]_i_26_n_0 ),
        .O(\remainder_r[19]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF4F7FFFFF4F70000)) 
    \remainder_r[19]_i_22 
       (.I0(divisor_r1__0[5]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[13]),
        .I4(\quotient_r[29]_i_4_n_0 ),
        .I5(\remainder_r[19]_i_27_n_0 ),
        .O(\remainder_r[19]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \remainder_r[19]_i_23 
       (.I0(divisor_r1__0[15]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[7]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[19]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \remainder_r[19]_i_24 
       (.I0(divisor_r1__0[3]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[11]),
        .O(\remainder_r[19]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hBFB0BFBF)) 
    \remainder_r[19]_i_25 
       (.I0(\quotient_r[9]_i_2_n_0 ),
        .I1(divisor_r1__0[6]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[14]),
        .O(\remainder_r[19]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \remainder_r[19]_i_26 
       (.I0(divisor_r1__0[13]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[5]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[19]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \remainder_r[19]_i_27 
       (.I0(divisor_r1__0[1]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[9]),
        .O(\remainder_r[19]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[19]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[23]_i_13_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[19]_i_7_n_0 ),
        .I4(\remainder_r[19]_i_8_n_0 ),
        .I5(remainder_r1[19]),
        .O(\remainder_r[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[19]_i_4 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[19]_i_7_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[19]_i_9_n_0 ),
        .I4(\remainder_r[19]_i_10_n_0 ),
        .I5(remainder_r1[18]),
        .O(\remainder_r[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD484DE8E2B7B2171)) 
    \remainder_r[19]_i_5 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[19]_i_9_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[19]_i_11_n_0 ),
        .I4(\remainder_r[19]_i_12_n_0 ),
        .I5(remainder_r1[17]),
        .O(\remainder_r[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[19]_i_6 
       (.I0(\remainder_r[19]_i_13_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[19]_i_14_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[19]_i_12_n_0 ),
        .I5(remainder_r1[16]),
        .O(\remainder_r[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[19]_i_7 
       (.I0(\remainder_r[19]_i_15_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_19_n_0 ),
        .O(\remainder_r[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[19]_i_8 
       (.I0(\remainder_r[23]_i_20_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[19]_i_16_n_0 ),
        .O(\remainder_r[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[19]_i_9 
       (.I0(\remainder_r[19]_i_17_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_21_n_0 ),
        .O(\remainder_r[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[1]_i_1 
       (.I0(in10[1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[1]),
        .I4(divisor_r1),
        .O(\remainder_r[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[20]_i_1 
       (.I0(in10[20]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[20]),
        .I4(divisor_r1),
        .O(\remainder_r[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[21]_i_1 
       (.I0(in10[21]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[21]),
        .I4(divisor_r1),
        .O(\remainder_r[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[22]_i_1 
       (.I0(in10[22]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[22]),
        .I4(divisor_r1),
        .O(\remainder_r[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[23]_i_1 
       (.I0(in10[23]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[23]),
        .I4(divisor_r1),
        .O(\remainder_r[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[23]_i_10 
       (.I0(\remainder_r[27]_i_22_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_18_n_0 ),
        .O(\remainder_r[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[23]_i_11 
       (.I0(\remainder_r[23]_i_19_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_15_n_0 ),
        .O(\remainder_r[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[23]_i_12 
       (.I0(\remainder_r[23]_i_16_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_20_n_0 ),
        .O(\remainder_r[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[23]_i_13 
       (.I0(\remainder_r[23]_i_21_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_17_n_0 ),
        .O(\remainder_r[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[23]_i_14 
       (.I0(\remainder_r[23]_i_18_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_22_n_0 ),
        .O(\remainder_r[23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[23]_i_15 
       (.I0(\remainder_r[23]_i_23_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[27]_i_23_n_0 ),
        .O(\remainder_r[23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[23]_i_16 
       (.I0(\remainder_r[27]_i_24_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[23]_i_24_n_0 ),
        .O(\remainder_r[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \remainder_r[23]_i_17 
       (.I0(divisor_r1__0[15]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[7]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[27]_i_25_n_0 ),
        .O(\remainder_r[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \remainder_r[23]_i_18 
       (.I0(\remainder_r[27]_i_26_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(divisor_r1__0[7]),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[15]),
        .O(\remainder_r[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3022FFFF30220000)) 
    \remainder_r[23]_i_19 
       (.I0(divisor_r1__0[6]),
        .I1(\quotient_r[31]_i_4_n_0 ),
        .I2(divisor_r1__0[14]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[27]_i_27_n_0 ),
        .O(\remainder_r[23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
    \remainder_r[23]_i_20 
       (.I0(\remainder_r[27]_i_28_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[6]),
        .I4(\quotient_r[18]_i_3_n_0 ),
        .I5(\remainder_r[23]_i_25_n_0 ),
        .O(\remainder_r[23]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \remainder_r[23]_i_21 
       (.I0(divisor_r1__0[13]),
        .I1(\quotient_r[31]_i_3_n_0 ),
        .I2(divisor_r1__0[5]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_6_n_0 ),
        .I5(\remainder_r[27]_i_29_n_0 ),
        .O(\remainder_r[23]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \remainder_r[23]_i_22 
       (.I0(\remainder_r[27]_i_30_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(divisor_r1__0[5]),
        .I3(\quotient_r[18]_i_3_n_0 ),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[13]),
        .O(\remainder_r[23]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[23]_i_23 
       (.I0(divisor_r1__0[8]),
        .I1(divisor_r1__0[0]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[16]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[23]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[23]_i_24 
       (.I0(divisor_r1__0[8]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[0]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[16]),
        .O(\remainder_r[23]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \remainder_r[23]_i_25 
       (.I0(\quotient_r[31]_i_4_n_0 ),
        .I1(divisor_r1__0[14]),
        .O(\remainder_r[23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[23]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[27]_i_13_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[23]_i_7_n_0 ),
        .I4(\remainder_r[23]_i_8_n_0 ),
        .I5(remainder_r1[23]),
        .O(\remainder_r[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[23]_i_4 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[23]_i_7_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[23]_i_9_n_0 ),
        .I4(\remainder_r[23]_i_10_n_0 ),
        .I5(remainder_r1[22]),
        .O(\remainder_r[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[23]_i_5 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[23]_i_9_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[23]_i_11_n_0 ),
        .I4(\remainder_r[23]_i_12_n_0 ),
        .I5(remainder_r1[21]),
        .O(\remainder_r[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[23]_i_6 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[23]_i_11_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[23]_i_13_n_0 ),
        .I4(\remainder_r[23]_i_14_n_0 ),
        .I5(remainder_r1[20]),
        .O(\remainder_r[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[23]_i_7 
       (.I0(\remainder_r[23]_i_15_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_19_n_0 ),
        .O(\remainder_r[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[23]_i_8 
       (.I0(\remainder_r[27]_i_20_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[23]_i_16_n_0 ),
        .O(\remainder_r[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[23]_i_9 
       (.I0(\remainder_r[23]_i_17_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_21_n_0 ),
        .O(\remainder_r[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[24]_i_1 
       (.I0(in10[24]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[24]),
        .I4(divisor_r1),
        .O(\remainder_r[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[25]_i_1 
       (.I0(in10[25]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[25]),
        .I4(divisor_r1),
        .O(\remainder_r[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[26]_i_1 
       (.I0(in10[26]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[26]),
        .I4(divisor_r1),
        .O(\remainder_r[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[27]_i_1 
       (.I0(in10[27]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[27]),
        .I4(divisor_r1),
        .O(\remainder_r[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[27]_i_10 
       (.I0(\remainder_r[31]_i_39_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_18_n_0 ),
        .O(\remainder_r[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[27]_i_11 
       (.I0(\remainder_r[27]_i_19_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_15_n_0 ),
        .O(\remainder_r[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[27]_i_12 
       (.I0(\remainder_r[27]_i_16_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_20_n_0 ),
        .O(\remainder_r[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[27]_i_13 
       (.I0(\remainder_r[27]_i_21_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_17_n_0 ),
        .O(\remainder_r[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[27]_i_14 
       (.I0(\remainder_r[27]_i_18_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_22_n_0 ),
        .O(\remainder_r[27]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_15 
       (.I0(\remainder_r[27]_i_23_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_42_n_0 ),
        .O(\remainder_r[27]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_16 
       (.I0(\remainder_r[31]_i_31_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[27]_i_24_n_0 ),
        .O(\remainder_r[27]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_17 
       (.I0(\remainder_r[27]_i_25_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_48_n_0 ),
        .O(\remainder_r[27]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_18 
       (.I0(\remainder_r[31]_i_49_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[27]_i_26_n_0 ),
        .O(\remainder_r[27]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_19 
       (.I0(\remainder_r[27]_i_27_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_51_n_0 ),
        .O(\remainder_r[27]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_20 
       (.I0(\remainder_r[31]_i_50_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[27]_i_28_n_0 ),
        .O(\remainder_r[27]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_21 
       (.I0(\remainder_r[27]_i_29_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_52_n_0 ),
        .O(\remainder_r[27]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[27]_i_22 
       (.I0(\remainder_r[31]_i_53_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[27]_i_30_n_0 ),
        .O(\remainder_r[27]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[27]_i_23 
       (.I0(divisor_r1__0[12]),
        .I1(divisor_r1__0[4]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[20]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[27]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[27]_i_24 
       (.I0(divisor_r1__0[12]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[4]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[20]),
        .O(\remainder_r[27]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[27]_i_25 
       (.I0(divisor_r1__0[11]),
        .I1(divisor_r1__0[3]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[19]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[27]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[27]_i_26 
       (.I0(divisor_r1__0[11]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[3]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[19]),
        .O(\remainder_r[27]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[27]_i_27 
       (.I0(divisor_r1__0[10]),
        .I1(divisor_r1__0[2]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[18]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[27]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[27]_i_28 
       (.I0(divisor_r1__0[10]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[2]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[18]),
        .O(\remainder_r[27]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[27]_i_29 
       (.I0(divisor_r1__0[9]),
        .I1(divisor_r1__0[1]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[17]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[27]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[27]_i_3 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[31]_i_16_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[27]_i_7_n_0 ),
        .I4(\remainder_r[27]_i_8_n_0 ),
        .I5(remainder_r1[27]),
        .O(\remainder_r[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[27]_i_30 
       (.I0(divisor_r1__0[9]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[1]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[17]),
        .O(\remainder_r[27]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[27]_i_4 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[27]_i_7_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[27]_i_9_n_0 ),
        .I4(\remainder_r[27]_i_10_n_0 ),
        .I5(remainder_r1[26]),
        .O(\remainder_r[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[27]_i_5 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[27]_i_9_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[27]_i_11_n_0 ),
        .I4(\remainder_r[27]_i_12_n_0 ),
        .I5(remainder_r1[25]),
        .O(\remainder_r[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[27]_i_6 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[27]_i_11_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[27]_i_13_n_0 ),
        .I4(\remainder_r[27]_i_14_n_0 ),
        .I5(remainder_r1[24]),
        .O(\remainder_r[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[27]_i_7 
       (.I0(\remainder_r[27]_i_15_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[31]_i_37_n_0 ),
        .O(\remainder_r[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[27]_i_8 
       (.I0(\remainder_r[31]_i_35_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[27]_i_16_n_0 ),
        .O(\remainder_r[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[27]_i_9 
       (.I0(\remainder_r[27]_i_17_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[31]_i_38_n_0 ),
        .O(\remainder_r[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[28]_i_1 
       (.I0(in10[28]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[28]),
        .I4(divisor_r1),
        .O(\remainder_r[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[29]_i_1 
       (.I0(in10[29]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[29]),
        .I4(divisor_r1),
        .O(\remainder_r[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[2]_i_1 
       (.I0(in10[2]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[2]),
        .I4(divisor_r1),
        .O(\remainder_r[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[30]_i_1 
       (.I0(in10[30]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[30]),
        .I4(divisor_r1),
        .O(\remainder_r[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[31]_i_1 
       (.I0(in10[31]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[31]),
        .I4(divisor_r1),
        .O(\remainder_r[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \remainder_r[31]_i_10 
       (.I0(\remainder_r[31]_i_26_n_0 ),
        .I1(\remainder_r[31]_i_18_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[31]_i_21_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[31]_i_27_n_0 ),
        .O(\remainder_r[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[31]_i_11 
       (.I0(\remainder_r[31]_i_28_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[31]_i_29_n_0 ),
        .O(\remainder_r[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \remainder_r[31]_i_12 
       (.I0(\remainder_r[31]_i_30_n_0 ),
        .I1(\remainder_r[31]_i_31_n_0 ),
        .I2(\remainder_r[31]_i_32_n_0 ),
        .I3(\remainder_r[31]_i_33_n_0 ),
        .I4(\quotient_r[29]_i_4_n_0 ),
        .I5(\remainder_r[31]_i_34_n_0 ),
        .O(\remainder_r[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEFBABAEF208A8A20)) 
    \remainder_r[31]_i_13 
       (.I0(\remainder_r[31]_i_26_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[31]_i_18_n_0 ),
        .O(\remainder_r[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[31]_i_14 
       (.I0(\remainder_r[31]_i_35_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[31]_i_36_n_0 ),
        .O(\remainder_r[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hACAACACCCACCACAA)) 
    \remainder_r[31]_i_15 
       (.I0(\remainder_r[31]_i_21_n_0 ),
        .I1(\remainder_r[31]_i_37_n_0 ),
        .I2(remainder_log2_r[0]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[1]),
        .I5(divisor_log2_r[1]),
        .O(\remainder_r[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h208A8A20EFBABAEF)) 
    \remainder_r[31]_i_16 
       (.I0(\remainder_r[31]_i_38_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[31]_i_26_n_0 ),
        .O(\remainder_r[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEBEFF3CBEBE3C)) 
    \remainder_r[31]_i_17 
       (.I0(\remainder_r[31]_i_28_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[1]),
        .I4(divisor_log2_r[1]),
        .I5(\remainder_r[31]_i_39_n_0 ),
        .O(\remainder_r[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_18 
       (.I0(\remainder_r[31]_i_40_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_41_n_0 ),
        .O(\remainder_r[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \remainder_r[31]_i_19 
       (.I0(divisor_r1__0[3]),
        .I1(divisor_r1__0[19]),
        .I2(divisor_r1__0[11]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[27]),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_20 
       (.I0(divisor_r1__0[15]),
        .I1(divisor_r1__0[31]),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(divisor_r1__0[7]),
        .I4(\quotient_r[31]_i_4_n_0 ),
        .I5(divisor_r1__0[23]),
        .O(\remainder_r[31]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_21 
       (.I0(\remainder_r[31]_i_42_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_43_n_0 ),
        .O(\remainder_r[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \remainder_r[31]_i_22 
       (.I0(divisor_r1__0[2]),
        .I1(divisor_r1__0[18]),
        .I2(divisor_r1__0[10]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[26]),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \remainder_r[31]_i_23 
       (.I0(divisor_r1__0[6]),
        .I1(divisor_r1__0[22]),
        .I2(divisor_r1__0[14]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[30]),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \remainder_r[31]_i_24 
       (.I0(\remainder_r[31]_i_44_n_0 ),
        .I1(\remainder_r[31]_i_45_n_0 ),
        .I2(\remainder_r[31]_i_32_n_0 ),
        .I3(\remainder_r[31]_i_46_n_0 ),
        .I4(\quotient_r[29]_i_4_n_0 ),
        .I5(\remainder_r[31]_i_47_n_0 ),
        .O(\remainder_r[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000410000)) 
    \remainder_r[31]_i_25 
       (.I0(\quotient_r[31]_i_6_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .I5(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[31]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \remainder_r[31]_i_26 
       (.I0(\remainder_r[31]_i_19_n_0 ),
        .I1(\remainder_r[31]_i_48_n_0 ),
        .I2(\quotient_r[31]_i_6_n_0 ),
        .O(\remainder_r[31]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_27 
       (.I0(\remainder_r[31]_i_22_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_23_n_0 ),
        .O(\remainder_r[31]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_28 
       (.I0(\remainder_r[31]_i_47_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[31]_i_49_n_0 ),
        .O(\remainder_r[31]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_29 
       (.I0(\remainder_r[31]_i_44_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[31]_i_45_n_0 ),
        .O(\remainder_r[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h55566656AAAAAAAA)) 
    \remainder_r[31]_i_3 
       (.I0(remainder_r1[31]),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[31]_i_7_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[31]_i_8_n_0 ),
        .I5(\remainder_r[31]_i_9_n_0 ),
        .O(\remainder_r[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_30 
       (.I0(divisor_r1__0[4]),
        .I1(divisor_r1__0[20]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[12]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[28]),
        .O(\remainder_r[31]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_31 
       (.I0(divisor_r1__0[0]),
        .I1(divisor_r1__0[16]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[8]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[24]),
        .O(\remainder_r[31]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h9699)) 
    \remainder_r[31]_i_32 
       (.I0(divisor_log2_r[1]),
        .I1(remainder_log2_r[1]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .O(\remainder_r[31]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_33 
       (.I0(divisor_r1__0[6]),
        .I1(divisor_r1__0[22]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[14]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[30]),
        .O(\remainder_r[31]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_34 
       (.I0(divisor_r1__0[2]),
        .I1(divisor_r1__0[18]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[10]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[26]),
        .O(\remainder_r[31]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_35 
       (.I0(\remainder_r[31]_i_34_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[31]_i_50_n_0 ),
        .O(\remainder_r[31]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_36 
       (.I0(\remainder_r[31]_i_30_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[31]_i_31_n_0 ),
        .O(\remainder_r[31]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_37 
       (.I0(\remainder_r[31]_i_51_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_22_n_0 ),
        .O(\remainder_r[31]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \remainder_r[31]_i_38 
       (.I0(\remainder_r[31]_i_52_n_0 ),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\remainder_r[31]_i_40_n_0 ),
        .O(\remainder_r[31]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \remainder_r[31]_i_39 
       (.I0(\remainder_r[31]_i_45_n_0 ),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\remainder_r[31]_i_53_n_0 ),
        .O(\remainder_r[31]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[31]_i_4 
       (.I0(\remainder_r[31]_i_10_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[31]_i_11_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[31]_i_12_n_0 ),
        .I5(remainder_r1[30]),
        .O(\remainder_r[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \remainder_r[31]_i_40 
       (.I0(divisor_r1__0[1]),
        .I1(divisor_r1__0[17]),
        .I2(divisor_r1__0[9]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[25]),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \remainder_r[31]_i_41 
       (.I0(divisor_r1__0[5]),
        .I1(divisor_r1__0[21]),
        .I2(divisor_r1__0[13]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[29]),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \remainder_r[31]_i_42 
       (.I0(divisor_r1__0[0]),
        .I1(divisor_r1__0[16]),
        .I2(divisor_r1__0[8]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[24]),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \remainder_r[31]_i_43 
       (.I0(divisor_r1__0[4]),
        .I1(divisor_r1__0[20]),
        .I2(divisor_r1__0[12]),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[28]),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_44 
       (.I0(divisor_r1__0[5]),
        .I1(divisor_r1__0[21]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[13]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[29]),
        .O(\remainder_r[31]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_45 
       (.I0(divisor_r1__0[1]),
        .I1(divisor_r1__0[17]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[9]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[25]),
        .O(\remainder_r[31]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_46 
       (.I0(divisor_r1__0[7]),
        .I1(divisor_r1__0[23]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[15]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[31]),
        .O(\remainder_r[31]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \remainder_r[31]_i_47 
       (.I0(divisor_r1__0[3]),
        .I1(divisor_r1__0[19]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[11]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .I5(divisor_r1__0[27]),
        .O(\remainder_r[31]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[31]_i_48 
       (.I0(divisor_r1__0[15]),
        .I1(divisor_r1__0[7]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[23]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[31]_i_49 
       (.I0(divisor_r1__0[15]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[7]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[23]),
        .O(\remainder_r[31]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h031DCF1DFCE230E2)) 
    \remainder_r[31]_i_5 
       (.I0(\remainder_r[31]_i_13_n_0 ),
        .I1(\quotient_r[30]_i_5_n_0 ),
        .I2(\remainder_r[31]_i_14_n_0 ),
        .I3(\quotient_r_reg[31]_i_5_n_0 ),
        .I4(\remainder_r[31]_i_11_n_0 ),
        .I5(remainder_r1[29]),
        .O(\remainder_r[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[31]_i_50 
       (.I0(divisor_r1__0[14]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[6]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[22]),
        .O(\remainder_r[31]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[31]_i_51 
       (.I0(divisor_r1__0[14]),
        .I1(divisor_r1__0[6]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[22]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    \remainder_r[31]_i_52 
       (.I0(divisor_r1__0[13]),
        .I1(divisor_r1__0[5]),
        .I2(\quotient_r[31]_i_4_n_0 ),
        .I3(divisor_r1__0[21]),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[31]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \remainder_r[31]_i_53 
       (.I0(divisor_r1__0[13]),
        .I1(\quotient_r[18]_i_3_n_0 ),
        .I2(divisor_r1__0[5]),
        .I3(\quotient_r[9]_i_2_n_0 ),
        .I4(divisor_r1__0[21]),
        .O(\remainder_r[31]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hD484FEAE2B7B0151)) 
    \remainder_r[31]_i_6 
       (.I0(\quotient_r_reg[31]_i_5_n_0 ),
        .I1(\remainder_r[31]_i_15_n_0 ),
        .I2(\quotient_r[30]_i_5_n_0 ),
        .I3(\remainder_r[31]_i_16_n_0 ),
        .I4(\remainder_r[31]_i_17_n_0 ),
        .I5(remainder_r1[28]),
        .O(\remainder_r[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \remainder_r[31]_i_7 
       (.I0(\remainder_r[31]_i_18_n_0 ),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\remainder_r[31]_i_19_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\remainder_r[31]_i_20_n_0 ),
        .O(\remainder_r[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \remainder_r[31]_i_8 
       (.I0(\remainder_r[31]_i_21_n_0 ),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\remainder_r[31]_i_22_n_0 ),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\remainder_r[31]_i_23_n_0 ),
        .O(\remainder_r[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBE82FFFF)) 
    \remainder_r[31]_i_9 
       (.I0(\remainder_r[31]_i_12_n_0 ),
        .I1(remainder_log2_r[0]),
        .I2(divisor_log2_r[0]),
        .I3(\remainder_r[31]_i_24_n_0 ),
        .I4(\quotient_r_reg[31]_i_5_n_0 ),
        .I5(\remainder_r[31]_i_25_n_0 ),
        .O(\remainder_r[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[3]_i_1 
       (.I0(in10[3]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[3]),
        .I4(divisor_r1),
        .O(\remainder_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \remainder_r[3]_i_10 
       (.I0(remainder_log2_r[1]),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[0]),
        .I3(divisor_log2_r[0]),
        .O(\remainder_r[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \remainder_r[3]_i_11 
       (.I0(\quotient_r[9]_i_2_n_0 ),
        .I1(divisor_r1__0[1]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(\quotient_r[29]_i_4_n_0 ),
        .O(\remainder_r[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCFDFFFDFFFFFFFF)) 
    \remainder_r[3]_i_12 
       (.I0(divisor_r1__0[2]),
        .I1(\quotient_r[6]_i_3_n_0 ),
        .I2(\quotient_r[31]_i_6_n_0 ),
        .I3(\quotient_r[29]_i_5_n_0 ),
        .I4(divisor_r1__0[0]),
        .I5(\quotient_r[30]_i_5_n_0 ),
        .O(\remainder_r[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7FFF0FFF7F)) 
    \remainder_r[3]_i_13 
       (.I0(\quotient_r[24]_i_4_n_0 ),
        .I1(divisor_r1__0[0]),
        .I2(\quotient_r[31]_i_3_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(divisor_r1__0[1]),
        .I5(\quotient_r[24]_i_3_n_0 ),
        .O(\remainder_r[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000006000000)) 
    \remainder_r[3]_i_14 
       (.I0(remainder_log2_r[0]),
        .I1(divisor_log2_r[0]),
        .I2(\quotient_r[29]_i_5_n_0 ),
        .I3(\quotient_r[29]_i_4_n_0 ),
        .I4(divisor_r1__0[1]),
        .I5(\quotient_r[6]_i_3_n_0 ),
        .O(\remainder_r[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \remainder_r[3]_i_15 
       (.I0(\quotient_r[18]_i_3_n_0 ),
        .I1(divisor_r1__0[0]),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6FF69FF9FFFF)) 
    \remainder_r[3]_i_16 
       (.I0(remainder_log2_r[2]),
        .I1(divisor_log2_r[2]),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .I4(divisor_log2_r[1]),
        .I5(remainder_log2_r[1]),
        .O(\remainder_r[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF7FFFF)) 
    \remainder_r[3]_i_17 
       (.I0(divisor_r1__0[0]),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\quotient_r[31]_i_6_n_0 ),
        .I3(\quotient_r[31]_i_4_n_0 ),
        .I4(\quotient_r[31]_i_3_n_0 ),
        .I5(divisor_r1__0[2]),
        .O(\remainder_r[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[3]_i_3 
       (.I0(\remainder_r[3]_i_7_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[3]_i_8_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[7]_i_15_n_0 ),
        .I5(remainder_r1[3]),
        .O(\remainder_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h11D1DDDDEE2E2222)) 
    \remainder_r[3]_i_4 
       (.I0(\remainder_r[3]_i_9_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[3]_i_10_n_0 ),
        .I3(\remainder_r[3]_i_11_n_0 ),
        .I4(\remainder_r[3]_i_12_n_0 ),
        .I5(remainder_r1[2]),
        .O(\remainder_r[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD1D1D1DD2E2E2E22)) 
    \remainder_r[3]_i_5 
       (.I0(\remainder_r[3]_i_13_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[3]_i_14_n_0 ),
        .I3(\remainder_r[3]_i_15_n_0 ),
        .I4(\remainder_r[3]_i_16_n_0 ),
        .I5(remainder_r1[1]),
        .O(\remainder_r[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20002030DFFFDFCF)) 
    \remainder_r[3]_i_6 
       (.I0(\quotient_r[24]_i_4_n_0 ),
        .I1(\quotient_r[6]_i_3_n_0 ),
        .I2(divisor_r1__0[0]),
        .I3(\quotient_r_reg[31]_i_5_n_0 ),
        .I4(\quotient_r[24]_i_3_n_0 ),
        .I5(remainder_r1[0]),
        .O(\remainder_r[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \remainder_r[3]_i_7 
       (.I0(\remainder_r[3]_i_17_n_0 ),
        .I1(\remainder_r[7]_i_14_n_0 ),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .O(\remainder_r[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4F7FFFFFFFF)) 
    \remainder_r[3]_i_8 
       (.I0(divisor_r1__0[0]),
        .I1(\remainder_r[31]_i_32_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[2]),
        .I4(\quotient_r[18]_i_3_n_0 ),
        .I5(\quotient_r[29]_i_4_n_0 ),
        .O(\remainder_r[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCFFFAAAAAAAA)) 
    \remainder_r[3]_i_9 
       (.I0(\remainder_r[3]_i_17_n_0 ),
        .I1(\quotient_r[6]_i_3_n_0 ),
        .I2(divisor_r1__0[1]),
        .I3(\quotient_r[29]_i_4_n_0 ),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\quotient_r[30]_i_5_n_0 ),
        .O(\remainder_r[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[4]_i_1 
       (.I0(in10[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[4]),
        .I4(divisor_r1),
        .O(\remainder_r[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[5]_i_1 
       (.I0(in10[5]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[5]),
        .I4(divisor_r1),
        .O(\remainder_r[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[6]_i_1 
       (.I0(in10[6]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[6]),
        .I4(divisor_r1),
        .O(\remainder_r[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[7]_i_1 
       (.I0(in10[7]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[7]),
        .I4(divisor_r1),
        .O(\remainder_r[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBFF0000)) 
    \remainder_r[7]_i_10 
       (.I0(\quotient_r[9]_i_2_n_0 ),
        .I1(divisor_r1__0[3]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(\quotient_r[29]_i_4_n_0 ),
        .I4(\remainder_r[31]_i_32_n_0 ),
        .I5(\remainder_r[11]_i_21_n_0 ),
        .O(\remainder_r[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hCAAC)) 
    \remainder_r[7]_i_11 
       (.I0(\remainder_r[7]_i_13_n_0 ),
        .I1(\remainder_r[7]_i_18_n_0 ),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .O(\remainder_r[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBFF0000)) 
    \remainder_r[7]_i_12 
       (.I0(\quotient_r[9]_i_2_n_0 ),
        .I1(divisor_r1__0[2]),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(\quotient_r[29]_i_4_n_0 ),
        .I4(\remainder_r[31]_i_32_n_0 ),
        .I5(\remainder_r[7]_i_17_n_0 ),
        .O(\remainder_r[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \remainder_r[7]_i_13 
       (.I0(divisor_r1__0[2]),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(divisor_r1__0[0]),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(\quotient_r[6]_i_3_n_0 ),
        .I5(divisor_r1__0[4]),
        .O(\remainder_r[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4F7FFFFFFFF)) 
    \remainder_r[7]_i_14 
       (.I0(divisor_r1__0[1]),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(\quotient_r[31]_i_6_n_0 ),
        .I3(divisor_r1__0[3]),
        .I4(\quotient_r[31]_i_4_n_0 ),
        .I5(\quotient_r[31]_i_3_n_0 ),
        .O(\remainder_r[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4F7FFFFFFFF)) 
    \remainder_r[7]_i_15 
       (.I0(divisor_r1__0[1]),
        .I1(\remainder_r[31]_i_32_n_0 ),
        .I2(\quotient_r[9]_i_2_n_0 ),
        .I3(divisor_r1__0[3]),
        .I4(\quotient_r[18]_i_3_n_0 ),
        .I5(\quotient_r[29]_i_4_n_0 ),
        .O(\remainder_r[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF4F70000F4F7FFFF)) 
    \remainder_r[7]_i_16 
       (.I0(divisor_r1__0[0]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(\quotient_r[6]_i_3_n_0 ),
        .I3(divisor_r1__0[4]),
        .I4(\quotient_r[29]_i_5_n_0 ),
        .I5(\remainder_r[7]_i_19_n_0 ),
        .O(\remainder_r[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \remainder_r[7]_i_17 
       (.I0(divisor_r1__0[4]),
        .I1(\quotient_r[29]_i_4_n_0 ),
        .I2(\quotient_r[18]_i_3_n_0 ),
        .I3(divisor_r1__0[0]),
        .I4(\quotient_r[9]_i_2_n_0 ),
        .O(\remainder_r[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCF44CF77)) 
    \remainder_r[7]_i_18 
       (.I0(divisor_r1__0[3]),
        .I1(\quotient_r[29]_i_5_n_0 ),
        .I2(divisor_r1__0[1]),
        .I3(\quotient_r[31]_i_6_n_0 ),
        .I4(divisor_r1__0[5]),
        .I5(\quotient_r[6]_i_3_n_0 ),
        .O(\remainder_r[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000B800)) 
    \remainder_r[7]_i_19 
       (.I0(divisor_r1__0[2]),
        .I1(\quotient_r[31]_i_6_n_0 ),
        .I2(divisor_r1__0[6]),
        .I3(\quotient_r[31]_i_3_n_0 ),
        .I4(\quotient_r[31]_i_4_n_0 ),
        .O(\remainder_r[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[7]_i_3 
       (.I0(\remainder_r[7]_i_7_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[7]_i_8_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[11]_i_14_n_0 ),
        .I5(remainder_r1[7]),
        .O(\remainder_r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[7]_i_4 
       (.I0(\remainder_r[7]_i_9_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[7]_i_10_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[7]_i_8_n_0 ),
        .I5(remainder_r1[6]),
        .O(\remainder_r[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \remainder_r[7]_i_5 
       (.I0(\remainder_r[7]_i_11_n_0 ),
        .I1(\quotient_r_reg[31]_i_5_n_0 ),
        .I2(\remainder_r[7]_i_12_n_0 ),
        .I3(\quotient_r[30]_i_5_n_0 ),
        .I4(\remainder_r[7]_i_10_n_0 ),
        .I5(remainder_r1[5]),
        .O(\remainder_r[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h441D771DBBE288E2)) 
    \remainder_r[7]_i_6 
       (.I0(\remainder_r[7]_i_13_n_0 ),
        .I1(\quotient_r[30]_i_5_n_0 ),
        .I2(\remainder_r[7]_i_14_n_0 ),
        .I3(\quotient_r_reg[31]_i_5_n_0 ),
        .I4(\remainder_r[7]_i_15_n_0 ),
        .I5(remainder_r1[4]),
        .O(\remainder_r[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hCAAC)) 
    \remainder_r[7]_i_7 
       (.I0(\remainder_r[7]_i_16_n_0 ),
        .I1(\remainder_r[11]_i_20_n_0 ),
        .I2(divisor_log2_r[0]),
        .I3(remainder_log2_r[0]),
        .O(\remainder_r[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEBE82288282)) 
    \remainder_r[7]_i_8 
       (.I0(\remainder_r[7]_i_17_n_0 ),
        .I1(divisor_log2_r[1]),
        .I2(remainder_log2_r[1]),
        .I3(divisor_log2_r[0]),
        .I4(remainder_log2_r[0]),
        .I5(\remainder_r[11]_i_19_n_0 ),
        .O(\remainder_r[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \remainder_r[7]_i_9 
       (.I0(\remainder_r[7]_i_18_n_0 ),
        .I1(divisor_log2_r[0]),
        .I2(remainder_log2_r[0]),
        .I3(\remainder_r[7]_i_16_n_0 ),
        .O(\remainder_r[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[8]_i_1 
       (.I0(in10[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[8]),
        .I4(divisor_r1),
        .O(\remainder_r[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \remainder_r[9]_i_1 
       (.I0(in10[9]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state),
        .I3(divident[9]),
        .I4(divisor_r1),
        .O(\remainder_r[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[0] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[0]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[10] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[10]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[11] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[11]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[11] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[11]_i_2 
       (.CI(\remainder_r_reg[7]_i_2_n_0 ),
        .CO({\remainder_r_reg[11]_i_2_n_0 ,\remainder_r_reg[11]_i_2_n_1 ,\remainder_r_reg[11]_i_2_n_2 ,\remainder_r_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(remainder_r1[11:8]),
        .O(in10[11:8]),
        .S({\remainder_r[11]_i_3_n_0 ,\remainder_r[11]_i_4_n_0 ,\remainder_r[11]_i_5_n_0 ,\remainder_r[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[12] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[12]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[13] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[13]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[14] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[14]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[15] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[15]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[15] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[15]_i_2 
       (.CI(\remainder_r_reg[11]_i_2_n_0 ),
        .CO({\remainder_r_reg[15]_i_2_n_0 ,\remainder_r_reg[15]_i_2_n_1 ,\remainder_r_reg[15]_i_2_n_2 ,\remainder_r_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(remainder_r1[15:12]),
        .O(in10[15:12]),
        .S({\remainder_r[15]_i_3_n_0 ,\remainder_r[15]_i_4_n_0 ,\remainder_r[15]_i_5_n_0 ,\remainder_r[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[16] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[16]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[17] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[17]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[18] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[18]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[19] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[19]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[19] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[19]_i_2 
       (.CI(\remainder_r_reg[15]_i_2_n_0 ),
        .CO({\remainder_r_reg[19]_i_2_n_0 ,\remainder_r_reg[19]_i_2_n_1 ,\remainder_r_reg[19]_i_2_n_2 ,\remainder_r_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(remainder_r1[19:16]),
        .O(in10[19:16]),
        .S({\remainder_r[19]_i_3_n_0 ,\remainder_r[19]_i_4_n_0 ,\remainder_r[19]_i_5_n_0 ,\remainder_r[19]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[1] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[1]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[20] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[20]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[21] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[21]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[22] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[22]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[23] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[23]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[23] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[23]_i_2 
       (.CI(\remainder_r_reg[19]_i_2_n_0 ),
        .CO({\remainder_r_reg[23]_i_2_n_0 ,\remainder_r_reg[23]_i_2_n_1 ,\remainder_r_reg[23]_i_2_n_2 ,\remainder_r_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(remainder_r1[23:20]),
        .O(in10[23:20]),
        .S({\remainder_r[23]_i_3_n_0 ,\remainder_r[23]_i_4_n_0 ,\remainder_r[23]_i_5_n_0 ,\remainder_r[23]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[24] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[24]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[25] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[25]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[26] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[26]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[27] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[27]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[27] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[27]_i_2 
       (.CI(\remainder_r_reg[23]_i_2_n_0 ),
        .CO({\remainder_r_reg[27]_i_2_n_0 ,\remainder_r_reg[27]_i_2_n_1 ,\remainder_r_reg[27]_i_2_n_2 ,\remainder_r_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(remainder_r1[27:24]),
        .O(in10[27:24]),
        .S({\remainder_r[27]_i_3_n_0 ,\remainder_r[27]_i_4_n_0 ,\remainder_r[27]_i_5_n_0 ,\remainder_r[27]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[28] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[28]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[29] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[29]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[2] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[2]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[30] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[30]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[31] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[31]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[31] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[31]_i_2 
       (.CI(\remainder_r_reg[27]_i_2_n_0 ),
        .CO({\NLW_remainder_r_reg[31]_i_2_CO_UNCONNECTED [3],\remainder_r_reg[31]_i_2_n_1 ,\remainder_r_reg[31]_i_2_n_2 ,\remainder_r_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,remainder_r1[30:28]}),
        .O(in10[31:28]),
        .S({\remainder_r[31]_i_3_n_0 ,\remainder_r[31]_i_4_n_0 ,\remainder_r[31]_i_5_n_0 ,\remainder_r[31]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[3] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[3]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[3] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\remainder_r_reg[3]_i_2_n_0 ,\remainder_r_reg[3]_i_2_n_1 ,\remainder_r_reg[3]_i_2_n_2 ,\remainder_r_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(remainder_r1[3:0]),
        .O(in10[3:0]),
        .S({\remainder_r[3]_i_3_n_0 ,\remainder_r[3]_i_4_n_0 ,\remainder_r[3]_i_5_n_0 ,\remainder_r[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[4] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[4]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[5] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[5]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[6] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[6]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[7] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[7]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[7] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \remainder_r_reg[7]_i_2 
       (.CI(\remainder_r_reg[3]_i_2_n_0 ),
        .CO({\remainder_r_reg[7]_i_2_n_0 ,\remainder_r_reg[7]_i_2_n_1 ,\remainder_r_reg[7]_i_2_n_2 ,\remainder_r_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(remainder_r1[7:4]),
        .O(in10[7:4]),
        .S({\remainder_r[7]_i_3_n_0 ,\remainder_r[7]_i_4_n_0 ,\remainder_r[7]_i_5_n_0 ,\remainder_r[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[8] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[8]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \remainder_r_reg[9] 
       (.C(clk),
        .CE(\divisor_r[31]_i_1_n_0 ),
        .D(\remainder_r[9]_i_1_n_0 ),
        .Q(\remainder_r_reg_n_0_[9] ),
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

// verilator tracing_off
/* verilator coverage_on */
/* verilator lint_on UNDRIVEN */
