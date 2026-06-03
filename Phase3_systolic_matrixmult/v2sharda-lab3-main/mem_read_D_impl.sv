// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Mar 18 16:40:07 2025
// Host        : JANE running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim mem_read_D_impl.sv
// Design      : mem_read_D_pp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_W = "24" *) (* ECO_CHECKSUM = "942a1b0a" *) (* MATRIXSIZE_W = "24" *) 
(* N1 = "8" *) (* N2 = "8" *) 
(* NotValidForBitStream *)
module mem_read_D_pp
   (clk,
    rst,
    BLOCK_NUM,
    BLOCK_WIDTH,
    M1dN1,
    M1xBLOCK_WIDTHdN1,
    valid_D,
    rd_addr_D,
    block_index,
    activate_D);
  input clk;
  input rst;
  input [23:0]BLOCK_NUM;
  input [23:0]BLOCK_WIDTH;
  input [23:0]M1dN1;
  input [23:0]M1xBLOCK_WIDTHdN1;
  input valid_D;
  output [23:0]rd_addr_D;
  output [23:0]block_index;
  output [7:0]activate_D;

  wire [23:0]BLOCK_NUM;
  wire [23:0]BLOCK_WIDTH;
  wire [23:0]M1dN1;
  wire [23:0]M1xBLOCK_WIDTHdN1;
  wire [7:0]activate_D;
  wire activate_D_r;
  wire \activate_D_r[0]_i_11_n_0 ;
  wire \activate_D_r[0]_i_12_n_0 ;
  wire \activate_D_r[0]_i_13_n_0 ;
  wire \activate_D_r[0]_i_14_n_0 ;
  wire \activate_D_r[0]_i_15_n_0 ;
  wire \activate_D_r[0]_i_16_n_0 ;
  wire \activate_D_r[0]_i_17_n_0 ;
  wire \activate_D_r[0]_i_1_n_0 ;
  wire \activate_D_r[0]_i_20_n_0 ;
  wire \activate_D_r[0]_i_21_n_0 ;
  wire \activate_D_r[0]_i_22_n_0 ;
  wire \activate_D_r[0]_i_23_n_0 ;
  wire \activate_D_r[0]_i_26_n_0 ;
  wire \activate_D_r[0]_i_27_n_0 ;
  wire \activate_D_r[0]_i_28_n_0 ;
  wire \activate_D_r[0]_i_29_n_0 ;
  wire \activate_D_r[0]_i_30_n_0 ;
  wire \activate_D_r[0]_i_31_n_0 ;
  wire \activate_D_r[0]_i_32_n_0 ;
  wire \activate_D_r[0]_i_33_n_0 ;
  wire \activate_D_r[0]_i_34_n_0 ;
  wire \activate_D_r[0]_i_35_n_0 ;
  wire \activate_D_r[0]_i_36_n_0 ;
  wire \activate_D_r[0]_i_37_n_0 ;
  wire \activate_D_r[0]_i_38_n_0 ;
  wire \activate_D_r[0]_i_39_n_0 ;
  wire \activate_D_r[0]_i_40_n_0 ;
  wire \activate_D_r[0]_i_41_n_0 ;
  wire \activate_D_r[0]_i_6_n_0 ;
  wire \activate_D_r[0]_i_7_n_0 ;
  wire \activate_D_r[0]_i_8_n_0 ;
  wire \activate_D_r[0]_i_9_n_0 ;
  wire \activate_D_r_reg[0]_i_10_n_0 ;
  wire \activate_D_r_reg[0]_i_18_n_0 ;
  wire \activate_D_r_reg[0]_i_19_n_0 ;
  wire \activate_D_r_reg[0]_i_24_n_0 ;
  wire \activate_D_r_reg[0]_i_25_n_0 ;
  wire \activate_D_r_reg[0]_i_3_n_0 ;
  wire \activate_D_r_reg[0]_i_4_n_0 ;
  wire \activate_D_r_reg[0]_i_5_n_0 ;
  wire \activate_D_r_reg_n_0_[0] ;
  wire \activate_D_r_reg_n_0_[1] ;
  wire \activate_D_r_reg_n_0_[2] ;
  wire \activate_D_r_reg_n_0_[3] ;
  wire \activate_D_r_reg_n_0_[4] ;
  wire \activate_D_r_reg_n_0_[5] ;
  wire \activate_D_r_reg_n_0_[6] ;
  wire \activate_D_r_reg_n_0_[7] ;
  wire [23:0]block_index;
  wire \block_index[23]_i_11_n_0 ;
  wire \block_index[23]_i_12_n_0 ;
  wire \block_index[23]_i_13_n_0 ;
  wire \block_index[23]_i_14_n_0 ;
  wire \block_index[23]_i_16_n_0 ;
  wire \block_index[23]_i_17_n_0 ;
  wire \block_index[23]_i_18_n_0 ;
  wire \block_index[23]_i_20_n_0 ;
  wire \block_index[23]_i_21_n_0 ;
  wire \block_index[23]_i_22_n_0 ;
  wire \block_index[23]_i_23_n_0 ;
  wire \block_index[23]_i_25_n_0 ;
  wire \block_index[23]_i_26_n_0 ;
  wire \block_index[23]_i_27_n_0 ;
  wire \block_index[23]_i_28_n_0 ;
  wire \block_index[23]_i_29_n_0 ;
  wire \block_index[23]_i_30_n_0 ;
  wire \block_index[23]_i_31_n_0 ;
  wire \block_index[23]_i_34_n_0 ;
  wire \block_index[23]_i_35_n_0 ;
  wire \block_index[23]_i_36_n_0 ;
  wire \block_index[23]_i_37_n_0 ;
  wire \block_index[23]_i_38_n_0 ;
  wire \block_index[23]_i_39_n_0 ;
  wire \block_index[23]_i_40_n_0 ;
  wire \block_index[23]_i_41_n_0 ;
  wire \block_index[23]_i_44_n_0 ;
  wire \block_index[23]_i_45_n_0 ;
  wire \block_index[23]_i_46_n_0 ;
  wire \block_index[23]_i_47_n_0 ;
  wire \block_index[23]_i_50_n_0 ;
  wire \block_index[23]_i_51_n_0 ;
  wire \block_index[23]_i_52_n_0 ;
  wire \block_index[23]_i_53_n_0 ;
  wire \block_index[23]_i_54_n_0 ;
  wire \block_index[23]_i_55_n_0 ;
  wire \block_index[23]_i_56_n_0 ;
  wire \block_index[23]_i_57_n_0 ;
  wire \block_index[23]_i_60_n_0 ;
  wire \block_index[23]_i_61_n_0 ;
  wire \block_index[23]_i_62_n_0 ;
  wire \block_index[23]_i_63_n_0 ;
  wire \block_index[23]_i_64_n_0 ;
  wire \block_index[23]_i_65_n_0 ;
  wire \block_index[23]_i_66_n_0 ;
  wire \block_index[23]_i_67_n_0 ;
  wire \block_index[23]_i_68_n_0 ;
  wire \block_index[23]_i_69_n_0 ;
  wire \block_index[23]_i_70_n_0 ;
  wire \block_index[23]_i_71_n_0 ;
  wire \block_index[23]_i_72_n_0 ;
  wire \block_index[23]_i_73_n_0 ;
  wire \block_index[23]_i_74_n_0 ;
  wire \block_index[23]_i_75_n_0 ;
  wire \block_index[23]_i_76_n_0 ;
  wire \block_index[23]_i_77_n_0 ;
  wire \block_index[23]_i_78_n_0 ;
  wire \block_index[23]_i_79_n_0 ;
  wire \block_index[23]_i_80_n_0 ;
  wire \block_index[23]_i_81_n_0 ;
  wire \block_index[23]_i_82_n_0 ;
  wire \block_index[23]_i_83_n_0 ;
  wire \block_index[3]_i_2_n_0 ;
  wire \block_index_reg[11]_i_1_n_0 ;
  wire \block_index_reg[11]_i_1_n_4 ;
  wire \block_index_reg[11]_i_1_n_5 ;
  wire \block_index_reg[11]_i_1_n_6 ;
  wire \block_index_reg[11]_i_1_n_7 ;
  wire \block_index_reg[15]_i_1_n_0 ;
  wire \block_index_reg[15]_i_1_n_4 ;
  wire \block_index_reg[15]_i_1_n_5 ;
  wire \block_index_reg[15]_i_1_n_6 ;
  wire \block_index_reg[15]_i_1_n_7 ;
  wire \block_index_reg[19]_i_1_n_0 ;
  wire \block_index_reg[19]_i_1_n_4 ;
  wire \block_index_reg[19]_i_1_n_5 ;
  wire \block_index_reg[19]_i_1_n_6 ;
  wire \block_index_reg[19]_i_1_n_7 ;
  wire \block_index_reg[23]_i_10_n_0 ;
  wire \block_index_reg[23]_i_15_n_0 ;
  wire \block_index_reg[23]_i_19_n_0 ;
  wire \block_index_reg[23]_i_24_n_0 ;
  wire \block_index_reg[23]_i_32_n_0 ;
  wire \block_index_reg[23]_i_33_n_0 ;
  wire \block_index_reg[23]_i_3_n_4 ;
  wire \block_index_reg[23]_i_3_n_5 ;
  wire \block_index_reg[23]_i_3_n_6 ;
  wire \block_index_reg[23]_i_3_n_7 ;
  wire \block_index_reg[23]_i_42_n_0 ;
  wire \block_index_reg[23]_i_43_n_0 ;
  wire \block_index_reg[23]_i_48_n_0 ;
  wire \block_index_reg[23]_i_49_n_0 ;
  wire \block_index_reg[23]_i_58_n_0 ;
  wire \block_index_reg[23]_i_59_n_0 ;
  wire \block_index_reg[23]_i_6_n_0 ;
  wire \block_index_reg[23]_i_7_n_0 ;
  wire \block_index_reg[23]_i_8_n_0 ;
  wire \block_index_reg[23]_i_9_n_0 ;
  wire \block_index_reg[3]_i_1_n_0 ;
  wire \block_index_reg[3]_i_1_n_4 ;
  wire \block_index_reg[3]_i_1_n_5 ;
  wire \block_index_reg[3]_i_1_n_6 ;
  wire \block_index_reg[3]_i_1_n_7 ;
  wire \block_index_reg[7]_i_1_n_0 ;
  wire \block_index_reg[7]_i_1_n_4 ;
  wire \block_index_reg[7]_i_1_n_5 ;
  wire \block_index_reg[7]_i_1_n_6 ;
  wire \block_index_reg[7]_i_1_n_7 ;
  wire block_offset;
  wire \block_offset[0]_i_2_n_0 ;
  wire \block_offset[0]_i_3_n_0 ;
  wire \block_offset[0]_i_4_n_0 ;
  wire \block_offset[0]_i_5_n_0 ;
  wire \block_offset[12]_i_2_n_0 ;
  wire \block_offset[12]_i_3_n_0 ;
  wire \block_offset[12]_i_4_n_0 ;
  wire \block_offset[12]_i_5_n_0 ;
  wire \block_offset[16]_i_2_n_0 ;
  wire \block_offset[16]_i_3_n_0 ;
  wire \block_offset[16]_i_4_n_0 ;
  wire \block_offset[16]_i_5_n_0 ;
  wire \block_offset[20]_i_2_n_0 ;
  wire \block_offset[20]_i_3_n_0 ;
  wire \block_offset[20]_i_4_n_0 ;
  wire \block_offset[20]_i_5_n_0 ;
  wire \block_offset[4]_i_2_n_0 ;
  wire \block_offset[4]_i_3_n_0 ;
  wire \block_offset[4]_i_4_n_0 ;
  wire \block_offset[4]_i_5_n_0 ;
  wire \block_offset[8]_i_2_n_0 ;
  wire \block_offset[8]_i_3_n_0 ;
  wire \block_offset[8]_i_4_n_0 ;
  wire \block_offset[8]_i_5_n_0 ;
  wire [23:0]block_offset_reg;
  wire \block_offset_reg[0]_i_1_n_0 ;
  wire \block_offset_reg[0]_i_1_n_4 ;
  wire \block_offset_reg[0]_i_1_n_5 ;
  wire \block_offset_reg[0]_i_1_n_6 ;
  wire \block_offset_reg[0]_i_1_n_7 ;
  wire \block_offset_reg[12]_i_1_n_0 ;
  wire \block_offset_reg[12]_i_1_n_4 ;
  wire \block_offset_reg[12]_i_1_n_5 ;
  wire \block_offset_reg[12]_i_1_n_6 ;
  wire \block_offset_reg[12]_i_1_n_7 ;
  wire \block_offset_reg[16]_i_1_n_0 ;
  wire \block_offset_reg[16]_i_1_n_4 ;
  wire \block_offset_reg[16]_i_1_n_5 ;
  wire \block_offset_reg[16]_i_1_n_6 ;
  wire \block_offset_reg[16]_i_1_n_7 ;
  wire \block_offset_reg[20]_i_1_n_4 ;
  wire \block_offset_reg[20]_i_1_n_5 ;
  wire \block_offset_reg[20]_i_1_n_6 ;
  wire \block_offset_reg[20]_i_1_n_7 ;
  wire \block_offset_reg[4]_i_1_n_0 ;
  wire \block_offset_reg[4]_i_1_n_4 ;
  wire \block_offset_reg[4]_i_1_n_5 ;
  wire \block_offset_reg[4]_i_1_n_6 ;
  wire \block_offset_reg[4]_i_1_n_7 ;
  wire \block_offset_reg[8]_i_1_n_0 ;
  wire \block_offset_reg[8]_i_1_n_4 ;
  wire \block_offset_reg[8]_i_1_n_5 ;
  wire \block_offset_reg[8]_i_1_n_6 ;
  wire \block_offset_reg[8]_i_1_n_7 ;
  wire clk;
  wire col;
  wire col0;
  wire [23:1]col1;
  wire \col[0]_i_3_n_0 ;
  wire [23:0]col_reg;
  wire \col_reg[0]_i_2_n_0 ;
  wire \col_reg[0]_i_2_n_4 ;
  wire \col_reg[0]_i_2_n_5 ;
  wire \col_reg[0]_i_2_n_6 ;
  wire \col_reg[0]_i_2_n_7 ;
  wire \col_reg[12]_i_1_n_0 ;
  wire \col_reg[12]_i_1_n_4 ;
  wire \col_reg[12]_i_1_n_5 ;
  wire \col_reg[12]_i_1_n_6 ;
  wire \col_reg[12]_i_1_n_7 ;
  wire \col_reg[16]_i_1_n_0 ;
  wire \col_reg[16]_i_1_n_4 ;
  wire \col_reg[16]_i_1_n_5 ;
  wire \col_reg[16]_i_1_n_6 ;
  wire \col_reg[16]_i_1_n_7 ;
  wire \col_reg[20]_i_1_n_4 ;
  wire \col_reg[20]_i_1_n_5 ;
  wire \col_reg[20]_i_1_n_6 ;
  wire \col_reg[20]_i_1_n_7 ;
  wire \col_reg[4]_i_1_n_0 ;
  wire \col_reg[4]_i_1_n_4 ;
  wire \col_reg[4]_i_1_n_5 ;
  wire \col_reg[4]_i_1_n_6 ;
  wire \col_reg[4]_i_1_n_7 ;
  wire \col_reg[8]_i_1_n_0 ;
  wire \col_reg[8]_i_1_n_4 ;
  wire \col_reg[8]_i_1_n_5 ;
  wire \col_reg[8]_i_1_n_6 ;
  wire \col_reg[8]_i_1_n_7 ;
  wire [2:0]mini_col;
  wire \mini_col[0]_i_1_n_0 ;
  wire \mini_col[1]_i_1_n_0 ;
  wire \mini_col[2]_i_1_n_0 ;
  wire mini_offset;
  wire \mini_offset[3]_i_1_n_0 ;
  wire \mini_offset[3]_i_3_n_0 ;
  wire [23:3]mini_offset_reg;
  wire \mini_offset_reg[11]_i_1_n_0 ;
  wire \mini_offset_reg[11]_i_1_n_4 ;
  wire \mini_offset_reg[11]_i_1_n_5 ;
  wire \mini_offset_reg[11]_i_1_n_6 ;
  wire \mini_offset_reg[11]_i_1_n_7 ;
  wire \mini_offset_reg[15]_i_1_n_0 ;
  wire \mini_offset_reg[15]_i_1_n_4 ;
  wire \mini_offset_reg[15]_i_1_n_5 ;
  wire \mini_offset_reg[15]_i_1_n_6 ;
  wire \mini_offset_reg[15]_i_1_n_7 ;
  wire \mini_offset_reg[19]_i_1_n_0 ;
  wire \mini_offset_reg[19]_i_1_n_4 ;
  wire \mini_offset_reg[19]_i_1_n_5 ;
  wire \mini_offset_reg[19]_i_1_n_6 ;
  wire \mini_offset_reg[19]_i_1_n_7 ;
  wire \mini_offset_reg[23]_i_1_n_7 ;
  wire \mini_offset_reg[3]_i_2_n_0 ;
  wire \mini_offset_reg[3]_i_2_n_4 ;
  wire \mini_offset_reg[3]_i_2_n_5 ;
  wire \mini_offset_reg[3]_i_2_n_6 ;
  wire \mini_offset_reg[3]_i_2_n_7 ;
  wire \mini_offset_reg[7]_i_1_n_0 ;
  wire \mini_offset_reg[7]_i_1_n_4 ;
  wire \mini_offset_reg[7]_i_1_n_5 ;
  wire \mini_offset_reg[7]_i_1_n_6 ;
  wire \mini_offset_reg[7]_i_1_n_7 ;
  wire offset;
  wire \offset[0]_i_3_n_0 ;
  wire \offset[0]_i_4_n_0 ;
  wire \offset[0]_i_5_n_0 ;
  wire \offset[0]_i_6_n_0 ;
  wire \offset[12]_i_2_n_0 ;
  wire \offset[12]_i_3_n_0 ;
  wire \offset[12]_i_4_n_0 ;
  wire \offset[12]_i_5_n_0 ;
  wire \offset[16]_i_2_n_0 ;
  wire \offset[16]_i_3_n_0 ;
  wire \offset[16]_i_4_n_0 ;
  wire \offset[16]_i_5_n_0 ;
  wire \offset[20]_i_2_n_0 ;
  wire \offset[20]_i_3_n_0 ;
  wire \offset[20]_i_4_n_0 ;
  wire \offset[20]_i_5_n_0 ;
  wire \offset[4]_i_2_n_0 ;
  wire \offset[4]_i_3_n_0 ;
  wire \offset[4]_i_4_n_0 ;
  wire \offset[4]_i_5_n_0 ;
  wire \offset[8]_i_2_n_0 ;
  wire \offset[8]_i_3_n_0 ;
  wire \offset[8]_i_4_n_0 ;
  wire \offset[8]_i_5_n_0 ;
  wire [23:0]offset_reg;
  wire \offset_reg[0]_i_2_n_0 ;
  wire \offset_reg[0]_i_2_n_4 ;
  wire \offset_reg[0]_i_2_n_5 ;
  wire \offset_reg[0]_i_2_n_6 ;
  wire \offset_reg[0]_i_2_n_7 ;
  wire \offset_reg[12]_i_1_n_0 ;
  wire \offset_reg[12]_i_1_n_4 ;
  wire \offset_reg[12]_i_1_n_5 ;
  wire \offset_reg[12]_i_1_n_6 ;
  wire \offset_reg[12]_i_1_n_7 ;
  wire \offset_reg[16]_i_1_n_0 ;
  wire \offset_reg[16]_i_1_n_4 ;
  wire \offset_reg[16]_i_1_n_5 ;
  wire \offset_reg[16]_i_1_n_6 ;
  wire \offset_reg[16]_i_1_n_7 ;
  wire \offset_reg[20]_i_1_n_4 ;
  wire \offset_reg[20]_i_1_n_5 ;
  wire \offset_reg[20]_i_1_n_6 ;
  wire \offset_reg[20]_i_1_n_7 ;
  wire \offset_reg[4]_i_1_n_0 ;
  wire \offset_reg[4]_i_1_n_4 ;
  wire \offset_reg[4]_i_1_n_5 ;
  wire \offset_reg[4]_i_1_n_6 ;
  wire \offset_reg[4]_i_1_n_7 ;
  wire \offset_reg[8]_i_1_n_0 ;
  wire \offset_reg[8]_i_1_n_4 ;
  wire \offset_reg[8]_i_1_n_5 ;
  wire \offset_reg[8]_i_1_n_6 ;
  wire \offset_reg[8]_i_1_n_7 ;
  wire phase0;
  wire [23:1]phase1;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[0]_i_3_n_0 ;
  wire [23:0]phase_reg;
  wire \phase_reg[0]_i_2_n_0 ;
  wire \phase_reg[0]_i_2_n_4 ;
  wire \phase_reg[0]_i_2_n_5 ;
  wire \phase_reg[0]_i_2_n_6 ;
  wire \phase_reg[0]_i_2_n_7 ;
  wire \phase_reg[12]_i_1_n_0 ;
  wire \phase_reg[12]_i_1_n_4 ;
  wire \phase_reg[12]_i_1_n_5 ;
  wire \phase_reg[12]_i_1_n_6 ;
  wire \phase_reg[12]_i_1_n_7 ;
  wire \phase_reg[16]_i_1_n_0 ;
  wire \phase_reg[16]_i_1_n_4 ;
  wire \phase_reg[16]_i_1_n_5 ;
  wire \phase_reg[16]_i_1_n_6 ;
  wire \phase_reg[16]_i_1_n_7 ;
  wire \phase_reg[20]_i_1_n_4 ;
  wire \phase_reg[20]_i_1_n_5 ;
  wire \phase_reg[20]_i_1_n_6 ;
  wire \phase_reg[20]_i_1_n_7 ;
  wire \phase_reg[4]_i_1_n_0 ;
  wire \phase_reg[4]_i_1_n_4 ;
  wire \phase_reg[4]_i_1_n_5 ;
  wire \phase_reg[4]_i_1_n_6 ;
  wire \phase_reg[4]_i_1_n_7 ;
  wire \phase_reg[8]_i_1_n_0 ;
  wire \phase_reg[8]_i_1_n_4 ;
  wire \phase_reg[8]_i_1_n_5 ;
  wire \phase_reg[8]_i_1_n_6 ;
  wire \phase_reg[8]_i_1_n_7 ;
  wire [23:0]rd_addr_D;
  wire [23:0]rd_addr_D0;
  wire \rd_addr_D[11]_i_10_n_0 ;
  wire \rd_addr_D[11]_i_11_n_0 ;
  wire \rd_addr_D[11]_i_12_n_0 ;
  wire \rd_addr_D[11]_i_13_n_0 ;
  wire \rd_addr_D[11]_i_2_n_0 ;
  wire \rd_addr_D[11]_i_3_n_0 ;
  wire \rd_addr_D[11]_i_4_n_0 ;
  wire \rd_addr_D[11]_i_5_n_0 ;
  wire \rd_addr_D[11]_i_6_n_0 ;
  wire \rd_addr_D[11]_i_7_n_0 ;
  wire \rd_addr_D[11]_i_8_n_0 ;
  wire \rd_addr_D[11]_i_9_n_0 ;
  wire \rd_addr_D[15]_i_10_n_0 ;
  wire \rd_addr_D[15]_i_11_n_0 ;
  wire \rd_addr_D[15]_i_12_n_0 ;
  wire \rd_addr_D[15]_i_13_n_0 ;
  wire \rd_addr_D[15]_i_2_n_0 ;
  wire \rd_addr_D[15]_i_3_n_0 ;
  wire \rd_addr_D[15]_i_4_n_0 ;
  wire \rd_addr_D[15]_i_5_n_0 ;
  wire \rd_addr_D[15]_i_6_n_0 ;
  wire \rd_addr_D[15]_i_7_n_0 ;
  wire \rd_addr_D[15]_i_8_n_0 ;
  wire \rd_addr_D[15]_i_9_n_0 ;
  wire \rd_addr_D[19]_i_10_n_0 ;
  wire \rd_addr_D[19]_i_11_n_0 ;
  wire \rd_addr_D[19]_i_12_n_0 ;
  wire \rd_addr_D[19]_i_13_n_0 ;
  wire \rd_addr_D[19]_i_2_n_0 ;
  wire \rd_addr_D[19]_i_3_n_0 ;
  wire \rd_addr_D[19]_i_4_n_0 ;
  wire \rd_addr_D[19]_i_5_n_0 ;
  wire \rd_addr_D[19]_i_6_n_0 ;
  wire \rd_addr_D[19]_i_7_n_0 ;
  wire \rd_addr_D[19]_i_8_n_0 ;
  wire \rd_addr_D[19]_i_9_n_0 ;
  wire \rd_addr_D[23]_i_10_n_0 ;
  wire \rd_addr_D[23]_i_11_n_0 ;
  wire \rd_addr_D[23]_i_12_n_0 ;
  wire \rd_addr_D[23]_i_13_n_0 ;
  wire \rd_addr_D[23]_i_14_n_0 ;
  wire \rd_addr_D[23]_i_15_n_0 ;
  wire \rd_addr_D[23]_i_16_n_0 ;
  wire \rd_addr_D[23]_i_17_n_0 ;
  wire \rd_addr_D[23]_i_18_n_0 ;
  wire \rd_addr_D[23]_i_19_n_0 ;
  wire \rd_addr_D[23]_i_20_n_0 ;
  wire \rd_addr_D[23]_i_2_n_0 ;
  wire \rd_addr_D[23]_i_3_n_0 ;
  wire \rd_addr_D[23]_i_4_n_0 ;
  wire \rd_addr_D[23]_i_5_n_0 ;
  wire \rd_addr_D[23]_i_6_n_0 ;
  wire \rd_addr_D[23]_i_7_n_0 ;
  wire \rd_addr_D[23]_i_8_n_0 ;
  wire \rd_addr_D[23]_i_9_n_0 ;
  wire \rd_addr_D[3]_i_10_n_0 ;
  wire \rd_addr_D[3]_i_2_n_0 ;
  wire \rd_addr_D[3]_i_3_n_0 ;
  wire \rd_addr_D[3]_i_4_n_0 ;
  wire \rd_addr_D[3]_i_5_n_0 ;
  wire \rd_addr_D[3]_i_6_n_0 ;
  wire \rd_addr_D[3]_i_7_n_0 ;
  wire \rd_addr_D[3]_i_8_n_0 ;
  wire \rd_addr_D[3]_i_9_n_0 ;
  wire \rd_addr_D[7]_i_10_n_0 ;
  wire \rd_addr_D[7]_i_11_n_0 ;
  wire \rd_addr_D[7]_i_12_n_0 ;
  wire \rd_addr_D[7]_i_2_n_0 ;
  wire \rd_addr_D[7]_i_3_n_0 ;
  wire \rd_addr_D[7]_i_4_n_0 ;
  wire \rd_addr_D[7]_i_5_n_0 ;
  wire \rd_addr_D[7]_i_6_n_0 ;
  wire \rd_addr_D[7]_i_7_n_0 ;
  wire \rd_addr_D[7]_i_8_n_0 ;
  wire \rd_addr_D[7]_i_9_n_0 ;
  wire \rd_addr_D_reg[11]_i_1_n_0 ;
  wire \rd_addr_D_reg[15]_i_1_n_0 ;
  wire \rd_addr_D_reg[19]_i_1_n_0 ;
  wire \rd_addr_D_reg[3]_i_1_n_0 ;
  wire \rd_addr_D_reg[7]_i_1_n_0 ;
  wire rst;
  wire sys_row0;
  wire [23:1]sys_row1;
  wire \sys_row[0]_i_1_n_0 ;
  wire \sys_row[1]_i_1_n_0 ;
  wire \sys_row[2]_i_2_n_0 ;
  wire \sys_row_reg_n_0_[0] ;
  wire \sys_row_reg_n_0_[1] ;
  wire \sys_row_reg_n_0_[2] ;
  wire valid_D;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_D_r_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_D_r_reg[0]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_24_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_25_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_D_r_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_activate_D_r_reg[0]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_D_r_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_D_r_reg[0]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_15_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_32_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_33_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_42_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_43_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_48_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_49_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_58_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_59_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_block_index_reg[23]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_index_reg[23]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[23]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_block_index_reg[23]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_index_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_offset_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_offset_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_offset_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_offset_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_offset_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_offset_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_col_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_col_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_col_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_col_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_col_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_col_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_mini_offset_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_mini_offset_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_mini_offset_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_mini_offset_reg[23]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_mini_offset_reg[23]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_mini_offset_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_mini_offset_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_offset_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_phase_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rd_addr_D_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rd_addr_D_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rd_addr_D_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_rd_addr_D_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rd_addr_D_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rd_addr_D_reg[7]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h3FFFBFFF00008000)) 
    \activate_D_r[0]_i_1 
       (.I0(\activate_D_r_reg_n_0_[7] ),
        .I1(sys_row0),
        .I2(col0),
        .I3(valid_D),
        .I4(phase0),
        .I5(\activate_D_r_reg_n_0_[0] ),
        .O(\activate_D_r[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_11 
       (.I0(M1dN1[23]),
        .O(\activate_D_r[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_12 
       (.I0(M1dN1[22]),
        .O(\activate_D_r[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_13 
       (.I0(M1dN1[21]),
        .O(\activate_D_r[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_D_r[0]_i_14 
       (.I0(phase_reg[9]),
        .I1(phase1[9]),
        .I2(phase_reg[10]),
        .I3(phase1[10]),
        .I4(phase1[11]),
        .I5(phase_reg[11]),
        .O(\activate_D_r[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_D_r[0]_i_15 
       (.I0(phase_reg[6]),
        .I1(phase1[6]),
        .I2(phase_reg[7]),
        .I3(phase1[7]),
        .I4(phase1[8]),
        .I5(phase_reg[8]),
        .O(\activate_D_r[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_D_r[0]_i_16 
       (.I0(phase_reg[5]),
        .I1(phase1[5]),
        .I2(phase_reg[3]),
        .I3(phase1[3]),
        .I4(phase1[4]),
        .I5(phase_reg[4]),
        .O(\activate_D_r[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    \activate_D_r[0]_i_17 
       (.I0(phase_reg[1]),
        .I1(phase1[1]),
        .I2(phase_reg[0]),
        .I3(M1dN1[0]),
        .I4(phase1[2]),
        .I5(phase_reg[2]),
        .O(\activate_D_r[0]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_20 
       (.I0(M1dN1[20]),
        .O(\activate_D_r[0]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_21 
       (.I0(M1dN1[19]),
        .O(\activate_D_r[0]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_22 
       (.I0(M1dN1[18]),
        .O(\activate_D_r[0]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_23 
       (.I0(M1dN1[17]),
        .O(\activate_D_r[0]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_26 
       (.I0(M1dN1[16]),
        .O(\activate_D_r[0]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_27 
       (.I0(M1dN1[15]),
        .O(\activate_D_r[0]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_28 
       (.I0(M1dN1[14]),
        .O(\activate_D_r[0]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_29 
       (.I0(M1dN1[13]),
        .O(\activate_D_r[0]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_30 
       (.I0(M1dN1[12]),
        .O(\activate_D_r[0]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_31 
       (.I0(M1dN1[11]),
        .O(\activate_D_r[0]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_32 
       (.I0(M1dN1[10]),
        .O(\activate_D_r[0]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_33 
       (.I0(M1dN1[9]),
        .O(\activate_D_r[0]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_34 
       (.I0(M1dN1[8]),
        .O(\activate_D_r[0]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_35 
       (.I0(M1dN1[7]),
        .O(\activate_D_r[0]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_36 
       (.I0(M1dN1[6]),
        .O(\activate_D_r[0]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_37 
       (.I0(M1dN1[5]),
        .O(\activate_D_r[0]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_38 
       (.I0(M1dN1[4]),
        .O(\activate_D_r[0]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_39 
       (.I0(M1dN1[3]),
        .O(\activate_D_r[0]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_40 
       (.I0(M1dN1[2]),
        .O(\activate_D_r[0]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_D_r[0]_i_41 
       (.I0(M1dN1[1]),
        .O(\activate_D_r[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_D_r[0]_i_6 
       (.I0(phase_reg[21]),
        .I1(phase1[21]),
        .I2(phase_reg[22]),
        .I3(phase1[22]),
        .I4(phase1[23]),
        .I5(phase_reg[23]),
        .O(\activate_D_r[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_D_r[0]_i_7 
       (.I0(phase_reg[18]),
        .I1(phase1[18]),
        .I2(phase_reg[19]),
        .I3(phase1[19]),
        .I4(phase1[20]),
        .I5(phase_reg[20]),
        .O(\activate_D_r[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_D_r[0]_i_8 
       (.I0(phase_reg[15]),
        .I1(phase1[15]),
        .I2(phase_reg[16]),
        .I3(phase1[16]),
        .I4(phase1[17]),
        .I5(phase_reg[17]),
        .O(\activate_D_r[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_D_r[0]_i_9 
       (.I0(phase_reg[14]),
        .I1(phase1[14]),
        .I2(phase_reg[12]),
        .I3(phase1[12]),
        .I4(phase1[13]),
        .I5(phase_reg[13]),
        .O(\activate_D_r[0]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \activate_D_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r[0]_i_1_n_0 ),
        .Q(\activate_D_r_reg_n_0_[0] ),
        .S(rst));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_10 
       (.CI(\activate_D_r_reg[0]_i_18_n_0 ),
        .CO({\activate_D_r_reg[0]_i_10_n_0 ,\NLW_activate_D_r_reg[0]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1dN1[20:17]),
        .O(phase1[20:17]),
        .S({\activate_D_r[0]_i_20_n_0 ,\activate_D_r[0]_i_21_n_0 ,\activate_D_r[0]_i_22_n_0 ,\activate_D_r[0]_i_23_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_18 
       (.CI(\activate_D_r_reg[0]_i_19_n_0 ),
        .CO({\activate_D_r_reg[0]_i_18_n_0 ,\NLW_activate_D_r_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1dN1[16:13]),
        .O(phase1[16:13]),
        .S({\activate_D_r[0]_i_26_n_0 ,\activate_D_r[0]_i_27_n_0 ,\activate_D_r[0]_i_28_n_0 ,\activate_D_r[0]_i_29_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_19 
       (.CI(\activate_D_r_reg[0]_i_24_n_0 ),
        .CO({\activate_D_r_reg[0]_i_19_n_0 ,\NLW_activate_D_r_reg[0]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1dN1[12:9]),
        .O(phase1[12:9]),
        .S({\activate_D_r[0]_i_30_n_0 ,\activate_D_r[0]_i_31_n_0 ,\activate_D_r[0]_i_32_n_0 ,\activate_D_r[0]_i_33_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_2 
       (.CI(\activate_D_r_reg[0]_i_3_n_0 ),
        .CO({\NLW_activate_D_r_reg[0]_i_2_CO_UNCONNECTED [3],phase0,\NLW_activate_D_r_reg[0]_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_D_r_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\activate_D_r_reg[0]_i_4_n_0 ,\activate_D_r_reg[0]_i_4_n_0 ,\activate_D_r_reg[0]_i_4_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_24 
       (.CI(\activate_D_r_reg[0]_i_25_n_0 ),
        .CO({\activate_D_r_reg[0]_i_24_n_0 ,\NLW_activate_D_r_reg[0]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1dN1[8:5]),
        .O(phase1[8:5]),
        .S({\activate_D_r[0]_i_34_n_0 ,\activate_D_r[0]_i_35_n_0 ,\activate_D_r[0]_i_36_n_0 ,\activate_D_r[0]_i_37_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_25 
       (.CI(1'b0),
        .CO({\activate_D_r_reg[0]_i_25_n_0 ,\NLW_activate_D_r_reg[0]_i_25_CO_UNCONNECTED [2:0]}),
        .CYINIT(M1dN1[0]),
        .DI(M1dN1[4:1]),
        .O(phase1[4:1]),
        .S({\activate_D_r[0]_i_38_n_0 ,\activate_D_r[0]_i_39_n_0 ,\activate_D_r[0]_i_40_n_0 ,\activate_D_r[0]_i_41_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_3 
       (.CI(\activate_D_r_reg[0]_i_5_n_0 ),
        .CO({\activate_D_r_reg[0]_i_3_n_0 ,\NLW_activate_D_r_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_D_r_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\activate_D_r[0]_i_6_n_0 ,\activate_D_r[0]_i_7_n_0 ,\activate_D_r[0]_i_8_n_0 ,\activate_D_r[0]_i_9_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_4 
       (.CI(\activate_D_r_reg[0]_i_10_n_0 ),
        .CO({\activate_D_r_reg[0]_i_4_n_0 ,\NLW_activate_D_r_reg[0]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,M1dN1[23:21]}),
        .O({\NLW_activate_D_r_reg[0]_i_4_O_UNCONNECTED [3],phase1[23:21]}),
        .S({1'b1,\activate_D_r[0]_i_11_n_0 ,\activate_D_r[0]_i_12_n_0 ,\activate_D_r[0]_i_13_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_D_r_reg[0]_i_5 
       (.CI(1'b0),
        .CO({\activate_D_r_reg[0]_i_5_n_0 ,\NLW_activate_D_r_reg[0]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_D_r_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\activate_D_r[0]_i_14_n_0 ,\activate_D_r[0]_i_15_n_0 ,\activate_D_r[0]_i_16_n_0 ,\activate_D_r[0]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_r_reg[1] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\activate_D_r_reg_n_0_[0] ),
        .Q(\activate_D_r_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_r_reg[2] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\activate_D_r_reg_n_0_[1] ),
        .Q(\activate_D_r_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_r_reg[3] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\activate_D_r_reg_n_0_[2] ),
        .Q(\activate_D_r_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_r_reg[4] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\activate_D_r_reg_n_0_[3] ),
        .Q(\activate_D_r_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_r_reg[5] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\activate_D_r_reg_n_0_[4] ),
        .Q(\activate_D_r_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_r_reg[6] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\activate_D_r_reg_n_0_[5] ),
        .Q(\activate_D_r_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_r_reg[7] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\activate_D_r_reg_n_0_[6] ),
        .Q(\activate_D_r_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[0] ),
        .Q(activate_D[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[1] ),
        .Q(activate_D[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[2] ),
        .Q(activate_D[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[3] ),
        .Q(activate_D[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[4] ),
        .Q(activate_D[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[5] ),
        .Q(activate_D[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[6] ),
        .Q(activate_D[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_D_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_D_r_reg_n_0_[7] ),
        .Q(activate_D[7]),
        .R(rst));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \block_index[23]_i_1 
       (.I0(rst),
        .I1(valid_D),
        .I2(col0),
        .I3(sys_row0),
        .O(block_offset));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_11 
       (.I0(col_reg[23]),
        .I1(col1[23]),
        .I2(col_reg[21]),
        .I3(col1[21]),
        .I4(col1[22]),
        .I5(col_reg[22]),
        .O(\block_index[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_12 
       (.I0(col_reg[18]),
        .I1(col1[18]),
        .I2(col_reg[19]),
        .I3(col1[19]),
        .I4(col1[20]),
        .I5(col_reg[20]),
        .O(\block_index[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_13 
       (.I0(col_reg[15]),
        .I1(col1[15]),
        .I2(col_reg[16]),
        .I3(col1[16]),
        .I4(col1[17]),
        .I5(col_reg[17]),
        .O(\block_index[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_14 
       (.I0(col_reg[12]),
        .I1(col1[12]),
        .I2(col_reg[13]),
        .I3(col1[13]),
        .I4(col1[14]),
        .I5(col_reg[14]),
        .O(\block_index[23]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_16 
       (.I0(BLOCK_WIDTH[23]),
        .O(\block_index[23]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_17 
       (.I0(BLOCK_WIDTH[22]),
        .O(\block_index[23]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_18 
       (.I0(BLOCK_WIDTH[21]),
        .O(\block_index[23]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \block_index[23]_i_2 
       (.I0(valid_D),
        .I1(col0),
        .O(col));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_20 
       (.I0(block_index[21]),
        .I1(sys_row1[21]),
        .I2(block_index[22]),
        .I3(sys_row1[22]),
        .I4(sys_row1[23]),
        .I5(block_index[23]),
        .O(\block_index[23]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_21 
       (.I0(block_index[18]),
        .I1(sys_row1[18]),
        .I2(block_index[19]),
        .I3(sys_row1[19]),
        .I4(sys_row1[20]),
        .I5(block_index[20]),
        .O(\block_index[23]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_22 
       (.I0(block_index[15]),
        .I1(sys_row1[15]),
        .I2(block_index[16]),
        .I3(sys_row1[16]),
        .I4(sys_row1[17]),
        .I5(block_index[17]),
        .O(\block_index[23]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_23 
       (.I0(block_index[14]),
        .I1(sys_row1[14]),
        .I2(block_index[12]),
        .I3(sys_row1[12]),
        .I4(sys_row1[13]),
        .I5(block_index[13]),
        .O(\block_index[23]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_25 
       (.I0(BLOCK_NUM[23]),
        .O(\block_index[23]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_26 
       (.I0(BLOCK_NUM[22]),
        .O(\block_index[23]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_27 
       (.I0(BLOCK_NUM[21]),
        .O(\block_index[23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_28 
       (.I0(col_reg[11]),
        .I1(col1[11]),
        .I2(col_reg[9]),
        .I3(col1[9]),
        .I4(col1[10]),
        .I5(col_reg[10]),
        .O(\block_index[23]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_29 
       (.I0(col_reg[8]),
        .I1(col1[8]),
        .I2(col_reg[6]),
        .I3(col1[6]),
        .I4(col1[7]),
        .I5(col_reg[7]),
        .O(\block_index[23]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_30 
       (.I0(col_reg[5]),
        .I1(col1[5]),
        .I2(col_reg[3]),
        .I3(col1[3]),
        .I4(col1[4]),
        .I5(col_reg[4]),
        .O(\block_index[23]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    \block_index[23]_i_31 
       (.I0(col_reg[1]),
        .I1(col1[1]),
        .I2(col_reg[0]),
        .I3(BLOCK_WIDTH[0]),
        .I4(col1[2]),
        .I5(col_reg[2]),
        .O(\block_index[23]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_34 
       (.I0(BLOCK_WIDTH[20]),
        .O(\block_index[23]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_35 
       (.I0(BLOCK_WIDTH[19]),
        .O(\block_index[23]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_36 
       (.I0(BLOCK_WIDTH[18]),
        .O(\block_index[23]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_37 
       (.I0(BLOCK_WIDTH[17]),
        .O(\block_index[23]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_38 
       (.I0(block_index[9]),
        .I1(sys_row1[9]),
        .I2(block_index[10]),
        .I3(sys_row1[10]),
        .I4(sys_row1[11]),
        .I5(block_index[11]),
        .O(\block_index[23]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_39 
       (.I0(block_index[6]),
        .I1(sys_row1[6]),
        .I2(block_index[7]),
        .I3(sys_row1[7]),
        .I4(sys_row1[8]),
        .I5(block_index[8]),
        .O(\block_index[23]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \block_index[23]_i_40 
       (.I0(block_index[3]),
        .I1(sys_row1[3]),
        .I2(block_index[4]),
        .I3(sys_row1[4]),
        .I4(sys_row1[5]),
        .I5(block_index[5]),
        .O(\block_index[23]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \block_index[23]_i_41 
       (.I0(BLOCK_NUM[0]),
        .I1(block_index[0]),
        .I2(block_index[2]),
        .I3(sys_row1[2]),
        .I4(block_index[1]),
        .I5(sys_row1[1]),
        .O(\block_index[23]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_44 
       (.I0(BLOCK_NUM[20]),
        .O(\block_index[23]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_45 
       (.I0(BLOCK_NUM[19]),
        .O(\block_index[23]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_46 
       (.I0(BLOCK_NUM[18]),
        .O(\block_index[23]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_47 
       (.I0(BLOCK_NUM[17]),
        .O(\block_index[23]_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_50 
       (.I0(BLOCK_WIDTH[16]),
        .O(\block_index[23]_i_50_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_51 
       (.I0(BLOCK_WIDTH[15]),
        .O(\block_index[23]_i_51_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_52 
       (.I0(BLOCK_WIDTH[14]),
        .O(\block_index[23]_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_53 
       (.I0(BLOCK_WIDTH[13]),
        .O(\block_index[23]_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_54 
       (.I0(BLOCK_WIDTH[12]),
        .O(\block_index[23]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_55 
       (.I0(BLOCK_WIDTH[11]),
        .O(\block_index[23]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_56 
       (.I0(BLOCK_WIDTH[10]),
        .O(\block_index[23]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_57 
       (.I0(BLOCK_WIDTH[9]),
        .O(\block_index[23]_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_60 
       (.I0(BLOCK_NUM[16]),
        .O(\block_index[23]_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_61 
       (.I0(BLOCK_NUM[15]),
        .O(\block_index[23]_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_62 
       (.I0(BLOCK_NUM[14]),
        .O(\block_index[23]_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_63 
       (.I0(BLOCK_NUM[13]),
        .O(\block_index[23]_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_64 
       (.I0(BLOCK_NUM[12]),
        .O(\block_index[23]_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_65 
       (.I0(BLOCK_NUM[11]),
        .O(\block_index[23]_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_66 
       (.I0(BLOCK_NUM[10]),
        .O(\block_index[23]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_67 
       (.I0(BLOCK_NUM[9]),
        .O(\block_index[23]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_68 
       (.I0(BLOCK_WIDTH[8]),
        .O(\block_index[23]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_69 
       (.I0(BLOCK_WIDTH[7]),
        .O(\block_index[23]_i_69_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_70 
       (.I0(BLOCK_WIDTH[6]),
        .O(\block_index[23]_i_70_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_71 
       (.I0(BLOCK_WIDTH[5]),
        .O(\block_index[23]_i_71_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_72 
       (.I0(BLOCK_WIDTH[4]),
        .O(\block_index[23]_i_72_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_73 
       (.I0(BLOCK_WIDTH[3]),
        .O(\block_index[23]_i_73_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_74 
       (.I0(BLOCK_WIDTH[2]),
        .O(\block_index[23]_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_75 
       (.I0(BLOCK_WIDTH[1]),
        .O(\block_index[23]_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_76 
       (.I0(BLOCK_NUM[8]),
        .O(\block_index[23]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_77 
       (.I0(BLOCK_NUM[7]),
        .O(\block_index[23]_i_77_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_78 
       (.I0(BLOCK_NUM[6]),
        .O(\block_index[23]_i_78_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_79 
       (.I0(BLOCK_NUM[5]),
        .O(\block_index[23]_i_79_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_80 
       (.I0(BLOCK_NUM[4]),
        .O(\block_index[23]_i_80_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_81 
       (.I0(BLOCK_NUM[3]),
        .O(\block_index[23]_i_81_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_82 
       (.I0(BLOCK_NUM[2]),
        .O(\block_index[23]_i_82_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[23]_i_83 
       (.I0(BLOCK_NUM[1]),
        .O(\block_index[23]_i_83_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_index[3]_i_2 
       (.I0(block_index[0]),
        .O(\block_index[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[0] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[3]_i_1_n_7 ),
        .Q(block_index[0]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[10] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[11]_i_1_n_5 ),
        .Q(block_index[10]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[11] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[11]_i_1_n_4 ),
        .Q(block_index[11]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[11]_i_1 
       (.CI(\block_index_reg[7]_i_1_n_0 ),
        .CO({\block_index_reg[11]_i_1_n_0 ,\NLW_block_index_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_index_reg[11]_i_1_n_4 ,\block_index_reg[11]_i_1_n_5 ,\block_index_reg[11]_i_1_n_6 ,\block_index_reg[11]_i_1_n_7 }),
        .S(block_index[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[12] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[15]_i_1_n_7 ),
        .Q(block_index[12]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[13] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[15]_i_1_n_6 ),
        .Q(block_index[13]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[14] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[15]_i_1_n_5 ),
        .Q(block_index[14]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[15] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[15]_i_1_n_4 ),
        .Q(block_index[15]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[15]_i_1 
       (.CI(\block_index_reg[11]_i_1_n_0 ),
        .CO({\block_index_reg[15]_i_1_n_0 ,\NLW_block_index_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_index_reg[15]_i_1_n_4 ,\block_index_reg[15]_i_1_n_5 ,\block_index_reg[15]_i_1_n_6 ,\block_index_reg[15]_i_1_n_7 }),
        .S(block_index[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[16] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[19]_i_1_n_7 ),
        .Q(block_index[16]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[17] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[19]_i_1_n_6 ),
        .Q(block_index[17]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[18] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[19]_i_1_n_5 ),
        .Q(block_index[18]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[19] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[19]_i_1_n_4 ),
        .Q(block_index[19]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[19]_i_1 
       (.CI(\block_index_reg[15]_i_1_n_0 ),
        .CO({\block_index_reg[19]_i_1_n_0 ,\NLW_block_index_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_index_reg[19]_i_1_n_4 ,\block_index_reg[19]_i_1_n_5 ,\block_index_reg[19]_i_1_n_6 ,\block_index_reg[19]_i_1_n_7 }),
        .S(block_index[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[1] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[3]_i_1_n_6 ),
        .Q(block_index[1]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[20] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[23]_i_3_n_7 ),
        .Q(block_index[20]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[21] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[23]_i_3_n_6 ),
        .Q(block_index[21]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[22] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[23]_i_3_n_5 ),
        .Q(block_index[22]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[23] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[23]_i_3_n_4 ),
        .Q(block_index[23]),
        .R(block_offset));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_10 
       (.CI(1'b0),
        .CO({\block_index_reg[23]_i_10_n_0 ,\NLW_block_index_reg[23]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_block_index_reg[23]_i_10_O_UNCONNECTED [3:0]),
        .S({\block_index[23]_i_28_n_0 ,\block_index[23]_i_29_n_0 ,\block_index[23]_i_30_n_0 ,\block_index[23]_i_31_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_15 
       (.CI(\block_index_reg[23]_i_32_n_0 ),
        .CO({\block_index_reg[23]_i_15_n_0 ,\NLW_block_index_reg[23]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[20:17]),
        .O(col1[20:17]),
        .S({\block_index[23]_i_34_n_0 ,\block_index[23]_i_35_n_0 ,\block_index[23]_i_36_n_0 ,\block_index[23]_i_37_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_19 
       (.CI(1'b0),
        .CO({\block_index_reg[23]_i_19_n_0 ,\NLW_block_index_reg[23]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_block_index_reg[23]_i_19_O_UNCONNECTED [3:0]),
        .S({\block_index[23]_i_38_n_0 ,\block_index[23]_i_39_n_0 ,\block_index[23]_i_40_n_0 ,\block_index[23]_i_41_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_24 
       (.CI(\block_index_reg[23]_i_42_n_0 ),
        .CO({\block_index_reg[23]_i_24_n_0 ,\NLW_block_index_reg[23]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[20:17]),
        .O(sys_row1[20:17]),
        .S({\block_index[23]_i_44_n_0 ,\block_index[23]_i_45_n_0 ,\block_index[23]_i_46_n_0 ,\block_index[23]_i_47_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_3 
       (.CI(\block_index_reg[19]_i_1_n_0 ),
        .CO(\NLW_block_index_reg[23]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_index_reg[23]_i_3_n_4 ,\block_index_reg[23]_i_3_n_5 ,\block_index_reg[23]_i_3_n_6 ,\block_index_reg[23]_i_3_n_7 }),
        .S(block_index[23:20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_32 
       (.CI(\block_index_reg[23]_i_33_n_0 ),
        .CO({\block_index_reg[23]_i_32_n_0 ,\NLW_block_index_reg[23]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[16:13]),
        .O(col1[16:13]),
        .S({\block_index[23]_i_50_n_0 ,\block_index[23]_i_51_n_0 ,\block_index[23]_i_52_n_0 ,\block_index[23]_i_53_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_33 
       (.CI(\block_index_reg[23]_i_48_n_0 ),
        .CO({\block_index_reg[23]_i_33_n_0 ,\NLW_block_index_reg[23]_i_33_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[12:9]),
        .O(col1[12:9]),
        .S({\block_index[23]_i_54_n_0 ,\block_index[23]_i_55_n_0 ,\block_index[23]_i_56_n_0 ,\block_index[23]_i_57_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_4 
       (.CI(\block_index_reg[23]_i_6_n_0 ),
        .CO({\NLW_block_index_reg[23]_i_4_CO_UNCONNECTED [3],col0,\NLW_block_index_reg[23]_i_4_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_block_index_reg[23]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\block_index_reg[23]_i_7_n_0 ,\block_index_reg[23]_i_7_n_0 ,\block_index_reg[23]_i_7_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_42 
       (.CI(\block_index_reg[23]_i_43_n_0 ),
        .CO({\block_index_reg[23]_i_42_n_0 ,\NLW_block_index_reg[23]_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[16:13]),
        .O(sys_row1[16:13]),
        .S({\block_index[23]_i_60_n_0 ,\block_index[23]_i_61_n_0 ,\block_index[23]_i_62_n_0 ,\block_index[23]_i_63_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_43 
       (.CI(\block_index_reg[23]_i_58_n_0 ),
        .CO({\block_index_reg[23]_i_43_n_0 ,\NLW_block_index_reg[23]_i_43_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[12:9]),
        .O(sys_row1[12:9]),
        .S({\block_index[23]_i_64_n_0 ,\block_index[23]_i_65_n_0 ,\block_index[23]_i_66_n_0 ,\block_index[23]_i_67_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_48 
       (.CI(\block_index_reg[23]_i_49_n_0 ),
        .CO({\block_index_reg[23]_i_48_n_0 ,\NLW_block_index_reg[23]_i_48_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[8:5]),
        .O(col1[8:5]),
        .S({\block_index[23]_i_68_n_0 ,\block_index[23]_i_69_n_0 ,\block_index[23]_i_70_n_0 ,\block_index[23]_i_71_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_49 
       (.CI(1'b0),
        .CO({\block_index_reg[23]_i_49_n_0 ,\NLW_block_index_reg[23]_i_49_CO_UNCONNECTED [2:0]}),
        .CYINIT(BLOCK_WIDTH[0]),
        .DI(BLOCK_WIDTH[4:1]),
        .O(col1[4:1]),
        .S({\block_index[23]_i_72_n_0 ,\block_index[23]_i_73_n_0 ,\block_index[23]_i_74_n_0 ,\block_index[23]_i_75_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_5 
       (.CI(\block_index_reg[23]_i_8_n_0 ),
        .CO({\NLW_block_index_reg[23]_i_5_CO_UNCONNECTED [3],sys_row0,\NLW_block_index_reg[23]_i_5_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_block_index_reg[23]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\block_index_reg[23]_i_9_n_0 ,\block_index_reg[23]_i_9_n_0 ,\block_index_reg[23]_i_9_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_58 
       (.CI(\block_index_reg[23]_i_59_n_0 ),
        .CO({\block_index_reg[23]_i_58_n_0 ,\NLW_block_index_reg[23]_i_58_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[8:5]),
        .O(sys_row1[8:5]),
        .S({\block_index[23]_i_76_n_0 ,\block_index[23]_i_77_n_0 ,\block_index[23]_i_78_n_0 ,\block_index[23]_i_79_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_59 
       (.CI(1'b0),
        .CO({\block_index_reg[23]_i_59_n_0 ,\NLW_block_index_reg[23]_i_59_CO_UNCONNECTED [2:0]}),
        .CYINIT(BLOCK_NUM[0]),
        .DI(BLOCK_NUM[4:1]),
        .O(sys_row1[4:1]),
        .S({\block_index[23]_i_80_n_0 ,\block_index[23]_i_81_n_0 ,\block_index[23]_i_82_n_0 ,\block_index[23]_i_83_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_6 
       (.CI(\block_index_reg[23]_i_10_n_0 ),
        .CO({\block_index_reg[23]_i_6_n_0 ,\NLW_block_index_reg[23]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_block_index_reg[23]_i_6_O_UNCONNECTED [3:0]),
        .S({\block_index[23]_i_11_n_0 ,\block_index[23]_i_12_n_0 ,\block_index[23]_i_13_n_0 ,\block_index[23]_i_14_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_7 
       (.CI(\block_index_reg[23]_i_15_n_0 ),
        .CO({\block_index_reg[23]_i_7_n_0 ,\NLW_block_index_reg[23]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,BLOCK_WIDTH[23:21]}),
        .O({\NLW_block_index_reg[23]_i_7_O_UNCONNECTED [3],col1[23:21]}),
        .S({1'b1,\block_index[23]_i_16_n_0 ,\block_index[23]_i_17_n_0 ,\block_index[23]_i_18_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_8 
       (.CI(\block_index_reg[23]_i_19_n_0 ),
        .CO({\block_index_reg[23]_i_8_n_0 ,\NLW_block_index_reg[23]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_block_index_reg[23]_i_8_O_UNCONNECTED [3:0]),
        .S({\block_index[23]_i_20_n_0 ,\block_index[23]_i_21_n_0 ,\block_index[23]_i_22_n_0 ,\block_index[23]_i_23_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[23]_i_9 
       (.CI(\block_index_reg[23]_i_24_n_0 ),
        .CO({\block_index_reg[23]_i_9_n_0 ,\NLW_block_index_reg[23]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,BLOCK_NUM[23:21]}),
        .O({\NLW_block_index_reg[23]_i_9_O_UNCONNECTED [3],sys_row1[23:21]}),
        .S({1'b1,\block_index[23]_i_25_n_0 ,\block_index[23]_i_26_n_0 ,\block_index[23]_i_27_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[2] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[3]_i_1_n_5 ),
        .Q(block_index[2]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[3] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[3]_i_1_n_4 ),
        .Q(block_index[3]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\block_index_reg[3]_i_1_n_0 ,\NLW_block_index_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\block_index_reg[3]_i_1_n_4 ,\block_index_reg[3]_i_1_n_5 ,\block_index_reg[3]_i_1_n_6 ,\block_index_reg[3]_i_1_n_7 }),
        .S({block_index[3:1],\block_index[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[4] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[7]_i_1_n_7 ),
        .Q(block_index[4]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[5] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[7]_i_1_n_6 ),
        .Q(block_index[5]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[6] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[7]_i_1_n_5 ),
        .Q(block_index[6]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[7] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[7]_i_1_n_4 ),
        .Q(block_index[7]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_index_reg[7]_i_1 
       (.CI(\block_index_reg[3]_i_1_n_0 ),
        .CO({\block_index_reg[7]_i_1_n_0 ,\NLW_block_index_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_index_reg[7]_i_1_n_4 ,\block_index_reg[7]_i_1_n_5 ,\block_index_reg[7]_i_1_n_6 ,\block_index_reg[7]_i_1_n_7 }),
        .S(block_index[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[8] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[11]_i_1_n_7 ),
        .Q(block_index[8]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_index_reg[9] 
       (.C(clk),
        .CE(col),
        .D(\block_index_reg[11]_i_1_n_6 ),
        .Q(block_index[9]),
        .R(block_offset));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[0]_i_2 
       (.I0(M1xBLOCK_WIDTHdN1[3]),
        .I1(block_offset_reg[3]),
        .O(\block_offset[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[0]_i_3 
       (.I0(M1xBLOCK_WIDTHdN1[2]),
        .I1(block_offset_reg[2]),
        .O(\block_offset[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[0]_i_4 
       (.I0(M1xBLOCK_WIDTHdN1[1]),
        .I1(block_offset_reg[1]),
        .O(\block_offset[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[0]_i_5 
       (.I0(M1xBLOCK_WIDTHdN1[0]),
        .I1(block_offset_reg[0]),
        .O(\block_offset[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[12]_i_2 
       (.I0(M1xBLOCK_WIDTHdN1[15]),
        .I1(block_offset_reg[15]),
        .O(\block_offset[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[12]_i_3 
       (.I0(M1xBLOCK_WIDTHdN1[14]),
        .I1(block_offset_reg[14]),
        .O(\block_offset[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[12]_i_4 
       (.I0(M1xBLOCK_WIDTHdN1[13]),
        .I1(block_offset_reg[13]),
        .O(\block_offset[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[12]_i_5 
       (.I0(M1xBLOCK_WIDTHdN1[12]),
        .I1(block_offset_reg[12]),
        .O(\block_offset[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[16]_i_2 
       (.I0(M1xBLOCK_WIDTHdN1[19]),
        .I1(block_offset_reg[19]),
        .O(\block_offset[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[16]_i_3 
       (.I0(M1xBLOCK_WIDTHdN1[18]),
        .I1(block_offset_reg[18]),
        .O(\block_offset[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[16]_i_4 
       (.I0(M1xBLOCK_WIDTHdN1[17]),
        .I1(block_offset_reg[17]),
        .O(\block_offset[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[16]_i_5 
       (.I0(M1xBLOCK_WIDTHdN1[16]),
        .I1(block_offset_reg[16]),
        .O(\block_offset[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[20]_i_2 
       (.I0(block_offset_reg[23]),
        .I1(M1xBLOCK_WIDTHdN1[23]),
        .O(\block_offset[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[20]_i_3 
       (.I0(M1xBLOCK_WIDTHdN1[22]),
        .I1(block_offset_reg[22]),
        .O(\block_offset[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[20]_i_4 
       (.I0(M1xBLOCK_WIDTHdN1[21]),
        .I1(block_offset_reg[21]),
        .O(\block_offset[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[20]_i_5 
       (.I0(M1xBLOCK_WIDTHdN1[20]),
        .I1(block_offset_reg[20]),
        .O(\block_offset[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[4]_i_2 
       (.I0(M1xBLOCK_WIDTHdN1[7]),
        .I1(block_offset_reg[7]),
        .O(\block_offset[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[4]_i_3 
       (.I0(M1xBLOCK_WIDTHdN1[6]),
        .I1(block_offset_reg[6]),
        .O(\block_offset[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[4]_i_4 
       (.I0(M1xBLOCK_WIDTHdN1[5]),
        .I1(block_offset_reg[5]),
        .O(\block_offset[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[4]_i_5 
       (.I0(M1xBLOCK_WIDTHdN1[4]),
        .I1(block_offset_reg[4]),
        .O(\block_offset[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[8]_i_2 
       (.I0(M1xBLOCK_WIDTHdN1[11]),
        .I1(block_offset_reg[11]),
        .O(\block_offset[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[8]_i_3 
       (.I0(M1xBLOCK_WIDTHdN1[10]),
        .I1(block_offset_reg[10]),
        .O(\block_offset[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[8]_i_4 
       (.I0(M1xBLOCK_WIDTHdN1[9]),
        .I1(block_offset_reg[9]),
        .O(\block_offset[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \block_offset[8]_i_5 
       (.I0(M1xBLOCK_WIDTHdN1[8]),
        .I1(block_offset_reg[8]),
        .O(\block_offset[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[0] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[0]_i_1_n_7 ),
        .Q(block_offset_reg[0]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_offset_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\block_offset_reg[0]_i_1_n_0 ,\NLW_block_offset_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1xBLOCK_WIDTHdN1[3:0]),
        .O({\block_offset_reg[0]_i_1_n_4 ,\block_offset_reg[0]_i_1_n_5 ,\block_offset_reg[0]_i_1_n_6 ,\block_offset_reg[0]_i_1_n_7 }),
        .S({\block_offset[0]_i_2_n_0 ,\block_offset[0]_i_3_n_0 ,\block_offset[0]_i_4_n_0 ,\block_offset[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[10] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[8]_i_1_n_5 ),
        .Q(block_offset_reg[10]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[11] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[8]_i_1_n_4 ),
        .Q(block_offset_reg[11]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[12] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[12]_i_1_n_7 ),
        .Q(block_offset_reg[12]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_offset_reg[12]_i_1 
       (.CI(\block_offset_reg[8]_i_1_n_0 ),
        .CO({\block_offset_reg[12]_i_1_n_0 ,\NLW_block_offset_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1xBLOCK_WIDTHdN1[15:12]),
        .O({\block_offset_reg[12]_i_1_n_4 ,\block_offset_reg[12]_i_1_n_5 ,\block_offset_reg[12]_i_1_n_6 ,\block_offset_reg[12]_i_1_n_7 }),
        .S({\block_offset[12]_i_2_n_0 ,\block_offset[12]_i_3_n_0 ,\block_offset[12]_i_4_n_0 ,\block_offset[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[13] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[12]_i_1_n_6 ),
        .Q(block_offset_reg[13]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[14] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[12]_i_1_n_5 ),
        .Q(block_offset_reg[14]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[15] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[12]_i_1_n_4 ),
        .Q(block_offset_reg[15]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[16] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[16]_i_1_n_7 ),
        .Q(block_offset_reg[16]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_offset_reg[16]_i_1 
       (.CI(\block_offset_reg[12]_i_1_n_0 ),
        .CO({\block_offset_reg[16]_i_1_n_0 ,\NLW_block_offset_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1xBLOCK_WIDTHdN1[19:16]),
        .O({\block_offset_reg[16]_i_1_n_4 ,\block_offset_reg[16]_i_1_n_5 ,\block_offset_reg[16]_i_1_n_6 ,\block_offset_reg[16]_i_1_n_7 }),
        .S({\block_offset[16]_i_2_n_0 ,\block_offset[16]_i_3_n_0 ,\block_offset[16]_i_4_n_0 ,\block_offset[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[17] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[16]_i_1_n_6 ),
        .Q(block_offset_reg[17]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[18] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[16]_i_1_n_5 ),
        .Q(block_offset_reg[18]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[19] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[16]_i_1_n_4 ),
        .Q(block_offset_reg[19]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[1] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[0]_i_1_n_6 ),
        .Q(block_offset_reg[1]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[20] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[20]_i_1_n_7 ),
        .Q(block_offset_reg[20]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_offset_reg[20]_i_1 
       (.CI(\block_offset_reg[16]_i_1_n_0 ),
        .CO(\NLW_block_offset_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,M1xBLOCK_WIDTHdN1[22:20]}),
        .O({\block_offset_reg[20]_i_1_n_4 ,\block_offset_reg[20]_i_1_n_5 ,\block_offset_reg[20]_i_1_n_6 ,\block_offset_reg[20]_i_1_n_7 }),
        .S({\block_offset[20]_i_2_n_0 ,\block_offset[20]_i_3_n_0 ,\block_offset[20]_i_4_n_0 ,\block_offset[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[21] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[20]_i_1_n_6 ),
        .Q(block_offset_reg[21]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[22] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[20]_i_1_n_5 ),
        .Q(block_offset_reg[22]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[23] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[20]_i_1_n_4 ),
        .Q(block_offset_reg[23]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[2] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[0]_i_1_n_5 ),
        .Q(block_offset_reg[2]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[3] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[0]_i_1_n_4 ),
        .Q(block_offset_reg[3]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[4] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[4]_i_1_n_7 ),
        .Q(block_offset_reg[4]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_offset_reg[4]_i_1 
       (.CI(\block_offset_reg[0]_i_1_n_0 ),
        .CO({\block_offset_reg[4]_i_1_n_0 ,\NLW_block_offset_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1xBLOCK_WIDTHdN1[7:4]),
        .O({\block_offset_reg[4]_i_1_n_4 ,\block_offset_reg[4]_i_1_n_5 ,\block_offset_reg[4]_i_1_n_6 ,\block_offset_reg[4]_i_1_n_7 }),
        .S({\block_offset[4]_i_2_n_0 ,\block_offset[4]_i_3_n_0 ,\block_offset[4]_i_4_n_0 ,\block_offset[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[5] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[4]_i_1_n_6 ),
        .Q(block_offset_reg[5]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[6] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[4]_i_1_n_5 ),
        .Q(block_offset_reg[6]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[7] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[4]_i_1_n_4 ),
        .Q(block_offset_reg[7]),
        .R(block_offset));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[8] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[8]_i_1_n_7 ),
        .Q(block_offset_reg[8]),
        .R(block_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_offset_reg[8]_i_1 
       (.CI(\block_offset_reg[4]_i_1_n_0 ),
        .CO({\block_offset_reg[8]_i_1_n_0 ,\NLW_block_offset_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M1xBLOCK_WIDTHdN1[11:8]),
        .O({\block_offset_reg[8]_i_1_n_4 ,\block_offset_reg[8]_i_1_n_5 ,\block_offset_reg[8]_i_1_n_6 ,\block_offset_reg[8]_i_1_n_7 }),
        .S({\block_offset[8]_i_2_n_0 ,\block_offset[8]_i_3_n_0 ,\block_offset[8]_i_4_n_0 ,\block_offset[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_offset_reg[9] 
       (.C(clk),
        .CE(col),
        .D(\block_offset_reg[8]_i_1_n_6 ),
        .Q(block_offset_reg[9]),
        .R(block_offset));
  LUT3 #(
    .INIT(8'hEA)) 
    \col[0]_i_1 
       (.I0(rst),
        .I1(col0),
        .I2(valid_D),
        .O(mini_offset));
  LUT1 #(
    .INIT(2'h1)) 
    \col[0]_i_3 
       (.I0(col_reg[0]),
        .O(\col[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[0] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[0]_i_2_n_7 ),
        .Q(col_reg[0]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \col_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\col_reg[0]_i_2_n_0 ,\NLW_col_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\col_reg[0]_i_2_n_4 ,\col_reg[0]_i_2_n_5 ,\col_reg[0]_i_2_n_6 ,\col_reg[0]_i_2_n_7 }),
        .S({col_reg[3:1],\col[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[10] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[8]_i_1_n_5 ),
        .Q(col_reg[10]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[11] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[8]_i_1_n_4 ),
        .Q(col_reg[11]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[12] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[12]_i_1_n_7 ),
        .Q(col_reg[12]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \col_reg[12]_i_1 
       (.CI(\col_reg[8]_i_1_n_0 ),
        .CO({\col_reg[12]_i_1_n_0 ,\NLW_col_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\col_reg[12]_i_1_n_4 ,\col_reg[12]_i_1_n_5 ,\col_reg[12]_i_1_n_6 ,\col_reg[12]_i_1_n_7 }),
        .S(col_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[13] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[12]_i_1_n_6 ),
        .Q(col_reg[13]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[14] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[12]_i_1_n_5 ),
        .Q(col_reg[14]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[15] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[12]_i_1_n_4 ),
        .Q(col_reg[15]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[16] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[16]_i_1_n_7 ),
        .Q(col_reg[16]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \col_reg[16]_i_1 
       (.CI(\col_reg[12]_i_1_n_0 ),
        .CO({\col_reg[16]_i_1_n_0 ,\NLW_col_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\col_reg[16]_i_1_n_4 ,\col_reg[16]_i_1_n_5 ,\col_reg[16]_i_1_n_6 ,\col_reg[16]_i_1_n_7 }),
        .S(col_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[17] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[16]_i_1_n_6 ),
        .Q(col_reg[17]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[18] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[16]_i_1_n_5 ),
        .Q(col_reg[18]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[19] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[16]_i_1_n_4 ),
        .Q(col_reg[19]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[1] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[0]_i_2_n_6 ),
        .Q(col_reg[1]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[20] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[20]_i_1_n_7 ),
        .Q(col_reg[20]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \col_reg[20]_i_1 
       (.CI(\col_reg[16]_i_1_n_0 ),
        .CO(\NLW_col_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\col_reg[20]_i_1_n_4 ,\col_reg[20]_i_1_n_5 ,\col_reg[20]_i_1_n_6 ,\col_reg[20]_i_1_n_7 }),
        .S(col_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[21] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[20]_i_1_n_6 ),
        .Q(col_reg[21]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[22] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[20]_i_1_n_5 ),
        .Q(col_reg[22]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[23] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[20]_i_1_n_4 ),
        .Q(col_reg[23]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[2] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[0]_i_2_n_5 ),
        .Q(col_reg[2]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[3] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[0]_i_2_n_4 ),
        .Q(col_reg[3]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[4] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[4]_i_1_n_7 ),
        .Q(col_reg[4]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \col_reg[4]_i_1 
       (.CI(\col_reg[0]_i_2_n_0 ),
        .CO({\col_reg[4]_i_1_n_0 ,\NLW_col_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\col_reg[4]_i_1_n_4 ,\col_reg[4]_i_1_n_5 ,\col_reg[4]_i_1_n_6 ,\col_reg[4]_i_1_n_7 }),
        .S(col_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[5] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[4]_i_1_n_6 ),
        .Q(col_reg[5]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[6] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[4]_i_1_n_5 ),
        .Q(col_reg[6]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[7] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[4]_i_1_n_4 ),
        .Q(col_reg[7]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[8] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[8]_i_1_n_7 ),
        .Q(col_reg[8]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \col_reg[8]_i_1 
       (.CI(\col_reg[4]_i_1_n_0 ),
        .CO({\col_reg[8]_i_1_n_0 ,\NLW_col_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\col_reg[8]_i_1_n_4 ,\col_reg[8]_i_1_n_5 ,\col_reg[8]_i_1_n_6 ,\col_reg[8]_i_1_n_7 }),
        .S(col_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[9] 
       (.C(clk),
        .CE(valid_D),
        .D(\col_reg[8]_i_1_n_6 ),
        .Q(col_reg[9]),
        .R(mini_offset));
  LUT1 #(
    .INIT(2'h1)) 
    \mini_col[0]_i_1 
       (.I0(mini_col[0]),
        .O(\mini_col[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mini_col[1]_i_1 
       (.I0(mini_col[0]),
        .I1(mini_col[1]),
        .O(\mini_col[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mini_col[2]_i_1 
       (.I0(mini_col[2]),
        .I1(mini_col[1]),
        .I2(mini_col[0]),
        .O(\mini_col[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mini_col_reg[0] 
       (.C(clk),
        .CE(valid_D),
        .D(\mini_col[0]_i_1_n_0 ),
        .Q(mini_col[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mini_col_reg[1] 
       (.C(clk),
        .CE(valid_D),
        .D(\mini_col[1]_i_1_n_0 ),
        .Q(mini_col[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mini_col_reg[2] 
       (.C(clk),
        .CE(valid_D),
        .D(\mini_col[2]_i_1_n_0 ),
        .Q(mini_col[2]),
        .R(rst));
  LUT4 #(
    .INIT(16'h8000)) 
    \mini_offset[3]_i_1 
       (.I0(valid_D),
        .I1(mini_col[0]),
        .I2(mini_col[1]),
        .I3(mini_col[2]),
        .O(\mini_offset[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mini_offset[3]_i_3 
       (.I0(mini_offset_reg[3]),
        .O(\mini_offset[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[10] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[7]_i_1_n_4 ),
        .Q(mini_offset_reg[10]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[11] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[11]_i_1_n_7 ),
        .Q(mini_offset_reg[11]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \mini_offset_reg[11]_i_1 
       (.CI(\mini_offset_reg[7]_i_1_n_0 ),
        .CO({\mini_offset_reg[11]_i_1_n_0 ,\NLW_mini_offset_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mini_offset_reg[11]_i_1_n_4 ,\mini_offset_reg[11]_i_1_n_5 ,\mini_offset_reg[11]_i_1_n_6 ,\mini_offset_reg[11]_i_1_n_7 }),
        .S(mini_offset_reg[14:11]));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[12] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[11]_i_1_n_6 ),
        .Q(mini_offset_reg[12]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[13] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[11]_i_1_n_5 ),
        .Q(mini_offset_reg[13]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[14] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[11]_i_1_n_4 ),
        .Q(mini_offset_reg[14]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[15] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[15]_i_1_n_7 ),
        .Q(mini_offset_reg[15]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \mini_offset_reg[15]_i_1 
       (.CI(\mini_offset_reg[11]_i_1_n_0 ),
        .CO({\mini_offset_reg[15]_i_1_n_0 ,\NLW_mini_offset_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mini_offset_reg[15]_i_1_n_4 ,\mini_offset_reg[15]_i_1_n_5 ,\mini_offset_reg[15]_i_1_n_6 ,\mini_offset_reg[15]_i_1_n_7 }),
        .S(mini_offset_reg[18:15]));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[16] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[15]_i_1_n_6 ),
        .Q(mini_offset_reg[16]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[17] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[15]_i_1_n_5 ),
        .Q(mini_offset_reg[17]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[18] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[15]_i_1_n_4 ),
        .Q(mini_offset_reg[18]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[19] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[19]_i_1_n_7 ),
        .Q(mini_offset_reg[19]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \mini_offset_reg[19]_i_1 
       (.CI(\mini_offset_reg[15]_i_1_n_0 ),
        .CO({\mini_offset_reg[19]_i_1_n_0 ,\NLW_mini_offset_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mini_offset_reg[19]_i_1_n_4 ,\mini_offset_reg[19]_i_1_n_5 ,\mini_offset_reg[19]_i_1_n_6 ,\mini_offset_reg[19]_i_1_n_7 }),
        .S(mini_offset_reg[22:19]));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[20] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[19]_i_1_n_6 ),
        .Q(mini_offset_reg[20]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[21] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[19]_i_1_n_5 ),
        .Q(mini_offset_reg[21]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[22] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[19]_i_1_n_4 ),
        .Q(mini_offset_reg[22]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[23] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[23]_i_1_n_7 ),
        .Q(mini_offset_reg[23]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mini_offset_reg[23]_i_1 
       (.CI(\mini_offset_reg[19]_i_1_n_0 ),
        .CO(\NLW_mini_offset_reg[23]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mini_offset_reg[23]_i_1_O_UNCONNECTED [3:1],\mini_offset_reg[23]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,mini_offset_reg[23]}));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[3] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[3]_i_2_n_7 ),
        .Q(mini_offset_reg[3]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \mini_offset_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\mini_offset_reg[3]_i_2_n_0 ,\NLW_mini_offset_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\mini_offset_reg[3]_i_2_n_4 ,\mini_offset_reg[3]_i_2_n_5 ,\mini_offset_reg[3]_i_2_n_6 ,\mini_offset_reg[3]_i_2_n_7 }),
        .S({mini_offset_reg[6:4],\mini_offset[3]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[4] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[3]_i_2_n_6 ),
        .Q(mini_offset_reg[4]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[5] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[3]_i_2_n_5 ),
        .Q(mini_offset_reg[5]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[6] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[3]_i_2_n_4 ),
        .Q(mini_offset_reg[6]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[7] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[7]_i_1_n_7 ),
        .Q(mini_offset_reg[7]),
        .R(mini_offset));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \mini_offset_reg[7]_i_1 
       (.CI(\mini_offset_reg[3]_i_2_n_0 ),
        .CO({\mini_offset_reg[7]_i_1_n_0 ,\NLW_mini_offset_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mini_offset_reg[7]_i_1_n_4 ,\mini_offset_reg[7]_i_1_n_5 ,\mini_offset_reg[7]_i_1_n_6 ,\mini_offset_reg[7]_i_1_n_7 }),
        .S(mini_offset_reg[10:7]));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[8] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[7]_i_1_n_6 ),
        .Q(mini_offset_reg[8]),
        .R(mini_offset));
  FDRE #(
    .INIT(1'b0)) 
    \mini_offset_reg[9] 
       (.C(clk),
        .CE(\mini_offset[3]_i_1_n_0 ),
        .D(\mini_offset_reg[7]_i_1_n_5 ),
        .Q(mini_offset_reg[9]),
        .R(mini_offset));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \offset[0]_i_1 
       (.I0(valid_D),
        .I1(col0),
        .I2(sys_row0),
        .I3(\sys_row_reg_n_0_[0] ),
        .I4(\sys_row_reg_n_0_[1] ),
        .I5(\sys_row_reg_n_0_[2] ),
        .O(offset));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_3 
       (.I0(BLOCK_WIDTH[3]),
        .I1(offset_reg[3]),
        .O(\offset[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_4 
       (.I0(BLOCK_WIDTH[2]),
        .I1(offset_reg[2]),
        .O(\offset[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_5 
       (.I0(BLOCK_WIDTH[1]),
        .I1(offset_reg[1]),
        .O(\offset[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_6 
       (.I0(BLOCK_WIDTH[0]),
        .I1(offset_reg[0]),
        .O(\offset[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_2 
       (.I0(BLOCK_WIDTH[15]),
        .I1(offset_reg[15]),
        .O(\offset[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_3 
       (.I0(BLOCK_WIDTH[14]),
        .I1(offset_reg[14]),
        .O(\offset[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_4 
       (.I0(BLOCK_WIDTH[13]),
        .I1(offset_reg[13]),
        .O(\offset[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_5 
       (.I0(BLOCK_WIDTH[12]),
        .I1(offset_reg[12]),
        .O(\offset[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_2 
       (.I0(BLOCK_WIDTH[19]),
        .I1(offset_reg[19]),
        .O(\offset[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_3 
       (.I0(BLOCK_WIDTH[18]),
        .I1(offset_reg[18]),
        .O(\offset[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_4 
       (.I0(BLOCK_WIDTH[17]),
        .I1(offset_reg[17]),
        .O(\offset[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_5 
       (.I0(BLOCK_WIDTH[16]),
        .I1(offset_reg[16]),
        .O(\offset[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_2 
       (.I0(BLOCK_WIDTH[23]),
        .I1(offset_reg[23]),
        .O(\offset[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_3 
       (.I0(BLOCK_WIDTH[22]),
        .I1(offset_reg[22]),
        .O(\offset[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_4 
       (.I0(BLOCK_WIDTH[21]),
        .I1(offset_reg[21]),
        .O(\offset[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_5 
       (.I0(BLOCK_WIDTH[20]),
        .I1(offset_reg[20]),
        .O(\offset[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_2 
       (.I0(BLOCK_WIDTH[7]),
        .I1(offset_reg[7]),
        .O(\offset[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_3 
       (.I0(BLOCK_WIDTH[6]),
        .I1(offset_reg[6]),
        .O(\offset[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_4 
       (.I0(BLOCK_WIDTH[5]),
        .I1(offset_reg[5]),
        .O(\offset[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_5 
       (.I0(BLOCK_WIDTH[4]),
        .I1(offset_reg[4]),
        .O(\offset[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_2 
       (.I0(BLOCK_WIDTH[11]),
        .I1(offset_reg[11]),
        .O(\offset[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_3 
       (.I0(BLOCK_WIDTH[10]),
        .I1(offset_reg[10]),
        .O(\offset[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_4 
       (.I0(BLOCK_WIDTH[9]),
        .I1(offset_reg[9]),
        .O(\offset[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_5 
       (.I0(BLOCK_WIDTH[8]),
        .I1(offset_reg[8]),
        .O(\offset[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[0] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_2_n_7 ),
        .Q(offset_reg[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\offset_reg[0]_i_2_n_0 ,\NLW_offset_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[3:0]),
        .O({\offset_reg[0]_i_2_n_4 ,\offset_reg[0]_i_2_n_5 ,\offset_reg[0]_i_2_n_6 ,\offset_reg[0]_i_2_n_7 }),
        .S({\offset[0]_i_3_n_0 ,\offset[0]_i_4_n_0 ,\offset[0]_i_5_n_0 ,\offset[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[10] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_5 ),
        .Q(offset_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[11] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_4 ),
        .Q(offset_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[12] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_7 ),
        .Q(offset_reg[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[12]_i_1 
       (.CI(\offset_reg[8]_i_1_n_0 ),
        .CO({\offset_reg[12]_i_1_n_0 ,\NLW_offset_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[15:12]),
        .O({\offset_reg[12]_i_1_n_4 ,\offset_reg[12]_i_1_n_5 ,\offset_reg[12]_i_1_n_6 ,\offset_reg[12]_i_1_n_7 }),
        .S({\offset[12]_i_2_n_0 ,\offset[12]_i_3_n_0 ,\offset[12]_i_4_n_0 ,\offset[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[13] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_6 ),
        .Q(offset_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[14] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_5 ),
        .Q(offset_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[15] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_4 ),
        .Q(offset_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[16] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_7 ),
        .Q(offset_reg[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[16]_i_1 
       (.CI(\offset_reg[12]_i_1_n_0 ),
        .CO({\offset_reg[16]_i_1_n_0 ,\NLW_offset_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[19:16]),
        .O({\offset_reg[16]_i_1_n_4 ,\offset_reg[16]_i_1_n_5 ,\offset_reg[16]_i_1_n_6 ,\offset_reg[16]_i_1_n_7 }),
        .S({\offset[16]_i_2_n_0 ,\offset[16]_i_3_n_0 ,\offset[16]_i_4_n_0 ,\offset[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[17] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_6 ),
        .Q(offset_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[18] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_5 ),
        .Q(offset_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[19] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_4 ),
        .Q(offset_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[1] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_2_n_6 ),
        .Q(offset_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[20] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_7 ),
        .Q(offset_reg[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[20]_i_1 
       (.CI(\offset_reg[16]_i_1_n_0 ),
        .CO(\NLW_offset_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,BLOCK_WIDTH[22:20]}),
        .O({\offset_reg[20]_i_1_n_4 ,\offset_reg[20]_i_1_n_5 ,\offset_reg[20]_i_1_n_6 ,\offset_reg[20]_i_1_n_7 }),
        .S({\offset[20]_i_2_n_0 ,\offset[20]_i_3_n_0 ,\offset[20]_i_4_n_0 ,\offset[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[21] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_6 ),
        .Q(offset_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[22] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_5 ),
        .Q(offset_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[23] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_4 ),
        .Q(offset_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[2] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_2_n_5 ),
        .Q(offset_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[3] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_2_n_4 ),
        .Q(offset_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[4] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_7 ),
        .Q(offset_reg[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[4]_i_1 
       (.CI(\offset_reg[0]_i_2_n_0 ),
        .CO({\offset_reg[4]_i_1_n_0 ,\NLW_offset_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[7:4]),
        .O({\offset_reg[4]_i_1_n_4 ,\offset_reg[4]_i_1_n_5 ,\offset_reg[4]_i_1_n_6 ,\offset_reg[4]_i_1_n_7 }),
        .S({\offset[4]_i_2_n_0 ,\offset[4]_i_3_n_0 ,\offset[4]_i_4_n_0 ,\offset[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[5] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_6 ),
        .Q(offset_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[6] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_5 ),
        .Q(offset_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[7] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_4 ),
        .Q(offset_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[8] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_7 ),
        .Q(offset_reg[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[8]_i_1 
       (.CI(\offset_reg[4]_i_1_n_0 ),
        .CO({\offset_reg[8]_i_1_n_0 ,\NLW_offset_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTH[11:8]),
        .O({\offset_reg[8]_i_1_n_4 ,\offset_reg[8]_i_1_n_5 ,\offset_reg[8]_i_1_n_6 ,\offset_reg[8]_i_1_n_7 }),
        .S({\offset[8]_i_2_n_0 ,\offset[8]_i_3_n_0 ,\offset[8]_i_4_n_0 ,\offset[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[9] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_6 ),
        .Q(offset_reg[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'hEA)) 
    \phase[0]_i_1 
       (.I0(rst),
        .I1(offset),
        .I2(phase0),
        .O(\phase[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[0]_i_3 
       (.I0(phase_reg[0]),
        .O(\phase[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[0]_i_2_n_7 ),
        .Q(phase_reg[0]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \phase_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\phase_reg[0]_i_2_n_0 ,\NLW_phase_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\phase_reg[0]_i_2_n_4 ,\phase_reg[0]_i_2_n_5 ,\phase_reg[0]_i_2_n_6 ,\phase_reg[0]_i_2_n_7 }),
        .S({phase_reg[3:1],\phase[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[10] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[8]_i_1_n_5 ),
        .Q(phase_reg[10]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[11] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[8]_i_1_n_4 ),
        .Q(phase_reg[11]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[12] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[12]_i_1_n_7 ),
        .Q(phase_reg[12]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \phase_reg[12]_i_1 
       (.CI(\phase_reg[8]_i_1_n_0 ),
        .CO({\phase_reg[12]_i_1_n_0 ,\NLW_phase_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[12]_i_1_n_4 ,\phase_reg[12]_i_1_n_5 ,\phase_reg[12]_i_1_n_6 ,\phase_reg[12]_i_1_n_7 }),
        .S(phase_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[13] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[12]_i_1_n_6 ),
        .Q(phase_reg[13]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[14] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[12]_i_1_n_5 ),
        .Q(phase_reg[14]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[15] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[12]_i_1_n_4 ),
        .Q(phase_reg[15]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[16] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[16]_i_1_n_7 ),
        .Q(phase_reg[16]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \phase_reg[16]_i_1 
       (.CI(\phase_reg[12]_i_1_n_0 ),
        .CO({\phase_reg[16]_i_1_n_0 ,\NLW_phase_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[16]_i_1_n_4 ,\phase_reg[16]_i_1_n_5 ,\phase_reg[16]_i_1_n_6 ,\phase_reg[16]_i_1_n_7 }),
        .S(phase_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[17] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[16]_i_1_n_6 ),
        .Q(phase_reg[17]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[18] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[16]_i_1_n_5 ),
        .Q(phase_reg[18]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[19] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[16]_i_1_n_4 ),
        .Q(phase_reg[19]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[0]_i_2_n_6 ),
        .Q(phase_reg[1]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[20] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[20]_i_1_n_7 ),
        .Q(phase_reg[20]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \phase_reg[20]_i_1 
       (.CI(\phase_reg[16]_i_1_n_0 ),
        .CO(\NLW_phase_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[20]_i_1_n_4 ,\phase_reg[20]_i_1_n_5 ,\phase_reg[20]_i_1_n_6 ,\phase_reg[20]_i_1_n_7 }),
        .S(phase_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[21] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[20]_i_1_n_6 ),
        .Q(phase_reg[21]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[22] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[20]_i_1_n_5 ),
        .Q(phase_reg[22]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[23] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[20]_i_1_n_4 ),
        .Q(phase_reg[23]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[2] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[0]_i_2_n_5 ),
        .Q(phase_reg[2]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[3] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[0]_i_2_n_4 ),
        .Q(phase_reg[3]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[4] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[4]_i_1_n_7 ),
        .Q(phase_reg[4]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \phase_reg[4]_i_1 
       (.CI(\phase_reg[0]_i_2_n_0 ),
        .CO({\phase_reg[4]_i_1_n_0 ,\NLW_phase_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[4]_i_1_n_4 ,\phase_reg[4]_i_1_n_5 ,\phase_reg[4]_i_1_n_6 ,\phase_reg[4]_i_1_n_7 }),
        .S(phase_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[5] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[4]_i_1_n_6 ),
        .Q(phase_reg[5]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[6] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[4]_i_1_n_5 ),
        .Q(phase_reg[6]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[7] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[4]_i_1_n_4 ),
        .Q(phase_reg[7]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[8] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[8]_i_1_n_7 ),
        .Q(phase_reg[8]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \phase_reg[8]_i_1 
       (.CI(\phase_reg[4]_i_1_n_0 ),
        .CO({\phase_reg[8]_i_1_n_0 ,\NLW_phase_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[8]_i_1_n_4 ,\phase_reg[8]_i_1_n_5 ,\phase_reg[8]_i_1_n_6 ,\phase_reg[8]_i_1_n_7 }),
        .S(phase_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[9] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[8]_i_1_n_6 ),
        .Q(phase_reg[9]),
        .R(\phase[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[11]_i_10 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[9]),
        .I2(mini_offset_reg[9]),
        .I3(offset_reg[9]),
        .O(\rd_addr_D[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[11]_i_11 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[8]),
        .I2(mini_offset_reg[8]),
        .I3(offset_reg[8]),
        .O(\rd_addr_D[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[11]_i_12 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[7]),
        .I2(mini_offset_reg[7]),
        .I3(offset_reg[7]),
        .O(\rd_addr_D[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[11]_i_13 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[6]),
        .I2(mini_offset_reg[6]),
        .I3(offset_reg[6]),
        .O(\rd_addr_D[11]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[11]_i_2 
       (.I0(mini_offset_reg[10]),
        .I1(offset_reg[10]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[10]),
        .I4(\rd_addr_D[11]_i_10_n_0 ),
        .O(\rd_addr_D[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[11]_i_3 
       (.I0(mini_offset_reg[9]),
        .I1(offset_reg[9]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[9]),
        .I4(\rd_addr_D[11]_i_11_n_0 ),
        .O(\rd_addr_D[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[11]_i_4 
       (.I0(mini_offset_reg[8]),
        .I1(offset_reg[8]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[8]),
        .I4(\rd_addr_D[11]_i_12_n_0 ),
        .O(\rd_addr_D[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[11]_i_5 
       (.I0(mini_offset_reg[7]),
        .I1(offset_reg[7]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[7]),
        .I4(\rd_addr_D[11]_i_13_n_0 ),
        .O(\rd_addr_D[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[11]_i_6 
       (.I0(\rd_addr_D[11]_i_2_n_0 ),
        .I1(\rd_addr_D[15]_i_13_n_0 ),
        .I2(block_offset_reg[11]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[11]),
        .I5(mini_offset_reg[11]),
        .O(\rd_addr_D[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[11]_i_7 
       (.I0(\rd_addr_D[11]_i_3_n_0 ),
        .I1(\rd_addr_D[11]_i_10_n_0 ),
        .I2(block_offset_reg[10]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[10]),
        .I5(mini_offset_reg[10]),
        .O(\rd_addr_D[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[11]_i_8 
       (.I0(\rd_addr_D[11]_i_4_n_0 ),
        .I1(\rd_addr_D[11]_i_11_n_0 ),
        .I2(block_offset_reg[9]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[9]),
        .I5(mini_offset_reg[9]),
        .O(\rd_addr_D[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[11]_i_9 
       (.I0(\rd_addr_D[11]_i_5_n_0 ),
        .I1(\rd_addr_D[11]_i_12_n_0 ),
        .I2(block_offset_reg[8]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[8]),
        .I5(mini_offset_reg[8]),
        .O(\rd_addr_D[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[15]_i_10 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[13]),
        .I2(mini_offset_reg[13]),
        .I3(offset_reg[13]),
        .O(\rd_addr_D[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[15]_i_11 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[12]),
        .I2(mini_offset_reg[12]),
        .I3(offset_reg[12]),
        .O(\rd_addr_D[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[15]_i_12 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[11]),
        .I2(mini_offset_reg[11]),
        .I3(offset_reg[11]),
        .O(\rd_addr_D[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[15]_i_13 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[10]),
        .I2(mini_offset_reg[10]),
        .I3(offset_reg[10]),
        .O(\rd_addr_D[15]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[15]_i_2 
       (.I0(mini_offset_reg[14]),
        .I1(offset_reg[14]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[14]),
        .I4(\rd_addr_D[15]_i_10_n_0 ),
        .O(\rd_addr_D[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[15]_i_3 
       (.I0(mini_offset_reg[13]),
        .I1(offset_reg[13]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[13]),
        .I4(\rd_addr_D[15]_i_11_n_0 ),
        .O(\rd_addr_D[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[15]_i_4 
       (.I0(mini_offset_reg[12]),
        .I1(offset_reg[12]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[12]),
        .I4(\rd_addr_D[15]_i_12_n_0 ),
        .O(\rd_addr_D[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[15]_i_5 
       (.I0(mini_offset_reg[11]),
        .I1(offset_reg[11]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[11]),
        .I4(\rd_addr_D[15]_i_13_n_0 ),
        .O(\rd_addr_D[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[15]_i_6 
       (.I0(\rd_addr_D[15]_i_2_n_0 ),
        .I1(\rd_addr_D[19]_i_13_n_0 ),
        .I2(block_offset_reg[15]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[15]),
        .I5(mini_offset_reg[15]),
        .O(\rd_addr_D[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[15]_i_7 
       (.I0(\rd_addr_D[15]_i_3_n_0 ),
        .I1(\rd_addr_D[15]_i_10_n_0 ),
        .I2(block_offset_reg[14]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[14]),
        .I5(mini_offset_reg[14]),
        .O(\rd_addr_D[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[15]_i_8 
       (.I0(\rd_addr_D[15]_i_4_n_0 ),
        .I1(\rd_addr_D[15]_i_11_n_0 ),
        .I2(block_offset_reg[13]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[13]),
        .I5(mini_offset_reg[13]),
        .O(\rd_addr_D[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[15]_i_9 
       (.I0(\rd_addr_D[15]_i_5_n_0 ),
        .I1(\rd_addr_D[15]_i_12_n_0 ),
        .I2(block_offset_reg[12]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[12]),
        .I5(mini_offset_reg[12]),
        .O(\rd_addr_D[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[19]_i_10 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[17]),
        .I2(mini_offset_reg[17]),
        .I3(offset_reg[17]),
        .O(\rd_addr_D[19]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[19]_i_11 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[16]),
        .I2(mini_offset_reg[16]),
        .I3(offset_reg[16]),
        .O(\rd_addr_D[19]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[19]_i_12 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[15]),
        .I2(mini_offset_reg[15]),
        .I3(offset_reg[15]),
        .O(\rd_addr_D[19]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[19]_i_13 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[14]),
        .I2(mini_offset_reg[14]),
        .I3(offset_reg[14]),
        .O(\rd_addr_D[19]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[19]_i_2 
       (.I0(mini_offset_reg[18]),
        .I1(offset_reg[18]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[18]),
        .I4(\rd_addr_D[19]_i_10_n_0 ),
        .O(\rd_addr_D[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[19]_i_3 
       (.I0(mini_offset_reg[17]),
        .I1(offset_reg[17]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[17]),
        .I4(\rd_addr_D[19]_i_11_n_0 ),
        .O(\rd_addr_D[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[19]_i_4 
       (.I0(mini_offset_reg[16]),
        .I1(offset_reg[16]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[16]),
        .I4(\rd_addr_D[19]_i_12_n_0 ),
        .O(\rd_addr_D[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[19]_i_5 
       (.I0(mini_offset_reg[15]),
        .I1(offset_reg[15]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[15]),
        .I4(\rd_addr_D[19]_i_13_n_0 ),
        .O(\rd_addr_D[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[19]_i_6 
       (.I0(\rd_addr_D[19]_i_2_n_0 ),
        .I1(\rd_addr_D[23]_i_12_n_0 ),
        .I2(block_offset_reg[19]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[19]),
        .I5(mini_offset_reg[19]),
        .O(\rd_addr_D[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[19]_i_7 
       (.I0(\rd_addr_D[19]_i_3_n_0 ),
        .I1(\rd_addr_D[19]_i_10_n_0 ),
        .I2(block_offset_reg[18]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[18]),
        .I5(mini_offset_reg[18]),
        .O(\rd_addr_D[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[19]_i_8 
       (.I0(\rd_addr_D[19]_i_4_n_0 ),
        .I1(\rd_addr_D[19]_i_11_n_0 ),
        .I2(block_offset_reg[17]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[17]),
        .I5(mini_offset_reg[17]),
        .O(\rd_addr_D[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[19]_i_9 
       (.I0(\rd_addr_D[19]_i_5_n_0 ),
        .I1(\rd_addr_D[19]_i_12_n_0 ),
        .I2(block_offset_reg[16]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[16]),
        .I5(mini_offset_reg[16]),
        .O(\rd_addr_D[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[23]_i_10 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[20]),
        .I2(mini_offset_reg[20]),
        .I3(offset_reg[20]),
        .O(\rd_addr_D[23]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[23]_i_11 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[19]),
        .I2(mini_offset_reg[19]),
        .I3(offset_reg[19]),
        .O(\rd_addr_D[23]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[23]_i_12 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[18]),
        .I2(mini_offset_reg[18]),
        .I3(offset_reg[18]),
        .O(\rd_addr_D[23]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[23]_i_13 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[21]),
        .I2(mini_offset_reg[21]),
        .I3(offset_reg[21]),
        .O(\rd_addr_D[23]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \rd_addr_D[23]_i_14 
       (.I0(block_offset_reg[23]),
        .I1(\rd_addr_D[23]_i_9_n_0 ),
        .I2(mini_offset_reg[23]),
        .I3(offset_reg[23]),
        .O(\rd_addr_D[23]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_D[23]_i_15 
       (.I0(BLOCK_NUM[7]),
        .I1(BLOCK_NUM[5]),
        .I2(BLOCK_NUM[9]),
        .I3(BLOCK_NUM[4]),
        .O(\rd_addr_D[23]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_addr_D[23]_i_16 
       (.I0(BLOCK_NUM[0]),
        .I1(BLOCK_NUM[23]),
        .I2(BLOCK_NUM[21]),
        .I3(BLOCK_NUM[13]),
        .O(\rd_addr_D[23]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_D[23]_i_17 
       (.I0(BLOCK_NUM[18]),
        .I1(BLOCK_NUM[3]),
        .I2(BLOCK_NUM[20]),
        .I3(BLOCK_NUM[17]),
        .O(\rd_addr_D[23]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_D[23]_i_18 
       (.I0(BLOCK_NUM[12]),
        .I1(BLOCK_NUM[11]),
        .I2(BLOCK_NUM[22]),
        .I3(BLOCK_NUM[8]),
        .O(\rd_addr_D[23]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_D[23]_i_19 
       (.I0(BLOCK_NUM[15]),
        .I1(BLOCK_NUM[6]),
        .I2(BLOCK_NUM[10]),
        .I3(BLOCK_NUM[2]),
        .O(\rd_addr_D[23]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[23]_i_2 
       (.I0(mini_offset_reg[21]),
        .I1(offset_reg[21]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[21]),
        .I4(\rd_addr_D[23]_i_10_n_0 ),
        .O(\rd_addr_D[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_D[23]_i_20 
       (.I0(BLOCK_NUM[16]),
        .I1(BLOCK_NUM[1]),
        .I2(BLOCK_NUM[19]),
        .I3(BLOCK_NUM[14]),
        .O(\rd_addr_D[23]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[23]_i_3 
       (.I0(mini_offset_reg[20]),
        .I1(offset_reg[20]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[20]),
        .I4(\rd_addr_D[23]_i_11_n_0 ),
        .O(\rd_addr_D[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[23]_i_4 
       (.I0(mini_offset_reg[19]),
        .I1(offset_reg[19]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[19]),
        .I4(\rd_addr_D[23]_i_12_n_0 ),
        .O(\rd_addr_D[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC663C6639CC6C663)) 
    \rd_addr_D[23]_i_5 
       (.I0(\rd_addr_D[23]_i_13_n_0 ),
        .I1(\rd_addr_D[23]_i_14_n_0 ),
        .I2(mini_offset_reg[22]),
        .I3(offset_reg[22]),
        .I4(block_offset_reg[22]),
        .I5(\rd_addr_D[23]_i_9_n_0 ),
        .O(\rd_addr_D[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9699696669669699)) 
    \rd_addr_D[23]_i_6 
       (.I0(\rd_addr_D[23]_i_2_n_0 ),
        .I1(\rd_addr_D[23]_i_13_n_0 ),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[22]),
        .I4(mini_offset_reg[22]),
        .I5(offset_reg[22]),
        .O(\rd_addr_D[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[23]_i_7 
       (.I0(\rd_addr_D[23]_i_3_n_0 ),
        .I1(\rd_addr_D[23]_i_10_n_0 ),
        .I2(block_offset_reg[21]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[21]),
        .I5(mini_offset_reg[21]),
        .O(\rd_addr_D[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[23]_i_8 
       (.I0(\rd_addr_D[23]_i_4_n_0 ),
        .I1(\rd_addr_D[23]_i_11_n_0 ),
        .I2(block_offset_reg[20]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[20]),
        .I5(mini_offset_reg[20]),
        .O(\rd_addr_D[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rd_addr_D[23]_i_9 
       (.I0(\rd_addr_D[23]_i_15_n_0 ),
        .I1(\rd_addr_D[23]_i_16_n_0 ),
        .I2(\rd_addr_D[23]_i_17_n_0 ),
        .I3(\rd_addr_D[23]_i_18_n_0 ),
        .I4(\rd_addr_D[23]_i_19_n_0 ),
        .I5(\rd_addr_D[23]_i_20_n_0 ),
        .O(\rd_addr_D[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \rd_addr_D[3]_i_10 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[3]),
        .I2(offset_reg[3]),
        .I3(mini_offset_reg[3]),
        .O(\rd_addr_D[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h570D510451045104)) 
    \rd_addr_D[3]_i_2 
       (.I0(mini_col[2]),
        .I1(block_offset_reg[2]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(offset_reg[2]),
        .I4(offset_reg[1]),
        .I5(block_offset_reg[1]),
        .O(\rd_addr_D[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F087780F0F7887)) 
    \rd_addr_D[3]_i_3 
       (.I0(block_offset_reg[1]),
        .I1(offset_reg[1]),
        .I2(mini_col[2]),
        .I3(block_offset_reg[2]),
        .I4(\rd_addr_D[23]_i_9_n_0 ),
        .I5(offset_reg[2]),
        .O(\rd_addr_D[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \rd_addr_D[3]_i_4 
       (.I0(block_offset_reg[1]),
        .I1(\rd_addr_D[23]_i_9_n_0 ),
        .I2(offset_reg[1]),
        .I3(mini_col[1]),
        .O(\rd_addr_D[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \rd_addr_D[3]_i_5 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[0]),
        .I2(offset_reg[0]),
        .O(\rd_addr_D[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h99699999)) 
    \rd_addr_D[3]_i_6 
       (.I0(\rd_addr_D[3]_i_2_n_0 ),
        .I1(\rd_addr_D[3]_i_10_n_0 ),
        .I2(offset_reg[2]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(block_offset_reg[2]),
        .O(\rd_addr_D[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h9AA99A9A)) 
    \rd_addr_D[3]_i_7 
       (.I0(\rd_addr_D[3]_i_3_n_0 ),
        .I1(mini_col[1]),
        .I2(offset_reg[1]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(block_offset_reg[1]),
        .O(\rd_addr_D[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9999966999996969)) 
    \rd_addr_D[3]_i_8 
       (.I0(mini_col[1]),
        .I1(offset_reg[1]),
        .I2(block_offset_reg[1]),
        .I3(block_offset_reg[0]),
        .I4(\rd_addr_D[23]_i_9_n_0 ),
        .I5(offset_reg[0]),
        .O(\rd_addr_D[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \rd_addr_D[3]_i_9 
       (.I0(offset_reg[0]),
        .I1(block_offset_reg[0]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(mini_col[0]),
        .O(\rd_addr_D[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[7]_i_10 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[5]),
        .I2(mini_offset_reg[5]),
        .I3(offset_reg[5]),
        .O(\rd_addr_D[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0BBF)) 
    \rd_addr_D[7]_i_11 
       (.I0(\rd_addr_D[23]_i_9_n_0 ),
        .I1(block_offset_reg[4]),
        .I2(mini_offset_reg[4]),
        .I3(offset_reg[4]),
        .O(\rd_addr_D[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7717)) 
    \rd_addr_D[7]_i_12 
       (.I0(mini_offset_reg[3]),
        .I1(offset_reg[3]),
        .I2(block_offset_reg[3]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .O(\rd_addr_D[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[7]_i_2 
       (.I0(mini_offset_reg[6]),
        .I1(offset_reg[6]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[6]),
        .I4(\rd_addr_D[7]_i_10_n_0 ),
        .O(\rd_addr_D[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[7]_i_3 
       (.I0(mini_offset_reg[5]),
        .I1(offset_reg[5]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[5]),
        .I4(\rd_addr_D[7]_i_11_n_0 ),
        .O(\rd_addr_D[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00006966)) 
    \rd_addr_D[7]_i_4 
       (.I0(mini_offset_reg[4]),
        .I1(offset_reg[4]),
        .I2(\rd_addr_D[23]_i_9_n_0 ),
        .I3(block_offset_reg[4]),
        .I4(\rd_addr_D[7]_i_12_n_0 ),
        .O(\rd_addr_D[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080080880)) 
    \rd_addr_D[7]_i_5 
       (.I0(block_offset_reg[2]),
        .I1(offset_reg[2]),
        .I2(mini_offset_reg[3]),
        .I3(offset_reg[3]),
        .I4(block_offset_reg[3]),
        .I5(\rd_addr_D[23]_i_9_n_0 ),
        .O(\rd_addr_D[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[7]_i_6 
       (.I0(\rd_addr_D[7]_i_2_n_0 ),
        .I1(\rd_addr_D[11]_i_13_n_0 ),
        .I2(block_offset_reg[7]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[7]),
        .I5(mini_offset_reg[7]),
        .O(\rd_addr_D[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[7]_i_7 
       (.I0(\rd_addr_D[7]_i_3_n_0 ),
        .I1(\rd_addr_D[7]_i_10_n_0 ),
        .I2(block_offset_reg[6]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[6]),
        .I5(mini_offset_reg[6]),
        .O(\rd_addr_D[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[7]_i_8 
       (.I0(\rd_addr_D[7]_i_4_n_0 ),
        .I1(\rd_addr_D[7]_i_11_n_0 ),
        .I2(block_offset_reg[5]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[5]),
        .I5(mini_offset_reg[5]),
        .O(\rd_addr_D[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666969969)) 
    \rd_addr_D[7]_i_9 
       (.I0(\rd_addr_D[7]_i_5_n_0 ),
        .I1(\rd_addr_D[7]_i_12_n_0 ),
        .I2(block_offset_reg[4]),
        .I3(\rd_addr_D[23]_i_9_n_0 ),
        .I4(offset_reg[4]),
        .I5(mini_offset_reg[4]),
        .O(\rd_addr_D[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[0] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[0]),
        .Q(rd_addr_D[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[10] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[10]),
        .Q(rd_addr_D[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[11] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[11]),
        .Q(rd_addr_D[11]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rd_addr_D_reg[11]_i_1 
       (.CI(\rd_addr_D_reg[7]_i_1_n_0 ),
        .CO({\rd_addr_D_reg[11]_i_1_n_0 ,\NLW_rd_addr_D_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rd_addr_D[11]_i_2_n_0 ,\rd_addr_D[11]_i_3_n_0 ,\rd_addr_D[11]_i_4_n_0 ,\rd_addr_D[11]_i_5_n_0 }),
        .O(rd_addr_D0[11:8]),
        .S({\rd_addr_D[11]_i_6_n_0 ,\rd_addr_D[11]_i_7_n_0 ,\rd_addr_D[11]_i_8_n_0 ,\rd_addr_D[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[12] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[12]),
        .Q(rd_addr_D[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[13] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[13]),
        .Q(rd_addr_D[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[14] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[14]),
        .Q(rd_addr_D[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[15] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[15]),
        .Q(rd_addr_D[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rd_addr_D_reg[15]_i_1 
       (.CI(\rd_addr_D_reg[11]_i_1_n_0 ),
        .CO({\rd_addr_D_reg[15]_i_1_n_0 ,\NLW_rd_addr_D_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rd_addr_D[15]_i_2_n_0 ,\rd_addr_D[15]_i_3_n_0 ,\rd_addr_D[15]_i_4_n_0 ,\rd_addr_D[15]_i_5_n_0 }),
        .O(rd_addr_D0[15:12]),
        .S({\rd_addr_D[15]_i_6_n_0 ,\rd_addr_D[15]_i_7_n_0 ,\rd_addr_D[15]_i_8_n_0 ,\rd_addr_D[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[16] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[16]),
        .Q(rd_addr_D[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[17] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[17]),
        .Q(rd_addr_D[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[18] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[18]),
        .Q(rd_addr_D[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[19] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[19]),
        .Q(rd_addr_D[19]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rd_addr_D_reg[19]_i_1 
       (.CI(\rd_addr_D_reg[15]_i_1_n_0 ),
        .CO({\rd_addr_D_reg[19]_i_1_n_0 ,\NLW_rd_addr_D_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rd_addr_D[19]_i_2_n_0 ,\rd_addr_D[19]_i_3_n_0 ,\rd_addr_D[19]_i_4_n_0 ,\rd_addr_D[19]_i_5_n_0 }),
        .O(rd_addr_D0[19:16]),
        .S({\rd_addr_D[19]_i_6_n_0 ,\rd_addr_D[19]_i_7_n_0 ,\rd_addr_D[19]_i_8_n_0 ,\rd_addr_D[19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[1] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[1]),
        .Q(rd_addr_D[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[20] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[20]),
        .Q(rd_addr_D[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[21] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[21]),
        .Q(rd_addr_D[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[22] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[22]),
        .Q(rd_addr_D[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[23] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[23]),
        .Q(rd_addr_D[23]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rd_addr_D_reg[23]_i_1 
       (.CI(\rd_addr_D_reg[19]_i_1_n_0 ),
        .CO(\NLW_rd_addr_D_reg[23]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\rd_addr_D[23]_i_2_n_0 ,\rd_addr_D[23]_i_3_n_0 ,\rd_addr_D[23]_i_4_n_0 }),
        .O(rd_addr_D0[23:20]),
        .S({\rd_addr_D[23]_i_5_n_0 ,\rd_addr_D[23]_i_6_n_0 ,\rd_addr_D[23]_i_7_n_0 ,\rd_addr_D[23]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[2] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[2]),
        .Q(rd_addr_D[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[3] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[3]),
        .Q(rd_addr_D[3]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rd_addr_D_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rd_addr_D_reg[3]_i_1_n_0 ,\NLW_rd_addr_D_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rd_addr_D[3]_i_2_n_0 ,\rd_addr_D[3]_i_3_n_0 ,\rd_addr_D[3]_i_4_n_0 ,\rd_addr_D[3]_i_5_n_0 }),
        .O(rd_addr_D0[3:0]),
        .S({\rd_addr_D[3]_i_6_n_0 ,\rd_addr_D[3]_i_7_n_0 ,\rd_addr_D[3]_i_8_n_0 ,\rd_addr_D[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[4] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[4]),
        .Q(rd_addr_D[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[5] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[5]),
        .Q(rd_addr_D[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[6] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[6]),
        .Q(rd_addr_D[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[7] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[7]),
        .Q(rd_addr_D[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rd_addr_D_reg[7]_i_1 
       (.CI(\rd_addr_D_reg[3]_i_1_n_0 ),
        .CO({\rd_addr_D_reg[7]_i_1_n_0 ,\NLW_rd_addr_D_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rd_addr_D[7]_i_2_n_0 ,\rd_addr_D[7]_i_3_n_0 ,\rd_addr_D[7]_i_4_n_0 ,\rd_addr_D[7]_i_5_n_0 }),
        .O(rd_addr_D0[7:4]),
        .S({\rd_addr_D[7]_i_6_n_0 ,\rd_addr_D[7]_i_7_n_0 ,\rd_addr_D[7]_i_8_n_0 ,\rd_addr_D[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[8] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[8]),
        .Q(rd_addr_D[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_D_reg[9] 
       (.C(clk),
        .CE(valid_D),
        .D(rd_addr_D0[9]),
        .Q(rd_addr_D[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \sys_row[0]_i_1 
       (.I0(\sys_row_reg_n_0_[0] ),
        .O(\sys_row[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sys_row[1]_i_1 
       (.I0(\sys_row_reg_n_0_[0] ),
        .I1(\sys_row_reg_n_0_[1] ),
        .O(\sys_row[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sys_row[2]_i_1 
       (.I0(sys_row0),
        .I1(col0),
        .I2(valid_D),
        .O(activate_D_r));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sys_row[2]_i_2 
       (.I0(\sys_row_reg_n_0_[2] ),
        .I1(\sys_row_reg_n_0_[1] ),
        .I2(\sys_row_reg_n_0_[0] ),
        .O(\sys_row[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sys_row_reg[0] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\sys_row[0]_i_1_n_0 ),
        .Q(\sys_row_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sys_row_reg[1] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\sys_row[1]_i_1_n_0 ),
        .Q(\sys_row_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \sys_row_reg[2] 
       (.C(clk),
        .CE(activate_D_r),
        .D(\sys_row[2]_i_2_n_0 ),
        .Q(\sys_row_reg_n_0_[2] ),
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
