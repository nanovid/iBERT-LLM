// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Mar 18 16:36:04 2025
// Host        : JANE running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim mem_write_B_impl.sv
// Design      : mem_write_B_pp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_W = "24" *) (* ECO_CHECKSUM = "3c961c3e" *) (* MATRIXSIZE_W = "24" *) 
(* N2 = "8" *) 
(* NotValidForBitStream *)
module mem_write_B_pp
   (clk,
    rst,
    M2,
    BLOCK_WIDTHdN2,
    BLOCK_NUM,
    valid_B,
    wr_addr_B,
    activate_B);
  input clk;
  input rst;
  input [23:0]M2;
  input [23:0]BLOCK_WIDTHdN2;
  input [23:0]BLOCK_NUM;
  input valid_B;
  output [23:0]wr_addr_B;
  output [7:0]activate_B;

  wire [23:0]BLOCK_NUM;
  wire [23:0]BLOCK_WIDTHdN2;
  wire [23:0]M2;
  wire [7:0]activate_B;
  wire activate_B_r2;
  wire [23:1]activate_B_r3;
  wire \activate_B_r[0]_i_100_n_0 ;
  wire \activate_B_r[0]_i_101_n_0 ;
  wire \activate_B_r[0]_i_102_n_0 ;
  wire \activate_B_r[0]_i_103_n_0 ;
  wire \activate_B_r[0]_i_104_n_0 ;
  wire \activate_B_r[0]_i_105_n_0 ;
  wire \activate_B_r[0]_i_106_n_0 ;
  wire \activate_B_r[0]_i_107_n_0 ;
  wire \activate_B_r[0]_i_108_n_0 ;
  wire \activate_B_r[0]_i_109_n_0 ;
  wire \activate_B_r[0]_i_110_n_0 ;
  wire \activate_B_r[0]_i_111_n_0 ;
  wire \activate_B_r[0]_i_112_n_0 ;
  wire \activate_B_r[0]_i_113_n_0 ;
  wire \activate_B_r[0]_i_114_n_0 ;
  wire \activate_B_r[0]_i_115_n_0 ;
  wire \activate_B_r[0]_i_116_n_0 ;
  wire \activate_B_r[0]_i_117_n_0 ;
  wire \activate_B_r[0]_i_118_n_0 ;
  wire \activate_B_r[0]_i_119_n_0 ;
  wire \activate_B_r[0]_i_120_n_0 ;
  wire \activate_B_r[0]_i_121_n_0 ;
  wire \activate_B_r[0]_i_12_n_0 ;
  wire \activate_B_r[0]_i_13_n_0 ;
  wire \activate_B_r[0]_i_14_n_0 ;
  wire \activate_B_r[0]_i_15_n_0 ;
  wire \activate_B_r[0]_i_17_n_0 ;
  wire \activate_B_r[0]_i_18_n_0 ;
  wire \activate_B_r[0]_i_19_n_0 ;
  wire \activate_B_r[0]_i_1_n_0 ;
  wire \activate_B_r[0]_i_21_n_0 ;
  wire \activate_B_r[0]_i_22_n_0 ;
  wire \activate_B_r[0]_i_23_n_0 ;
  wire \activate_B_r[0]_i_24_n_0 ;
  wire \activate_B_r[0]_i_26_n_0 ;
  wire \activate_B_r[0]_i_27_n_0 ;
  wire \activate_B_r[0]_i_28_n_0 ;
  wire \activate_B_r[0]_i_30_n_0 ;
  wire \activate_B_r[0]_i_31_n_0 ;
  wire \activate_B_r[0]_i_32_n_0 ;
  wire \activate_B_r[0]_i_33_n_0 ;
  wire \activate_B_r[0]_i_35_n_0 ;
  wire \activate_B_r[0]_i_36_n_0 ;
  wire \activate_B_r[0]_i_37_n_0 ;
  wire \activate_B_r[0]_i_38_n_0 ;
  wire \activate_B_r[0]_i_39_n_0 ;
  wire \activate_B_r[0]_i_40_n_0 ;
  wire \activate_B_r[0]_i_41_n_0 ;
  wire \activate_B_r[0]_i_44_n_0 ;
  wire \activate_B_r[0]_i_45_n_0 ;
  wire \activate_B_r[0]_i_46_n_0 ;
  wire \activate_B_r[0]_i_47_n_0 ;
  wire \activate_B_r[0]_i_48_n_0 ;
  wire \activate_B_r[0]_i_49_n_0 ;
  wire \activate_B_r[0]_i_50_n_0 ;
  wire \activate_B_r[0]_i_51_n_0 ;
  wire \activate_B_r[0]_i_54_n_0 ;
  wire \activate_B_r[0]_i_55_n_0 ;
  wire \activate_B_r[0]_i_56_n_0 ;
  wire \activate_B_r[0]_i_57_n_0 ;
  wire \activate_B_r[0]_i_58_n_0 ;
  wire \activate_B_r[0]_i_59_n_0 ;
  wire \activate_B_r[0]_i_60_n_0 ;
  wire \activate_B_r[0]_i_61_n_0 ;
  wire \activate_B_r[0]_i_64_n_0 ;
  wire \activate_B_r[0]_i_65_n_0 ;
  wire \activate_B_r[0]_i_66_n_0 ;
  wire \activate_B_r[0]_i_67_n_0 ;
  wire \activate_B_r[0]_i_70_n_0 ;
  wire \activate_B_r[0]_i_71_n_0 ;
  wire \activate_B_r[0]_i_72_n_0 ;
  wire \activate_B_r[0]_i_73_n_0 ;
  wire \activate_B_r[0]_i_74_n_0 ;
  wire \activate_B_r[0]_i_75_n_0 ;
  wire \activate_B_r[0]_i_76_n_0 ;
  wire \activate_B_r[0]_i_77_n_0 ;
  wire \activate_B_r[0]_i_80_n_0 ;
  wire \activate_B_r[0]_i_81_n_0 ;
  wire \activate_B_r[0]_i_82_n_0 ;
  wire \activate_B_r[0]_i_83_n_0 ;
  wire \activate_B_r[0]_i_84_n_0 ;
  wire \activate_B_r[0]_i_85_n_0 ;
  wire \activate_B_r[0]_i_86_n_0 ;
  wire \activate_B_r[0]_i_87_n_0 ;
  wire \activate_B_r[0]_i_90_n_0 ;
  wire \activate_B_r[0]_i_91_n_0 ;
  wire \activate_B_r[0]_i_92_n_0 ;
  wire \activate_B_r[0]_i_93_n_0 ;
  wire \activate_B_r[0]_i_94_n_0 ;
  wire \activate_B_r[0]_i_95_n_0 ;
  wire \activate_B_r[0]_i_96_n_0 ;
  wire \activate_B_r[0]_i_97_n_0 ;
  wire \activate_B_r[0]_i_98_n_0 ;
  wire \activate_B_r[0]_i_99_n_0 ;
  wire \activate_B_r_reg[0]_i_10_n_0 ;
  wire \activate_B_r_reg[0]_i_11_n_0 ;
  wire \activate_B_r_reg[0]_i_16_n_0 ;
  wire \activate_B_r_reg[0]_i_20_n_0 ;
  wire \activate_B_r_reg[0]_i_25_n_0 ;
  wire \activate_B_r_reg[0]_i_29_n_0 ;
  wire \activate_B_r_reg[0]_i_34_n_0 ;
  wire \activate_B_r_reg[0]_i_42_n_0 ;
  wire \activate_B_r_reg[0]_i_43_n_0 ;
  wire \activate_B_r_reg[0]_i_52_n_0 ;
  wire \activate_B_r_reg[0]_i_53_n_0 ;
  wire \activate_B_r_reg[0]_i_5_n_0 ;
  wire \activate_B_r_reg[0]_i_62_n_0 ;
  wire \activate_B_r_reg[0]_i_63_n_0 ;
  wire \activate_B_r_reg[0]_i_68_n_0 ;
  wire \activate_B_r_reg[0]_i_69_n_0 ;
  wire \activate_B_r_reg[0]_i_6_n_0 ;
  wire \activate_B_r_reg[0]_i_78_n_0 ;
  wire \activate_B_r_reg[0]_i_79_n_0 ;
  wire \activate_B_r_reg[0]_i_7_n_0 ;
  wire \activate_B_r_reg[0]_i_88_n_0 ;
  wire \activate_B_r_reg[0]_i_89_n_0 ;
  wire \activate_B_r_reg[0]_i_8_n_0 ;
  wire \activate_B_r_reg[0]_i_9_n_0 ;
  wire \block_count[0]_i_1_n_0 ;
  wire \block_count[0]_i_3_n_0 ;
  wire [23:0]block_count_reg;
  wire \block_count_reg[0]_i_2_n_0 ;
  wire \block_count_reg[0]_i_2_n_4 ;
  wire \block_count_reg[0]_i_2_n_5 ;
  wire \block_count_reg[0]_i_2_n_6 ;
  wire \block_count_reg[0]_i_2_n_7 ;
  wire \block_count_reg[12]_i_1_n_0 ;
  wire \block_count_reg[12]_i_1_n_4 ;
  wire \block_count_reg[12]_i_1_n_5 ;
  wire \block_count_reg[12]_i_1_n_6 ;
  wire \block_count_reg[12]_i_1_n_7 ;
  wire \block_count_reg[16]_i_1_n_0 ;
  wire \block_count_reg[16]_i_1_n_4 ;
  wire \block_count_reg[16]_i_1_n_5 ;
  wire \block_count_reg[16]_i_1_n_6 ;
  wire \block_count_reg[16]_i_1_n_7 ;
  wire \block_count_reg[20]_i_1_n_4 ;
  wire \block_count_reg[20]_i_1_n_5 ;
  wire \block_count_reg[20]_i_1_n_6 ;
  wire \block_count_reg[20]_i_1_n_7 ;
  wire \block_count_reg[4]_i_1_n_0 ;
  wire \block_count_reg[4]_i_1_n_4 ;
  wire \block_count_reg[4]_i_1_n_5 ;
  wire \block_count_reg[4]_i_1_n_6 ;
  wire \block_count_reg[4]_i_1_n_7 ;
  wire \block_count_reg[8]_i_1_n_0 ;
  wire \block_count_reg[8]_i_1_n_4 ;
  wire \block_count_reg[8]_i_1_n_5 ;
  wire \block_count_reg[8]_i_1_n_6 ;
  wire \block_count_reg[8]_i_1_n_7 ;
  wire clk;
  wire [2:0]col;
  wire \col[0]_i_1_n_0 ;
  wire \col[1]_i_1_n_0 ;
  wire \col[2]_i_1_n_0 ;
  wire offset;
  wire \offset[0]_i_2_n_0 ;
  wire \offset[0]_i_3_n_0 ;
  wire \offset[0]_i_4_n_0 ;
  wire \offset[0]_i_5_n_0 ;
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
  wire \offset_reg[0]_i_1_n_0 ;
  wire \offset_reg[0]_i_1_n_4 ;
  wire \offset_reg[0]_i_1_n_5 ;
  wire \offset_reg[0]_i_1_n_6 ;
  wire \offset_reg[0]_i_1_n_7 ;
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
  wire [7:0]p_1_in;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[0]_i_4_n_0 ;
  wire [23:0]phase_reg;
  wire \phase_reg[0]_i_3_n_0 ;
  wire \phase_reg[0]_i_3_n_4 ;
  wire \phase_reg[0]_i_3_n_5 ;
  wire \phase_reg[0]_i_3_n_6 ;
  wire \phase_reg[0]_i_3_n_7 ;
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
  wire row;
  wire row0;
  wire row01_out;
  wire [23:1]row1;
  wire [23:1]row10_in;
  wire \row[0]_i_1_n_0 ;
  wire \row[0]_i_4_n_0 ;
  wire \row[0]_i_5_n_0 ;
  wire [23:0]row_reg;
  wire \row_reg[0]_i_3_n_0 ;
  wire \row_reg[0]_i_3_n_4 ;
  wire \row_reg[0]_i_3_n_5 ;
  wire \row_reg[0]_i_3_n_6 ;
  wire \row_reg[0]_i_3_n_7 ;
  wire \row_reg[12]_i_1_n_0 ;
  wire \row_reg[12]_i_1_n_4 ;
  wire \row_reg[12]_i_1_n_5 ;
  wire \row_reg[12]_i_1_n_6 ;
  wire \row_reg[12]_i_1_n_7 ;
  wire \row_reg[16]_i_1_n_0 ;
  wire \row_reg[16]_i_1_n_4 ;
  wire \row_reg[16]_i_1_n_5 ;
  wire \row_reg[16]_i_1_n_6 ;
  wire \row_reg[16]_i_1_n_7 ;
  wire \row_reg[20]_i_1_n_4 ;
  wire \row_reg[20]_i_1_n_5 ;
  wire \row_reg[20]_i_1_n_6 ;
  wire \row_reg[20]_i_1_n_7 ;
  wire \row_reg[4]_i_1_n_0 ;
  wire \row_reg[4]_i_1_n_4 ;
  wire \row_reg[4]_i_1_n_5 ;
  wire \row_reg[4]_i_1_n_6 ;
  wire \row_reg[4]_i_1_n_7 ;
  wire \row_reg[8]_i_1_n_0 ;
  wire \row_reg[8]_i_1_n_4 ;
  wire \row_reg[8]_i_1_n_5 ;
  wire \row_reg[8]_i_1_n_6 ;
  wire \row_reg[8]_i_1_n_7 ;
  wire rst;
  wire valid_B;
  wire [23:0]wr_addr_B;
  wire [23:0]wr_addr_B0;
  wire \wr_addr_B[11]_i_2_n_0 ;
  wire \wr_addr_B[11]_i_3_n_0 ;
  wire \wr_addr_B[11]_i_4_n_0 ;
  wire \wr_addr_B[11]_i_5_n_0 ;
  wire \wr_addr_B[15]_i_2_n_0 ;
  wire \wr_addr_B[15]_i_3_n_0 ;
  wire \wr_addr_B[15]_i_4_n_0 ;
  wire \wr_addr_B[15]_i_5_n_0 ;
  wire \wr_addr_B[19]_i_2_n_0 ;
  wire \wr_addr_B[19]_i_3_n_0 ;
  wire \wr_addr_B[19]_i_4_n_0 ;
  wire \wr_addr_B[19]_i_5_n_0 ;
  wire \wr_addr_B[23]_i_2_n_0 ;
  wire \wr_addr_B[23]_i_3_n_0 ;
  wire \wr_addr_B[23]_i_4_n_0 ;
  wire \wr_addr_B[23]_i_5_n_0 ;
  wire \wr_addr_B[3]_i_2_n_0 ;
  wire \wr_addr_B[3]_i_3_n_0 ;
  wire \wr_addr_B[3]_i_4_n_0 ;
  wire \wr_addr_B[3]_i_5_n_0 ;
  wire \wr_addr_B[7]_i_2_n_0 ;
  wire \wr_addr_B[7]_i_3_n_0 ;
  wire \wr_addr_B[7]_i_4_n_0 ;
  wire \wr_addr_B[7]_i_5_n_0 ;
  wire \wr_addr_B_reg[11]_i_1_n_0 ;
  wire \wr_addr_B_reg[15]_i_1_n_0 ;
  wire \wr_addr_B_reg[19]_i_1_n_0 ;
  wire \wr_addr_B_reg[3]_i_1_n_0 ;
  wire \wr_addr_B_reg[7]_i_1_n_0 ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_activate_B_r_reg[0]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_11_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_25_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_29_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_34_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_42_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_43_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_52_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_53_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_activate_B_r_reg[0]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_62_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_63_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_68_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_69_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_78_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_79_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_activate_B_r_reg[0]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_88_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_89_CO_UNCONNECTED ;
  wire [2:0]\NLW_activate_B_r_reg[0]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_activate_B_r_reg[0]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_block_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_block_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_block_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_offset_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_phase_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_phase_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_row_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_row_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_row_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_row_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_row_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_row_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_B_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_B_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_B_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_wr_addr_B_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_B_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_B_reg[7]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h3BBBBBBB08888888)) 
    \activate_B_r[0]_i_1 
       (.I0(p_1_in[0]),
        .I1(valid_B),
        .I2(row0),
        .I3(activate_B_r2),
        .I4(row01_out),
        .I5(p_1_in[1]),
        .O(\activate_B_r[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_100 
       (.I0(M2[6]),
        .O(\activate_B_r[0]_i_100_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_101 
       (.I0(M2[5]),
        .O(\activate_B_r[0]_i_101_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_102 
       (.I0(M2[4]),
        .O(\activate_B_r[0]_i_102_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_103 
       (.I0(M2[3]),
        .O(\activate_B_r[0]_i_103_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_104 
       (.I0(M2[2]),
        .O(\activate_B_r[0]_i_104_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_105 
       (.I0(M2[1]),
        .O(\activate_B_r[0]_i_105_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_106 
       (.I0(BLOCK_NUM[8]),
        .O(\activate_B_r[0]_i_106_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_107 
       (.I0(BLOCK_NUM[7]),
        .O(\activate_B_r[0]_i_107_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_108 
       (.I0(BLOCK_NUM[6]),
        .O(\activate_B_r[0]_i_108_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_109 
       (.I0(BLOCK_NUM[5]),
        .O(\activate_B_r[0]_i_109_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_110 
       (.I0(BLOCK_NUM[4]),
        .O(\activate_B_r[0]_i_110_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_111 
       (.I0(BLOCK_NUM[3]),
        .O(\activate_B_r[0]_i_111_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_112 
       (.I0(BLOCK_NUM[2]),
        .O(\activate_B_r[0]_i_112_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_113 
       (.I0(BLOCK_NUM[1]),
        .O(\activate_B_r[0]_i_113_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_114 
       (.I0(BLOCK_WIDTHdN2[8]),
        .O(\activate_B_r[0]_i_114_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_115 
       (.I0(BLOCK_WIDTHdN2[7]),
        .O(\activate_B_r[0]_i_115_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_116 
       (.I0(BLOCK_WIDTHdN2[6]),
        .O(\activate_B_r[0]_i_116_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_117 
       (.I0(BLOCK_WIDTHdN2[5]),
        .O(\activate_B_r[0]_i_117_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_118 
       (.I0(BLOCK_WIDTHdN2[4]),
        .O(\activate_B_r[0]_i_118_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_119 
       (.I0(BLOCK_WIDTHdN2[3]),
        .O(\activate_B_r[0]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_12 
       (.I0(row_reg[21]),
        .I1(row1[21]),
        .I2(row1[23]),
        .I3(row_reg[23]),
        .I4(row1[22]),
        .I5(row_reg[22]),
        .O(\activate_B_r[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_120 
       (.I0(BLOCK_WIDTHdN2[2]),
        .O(\activate_B_r[0]_i_120_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_121 
       (.I0(BLOCK_WIDTHdN2[1]),
        .O(\activate_B_r[0]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_13 
       (.I0(row_reg[18]),
        .I1(row1[18]),
        .I2(row1[20]),
        .I3(row_reg[20]),
        .I4(row1[19]),
        .I5(row_reg[19]),
        .O(\activate_B_r[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_14 
       (.I0(row_reg[15]),
        .I1(row1[15]),
        .I2(row1[17]),
        .I3(row_reg[17]),
        .I4(row1[16]),
        .I5(row_reg[16]),
        .O(\activate_B_r[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_15 
       (.I0(row_reg[12]),
        .I1(row1[12]),
        .I2(row1[14]),
        .I3(row_reg[14]),
        .I4(row1[13]),
        .I5(row_reg[13]),
        .O(\activate_B_r[0]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_17 
       (.I0(M2[23]),
        .O(\activate_B_r[0]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_18 
       (.I0(M2[22]),
        .O(\activate_B_r[0]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_19 
       (.I0(M2[21]),
        .O(\activate_B_r[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_21 
       (.I0(block_count_reg[21]),
        .I1(activate_B_r3[21]),
        .I2(activate_B_r3[23]),
        .I3(block_count_reg[23]),
        .I4(activate_B_r3[22]),
        .I5(block_count_reg[22]),
        .O(\activate_B_r[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_22 
       (.I0(block_count_reg[18]),
        .I1(activate_B_r3[18]),
        .I2(activate_B_r3[20]),
        .I3(block_count_reg[20]),
        .I4(activate_B_r3[19]),
        .I5(block_count_reg[19]),
        .O(\activate_B_r[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_23 
       (.I0(block_count_reg[15]),
        .I1(activate_B_r3[15]),
        .I2(activate_B_r3[17]),
        .I3(block_count_reg[17]),
        .I4(activate_B_r3[16]),
        .I5(block_count_reg[16]),
        .O(\activate_B_r[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_24 
       (.I0(block_count_reg[12]),
        .I1(activate_B_r3[12]),
        .I2(activate_B_r3[14]),
        .I3(block_count_reg[14]),
        .I4(activate_B_r3[13]),
        .I5(block_count_reg[13]),
        .O(\activate_B_r[0]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_26 
       (.I0(BLOCK_NUM[23]),
        .O(\activate_B_r[0]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_27 
       (.I0(BLOCK_NUM[22]),
        .O(\activate_B_r[0]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_28 
       (.I0(BLOCK_NUM[21]),
        .O(\activate_B_r[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_30 
       (.I0(phase_reg[21]),
        .I1(row10_in[21]),
        .I2(row10_in[23]),
        .I3(phase_reg[23]),
        .I4(row10_in[22]),
        .I5(phase_reg[22]),
        .O(\activate_B_r[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_31 
       (.I0(phase_reg[18]),
        .I1(row10_in[18]),
        .I2(row10_in[20]),
        .I3(phase_reg[20]),
        .I4(row10_in[19]),
        .I5(phase_reg[19]),
        .O(\activate_B_r[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_32 
       (.I0(phase_reg[15]),
        .I1(row10_in[15]),
        .I2(row10_in[17]),
        .I3(phase_reg[17]),
        .I4(row10_in[16]),
        .I5(phase_reg[16]),
        .O(\activate_B_r[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_33 
       (.I0(phase_reg[12]),
        .I1(row10_in[12]),
        .I2(row10_in[14]),
        .I3(phase_reg[14]),
        .I4(row10_in[13]),
        .I5(phase_reg[13]),
        .O(\activate_B_r[0]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_35 
       (.I0(BLOCK_WIDTHdN2[23]),
        .O(\activate_B_r[0]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_36 
       (.I0(BLOCK_WIDTHdN2[22]),
        .O(\activate_B_r[0]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_37 
       (.I0(BLOCK_WIDTHdN2[21]),
        .O(\activate_B_r[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_38 
       (.I0(row_reg[9]),
        .I1(row1[9]),
        .I2(row1[11]),
        .I3(row_reg[11]),
        .I4(row1[10]),
        .I5(row_reg[10]),
        .O(\activate_B_r[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_39 
       (.I0(row_reg[6]),
        .I1(row1[6]),
        .I2(row1[8]),
        .I3(row_reg[8]),
        .I4(row1[7]),
        .I5(row_reg[7]),
        .O(\activate_B_r[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_40 
       (.I0(row_reg[3]),
        .I1(row1[3]),
        .I2(row1[5]),
        .I3(row_reg[5]),
        .I4(row1[4]),
        .I5(row_reg[4]),
        .O(\activate_B_r[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \activate_B_r[0]_i_41 
       (.I0(row_reg[0]),
        .I1(M2[0]),
        .I2(row1[2]),
        .I3(row_reg[2]),
        .I4(row1[1]),
        .I5(row_reg[1]),
        .O(\activate_B_r[0]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_44 
       (.I0(M2[20]),
        .O(\activate_B_r[0]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_45 
       (.I0(M2[19]),
        .O(\activate_B_r[0]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_46 
       (.I0(M2[18]),
        .O(\activate_B_r[0]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_47 
       (.I0(M2[17]),
        .O(\activate_B_r[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_48 
       (.I0(block_count_reg[9]),
        .I1(activate_B_r3[9]),
        .I2(activate_B_r3[11]),
        .I3(block_count_reg[11]),
        .I4(activate_B_r3[10]),
        .I5(block_count_reg[10]),
        .O(\activate_B_r[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_49 
       (.I0(block_count_reg[6]),
        .I1(activate_B_r3[6]),
        .I2(activate_B_r3[8]),
        .I3(block_count_reg[8]),
        .I4(activate_B_r3[7]),
        .I5(block_count_reg[7]),
        .O(\activate_B_r[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_50 
       (.I0(block_count_reg[3]),
        .I1(activate_B_r3[3]),
        .I2(activate_B_r3[5]),
        .I3(block_count_reg[5]),
        .I4(activate_B_r3[4]),
        .I5(block_count_reg[4]),
        .O(\activate_B_r[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \activate_B_r[0]_i_51 
       (.I0(block_count_reg[0]),
        .I1(BLOCK_NUM[0]),
        .I2(activate_B_r3[2]),
        .I3(block_count_reg[2]),
        .I4(activate_B_r3[1]),
        .I5(block_count_reg[1]),
        .O(\activate_B_r[0]_i_51_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_54 
       (.I0(BLOCK_NUM[20]),
        .O(\activate_B_r[0]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_55 
       (.I0(BLOCK_NUM[19]),
        .O(\activate_B_r[0]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_56 
       (.I0(BLOCK_NUM[18]),
        .O(\activate_B_r[0]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_57 
       (.I0(BLOCK_NUM[17]),
        .O(\activate_B_r[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_58 
       (.I0(phase_reg[9]),
        .I1(row10_in[9]),
        .I2(row10_in[11]),
        .I3(phase_reg[11]),
        .I4(row10_in[10]),
        .I5(phase_reg[10]),
        .O(\activate_B_r[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_59 
       (.I0(phase_reg[6]),
        .I1(row10_in[6]),
        .I2(row10_in[8]),
        .I3(phase_reg[8]),
        .I4(row10_in[7]),
        .I5(phase_reg[7]),
        .O(\activate_B_r[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \activate_B_r[0]_i_60 
       (.I0(phase_reg[3]),
        .I1(row10_in[3]),
        .I2(row10_in[5]),
        .I3(phase_reg[5]),
        .I4(row10_in[4]),
        .I5(phase_reg[4]),
        .O(\activate_B_r[0]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \activate_B_r[0]_i_61 
       (.I0(phase_reg[0]),
        .I1(BLOCK_WIDTHdN2[0]),
        .I2(row10_in[2]),
        .I3(phase_reg[2]),
        .I4(row10_in[1]),
        .I5(phase_reg[1]),
        .O(\activate_B_r[0]_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_64 
       (.I0(BLOCK_WIDTHdN2[20]),
        .O(\activate_B_r[0]_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_65 
       (.I0(BLOCK_WIDTHdN2[19]),
        .O(\activate_B_r[0]_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_66 
       (.I0(BLOCK_WIDTHdN2[18]),
        .O(\activate_B_r[0]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_67 
       (.I0(BLOCK_WIDTHdN2[17]),
        .O(\activate_B_r[0]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_70 
       (.I0(M2[16]),
        .O(\activate_B_r[0]_i_70_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_71 
       (.I0(M2[15]),
        .O(\activate_B_r[0]_i_71_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_72 
       (.I0(M2[14]),
        .O(\activate_B_r[0]_i_72_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_73 
       (.I0(M2[13]),
        .O(\activate_B_r[0]_i_73_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_74 
       (.I0(M2[12]),
        .O(\activate_B_r[0]_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_75 
       (.I0(M2[11]),
        .O(\activate_B_r[0]_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_76 
       (.I0(M2[10]),
        .O(\activate_B_r[0]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_77 
       (.I0(M2[9]),
        .O(\activate_B_r[0]_i_77_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_80 
       (.I0(BLOCK_NUM[16]),
        .O(\activate_B_r[0]_i_80_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_81 
       (.I0(BLOCK_NUM[15]),
        .O(\activate_B_r[0]_i_81_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_82 
       (.I0(BLOCK_NUM[14]),
        .O(\activate_B_r[0]_i_82_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_83 
       (.I0(BLOCK_NUM[13]),
        .O(\activate_B_r[0]_i_83_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_84 
       (.I0(BLOCK_NUM[12]),
        .O(\activate_B_r[0]_i_84_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_85 
       (.I0(BLOCK_NUM[11]),
        .O(\activate_B_r[0]_i_85_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_86 
       (.I0(BLOCK_NUM[10]),
        .O(\activate_B_r[0]_i_86_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_87 
       (.I0(BLOCK_NUM[9]),
        .O(\activate_B_r[0]_i_87_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_90 
       (.I0(BLOCK_WIDTHdN2[16]),
        .O(\activate_B_r[0]_i_90_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_91 
       (.I0(BLOCK_WIDTHdN2[15]),
        .O(\activate_B_r[0]_i_91_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_92 
       (.I0(BLOCK_WIDTHdN2[14]),
        .O(\activate_B_r[0]_i_92_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_93 
       (.I0(BLOCK_WIDTHdN2[13]),
        .O(\activate_B_r[0]_i_93_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_94 
       (.I0(BLOCK_WIDTHdN2[12]),
        .O(\activate_B_r[0]_i_94_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_95 
       (.I0(BLOCK_WIDTHdN2[11]),
        .O(\activate_B_r[0]_i_95_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_96 
       (.I0(BLOCK_WIDTHdN2[10]),
        .O(\activate_B_r[0]_i_96_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_97 
       (.I0(BLOCK_WIDTHdN2[9]),
        .O(\activate_B_r[0]_i_97_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_98 
       (.I0(M2[8]),
        .O(\activate_B_r[0]_i_98_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \activate_B_r[0]_i_99 
       (.I0(M2[7]),
        .O(\activate_B_r[0]_i_99_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \activate_B_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\activate_B_r[0]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .S(rst));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_10 
       (.CI(\activate_B_r_reg[0]_i_34_n_0 ),
        .CO({\activate_B_r_reg[0]_i_10_n_0 ,\NLW_activate_B_r_reg[0]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,BLOCK_WIDTHdN2[23:21]}),
        .O({\NLW_activate_B_r_reg[0]_i_10_O_UNCONNECTED [3],row10_in[23:21]}),
        .S({1'b1,\activate_B_r[0]_i_35_n_0 ,\activate_B_r[0]_i_36_n_0 ,\activate_B_r[0]_i_37_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\activate_B_r_reg[0]_i_11_n_0 ,\NLW_activate_B_r_reg[0]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\activate_B_r[0]_i_38_n_0 ,\activate_B_r[0]_i_39_n_0 ,\activate_B_r[0]_i_40_n_0 ,\activate_B_r[0]_i_41_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_16 
       (.CI(\activate_B_r_reg[0]_i_42_n_0 ),
        .CO({\activate_B_r_reg[0]_i_16_n_0 ,\NLW_activate_B_r_reg[0]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[20:17]),
        .O(row1[20:17]),
        .S({\activate_B_r[0]_i_44_n_0 ,\activate_B_r[0]_i_45_n_0 ,\activate_B_r[0]_i_46_n_0 ,\activate_B_r[0]_i_47_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_2 
       (.CI(\activate_B_r_reg[0]_i_5_n_0 ),
        .CO({\NLW_activate_B_r_reg[0]_i_2_CO_UNCONNECTED [3],row0,\NLW_activate_B_r_reg[0]_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\activate_B_r_reg[0]_i_6_n_0 ,\activate_B_r_reg[0]_i_6_n_0 ,\activate_B_r_reg[0]_i_6_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_20 
       (.CI(1'b0),
        .CO({\activate_B_r_reg[0]_i_20_n_0 ,\NLW_activate_B_r_reg[0]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\activate_B_r[0]_i_48_n_0 ,\activate_B_r[0]_i_49_n_0 ,\activate_B_r[0]_i_50_n_0 ,\activate_B_r[0]_i_51_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_25 
       (.CI(\activate_B_r_reg[0]_i_52_n_0 ),
        .CO({\activate_B_r_reg[0]_i_25_n_0 ,\NLW_activate_B_r_reg[0]_i_25_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[20:17]),
        .O(activate_B_r3[20:17]),
        .S({\activate_B_r[0]_i_54_n_0 ,\activate_B_r[0]_i_55_n_0 ,\activate_B_r[0]_i_56_n_0 ,\activate_B_r[0]_i_57_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_29 
       (.CI(1'b0),
        .CO({\activate_B_r_reg[0]_i_29_n_0 ,\NLW_activate_B_r_reg[0]_i_29_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_29_O_UNCONNECTED [3:0]),
        .S({\activate_B_r[0]_i_58_n_0 ,\activate_B_r[0]_i_59_n_0 ,\activate_B_r[0]_i_60_n_0 ,\activate_B_r[0]_i_61_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_3 
       (.CI(\activate_B_r_reg[0]_i_7_n_0 ),
        .CO({\NLW_activate_B_r_reg[0]_i_3_CO_UNCONNECTED [3],activate_B_r2,\NLW_activate_B_r_reg[0]_i_3_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\activate_B_r_reg[0]_i_8_n_0 ,\activate_B_r_reg[0]_i_8_n_0 ,\activate_B_r_reg[0]_i_8_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_34 
       (.CI(\activate_B_r_reg[0]_i_62_n_0 ),
        .CO({\activate_B_r_reg[0]_i_34_n_0 ,\NLW_activate_B_r_reg[0]_i_34_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTHdN2[20:17]),
        .O(row10_in[20:17]),
        .S({\activate_B_r[0]_i_64_n_0 ,\activate_B_r[0]_i_65_n_0 ,\activate_B_r[0]_i_66_n_0 ,\activate_B_r[0]_i_67_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_4 
       (.CI(\activate_B_r_reg[0]_i_9_n_0 ),
        .CO({\NLW_activate_B_r_reg[0]_i_4_CO_UNCONNECTED [3],row01_out,\NLW_activate_B_r_reg[0]_i_4_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\activate_B_r_reg[0]_i_10_n_0 ,\activate_B_r_reg[0]_i_10_n_0 ,\activate_B_r_reg[0]_i_10_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_42 
       (.CI(\activate_B_r_reg[0]_i_43_n_0 ),
        .CO({\activate_B_r_reg[0]_i_42_n_0 ,\NLW_activate_B_r_reg[0]_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[16:13]),
        .O(row1[16:13]),
        .S({\activate_B_r[0]_i_70_n_0 ,\activate_B_r[0]_i_71_n_0 ,\activate_B_r[0]_i_72_n_0 ,\activate_B_r[0]_i_73_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_43 
       (.CI(\activate_B_r_reg[0]_i_68_n_0 ),
        .CO({\activate_B_r_reg[0]_i_43_n_0 ,\NLW_activate_B_r_reg[0]_i_43_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[12:9]),
        .O(row1[12:9]),
        .S({\activate_B_r[0]_i_74_n_0 ,\activate_B_r[0]_i_75_n_0 ,\activate_B_r[0]_i_76_n_0 ,\activate_B_r[0]_i_77_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_5 
       (.CI(\activate_B_r_reg[0]_i_11_n_0 ),
        .CO({\activate_B_r_reg[0]_i_5_n_0 ,\NLW_activate_B_r_reg[0]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\activate_B_r[0]_i_12_n_0 ,\activate_B_r[0]_i_13_n_0 ,\activate_B_r[0]_i_14_n_0 ,\activate_B_r[0]_i_15_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_52 
       (.CI(\activate_B_r_reg[0]_i_53_n_0 ),
        .CO({\activate_B_r_reg[0]_i_52_n_0 ,\NLW_activate_B_r_reg[0]_i_52_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[16:13]),
        .O(activate_B_r3[16:13]),
        .S({\activate_B_r[0]_i_80_n_0 ,\activate_B_r[0]_i_81_n_0 ,\activate_B_r[0]_i_82_n_0 ,\activate_B_r[0]_i_83_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_53 
       (.CI(\activate_B_r_reg[0]_i_78_n_0 ),
        .CO({\activate_B_r_reg[0]_i_53_n_0 ,\NLW_activate_B_r_reg[0]_i_53_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[12:9]),
        .O(activate_B_r3[12:9]),
        .S({\activate_B_r[0]_i_84_n_0 ,\activate_B_r[0]_i_85_n_0 ,\activate_B_r[0]_i_86_n_0 ,\activate_B_r[0]_i_87_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_6 
       (.CI(\activate_B_r_reg[0]_i_16_n_0 ),
        .CO({\activate_B_r_reg[0]_i_6_n_0 ,\NLW_activate_B_r_reg[0]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,M2[23:21]}),
        .O({\NLW_activate_B_r_reg[0]_i_6_O_UNCONNECTED [3],row1[23:21]}),
        .S({1'b1,\activate_B_r[0]_i_17_n_0 ,\activate_B_r[0]_i_18_n_0 ,\activate_B_r[0]_i_19_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_62 
       (.CI(\activate_B_r_reg[0]_i_63_n_0 ),
        .CO({\activate_B_r_reg[0]_i_62_n_0 ,\NLW_activate_B_r_reg[0]_i_62_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTHdN2[16:13]),
        .O(row10_in[16:13]),
        .S({\activate_B_r[0]_i_90_n_0 ,\activate_B_r[0]_i_91_n_0 ,\activate_B_r[0]_i_92_n_0 ,\activate_B_r[0]_i_93_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_63 
       (.CI(\activate_B_r_reg[0]_i_88_n_0 ),
        .CO({\activate_B_r_reg[0]_i_63_n_0 ,\NLW_activate_B_r_reg[0]_i_63_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTHdN2[12:9]),
        .O(row10_in[12:9]),
        .S({\activate_B_r[0]_i_94_n_0 ,\activate_B_r[0]_i_95_n_0 ,\activate_B_r[0]_i_96_n_0 ,\activate_B_r[0]_i_97_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_68 
       (.CI(\activate_B_r_reg[0]_i_69_n_0 ),
        .CO({\activate_B_r_reg[0]_i_68_n_0 ,\NLW_activate_B_r_reg[0]_i_68_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[8:5]),
        .O(row1[8:5]),
        .S({\activate_B_r[0]_i_98_n_0 ,\activate_B_r[0]_i_99_n_0 ,\activate_B_r[0]_i_100_n_0 ,\activate_B_r[0]_i_101_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_69 
       (.CI(1'b0),
        .CO({\activate_B_r_reg[0]_i_69_n_0 ,\NLW_activate_B_r_reg[0]_i_69_CO_UNCONNECTED [2:0]}),
        .CYINIT(M2[0]),
        .DI(M2[4:1]),
        .O(row1[4:1]),
        .S({\activate_B_r[0]_i_102_n_0 ,\activate_B_r[0]_i_103_n_0 ,\activate_B_r[0]_i_104_n_0 ,\activate_B_r[0]_i_105_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_7 
       (.CI(\activate_B_r_reg[0]_i_20_n_0 ),
        .CO({\activate_B_r_reg[0]_i_7_n_0 ,\NLW_activate_B_r_reg[0]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\activate_B_r[0]_i_21_n_0 ,\activate_B_r[0]_i_22_n_0 ,\activate_B_r[0]_i_23_n_0 ,\activate_B_r[0]_i_24_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_78 
       (.CI(\activate_B_r_reg[0]_i_79_n_0 ),
        .CO({\activate_B_r_reg[0]_i_78_n_0 ,\NLW_activate_B_r_reg[0]_i_78_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_NUM[8:5]),
        .O(activate_B_r3[8:5]),
        .S({\activate_B_r[0]_i_106_n_0 ,\activate_B_r[0]_i_107_n_0 ,\activate_B_r[0]_i_108_n_0 ,\activate_B_r[0]_i_109_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_79 
       (.CI(1'b0),
        .CO({\activate_B_r_reg[0]_i_79_n_0 ,\NLW_activate_B_r_reg[0]_i_79_CO_UNCONNECTED [2:0]}),
        .CYINIT(BLOCK_NUM[0]),
        .DI(BLOCK_NUM[4:1]),
        .O(activate_B_r3[4:1]),
        .S({\activate_B_r[0]_i_110_n_0 ,\activate_B_r[0]_i_111_n_0 ,\activate_B_r[0]_i_112_n_0 ,\activate_B_r[0]_i_113_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_8 
       (.CI(\activate_B_r_reg[0]_i_25_n_0 ),
        .CO({\activate_B_r_reg[0]_i_8_n_0 ,\NLW_activate_B_r_reg[0]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,BLOCK_NUM[23:21]}),
        .O({\NLW_activate_B_r_reg[0]_i_8_O_UNCONNECTED [3],activate_B_r3[23:21]}),
        .S({1'b1,\activate_B_r[0]_i_26_n_0 ,\activate_B_r[0]_i_27_n_0 ,\activate_B_r[0]_i_28_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_88 
       (.CI(\activate_B_r_reg[0]_i_89_n_0 ),
        .CO({\activate_B_r_reg[0]_i_88_n_0 ,\NLW_activate_B_r_reg[0]_i_88_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(BLOCK_WIDTHdN2[8:5]),
        .O(row10_in[8:5]),
        .S({\activate_B_r[0]_i_114_n_0 ,\activate_B_r[0]_i_115_n_0 ,\activate_B_r[0]_i_116_n_0 ,\activate_B_r[0]_i_117_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_89 
       (.CI(1'b0),
        .CO({\activate_B_r_reg[0]_i_89_n_0 ,\NLW_activate_B_r_reg[0]_i_89_CO_UNCONNECTED [2:0]}),
        .CYINIT(BLOCK_WIDTHdN2[0]),
        .DI(BLOCK_WIDTHdN2[4:1]),
        .O(row10_in[4:1]),
        .S({\activate_B_r[0]_i_118_n_0 ,\activate_B_r[0]_i_119_n_0 ,\activate_B_r[0]_i_120_n_0 ,\activate_B_r[0]_i_121_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \activate_B_r_reg[0]_i_9 
       (.CI(\activate_B_r_reg[0]_i_29_n_0 ),
        .CO({\activate_B_r_reg[0]_i_9_n_0 ,\NLW_activate_B_r_reg[0]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_activate_B_r_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\activate_B_r[0]_i_30_n_0 ,\activate_B_r[0]_i_31_n_0 ,\activate_B_r[0]_i_32_n_0 ,\activate_B_r[0]_i_33_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_r_reg[1] 
       (.C(clk),
        .CE(valid_B),
        .D(p_1_in[1]),
        .Q(p_1_in[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_r_reg[2] 
       (.C(clk),
        .CE(valid_B),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_r_reg[3] 
       (.C(clk),
        .CE(valid_B),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_r_reg[4] 
       (.C(clk),
        .CE(valid_B),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_r_reg[5] 
       (.C(clk),
        .CE(valid_B),
        .D(p_1_in[5]),
        .Q(p_1_in[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_r_reg[6] 
       (.C(clk),
        .CE(valid_B),
        .D(p_1_in[6]),
        .Q(p_1_in[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_r_reg[7] 
       (.C(clk),
        .CE(valid_B),
        .D(p_1_in[7]),
        .Q(p_1_in[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(activate_B[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(activate_B[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(activate_B[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(activate_B[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(activate_B[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(activate_B[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(activate_B[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_B_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(activate_B[7]),
        .R(rst));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \block_count[0]_i_1 
       (.I0(valid_B),
        .I1(row0),
        .I2(row01_out),
        .I3(col[2]),
        .I4(col[0]),
        .I5(col[1]),
        .O(\block_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \block_count[0]_i_3 
       (.I0(block_count_reg[0]),
        .O(\block_count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[0] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[0]_i_2_n_7 ),
        .Q(block_count_reg[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\block_count_reg[0]_i_2_n_0 ,\NLW_block_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\block_count_reg[0]_i_2_n_4 ,\block_count_reg[0]_i_2_n_5 ,\block_count_reg[0]_i_2_n_6 ,\block_count_reg[0]_i_2_n_7 }),
        .S({block_count_reg[3:1],\block_count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[10] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[8]_i_1_n_5 ),
        .Q(block_count_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[11] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[8]_i_1_n_4 ),
        .Q(block_count_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[12] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[12]_i_1_n_7 ),
        .Q(block_count_reg[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_count_reg[12]_i_1 
       (.CI(\block_count_reg[8]_i_1_n_0 ),
        .CO({\block_count_reg[12]_i_1_n_0 ,\NLW_block_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_reg[12]_i_1_n_4 ,\block_count_reg[12]_i_1_n_5 ,\block_count_reg[12]_i_1_n_6 ,\block_count_reg[12]_i_1_n_7 }),
        .S(block_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[13] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[12]_i_1_n_6 ),
        .Q(block_count_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[14] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[12]_i_1_n_5 ),
        .Q(block_count_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[15] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[12]_i_1_n_4 ),
        .Q(block_count_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[16] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[16]_i_1_n_7 ),
        .Q(block_count_reg[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_count_reg[16]_i_1 
       (.CI(\block_count_reg[12]_i_1_n_0 ),
        .CO({\block_count_reg[16]_i_1_n_0 ,\NLW_block_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_reg[16]_i_1_n_4 ,\block_count_reg[16]_i_1_n_5 ,\block_count_reg[16]_i_1_n_6 ,\block_count_reg[16]_i_1_n_7 }),
        .S(block_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[17] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[16]_i_1_n_6 ),
        .Q(block_count_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[18] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[16]_i_1_n_5 ),
        .Q(block_count_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[19] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[16]_i_1_n_4 ),
        .Q(block_count_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[1] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[0]_i_2_n_6 ),
        .Q(block_count_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[20] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[20]_i_1_n_7 ),
        .Q(block_count_reg[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_count_reg[20]_i_1 
       (.CI(\block_count_reg[16]_i_1_n_0 ),
        .CO(\NLW_block_count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_reg[20]_i_1_n_4 ,\block_count_reg[20]_i_1_n_5 ,\block_count_reg[20]_i_1_n_6 ,\block_count_reg[20]_i_1_n_7 }),
        .S(block_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[21] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[20]_i_1_n_6 ),
        .Q(block_count_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[22] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[20]_i_1_n_5 ),
        .Q(block_count_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[23] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[20]_i_1_n_4 ),
        .Q(block_count_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[2] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[0]_i_2_n_5 ),
        .Q(block_count_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[3] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[0]_i_2_n_4 ),
        .Q(block_count_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[4] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[4]_i_1_n_7 ),
        .Q(block_count_reg[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_count_reg[4]_i_1 
       (.CI(\block_count_reg[0]_i_2_n_0 ),
        .CO({\block_count_reg[4]_i_1_n_0 ,\NLW_block_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_reg[4]_i_1_n_4 ,\block_count_reg[4]_i_1_n_5 ,\block_count_reg[4]_i_1_n_6 ,\block_count_reg[4]_i_1_n_7 }),
        .S(block_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[5] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[4]_i_1_n_6 ),
        .Q(block_count_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[6] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[4]_i_1_n_5 ),
        .Q(block_count_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[7] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[4]_i_1_n_4 ),
        .Q(block_count_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[8] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[8]_i_1_n_7 ),
        .Q(block_count_reg[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \block_count_reg[8]_i_1 
       (.CI(\block_count_reg[4]_i_1_n_0 ),
        .CO({\block_count_reg[8]_i_1_n_0 ,\NLW_block_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\block_count_reg[8]_i_1_n_4 ,\block_count_reg[8]_i_1_n_5 ,\block_count_reg[8]_i_1_n_6 ,\block_count_reg[8]_i_1_n_7 }),
        .S(block_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \block_count_reg[9] 
       (.C(clk),
        .CE(\block_count[0]_i_1_n_0 ),
        .D(\block_count_reg[8]_i_1_n_6 ),
        .Q(block_count_reg[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \col[0]_i_1 
       (.I0(col[0]),
        .O(\col[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col[1]_i_1 
       (.I0(col[0]),
        .I1(col[1]),
        .O(\col[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6C)) 
    \col[2]_i_1 
       (.I0(col[0]),
        .I1(col[2]),
        .I2(col[1]),
        .O(\col[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[0] 
       (.C(clk),
        .CE(valid_B),
        .D(\col[0]_i_1_n_0 ),
        .Q(col[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[1] 
       (.C(clk),
        .CE(valid_B),
        .D(\col[1]_i_1_n_0 ),
        .Q(col[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[2] 
       (.C(clk),
        .CE(valid_B),
        .D(\col[2]_i_1_n_0 ),
        .Q(col[2]),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_2 
       (.I0(M2[3]),
        .I1(offset_reg[3]),
        .O(\offset[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_3 
       (.I0(M2[2]),
        .I1(offset_reg[2]),
        .O(\offset[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_4 
       (.I0(M2[1]),
        .I1(offset_reg[1]),
        .O(\offset[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[0]_i_5 
       (.I0(M2[0]),
        .I1(offset_reg[0]),
        .O(\offset[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_2 
       (.I0(M2[15]),
        .I1(offset_reg[15]),
        .O(\offset[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_3 
       (.I0(M2[14]),
        .I1(offset_reg[14]),
        .O(\offset[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_4 
       (.I0(M2[13]),
        .I1(offset_reg[13]),
        .O(\offset[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[12]_i_5 
       (.I0(M2[12]),
        .I1(offset_reg[12]),
        .O(\offset[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_2 
       (.I0(M2[19]),
        .I1(offset_reg[19]),
        .O(\offset[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_3 
       (.I0(M2[18]),
        .I1(offset_reg[18]),
        .O(\offset[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_4 
       (.I0(M2[17]),
        .I1(offset_reg[17]),
        .O(\offset[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[16]_i_5 
       (.I0(M2[16]),
        .I1(offset_reg[16]),
        .O(\offset[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_2 
       (.I0(M2[23]),
        .I1(offset_reg[23]),
        .O(\offset[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_3 
       (.I0(M2[22]),
        .I1(offset_reg[22]),
        .O(\offset[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_4 
       (.I0(M2[21]),
        .I1(offset_reg[21]),
        .O(\offset[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[20]_i_5 
       (.I0(M2[20]),
        .I1(offset_reg[20]),
        .O(\offset[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_2 
       (.I0(M2[7]),
        .I1(offset_reg[7]),
        .O(\offset[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_3 
       (.I0(M2[6]),
        .I1(offset_reg[6]),
        .O(\offset[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_4 
       (.I0(M2[5]),
        .I1(offset_reg[5]),
        .O(\offset[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[4]_i_5 
       (.I0(M2[4]),
        .I1(offset_reg[4]),
        .O(\offset[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_2 
       (.I0(M2[11]),
        .I1(offset_reg[11]),
        .O(\offset[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_3 
       (.I0(M2[10]),
        .I1(offset_reg[10]),
        .O(\offset[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_4 
       (.I0(M2[9]),
        .I1(offset_reg[9]),
        .O(\offset[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \offset[8]_i_5 
       (.I0(M2[8]),
        .I1(offset_reg[8]),
        .O(\offset[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[0] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_1_n_7 ),
        .Q(offset_reg[0]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\offset_reg[0]_i_1_n_0 ,\NLW_offset_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[3:0]),
        .O({\offset_reg[0]_i_1_n_4 ,\offset_reg[0]_i_1_n_5 ,\offset_reg[0]_i_1_n_6 ,\offset_reg[0]_i_1_n_7 }),
        .S({\offset[0]_i_2_n_0 ,\offset[0]_i_3_n_0 ,\offset[0]_i_4_n_0 ,\offset[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[10] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_5 ),
        .Q(offset_reg[10]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[11] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_4 ),
        .Q(offset_reg[11]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[12] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_7 ),
        .Q(offset_reg[12]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[12]_i_1 
       (.CI(\offset_reg[8]_i_1_n_0 ),
        .CO({\offset_reg[12]_i_1_n_0 ,\NLW_offset_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[15:12]),
        .O({\offset_reg[12]_i_1_n_4 ,\offset_reg[12]_i_1_n_5 ,\offset_reg[12]_i_1_n_6 ,\offset_reg[12]_i_1_n_7 }),
        .S({\offset[12]_i_2_n_0 ,\offset[12]_i_3_n_0 ,\offset[12]_i_4_n_0 ,\offset[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[13] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_6 ),
        .Q(offset_reg[13]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[14] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_5 ),
        .Q(offset_reg[14]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[15] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[12]_i_1_n_4 ),
        .Q(offset_reg[15]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[16] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_7 ),
        .Q(offset_reg[16]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[16]_i_1 
       (.CI(\offset_reg[12]_i_1_n_0 ),
        .CO({\offset_reg[16]_i_1_n_0 ,\NLW_offset_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[19:16]),
        .O({\offset_reg[16]_i_1_n_4 ,\offset_reg[16]_i_1_n_5 ,\offset_reg[16]_i_1_n_6 ,\offset_reg[16]_i_1_n_7 }),
        .S({\offset[16]_i_2_n_0 ,\offset[16]_i_3_n_0 ,\offset[16]_i_4_n_0 ,\offset[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[17] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_6 ),
        .Q(offset_reg[17]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[18] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_5 ),
        .Q(offset_reg[18]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[19] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[16]_i_1_n_4 ),
        .Q(offset_reg[19]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[1] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_1_n_6 ),
        .Q(offset_reg[1]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[20] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_7 ),
        .Q(offset_reg[20]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[20]_i_1 
       (.CI(\offset_reg[16]_i_1_n_0 ),
        .CO(\NLW_offset_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,M2[22:20]}),
        .O({\offset_reg[20]_i_1_n_4 ,\offset_reg[20]_i_1_n_5 ,\offset_reg[20]_i_1_n_6 ,\offset_reg[20]_i_1_n_7 }),
        .S({\offset[20]_i_2_n_0 ,\offset[20]_i_3_n_0 ,\offset[20]_i_4_n_0 ,\offset[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[21] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_6 ),
        .Q(offset_reg[21]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[22] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_5 ),
        .Q(offset_reg[22]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[23] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[20]_i_1_n_4 ),
        .Q(offset_reg[23]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[2] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_1_n_5 ),
        .Q(offset_reg[2]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[3] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[0]_i_1_n_4 ),
        .Q(offset_reg[3]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[4] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_7 ),
        .Q(offset_reg[4]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[4]_i_1 
       (.CI(\offset_reg[0]_i_1_n_0 ),
        .CO({\offset_reg[4]_i_1_n_0 ,\NLW_offset_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[7:4]),
        .O({\offset_reg[4]_i_1_n_4 ,\offset_reg[4]_i_1_n_5 ,\offset_reg[4]_i_1_n_6 ,\offset_reg[4]_i_1_n_7 }),
        .S({\offset[4]_i_2_n_0 ,\offset[4]_i_3_n_0 ,\offset[4]_i_4_n_0 ,\offset[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[5] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_6 ),
        .Q(offset_reg[5]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[6] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_5 ),
        .Q(offset_reg[6]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[7] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[4]_i_1_n_4 ),
        .Q(offset_reg[7]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[8] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_7 ),
        .Q(offset_reg[8]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[8]_i_1 
       (.CI(\offset_reg[4]_i_1_n_0 ),
        .CO({\offset_reg[8]_i_1_n_0 ,\NLW_offset_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(M2[11:8]),
        .O({\offset_reg[8]_i_1_n_4 ,\offset_reg[8]_i_1_n_5 ,\offset_reg[8]_i_1_n_6 ,\offset_reg[8]_i_1_n_7 }),
        .S({\offset[8]_i_2_n_0 ,\offset[8]_i_3_n_0 ,\offset[8]_i_4_n_0 ,\offset[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[9] 
       (.C(clk),
        .CE(offset),
        .D(\offset_reg[8]_i_1_n_6 ),
        .Q(offset_reg[9]),
        .R(\phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \phase[0]_i_1 
       (.I0(col[1]),
        .I1(col[0]),
        .I2(col[2]),
        .I3(row01_out),
        .I4(valid_B),
        .I5(rst),
        .O(\phase[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \phase[0]_i_2 
       (.I0(valid_B),
        .I1(col[0]),
        .I2(col[2]),
        .I3(col[1]),
        .O(offset));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[0]_i_4 
       (.I0(phase_reg[0]),
        .O(\phase[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[0]_i_3_n_7 ),
        .Q(phase_reg[0]),
        .R(\phase[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \phase_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\phase_reg[0]_i_3_n_0 ,\NLW_phase_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\phase_reg[0]_i_3_n_4 ,\phase_reg[0]_i_3_n_5 ,\phase_reg[0]_i_3_n_6 ,\phase_reg[0]_i_3_n_7 }),
        .S({phase_reg[3:1],\phase[0]_i_4_n_0 }));
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
        .D(\phase_reg[0]_i_3_n_6 ),
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
        .D(\phase_reg[0]_i_3_n_5 ),
        .Q(phase_reg[2]),
        .R(\phase[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[3] 
       (.C(clk),
        .CE(offset),
        .D(\phase_reg[0]_i_3_n_4 ),
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
       (.CI(\phase_reg[0]_i_3_n_0 ),
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
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \row[0]_i_1 
       (.I0(\row[0]_i_4_n_0 ),
        .I1(col[2]),
        .I2(row01_out),
        .I3(row0),
        .I4(valid_B),
        .I5(rst),
        .O(\row[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \row[0]_i_2 
       (.I0(valid_B),
        .I1(row01_out),
        .I2(col[2]),
        .I3(col[0]),
        .I4(col[1]),
        .O(row));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_4 
       (.I0(col[0]),
        .I1(col[1]),
        .O(\row[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \row[0]_i_5 
       (.I0(row_reg[0]),
        .O(\row[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[0] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[0]_i_3_n_7 ),
        .Q(row_reg[0]),
        .R(\row[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \row_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\row_reg[0]_i_3_n_0 ,\NLW_row_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\row_reg[0]_i_3_n_4 ,\row_reg[0]_i_3_n_5 ,\row_reg[0]_i_3_n_6 ,\row_reg[0]_i_3_n_7 }),
        .S({row_reg[3:1],\row[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[10] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[8]_i_1_n_5 ),
        .Q(row_reg[10]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[11] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[8]_i_1_n_4 ),
        .Q(row_reg[11]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[12] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[12]_i_1_n_7 ),
        .Q(row_reg[12]),
        .R(\row[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \row_reg[12]_i_1 
       (.CI(\row_reg[8]_i_1_n_0 ),
        .CO({\row_reg[12]_i_1_n_0 ,\NLW_row_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_reg[12]_i_1_n_4 ,\row_reg[12]_i_1_n_5 ,\row_reg[12]_i_1_n_6 ,\row_reg[12]_i_1_n_7 }),
        .S(row_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[13] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[12]_i_1_n_6 ),
        .Q(row_reg[13]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[14] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[12]_i_1_n_5 ),
        .Q(row_reg[14]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[15] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[12]_i_1_n_4 ),
        .Q(row_reg[15]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[16] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[16]_i_1_n_7 ),
        .Q(row_reg[16]),
        .R(\row[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \row_reg[16]_i_1 
       (.CI(\row_reg[12]_i_1_n_0 ),
        .CO({\row_reg[16]_i_1_n_0 ,\NLW_row_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_reg[16]_i_1_n_4 ,\row_reg[16]_i_1_n_5 ,\row_reg[16]_i_1_n_6 ,\row_reg[16]_i_1_n_7 }),
        .S(row_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[17] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[16]_i_1_n_6 ),
        .Q(row_reg[17]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[18] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[16]_i_1_n_5 ),
        .Q(row_reg[18]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[19] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[16]_i_1_n_4 ),
        .Q(row_reg[19]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[1] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[0]_i_3_n_6 ),
        .Q(row_reg[1]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[20] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[20]_i_1_n_7 ),
        .Q(row_reg[20]),
        .R(\row[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \row_reg[20]_i_1 
       (.CI(\row_reg[16]_i_1_n_0 ),
        .CO(\NLW_row_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_reg[20]_i_1_n_4 ,\row_reg[20]_i_1_n_5 ,\row_reg[20]_i_1_n_6 ,\row_reg[20]_i_1_n_7 }),
        .S(row_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[21] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[20]_i_1_n_6 ),
        .Q(row_reg[21]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[22] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[20]_i_1_n_5 ),
        .Q(row_reg[22]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[23] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[20]_i_1_n_4 ),
        .Q(row_reg[23]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[2] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[0]_i_3_n_5 ),
        .Q(row_reg[2]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[3] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[0]_i_3_n_4 ),
        .Q(row_reg[3]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[4] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[4]_i_1_n_7 ),
        .Q(row_reg[4]),
        .R(\row[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \row_reg[4]_i_1 
       (.CI(\row_reg[0]_i_3_n_0 ),
        .CO({\row_reg[4]_i_1_n_0 ,\NLW_row_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_reg[4]_i_1_n_4 ,\row_reg[4]_i_1_n_5 ,\row_reg[4]_i_1_n_6 ,\row_reg[4]_i_1_n_7 }),
        .S(row_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[5] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[4]_i_1_n_6 ),
        .Q(row_reg[5]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[6] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[4]_i_1_n_5 ),
        .Q(row_reg[6]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[7] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[4]_i_1_n_4 ),
        .Q(row_reg[7]),
        .R(\row[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[8] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[8]_i_1_n_7 ),
        .Q(row_reg[8]),
        .R(\row[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \row_reg[8]_i_1 
       (.CI(\row_reg[4]_i_1_n_0 ),
        .CO({\row_reg[8]_i_1_n_0 ,\NLW_row_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_reg[8]_i_1_n_4 ,\row_reg[8]_i_1_n_5 ,\row_reg[8]_i_1_n_6 ,\row_reg[8]_i_1_n_7 }),
        .S(row_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[9] 
       (.C(clk),
        .CE(row),
        .D(\row_reg[8]_i_1_n_6 ),
        .Q(row_reg[9]),
        .R(\row[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[11]_i_2 
       (.I0(row_reg[11]),
        .I1(offset_reg[11]),
        .O(\wr_addr_B[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[11]_i_3 
       (.I0(row_reg[10]),
        .I1(offset_reg[10]),
        .O(\wr_addr_B[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[11]_i_4 
       (.I0(row_reg[9]),
        .I1(offset_reg[9]),
        .O(\wr_addr_B[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[11]_i_5 
       (.I0(row_reg[8]),
        .I1(offset_reg[8]),
        .O(\wr_addr_B[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[15]_i_2 
       (.I0(row_reg[15]),
        .I1(offset_reg[15]),
        .O(\wr_addr_B[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[15]_i_3 
       (.I0(row_reg[14]),
        .I1(offset_reg[14]),
        .O(\wr_addr_B[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[15]_i_4 
       (.I0(row_reg[13]),
        .I1(offset_reg[13]),
        .O(\wr_addr_B[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[15]_i_5 
       (.I0(row_reg[12]),
        .I1(offset_reg[12]),
        .O(\wr_addr_B[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[19]_i_2 
       (.I0(row_reg[19]),
        .I1(offset_reg[19]),
        .O(\wr_addr_B[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[19]_i_3 
       (.I0(row_reg[18]),
        .I1(offset_reg[18]),
        .O(\wr_addr_B[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[19]_i_4 
       (.I0(row_reg[17]),
        .I1(offset_reg[17]),
        .O(\wr_addr_B[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[19]_i_5 
       (.I0(row_reg[16]),
        .I1(offset_reg[16]),
        .O(\wr_addr_B[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[23]_i_2 
       (.I0(row_reg[23]),
        .I1(offset_reg[23]),
        .O(\wr_addr_B[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[23]_i_3 
       (.I0(row_reg[22]),
        .I1(offset_reg[22]),
        .O(\wr_addr_B[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[23]_i_4 
       (.I0(row_reg[21]),
        .I1(offset_reg[21]),
        .O(\wr_addr_B[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[23]_i_5 
       (.I0(row_reg[20]),
        .I1(offset_reg[20]),
        .O(\wr_addr_B[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[3]_i_2 
       (.I0(row_reg[3]),
        .I1(offset_reg[3]),
        .O(\wr_addr_B[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[3]_i_3 
       (.I0(row_reg[2]),
        .I1(offset_reg[2]),
        .O(\wr_addr_B[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[3]_i_4 
       (.I0(row_reg[1]),
        .I1(offset_reg[1]),
        .O(\wr_addr_B[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[3]_i_5 
       (.I0(row_reg[0]),
        .I1(offset_reg[0]),
        .O(\wr_addr_B[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[7]_i_2 
       (.I0(row_reg[7]),
        .I1(offset_reg[7]),
        .O(\wr_addr_B[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[7]_i_3 
       (.I0(row_reg[6]),
        .I1(offset_reg[6]),
        .O(\wr_addr_B[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[7]_i_4 
       (.I0(row_reg[5]),
        .I1(offset_reg[5]),
        .O(\wr_addr_B[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_B[7]_i_5 
       (.I0(row_reg[4]),
        .I1(offset_reg[4]),
        .O(\wr_addr_B[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[0] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[0]),
        .Q(wr_addr_B[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[10] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[10]),
        .Q(wr_addr_B[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[11] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[11]),
        .Q(wr_addr_B[11]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_B_reg[11]_i_1 
       (.CI(\wr_addr_B_reg[7]_i_1_n_0 ),
        .CO({\wr_addr_B_reg[11]_i_1_n_0 ,\NLW_wr_addr_B_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(row_reg[11:8]),
        .O(wr_addr_B0[11:8]),
        .S({\wr_addr_B[11]_i_2_n_0 ,\wr_addr_B[11]_i_3_n_0 ,\wr_addr_B[11]_i_4_n_0 ,\wr_addr_B[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[12] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[12]),
        .Q(wr_addr_B[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[13] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[13]),
        .Q(wr_addr_B[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[14] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[14]),
        .Q(wr_addr_B[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[15] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[15]),
        .Q(wr_addr_B[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_B_reg[15]_i_1 
       (.CI(\wr_addr_B_reg[11]_i_1_n_0 ),
        .CO({\wr_addr_B_reg[15]_i_1_n_0 ,\NLW_wr_addr_B_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(row_reg[15:12]),
        .O(wr_addr_B0[15:12]),
        .S({\wr_addr_B[15]_i_2_n_0 ,\wr_addr_B[15]_i_3_n_0 ,\wr_addr_B[15]_i_4_n_0 ,\wr_addr_B[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[16] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[16]),
        .Q(wr_addr_B[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[17] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[17]),
        .Q(wr_addr_B[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[18] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[18]),
        .Q(wr_addr_B[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[19] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[19]),
        .Q(wr_addr_B[19]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_B_reg[19]_i_1 
       (.CI(\wr_addr_B_reg[15]_i_1_n_0 ),
        .CO({\wr_addr_B_reg[19]_i_1_n_0 ,\NLW_wr_addr_B_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(row_reg[19:16]),
        .O(wr_addr_B0[19:16]),
        .S({\wr_addr_B[19]_i_2_n_0 ,\wr_addr_B[19]_i_3_n_0 ,\wr_addr_B[19]_i_4_n_0 ,\wr_addr_B[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[1] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[1]),
        .Q(wr_addr_B[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[20] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[20]),
        .Q(wr_addr_B[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[21] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[21]),
        .Q(wr_addr_B[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[22] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[22]),
        .Q(wr_addr_B[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[23] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[23]),
        .Q(wr_addr_B[23]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_B_reg[23]_i_1 
       (.CI(\wr_addr_B_reg[19]_i_1_n_0 ),
        .CO(\NLW_wr_addr_B_reg[23]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,row_reg[22:20]}),
        .O(wr_addr_B0[23:20]),
        .S({\wr_addr_B[23]_i_2_n_0 ,\wr_addr_B[23]_i_3_n_0 ,\wr_addr_B[23]_i_4_n_0 ,\wr_addr_B[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[2] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[2]),
        .Q(wr_addr_B[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[3] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[3]),
        .Q(wr_addr_B[3]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_B_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\wr_addr_B_reg[3]_i_1_n_0 ,\NLW_wr_addr_B_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(row_reg[3:0]),
        .O(wr_addr_B0[3:0]),
        .S({\wr_addr_B[3]_i_2_n_0 ,\wr_addr_B[3]_i_3_n_0 ,\wr_addr_B[3]_i_4_n_0 ,\wr_addr_B[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[4] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[4]),
        .Q(wr_addr_B[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[5] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[5]),
        .Q(wr_addr_B[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[6] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[6]),
        .Q(wr_addr_B[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[7] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[7]),
        .Q(wr_addr_B[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_B_reg[7]_i_1 
       (.CI(\wr_addr_B_reg[3]_i_1_n_0 ),
        .CO({\wr_addr_B_reg[7]_i_1_n_0 ,\NLW_wr_addr_B_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(row_reg[7:4]),
        .O(wr_addr_B0[7:4]),
        .S({\wr_addr_B[7]_i_2_n_0 ,\wr_addr_B[7]_i_3_n_0 ,\wr_addr_B[7]_i_4_n_0 ,\wr_addr_B[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[8] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[8]),
        .Q(wr_addr_B[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_B_reg[9] 
       (.C(clk),
        .CE(valid_B),
        .D(wr_addr_B0[9]),
        .Q(wr_addr_B[9]),
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
