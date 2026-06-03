// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Mar 18 16:22:11 2025
// Host        : JANE running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim mem_write_A_impl.sv
// Design      : mem_write_A
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_W = "24" *) (* ECO_CHECKSUM = "7ed4caf3" *) (* MATRIXSIZE_W = "24" *) 
(* N1 = "8" *) 
(* NotValidForBitStream *)
module mem_write_A
   (clk,
    rst,
    M2,
    M1dN1,
    valid_A,
    wr_addr_A,
    activate_A);
  input clk;
  input rst;
  input [23:0]M2;
  input [23:0]M1dN1;
  input valid_A;
  output [23:0]wr_addr_A;
  output [7:0]activate_A;

  wire [23:0]M1dN1;
  wire [23:0]M2;
  wire [7:0]N1_counter;
  wire \N1_counter[0]_i_1_n_0 ;
  wire \N1_counter[1]_i_1_n_0 ;
  wire \N1_counter[2]_i_1_n_0 ;
  wire \N1_counter[3]_i_1_n_0 ;
  wire \N1_counter[4]_i_1_n_0 ;
  wire \N1_counter[5]_i_1_n_0 ;
  wire \N1_counter[6]_i_1_n_0 ;
  wire \N1_counter[6]_i_2_n_0 ;
  wire \N1_counter[7]_i_1_n_0 ;
  wire \N1_counter[7]_i_2_n_0 ;
  wire \N1_counter[7]_i_3_n_0 ;
  wire [7:0]activate_A;
  wire \activate_A[0]_i_1_n_0 ;
  wire \activate_A[1]_i_1_n_0 ;
  wire \activate_A[2]_i_1_n_0 ;
  wire \activate_A[3]_i_1_n_0 ;
  wire \activate_A[4]_i_1_n_0 ;
  wire \activate_A[5]_i_1_n_0 ;
  wire \activate_A[6]_i_1_n_0 ;
  wire \activate_A[7]_i_1_n_0 ;
  wire \activate_A[7]_i_2_n_0 ;
  wire clk;
  wire [23:0]limit;
  wire [23:0]limit0;
  wire \limit[11]_i_2_n_0 ;
  wire \limit[11]_i_3_n_0 ;
  wire \limit[11]_i_4_n_0 ;
  wire \limit[11]_i_5_n_0 ;
  wire \limit[11]_i_6_n_0 ;
  wire \limit[11]_i_7_n_0 ;
  wire \limit[11]_i_8_n_0 ;
  wire \limit[11]_i_9_n_0 ;
  wire \limit[15]_i_2_n_0 ;
  wire \limit[15]_i_3_n_0 ;
  wire \limit[15]_i_4_n_0 ;
  wire \limit[15]_i_5_n_0 ;
  wire \limit[15]_i_6_n_0 ;
  wire \limit[15]_i_7_n_0 ;
  wire \limit[15]_i_8_n_0 ;
  wire \limit[15]_i_9_n_0 ;
  wire \limit[19]_i_2_n_0 ;
  wire \limit[19]_i_3_n_0 ;
  wire \limit[19]_i_4_n_0 ;
  wire \limit[19]_i_5_n_0 ;
  wire \limit[19]_i_6_n_0 ;
  wire \limit[19]_i_7_n_0 ;
  wire \limit[19]_i_8_n_0 ;
  wire \limit[19]_i_9_n_0 ;
  wire \limit[23]_i_2_n_0 ;
  wire \limit[23]_i_3_n_0 ;
  wire \limit[23]_i_4_n_0 ;
  wire \limit[23]_i_5_n_0 ;
  wire \limit[23]_i_6_n_0 ;
  wire \limit[23]_i_7_n_0 ;
  wire \limit[23]_i_8_n_0 ;
  wire \limit[3]_i_2_n_0 ;
  wire \limit[3]_i_3_n_0 ;
  wire \limit[3]_i_4_n_0 ;
  wire \limit[3]_i_5_n_0 ;
  wire \limit[3]_i_6_n_0 ;
  wire \limit[7]_i_2_n_0 ;
  wire \limit[7]_i_3_n_0 ;
  wire \limit[7]_i_4_n_0 ;
  wire \limit[7]_i_5_n_0 ;
  wire \limit[7]_i_6_n_0 ;
  wire \limit[7]_i_7_n_0 ;
  wire \limit[7]_i_8_n_0 ;
  wire \limit[7]_i_9_n_0 ;
  wire \limit_reg[11]_i_1_n_0 ;
  wire \limit_reg[15]_i_1_n_0 ;
  wire \limit_reg[19]_i_1_n_0 ;
  wire \limit_reg[3]_i_1_n_0 ;
  wire \limit_reg[7]_i_1_n_0 ;
  wire [23:0]m1_n1_counter;
  wire [23:1]m1_n1_counter0;
  wire \m1_n1_counter[0]_i_1_n_0 ;
  wire \m1_n1_counter[10]_i_1_n_0 ;
  wire \m1_n1_counter[11]_i_1_n_0 ;
  wire \m1_n1_counter[12]_i_1_n_0 ;
  wire \m1_n1_counter[13]_i_1_n_0 ;
  wire \m1_n1_counter[14]_i_1_n_0 ;
  wire \m1_n1_counter[15]_i_1_n_0 ;
  wire \m1_n1_counter[16]_i_1_n_0 ;
  wire \m1_n1_counter[17]_i_1_n_0 ;
  wire \m1_n1_counter[18]_i_1_n_0 ;
  wire \m1_n1_counter[19]_i_1_n_0 ;
  wire \m1_n1_counter[1]_i_1_n_0 ;
  wire \m1_n1_counter[20]_i_1_n_0 ;
  wire \m1_n1_counter[21]_i_1_n_0 ;
  wire \m1_n1_counter[22]_i_1_n_0 ;
  wire \m1_n1_counter[23]_i_1_n_0 ;
  wire \m1_n1_counter[23]_i_2_n_0 ;
  wire \m1_n1_counter[2]_i_1_n_0 ;
  wire \m1_n1_counter[3]_i_1_n_0 ;
  wire \m1_n1_counter[4]_i_1_n_0 ;
  wire \m1_n1_counter[5]_i_1_n_0 ;
  wire \m1_n1_counter[6]_i_1_n_0 ;
  wire \m1_n1_counter[7]_i_1_n_0 ;
  wire \m1_n1_counter[8]_i_1_n_0 ;
  wire \m1_n1_counter[9]_i_1_n_0 ;
  wire \m1_n1_counter_reg[12]_i_2_n_0 ;
  wire \m1_n1_counter_reg[16]_i_2_n_0 ;
  wire \m1_n1_counter_reg[20]_i_2_n_0 ;
  wire \m1_n1_counter_reg[4]_i_2_n_0 ;
  wire \m1_n1_counter_reg[8]_i_2_n_0 ;
  wire \offset[0]_i_2_n_0 ;
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
  wire offset_reg__0_n_0;
  wire offset_reg__1_n_0;
  wire offset_reg__2_n_0;
  wire offset_reg__3_i_1_n_0;
  wire offset_reg__3_n_0;
  wire offset_reg__4_n_0;
  wire offset_reg__5_n_0;
  wire offset_reg__6_n_0;
  wire [23:0]p_0_in;
  wire [23:0]p_1_in;
  wire rst;
  wire second_switch;
  wire second_switch0;
  wire second_switch1;
  wire second_switch_i_10_n_0;
  wire second_switch_i_11_n_0;
  wire second_switch_i_12_n_0;
  wire second_switch_i_1_n_0;
  wire second_switch_i_5_n_0;
  wire second_switch_i_6_n_0;
  wire second_switch_i_7_n_0;
  wire second_switch_i_8_n_0;
  wire second_switch_i_9_n_0;
  wire second_switch_reg_i_4_n_0;
  wire [2:0]state;
  wire state00_out;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_10_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_13_n_0 ;
  wire \state[2]_i_15_n_0 ;
  wire \state[2]_i_16_n_0 ;
  wire \state[2]_i_17_n_0 ;
  wire \state[2]_i_18_n_0 ;
  wire \state[2]_i_19_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_20_n_0 ;
  wire \state[2]_i_21_n_0 ;
  wire \state[2]_i_22_n_0 ;
  wire \state[2]_i_23_n_0 ;
  wire \state[2]_i_24_n_0 ;
  wire \state[2]_i_25_n_0 ;
  wire \state[2]_i_26_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state_reg[2]_i_14_n_0 ;
  wire \state_reg[2]_i_5_n_0 ;
  wire \state_reg[2]_i_9_n_0 ;
  wire switch;
  wire switch_i_1_n_0;
  wire valid_A;
  wire [23:0]wr_addr_A;
  wire [16:0]wr_addr_A0__0;
  wire [23:17]wr_addr_A0__1;
  wire wr_addr_A0_i_1_n_0;
  wire wr_addr_A0_i_2_n_0;
  wire wr_addr_A0_i_3_n_0;
  wire wr_addr_A0_i_4_n_0;
  wire wr_addr_A0_i_5_n_0;
  wire wr_addr_A0_n_82;
  wire wr_addr_A0_n_83;
  wire wr_addr_A0_n_84;
  wire wr_addr_A0_n_85;
  wire wr_addr_A0_n_86;
  wire wr_addr_A0_n_87;
  wire wr_addr_A0_n_88;
  wire \wr_addr_A[0]_i_2_n_0 ;
  wire \wr_addr_A[20]_i_10_n_0 ;
  wire \wr_addr_A[20]_i_11_n_0 ;
  wire \wr_addr_A[20]_i_12_n_0 ;
  wire \wr_addr_A[20]_i_13_n_0 ;
  wire \wr_addr_A[20]_i_14_n_0 ;
  wire \wr_addr_A[20]_i_15_n_0 ;
  wire \wr_addr_A[20]_i_4_n_0 ;
  wire \wr_addr_A[20]_i_5_n_0 ;
  wire \wr_addr_A[20]_i_6_n_0 ;
  wire \wr_addr_A[20]_i_7_n_0 ;
  wire \wr_addr_A[20]_i_9_n_0 ;
  wire \wr_addr_A[23]_i_12_n_0 ;
  wire \wr_addr_A[23]_i_13_n_0 ;
  wire \wr_addr_A[23]_i_14_n_0 ;
  wire \wr_addr_A[23]_i_15_n_0 ;
  wire \wr_addr_A[23]_i_16_n_0 ;
  wire \wr_addr_A[23]_i_17_n_0 ;
  wire \wr_addr_A[23]_i_18_n_0 ;
  wire \wr_addr_A[23]_i_19_n_0 ;
  wire \wr_addr_A[23]_i_1_n_0 ;
  wire \wr_addr_A[23]_i_20_n_0 ;
  wire \wr_addr_A[23]_i_22_n_0 ;
  wire \wr_addr_A[23]_i_23_n_0 ;
  wire \wr_addr_A[23]_i_24_n_0 ;
  wire \wr_addr_A[23]_i_25_n_0 ;
  wire \wr_addr_A[23]_i_26_n_0 ;
  wire \wr_addr_A[23]_i_27_n_0 ;
  wire \wr_addr_A[23]_i_28_n_0 ;
  wire \wr_addr_A[23]_i_29_n_0 ;
  wire \wr_addr_A[23]_i_30_n_0 ;
  wire \wr_addr_A[23]_i_31_n_0 ;
  wire \wr_addr_A[23]_i_3_n_0 ;
  wire \wr_addr_A[23]_i_5_n_0 ;
  wire \wr_addr_A[23]_i_7_n_0 ;
  wire \wr_addr_A[23]_i_8_n_0 ;
  wire \wr_addr_A[23]_i_9_n_0 ;
  wire \wr_addr_A_reg[12]_i_2_n_0 ;
  wire \wr_addr_A_reg[12]_i_2_n_4 ;
  wire \wr_addr_A_reg[12]_i_2_n_5 ;
  wire \wr_addr_A_reg[12]_i_2_n_6 ;
  wire \wr_addr_A_reg[12]_i_2_n_7 ;
  wire \wr_addr_A_reg[16]_i_2_n_0 ;
  wire \wr_addr_A_reg[16]_i_2_n_4 ;
  wire \wr_addr_A_reg[16]_i_2_n_5 ;
  wire \wr_addr_A_reg[16]_i_2_n_6 ;
  wire \wr_addr_A_reg[16]_i_2_n_7 ;
  wire \wr_addr_A_reg[20]_i_2_n_0 ;
  wire \wr_addr_A_reg[20]_i_2_n_4 ;
  wire \wr_addr_A_reg[20]_i_2_n_5 ;
  wire \wr_addr_A_reg[20]_i_2_n_6 ;
  wire \wr_addr_A_reg[20]_i_2_n_7 ;
  wire \wr_addr_A_reg[20]_i_3_n_0 ;
  wire \wr_addr_A_reg[20]_i_8_n_0 ;
  wire \wr_addr_A_reg[20]_i_8_n_4 ;
  wire \wr_addr_A_reg[20]_i_8_n_5 ;
  wire \wr_addr_A_reg[20]_i_8_n_6 ;
  wire \wr_addr_A_reg[20]_i_8_n_7 ;
  wire \wr_addr_A_reg[23]_i_10_n_4 ;
  wire \wr_addr_A_reg[23]_i_10_n_5 ;
  wire \wr_addr_A_reg[23]_i_10_n_6 ;
  wire \wr_addr_A_reg[23]_i_10_n_7 ;
  wire \wr_addr_A_reg[23]_i_11_n_5 ;
  wire \wr_addr_A_reg[23]_i_11_n_6 ;
  wire \wr_addr_A_reg[23]_i_11_n_7 ;
  wire \wr_addr_A_reg[23]_i_21_n_4 ;
  wire \wr_addr_A_reg[23]_i_21_n_5 ;
  wire \wr_addr_A_reg[23]_i_21_n_6 ;
  wire \wr_addr_A_reg[23]_i_21_n_7 ;
  wire \wr_addr_A_reg[23]_i_4_n_5 ;
  wire \wr_addr_A_reg[23]_i_4_n_6 ;
  wire \wr_addr_A_reg[23]_i_4_n_7 ;
  wire \wr_addr_A_reg[4]_i_2_n_0 ;
  wire \wr_addr_A_reg[4]_i_2_n_4 ;
  wire \wr_addr_A_reg[4]_i_2_n_5 ;
  wire \wr_addr_A_reg[4]_i_2_n_6 ;
  wire \wr_addr_A_reg[4]_i_2_n_7 ;
  wire \wr_addr_A_reg[8]_i_2_n_0 ;
  wire \wr_addr_A_reg[8]_i_2_n_4 ;
  wire \wr_addr_A_reg[8]_i_2_n_5 ;
  wire \wr_addr_A_reg[8]_i_2_n_6 ;
  wire \wr_addr_A_reg[8]_i_2_n_7 ;
  wire [2:0]\NLW_limit_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_limit_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_limit_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_limit_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_limit_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_limit_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_m1_n1_counter_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_m1_n1_counter_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_m1_n1_counter_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_m1_n1_counter_reg[23]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_m1_n1_counter_reg[23]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_m1_n1_counter_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_m1_n1_counter_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_offset_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_offset_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_offset_reg__0_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_offset_reg__0_i_1_O_UNCONNECTED;
  wire [2:0]NLW_offset_reg__3_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_second_switch_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_second_switch_reg_i_3_O_UNCONNECTED;
  wire [2:0]NLW_second_switch_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_second_switch_reg_i_4_O_UNCONNECTED;
  wire [2:0]\NLW_state_reg[2]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[2]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_state_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[2]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_state_reg[2]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[2]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_state_reg[2]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[2]_i_9_O_UNCONNECTED ;
  wire NLW_wr_addr_A0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_wr_addr_A0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_wr_addr_A0_OVERFLOW_UNCONNECTED;
  wire NLW_wr_addr_A0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_wr_addr_A0_PATTERNDETECT_UNCONNECTED;
  wire NLW_wr_addr_A0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_wr_addr_A0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_wr_addr_A0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_wr_addr_A0_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_wr_addr_A0_P_UNCONNECTED;
  wire [47:0]NLW_wr_addr_A0_PCOUT_UNCONNECTED;
  wire [2:0]NLW_wr_addr_A0_i_2_CO_UNCONNECTED;
  wire [2:0]NLW_wr_addr_A0_i_3_CO_UNCONNECTED;
  wire [2:0]NLW_wr_addr_A0_i_4_CO_UNCONNECTED;
  wire [2:0]NLW_wr_addr_A0_i_5_CO_UNCONNECTED;
  wire [2:0]\NLW_wr_addr_A_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_A_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_A_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_A_reg[20]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_A_reg[20]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_wr_addr_A_reg[23]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_wr_addr_A_reg[23]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_addr_A_reg[23]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_addr_A_reg[23]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_wr_addr_A_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_addr_A_reg[23]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_wr_addr_A_reg[23]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_addr_A_reg[23]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_A_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_wr_addr_A_reg[8]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h1)) 
    \N1_counter[0]_i_1 
       (.I0(N1_counter[0]),
        .I1(state[1]),
        .O(\N1_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \N1_counter[1]_i_1 
       (.I0(N1_counter[0]),
        .I1(N1_counter[1]),
        .I2(state[1]),
        .O(\N1_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \N1_counter[2]_i_1 
       (.I0(state[1]),
        .I1(N1_counter[1]),
        .I2(N1_counter[0]),
        .I3(N1_counter[2]),
        .O(\N1_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \N1_counter[3]_i_1 
       (.I0(state[1]),
        .I1(N1_counter[0]),
        .I2(N1_counter[1]),
        .I3(N1_counter[2]),
        .I4(N1_counter[3]),
        .O(\N1_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \N1_counter[4]_i_1 
       (.I0(state[1]),
        .I1(N1_counter[2]),
        .I2(N1_counter[1]),
        .I3(N1_counter[0]),
        .I4(N1_counter[3]),
        .I5(N1_counter[4]),
        .O(\N1_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h51550400)) 
    \N1_counter[5]_i_1 
       (.I0(state[1]),
        .I1(N1_counter[3]),
        .I2(\N1_counter[6]_i_2_n_0 ),
        .I3(N1_counter[4]),
        .I4(N1_counter[5]),
        .O(\N1_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \N1_counter[6]_i_1 
       (.I0(state[1]),
        .I1(N1_counter[5]),
        .I2(N1_counter[4]),
        .I3(\N1_counter[6]_i_2_n_0 ),
        .I4(N1_counter[3]),
        .I5(N1_counter[6]),
        .O(\N1_counter[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \N1_counter[6]_i_2 
       (.I0(N1_counter[0]),
        .I1(N1_counter[1]),
        .I2(N1_counter[2]),
        .O(\N1_counter[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \N1_counter[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(switch),
        .I3(state[1]),
        .O(\N1_counter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0078)) 
    \N1_counter[7]_i_2 
       (.I0(\N1_counter[7]_i_3_n_0 ),
        .I1(N1_counter[6]),
        .I2(N1_counter[7]),
        .I3(state[1]),
        .O(\N1_counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \N1_counter[7]_i_3 
       (.I0(N1_counter[5]),
        .I1(N1_counter[4]),
        .I2(N1_counter[2]),
        .I3(N1_counter[1]),
        .I4(N1_counter[0]),
        .I5(N1_counter[3]),
        .O(\N1_counter[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[0] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[0]_i_1_n_0 ),
        .Q(N1_counter[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[1] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[1]_i_1_n_0 ),
        .Q(N1_counter[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[2] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[2]_i_1_n_0 ),
        .Q(N1_counter[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[3] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[3]_i_1_n_0 ),
        .Q(N1_counter[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[4] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[4]_i_1_n_0 ),
        .Q(N1_counter[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[5] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[5]_i_1_n_0 ),
        .Q(N1_counter[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[6] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[6]_i_1_n_0 ),
        .Q(N1_counter[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \N1_counter_reg[7] 
       (.C(clk),
        .CE(\N1_counter[7]_i_1_n_0 ),
        .D(\N1_counter[7]_i_2_n_0 ),
        .Q(N1_counter[7]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \activate_A[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_A),
        .O(\activate_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \activate_A[1]_i_1 
       (.I0(activate_A[0]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\activate_A[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \activate_A[2]_i_1 
       (.I0(activate_A[1]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\activate_A[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \activate_A[3]_i_1 
       (.I0(activate_A[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\activate_A[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \activate_A[4]_i_1 
       (.I0(activate_A[3]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\activate_A[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \activate_A[5]_i_1 
       (.I0(activate_A[4]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\activate_A[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \activate_A[6]_i_1 
       (.I0(activate_A[5]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\activate_A[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E5)) 
    \activate_A[7]_i_1 
       (.I0(state[1]),
        .I1(switch),
        .I2(state[0]),
        .I3(state[2]),
        .O(\activate_A[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \activate_A[7]_i_2 
       (.I0(activate_A[6]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\activate_A[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[0] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[0]_i_1_n_0 ),
        .Q(activate_A[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[1] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[1]_i_1_n_0 ),
        .Q(activate_A[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[2] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[2]_i_1_n_0 ),
        .Q(activate_A[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[3] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[3]_i_1_n_0 ),
        .Q(activate_A[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[4] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[4]_i_1_n_0 ),
        .Q(activate_A[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[5] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[5]_i_1_n_0 ),
        .Q(activate_A[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[6] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[6]_i_1_n_0 ),
        .Q(activate_A[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \activate_A_reg[7] 
       (.C(clk),
        .CE(\activate_A[7]_i_1_n_0 ),
        .D(\activate_A[7]_i_2_n_0 ),
        .Q(activate_A[7]),
        .R(rst));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[11]_i_2 
       (.I0(M2[10]),
        .I1(wr_addr_A0__0[10]),
        .O(\limit[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[11]_i_3 
       (.I0(M2[9]),
        .I1(wr_addr_A0__0[9]),
        .O(\limit[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[11]_i_4 
       (.I0(M2[8]),
        .I1(wr_addr_A0__0[8]),
        .O(\limit[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[11]_i_5 
       (.I0(M2[7]),
        .I1(wr_addr_A0__0[7]),
        .O(\limit[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[11]_i_6 
       (.I0(wr_addr_A0__0[10]),
        .I1(M2[10]),
        .I2(M2[11]),
        .I3(wr_addr_A0__0[11]),
        .O(\limit[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[11]_i_7 
       (.I0(wr_addr_A0__0[9]),
        .I1(M2[9]),
        .I2(M2[10]),
        .I3(wr_addr_A0__0[10]),
        .O(\limit[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[11]_i_8 
       (.I0(wr_addr_A0__0[8]),
        .I1(M2[8]),
        .I2(M2[9]),
        .I3(wr_addr_A0__0[9]),
        .O(\limit[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[11]_i_9 
       (.I0(wr_addr_A0__0[7]),
        .I1(M2[7]),
        .I2(M2[8]),
        .I3(wr_addr_A0__0[8]),
        .O(\limit[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[15]_i_2 
       (.I0(M2[14]),
        .I1(wr_addr_A0__0[14]),
        .O(\limit[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[15]_i_3 
       (.I0(M2[13]),
        .I1(wr_addr_A0__0[13]),
        .O(\limit[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[15]_i_4 
       (.I0(M2[12]),
        .I1(wr_addr_A0__0[12]),
        .O(\limit[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[15]_i_5 
       (.I0(M2[11]),
        .I1(wr_addr_A0__0[11]),
        .O(\limit[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[15]_i_6 
       (.I0(wr_addr_A0__0[14]),
        .I1(M2[14]),
        .I2(M2[15]),
        .I3(wr_addr_A0__0[15]),
        .O(\limit[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[15]_i_7 
       (.I0(wr_addr_A0__0[13]),
        .I1(M2[13]),
        .I2(M2[14]),
        .I3(wr_addr_A0__0[14]),
        .O(\limit[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[15]_i_8 
       (.I0(wr_addr_A0__0[12]),
        .I1(M2[12]),
        .I2(M2[13]),
        .I3(wr_addr_A0__0[13]),
        .O(\limit[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[15]_i_9 
       (.I0(wr_addr_A0__0[11]),
        .I1(M2[11]),
        .I2(M2[12]),
        .I3(wr_addr_A0__0[12]),
        .O(\limit[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[19]_i_2 
       (.I0(M2[18]),
        .I1(wr_addr_A0__1[18]),
        .O(\limit[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[19]_i_3 
       (.I0(M2[17]),
        .I1(wr_addr_A0__1[17]),
        .O(\limit[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[19]_i_4 
       (.I0(M2[16]),
        .I1(wr_addr_A0__0[16]),
        .O(\limit[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[19]_i_5 
       (.I0(M2[15]),
        .I1(wr_addr_A0__0[15]),
        .O(\limit[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[19]_i_6 
       (.I0(wr_addr_A0__1[18]),
        .I1(M2[18]),
        .I2(M2[19]),
        .I3(wr_addr_A0__1[19]),
        .O(\limit[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[19]_i_7 
       (.I0(wr_addr_A0__1[17]),
        .I1(M2[17]),
        .I2(M2[18]),
        .I3(wr_addr_A0__1[18]),
        .O(\limit[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[19]_i_8 
       (.I0(wr_addr_A0__0[16]),
        .I1(M2[16]),
        .I2(M2[17]),
        .I3(wr_addr_A0__1[17]),
        .O(\limit[19]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[19]_i_9 
       (.I0(wr_addr_A0__0[15]),
        .I1(M2[15]),
        .I2(M2[16]),
        .I3(wr_addr_A0__0[16]),
        .O(\limit[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[23]_i_2 
       (.I0(M2[21]),
        .I1(wr_addr_A0__1[21]),
        .O(\limit[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[23]_i_3 
       (.I0(M2[20]),
        .I1(wr_addr_A0__1[20]),
        .O(\limit[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[23]_i_4 
       (.I0(M2[19]),
        .I1(wr_addr_A0__1[19]),
        .O(\limit[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[23]_i_5 
       (.I0(wr_addr_A0__1[22]),
        .I1(M2[22]),
        .I2(wr_addr_A0__1[23]),
        .I3(M2[23]),
        .O(\limit[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[23]_i_6 
       (.I0(wr_addr_A0__1[21]),
        .I1(M2[21]),
        .I2(M2[22]),
        .I3(wr_addr_A0__1[22]),
        .O(\limit[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[23]_i_7 
       (.I0(wr_addr_A0__1[20]),
        .I1(M2[20]),
        .I2(M2[21]),
        .I3(wr_addr_A0__1[21]),
        .O(\limit[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[23]_i_8 
       (.I0(wr_addr_A0__1[19]),
        .I1(M2[19]),
        .I2(M2[20]),
        .I3(wr_addr_A0__1[20]),
        .O(\limit[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[3]_i_2 
       (.I0(M2[2]),
        .I1(wr_addr_A0__0[2]),
        .O(\limit[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[3]_i_3 
       (.I0(wr_addr_A0__0[2]),
        .I1(M2[2]),
        .I2(M2[3]),
        .I3(wr_addr_A0__0[3]),
        .O(\limit[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \limit[3]_i_4 
       (.I0(M2[2]),
        .I1(wr_addr_A0__0[2]),
        .I2(wr_addr_A0__0[1]),
        .O(\limit[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \limit[3]_i_5 
       (.I0(wr_addr_A0__0[1]),
        .I1(M2[1]),
        .O(\limit[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \limit[3]_i_6 
       (.I0(M2[0]),
        .I1(wr_addr_A0__0[0]),
        .O(\limit[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[7]_i_2 
       (.I0(M2[6]),
        .I1(wr_addr_A0__0[6]),
        .O(\limit[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[7]_i_3 
       (.I0(M2[5]),
        .I1(wr_addr_A0__0[5]),
        .O(\limit[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[7]_i_4 
       (.I0(M2[4]),
        .I1(wr_addr_A0__0[4]),
        .O(\limit[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \limit[7]_i_5 
       (.I0(M2[3]),
        .I1(wr_addr_A0__0[3]),
        .O(\limit[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[7]_i_6 
       (.I0(wr_addr_A0__0[6]),
        .I1(M2[6]),
        .I2(M2[7]),
        .I3(wr_addr_A0__0[7]),
        .O(\limit[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[7]_i_7 
       (.I0(wr_addr_A0__0[5]),
        .I1(M2[5]),
        .I2(M2[6]),
        .I3(wr_addr_A0__0[6]),
        .O(\limit[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[7]_i_8 
       (.I0(wr_addr_A0__0[4]),
        .I1(M2[4]),
        .I2(M2[5]),
        .I3(wr_addr_A0__0[5]),
        .O(\limit[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \limit[7]_i_9 
       (.I0(wr_addr_A0__0[3]),
        .I1(M2[3]),
        .I2(M2[4]),
        .I3(wr_addr_A0__0[4]),
        .O(\limit[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[0] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[0]),
        .Q(limit[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[10] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[10]),
        .Q(limit[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[11] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[11]),
        .Q(limit[11]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \limit_reg[11]_i_1 
       (.CI(\limit_reg[7]_i_1_n_0 ),
        .CO({\limit_reg[11]_i_1_n_0 ,\NLW_limit_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\limit[11]_i_2_n_0 ,\limit[11]_i_3_n_0 ,\limit[11]_i_4_n_0 ,\limit[11]_i_5_n_0 }),
        .O(limit0[11:8]),
        .S({\limit[11]_i_6_n_0 ,\limit[11]_i_7_n_0 ,\limit[11]_i_8_n_0 ,\limit[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[12] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[12]),
        .Q(limit[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[13] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[13]),
        .Q(limit[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[14] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[14]),
        .Q(limit[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[15] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[15]),
        .Q(limit[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \limit_reg[15]_i_1 
       (.CI(\limit_reg[11]_i_1_n_0 ),
        .CO({\limit_reg[15]_i_1_n_0 ,\NLW_limit_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\limit[15]_i_2_n_0 ,\limit[15]_i_3_n_0 ,\limit[15]_i_4_n_0 ,\limit[15]_i_5_n_0 }),
        .O(limit0[15:12]),
        .S({\limit[15]_i_6_n_0 ,\limit[15]_i_7_n_0 ,\limit[15]_i_8_n_0 ,\limit[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[16] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[16]),
        .Q(limit[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[17] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[17]),
        .Q(limit[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[18] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[18]),
        .Q(limit[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[19] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[19]),
        .Q(limit[19]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \limit_reg[19]_i_1 
       (.CI(\limit_reg[15]_i_1_n_0 ),
        .CO({\limit_reg[19]_i_1_n_0 ,\NLW_limit_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\limit[19]_i_2_n_0 ,\limit[19]_i_3_n_0 ,\limit[19]_i_4_n_0 ,\limit[19]_i_5_n_0 }),
        .O(limit0[19:16]),
        .S({\limit[19]_i_6_n_0 ,\limit[19]_i_7_n_0 ,\limit[19]_i_8_n_0 ,\limit[19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[1] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[1]),
        .Q(limit[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[20] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[20]),
        .Q(limit[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[21] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[21]),
        .Q(limit[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[22] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[22]),
        .Q(limit[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[23] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[23]),
        .Q(limit[23]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \limit_reg[23]_i_1 
       (.CI(\limit_reg[19]_i_1_n_0 ),
        .CO(\NLW_limit_reg[23]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\limit[23]_i_2_n_0 ,\limit[23]_i_3_n_0 ,\limit[23]_i_4_n_0 }),
        .O(limit0[23:20]),
        .S({\limit[23]_i_5_n_0 ,\limit[23]_i_6_n_0 ,\limit[23]_i_7_n_0 ,\limit[23]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[2] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[2]),
        .Q(limit[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[3] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[3]),
        .Q(limit[3]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \limit_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\limit_reg[3]_i_1_n_0 ,\NLW_limit_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\limit[3]_i_2_n_0 ,wr_addr_A0__0[1],M2[1:0]}),
        .O(limit0[3:0]),
        .S({\limit[3]_i_3_n_0 ,\limit[3]_i_4_n_0 ,\limit[3]_i_5_n_0 ,\limit[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[4] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[4]),
        .Q(limit[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[5] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[5]),
        .Q(limit[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[6] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[6]),
        .Q(limit[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[7] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[7]),
        .Q(limit[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \limit_reg[7]_i_1 
       (.CI(\limit_reg[3]_i_1_n_0 ),
        .CO({\limit_reg[7]_i_1_n_0 ,\NLW_limit_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\limit[7]_i_2_n_0 ,\limit[7]_i_3_n_0 ,\limit[7]_i_4_n_0 ,\limit[7]_i_5_n_0 }),
        .O(limit0[7:4]),
        .S({\limit[7]_i_6_n_0 ,\limit[7]_i_7_n_0 ,\limit[7]_i_8_n_0 ,\limit[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[8] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[8]),
        .Q(limit[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \limit_reg[9] 
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(limit0[9]),
        .Q(limit[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'h74)) 
    \m1_n1_counter[0]_i_1 
       (.I0(m1_n1_counter[0]),
        .I1(state[0]),
        .I2(M1dN1[0]),
        .O(\m1_n1_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[10]_i_1 
       (.I0(m1_n1_counter0[10]),
        .I1(state[0]),
        .I2(M1dN1[10]),
        .O(\m1_n1_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[11]_i_1 
       (.I0(m1_n1_counter0[11]),
        .I1(state[0]),
        .I2(M1dN1[11]),
        .O(\m1_n1_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[12]_i_1 
       (.I0(m1_n1_counter0[12]),
        .I1(state[0]),
        .I2(M1dN1[12]),
        .O(\m1_n1_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[13]_i_1 
       (.I0(m1_n1_counter0[13]),
        .I1(state[0]),
        .I2(M1dN1[13]),
        .O(\m1_n1_counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[14]_i_1 
       (.I0(m1_n1_counter0[14]),
        .I1(state[0]),
        .I2(M1dN1[14]),
        .O(\m1_n1_counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[15]_i_1 
       (.I0(m1_n1_counter0[15]),
        .I1(state[0]),
        .I2(M1dN1[15]),
        .O(\m1_n1_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[16]_i_1 
       (.I0(m1_n1_counter0[16]),
        .I1(state[0]),
        .I2(M1dN1[16]),
        .O(\m1_n1_counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[17]_i_1 
       (.I0(m1_n1_counter0[17]),
        .I1(state[0]),
        .I2(M1dN1[17]),
        .O(\m1_n1_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[18]_i_1 
       (.I0(m1_n1_counter0[18]),
        .I1(state[0]),
        .I2(M1dN1[18]),
        .O(\m1_n1_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[19]_i_1 
       (.I0(m1_n1_counter0[19]),
        .I1(state[0]),
        .I2(M1dN1[19]),
        .O(\m1_n1_counter[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[1]_i_1 
       (.I0(m1_n1_counter0[1]),
        .I1(state[0]),
        .I2(M1dN1[1]),
        .O(\m1_n1_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[20]_i_1 
       (.I0(m1_n1_counter0[20]),
        .I1(state[0]),
        .I2(M1dN1[20]),
        .O(\m1_n1_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[21]_i_1 
       (.I0(m1_n1_counter0[21]),
        .I1(state[0]),
        .I2(M1dN1[21]),
        .O(\m1_n1_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[22]_i_1 
       (.I0(m1_n1_counter0[22]),
        .I1(state[0]),
        .I2(M1dN1[22]),
        .O(\m1_n1_counter[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m1_n1_counter[23]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\m1_n1_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[23]_i_2 
       (.I0(m1_n1_counter0[23]),
        .I1(state[0]),
        .I2(M1dN1[23]),
        .O(\m1_n1_counter[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[2]_i_1 
       (.I0(m1_n1_counter0[2]),
        .I1(state[0]),
        .I2(M1dN1[2]),
        .O(\m1_n1_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[3]_i_1 
       (.I0(m1_n1_counter0[3]),
        .I1(state[0]),
        .I2(M1dN1[3]),
        .O(\m1_n1_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[4]_i_1 
       (.I0(m1_n1_counter0[4]),
        .I1(state[0]),
        .I2(M1dN1[4]),
        .O(\m1_n1_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[5]_i_1 
       (.I0(m1_n1_counter0[5]),
        .I1(state[0]),
        .I2(M1dN1[5]),
        .O(\m1_n1_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[6]_i_1 
       (.I0(m1_n1_counter0[6]),
        .I1(state[0]),
        .I2(M1dN1[6]),
        .O(\m1_n1_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[7]_i_1 
       (.I0(m1_n1_counter0[7]),
        .I1(state[0]),
        .I2(M1dN1[7]),
        .O(\m1_n1_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[8]_i_1 
       (.I0(m1_n1_counter0[8]),
        .I1(state[0]),
        .I2(M1dN1[8]),
        .O(\m1_n1_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m1_n1_counter[9]_i_1 
       (.I0(m1_n1_counter0[9]),
        .I1(state[0]),
        .I2(M1dN1[9]),
        .O(\m1_n1_counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[0] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[0]_i_1_n_0 ),
        .Q(m1_n1_counter[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[10] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[10]_i_1_n_0 ),
        .Q(m1_n1_counter[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[11] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[11]_i_1_n_0 ),
        .Q(m1_n1_counter[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[12] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[12]_i_1_n_0 ),
        .Q(m1_n1_counter[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \m1_n1_counter_reg[12]_i_2 
       (.CI(\m1_n1_counter_reg[8]_i_2_n_0 ),
        .CO({\m1_n1_counter_reg[12]_i_2_n_0 ,\NLW_m1_n1_counter_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m1_n1_counter0[12:9]),
        .S(m1_n1_counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[13] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[13]_i_1_n_0 ),
        .Q(m1_n1_counter[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[14] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[14]_i_1_n_0 ),
        .Q(m1_n1_counter[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[15] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[15]_i_1_n_0 ),
        .Q(m1_n1_counter[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[16] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[16]_i_1_n_0 ),
        .Q(m1_n1_counter[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \m1_n1_counter_reg[16]_i_2 
       (.CI(\m1_n1_counter_reg[12]_i_2_n_0 ),
        .CO({\m1_n1_counter_reg[16]_i_2_n_0 ,\NLW_m1_n1_counter_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m1_n1_counter0[16:13]),
        .S(m1_n1_counter[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[17] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[17]_i_1_n_0 ),
        .Q(m1_n1_counter[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[18] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[18]_i_1_n_0 ),
        .Q(m1_n1_counter[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[19] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[19]_i_1_n_0 ),
        .Q(m1_n1_counter[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[1] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[1]_i_1_n_0 ),
        .Q(m1_n1_counter[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[20] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[20]_i_1_n_0 ),
        .Q(m1_n1_counter[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \m1_n1_counter_reg[20]_i_2 
       (.CI(\m1_n1_counter_reg[16]_i_2_n_0 ),
        .CO({\m1_n1_counter_reg[20]_i_2_n_0 ,\NLW_m1_n1_counter_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m1_n1_counter0[20:17]),
        .S(m1_n1_counter[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[21] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[21]_i_1_n_0 ),
        .Q(m1_n1_counter[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[22] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[22]_i_1_n_0 ),
        .Q(m1_n1_counter[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[23] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[23]_i_2_n_0 ),
        .Q(m1_n1_counter[23]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \m1_n1_counter_reg[23]_i_3 
       (.CI(\m1_n1_counter_reg[20]_i_2_n_0 ),
        .CO(\NLW_m1_n1_counter_reg[23]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_m1_n1_counter_reg[23]_i_3_O_UNCONNECTED [3],m1_n1_counter0[23:21]}),
        .S({1'b0,m1_n1_counter[23:21]}));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[2] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[2]_i_1_n_0 ),
        .Q(m1_n1_counter[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[3] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[3]_i_1_n_0 ),
        .Q(m1_n1_counter[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[4] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[4]_i_1_n_0 ),
        .Q(m1_n1_counter[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \m1_n1_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\m1_n1_counter_reg[4]_i_2_n_0 ,\NLW_m1_n1_counter_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(m1_n1_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m1_n1_counter0[4:1]),
        .S(m1_n1_counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[5] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[5]_i_1_n_0 ),
        .Q(m1_n1_counter[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[6] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[6]_i_1_n_0 ),
        .Q(m1_n1_counter[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[7] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[7]_i_1_n_0 ),
        .Q(m1_n1_counter[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[8] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[8]_i_1_n_0 ),
        .Q(m1_n1_counter[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \m1_n1_counter_reg[8]_i_2 
       (.CI(\m1_n1_counter_reg[4]_i_2_n_0 ),
        .CO({\m1_n1_counter_reg[8]_i_2_n_0 ,\NLW_m1_n1_counter_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m1_n1_counter0[8:5]),
        .S(m1_n1_counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \m1_n1_counter_reg[9] 
       (.C(clk),
        .CE(\m1_n1_counter[23]_i_1_n_0 ),
        .D(\m1_n1_counter[9]_i_1_n_0 ),
        .Q(m1_n1_counter[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \offset[0]_i_2 
       (.I0(offset_reg[0]),
        .O(\offset[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[0] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[0]_i_1_n_7 ),
        .Q(offset_reg[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\offset_reg[0]_i_1_n_0 ,\NLW_offset_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\offset_reg[0]_i_1_n_4 ,\offset_reg[0]_i_1_n_5 ,\offset_reg[0]_i_1_n_6 ,\offset_reg[0]_i_1_n_7 }),
        .S({offset_reg[3:1],\offset[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[10] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[8]_i_1_n_5 ),
        .Q(offset_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[11] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[8]_i_1_n_4 ),
        .Q(offset_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[12] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[12]_i_1_n_7 ),
        .Q(offset_reg[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[12]_i_1 
       (.CI(\offset_reg[8]_i_1_n_0 ),
        .CO({\offset_reg[12]_i_1_n_0 ,\NLW_offset_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\offset_reg[12]_i_1_n_4 ,\offset_reg[12]_i_1_n_5 ,\offset_reg[12]_i_1_n_6 ,\offset_reg[12]_i_1_n_7 }),
        .S(offset_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[13] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[12]_i_1_n_6 ),
        .Q(offset_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[14] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[12]_i_1_n_5 ),
        .Q(offset_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[15] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[12]_i_1_n_4 ),
        .Q(offset_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[16] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[16]_i_1_n_7 ),
        .Q(offset_reg[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[16]_i_1 
       (.CI(\offset_reg[12]_i_1_n_0 ),
        .CO({\offset_reg[16]_i_1_n_0 ,\NLW_offset_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\offset_reg[16]_i_1_n_4 ,\offset_reg[16]_i_1_n_5 ,\offset_reg[16]_i_1_n_6 ,\offset_reg[16]_i_1_n_7 }),
        .S(offset_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[17] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[16]_i_1_n_6 ),
        .Q(offset_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[18] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[16]_i_1_n_5 ),
        .Q(offset_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[19] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[16]_i_1_n_4 ),
        .Q(offset_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[1] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[0]_i_1_n_6 ),
        .Q(offset_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[20] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[20]_i_1_n_7 ),
        .Q(offset_reg[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[20]_i_1 
       (.CI(\offset_reg[16]_i_1_n_0 ),
        .CO(\NLW_offset_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\offset_reg[20]_i_1_n_4 ,\offset_reg[20]_i_1_n_5 ,\offset_reg[20]_i_1_n_6 ,\offset_reg[20]_i_1_n_7 }),
        .S(offset_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[21] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[20]_i_1_n_6 ),
        .Q(offset_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[22] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[20]_i_1_n_5 ),
        .Q(offset_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[23] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[20]_i_1_n_4 ),
        .Q(offset_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[2] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[0]_i_1_n_5 ),
        .Q(offset_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[3] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[0]_i_1_n_4 ),
        .Q(offset_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[4] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[4]_i_1_n_7 ),
        .Q(offset_reg[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[4]_i_1 
       (.CI(\offset_reg[0]_i_1_n_0 ),
        .CO({\offset_reg[4]_i_1_n_0 ,\NLW_offset_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\offset_reg[4]_i_1_n_4 ,\offset_reg[4]_i_1_n_5 ,\offset_reg[4]_i_1_n_6 ,\offset_reg[4]_i_1_n_7 }),
        .S(offset_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[5] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[4]_i_1_n_6 ),
        .Q(offset_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[6] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[4]_i_1_n_5 ),
        .Q(offset_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[7] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[4]_i_1_n_4 ),
        .Q(offset_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[8] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[8]_i_1_n_7 ),
        .Q(offset_reg[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \offset_reg[8]_i_1 
       (.CI(\offset_reg[4]_i_1_n_0 ),
        .CO({\offset_reg[8]_i_1_n_0 ,\NLW_offset_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\offset_reg[8]_i_1_n_4 ,\offset_reg[8]_i_1_n_5 ,\offset_reg[8]_i_1_n_6 ,\offset_reg[8]_i_1_n_7 }),
        .S(offset_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \offset_reg[9] 
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(\offset_reg[8]_i_1_n_6 ),
        .Q(offset_reg[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    offset_reg__0
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(p_0_in[23]),
        .Q(offset_reg__0_n_0),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset_reg__0_i_1
       (.CI(offset_reg__3_i_1_n_0),
        .CO(NLW_offset_reg__0_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_offset_reg__0_i_1_O_UNCONNECTED[3],p_0_in[23:21]}),
        .S({1'b0,offset_reg[23:21]}));
  FDRE #(
    .INIT(1'b0)) 
    offset_reg__1
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(p_0_in[22]),
        .Q(offset_reg__1_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    offset_reg__2
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(p_0_in[21]),
        .Q(offset_reg__2_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    offset_reg__3
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(p_0_in[20]),
        .Q(offset_reg__3_n_0),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset_reg__3_i_1
       (.CI(wr_addr_A0_i_2_n_0),
        .CO({offset_reg__3_i_1_n_0,NLW_offset_reg__3_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S(offset_reg[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    offset_reg__4
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(p_0_in[19]),
        .Q(offset_reg__4_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    offset_reg__5
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(p_0_in[18]),
        .Q(offset_reg__5_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    offset_reg__6
       (.C(clk),
        .CE(wr_addr_A0_i_1_n_0),
        .D(p_0_in[17]),
        .Q(offset_reg__6_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    second_switch_i_1
       (.I0(second_switch),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(second_switch0),
        .I5(rst),
        .O(second_switch_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    second_switch_i_10
       (.I0(\wr_addr_A_reg[8]_i_2_n_4 ),
        .I1(limit[8]),
        .I2(limit[7]),
        .I3(\wr_addr_A_reg[8]_i_2_n_5 ),
        .I4(limit[6]),
        .I5(\wr_addr_A_reg[8]_i_2_n_6 ),
        .O(second_switch_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    second_switch_i_11
       (.I0(\wr_addr_A_reg[8]_i_2_n_7 ),
        .I1(limit[5]),
        .I2(limit[4]),
        .I3(\wr_addr_A_reg[4]_i_2_n_4 ),
        .I4(limit[3]),
        .I5(\wr_addr_A_reg[4]_i_2_n_5 ),
        .O(second_switch_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    second_switch_i_12
       (.I0(limit[2]),
        .I1(\wr_addr_A_reg[4]_i_2_n_6 ),
        .I2(limit[1]),
        .I3(\wr_addr_A_reg[4]_i_2_n_7 ),
        .I4(limit[0]),
        .I5(wr_addr_A[0]),
        .O(second_switch_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    second_switch_i_2
       (.I0(second_switch1),
        .I1(\state[1]_i_3_n_0 ),
        .O(second_switch0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    second_switch_i_5
       (.I0(\wr_addr_A_reg[23]_i_4_n_5 ),
        .I1(limit[23]),
        .I2(limit[22]),
        .I3(\wr_addr_A_reg[23]_i_4_n_6 ),
        .I4(limit[21]),
        .I5(\wr_addr_A_reg[23]_i_4_n_7 ),
        .O(second_switch_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    second_switch_i_6
       (.I0(\wr_addr_A_reg[20]_i_2_n_4 ),
        .I1(limit[20]),
        .I2(limit[19]),
        .I3(\wr_addr_A_reg[20]_i_2_n_5 ),
        .I4(limit[18]),
        .I5(\wr_addr_A_reg[20]_i_2_n_6 ),
        .O(second_switch_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    second_switch_i_7
       (.I0(\wr_addr_A_reg[20]_i_2_n_7 ),
        .I1(limit[17]),
        .I2(limit[16]),
        .I3(\wr_addr_A_reg[16]_i_2_n_4 ),
        .I4(limit[15]),
        .I5(\wr_addr_A_reg[16]_i_2_n_5 ),
        .O(second_switch_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    second_switch_i_8
       (.I0(\wr_addr_A_reg[16]_i_2_n_6 ),
        .I1(limit[14]),
        .I2(limit[13]),
        .I3(\wr_addr_A_reg[16]_i_2_n_7 ),
        .I4(limit[12]),
        .I5(\wr_addr_A_reg[12]_i_2_n_4 ),
        .O(second_switch_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    second_switch_i_9
       (.I0(\wr_addr_A_reg[12]_i_2_n_5 ),
        .I1(limit[11]),
        .I2(limit[10]),
        .I3(\wr_addr_A_reg[12]_i_2_n_6 ),
        .I4(limit[9]),
        .I5(\wr_addr_A_reg[12]_i_2_n_7 ),
        .O(second_switch_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    second_switch_reg
       (.C(clk),
        .CE(1'b1),
        .D(second_switch_i_1_n_0),
        .Q(second_switch),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 second_switch_reg_i_3
       (.CI(second_switch_reg_i_4_n_0),
        .CO({second_switch1,NLW_second_switch_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_second_switch_reg_i_3_O_UNCONNECTED[3:0]),
        .S({second_switch_i_5_n_0,second_switch_i_6_n_0,second_switch_i_7_n_0,second_switch_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 second_switch_reg_i_4
       (.CI(1'b0),
        .CO({second_switch_reg_i_4_n_0,NLW_second_switch_reg_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_second_switch_reg_i_4_O_UNCONNECTED[3:0]),
        .S({second_switch_i_9_n_0,second_switch_i_10_n_0,second_switch_i_11_n_0,second_switch_i_12_n_0}));
  LUT5 #(
    .INIT(32'h00000256)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(rst),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state[1]_i_2_n_0 ),
        .I4(rst),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0B0C080C080C080C)) 
    \state[1]_i_2 
       (.I0(second_switch),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\state_reg[2]_i_5_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[1]_i_3 
       (.I0(\N1_counter[6]_i_2_n_0 ),
        .I1(N1_counter[4]),
        .I2(N1_counter[3]),
        .I3(N1_counter[6]),
        .I4(N1_counter[7]),
        .I5(N1_counter[5]),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000056020202)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state[2]_i_4_n_0 ),
        .I4(state[0]),
        .I5(rst),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_10 
       (.I0(wr_addr_A[23]),
        .I1(limit[23]),
        .I2(limit[22]),
        .I3(wr_addr_A[22]),
        .I4(limit[21]),
        .I5(wr_addr_A[21]),
        .O(\state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_11 
       (.I0(wr_addr_A[20]),
        .I1(limit[20]),
        .I2(limit[18]),
        .I3(wr_addr_A[18]),
        .I4(limit[19]),
        .I5(wr_addr_A[19]),
        .O(\state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_12 
       (.I0(wr_addr_A[17]),
        .I1(limit[17]),
        .I2(limit[15]),
        .I3(wr_addr_A[15]),
        .I4(limit[16]),
        .I5(wr_addr_A[16]),
        .O(\state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_13 
       (.I0(wr_addr_A[14]),
        .I1(limit[14]),
        .I2(limit[13]),
        .I3(wr_addr_A[13]),
        .I4(limit[12]),
        .I5(wr_addr_A[12]),
        .O(\state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_15 
       (.I0(M1dN1[21]),
        .I1(m1_n1_counter[21]),
        .I2(M1dN1[23]),
        .I3(m1_n1_counter[23]),
        .I4(m1_n1_counter[22]),
        .I5(M1dN1[22]),
        .O(\state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_16 
       (.I0(M1dN1[19]),
        .I1(m1_n1_counter[19]),
        .I2(M1dN1[20]),
        .I3(m1_n1_counter[20]),
        .I4(m1_n1_counter[18]),
        .I5(M1dN1[18]),
        .O(\state[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_17 
       (.I0(M1dN1[16]),
        .I1(m1_n1_counter[16]),
        .I2(M1dN1[17]),
        .I3(m1_n1_counter[17]),
        .I4(m1_n1_counter[15]),
        .I5(M1dN1[15]),
        .O(\state[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_18 
       (.I0(M1dN1[13]),
        .I1(m1_n1_counter[13]),
        .I2(M1dN1[14]),
        .I3(m1_n1_counter[14]),
        .I4(m1_n1_counter[12]),
        .I5(M1dN1[12]),
        .O(\state[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_19 
       (.I0(wr_addr_A[11]),
        .I1(limit[11]),
        .I2(limit[10]),
        .I3(wr_addr_A[10]),
        .I4(limit[9]),
        .I5(wr_addr_A[9]),
        .O(\state[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFEAAFEAAAEAA)) 
    \state[2]_i_2 
       (.I0(state[2]),
        .I1(\state_reg[2]_i_5_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state00_out),
        .I5(second_switch),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_20 
       (.I0(wr_addr_A[8]),
        .I1(limit[8]),
        .I2(limit[6]),
        .I3(wr_addr_A[6]),
        .I4(limit[7]),
        .I5(wr_addr_A[7]),
        .O(\state[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_21 
       (.I0(wr_addr_A[5]),
        .I1(limit[5]),
        .I2(limit[3]),
        .I3(wr_addr_A[3]),
        .I4(limit[4]),
        .I5(wr_addr_A[4]),
        .O(\state[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_22 
       (.I0(limit[0]),
        .I1(wr_addr_A[0]),
        .I2(limit[2]),
        .I3(wr_addr_A[2]),
        .I4(limit[1]),
        .I5(wr_addr_A[1]),
        .O(\state[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_23 
       (.I0(M1dN1[10]),
        .I1(m1_n1_counter[10]),
        .I2(M1dN1[11]),
        .I3(m1_n1_counter[11]),
        .I4(m1_n1_counter[9]),
        .I5(M1dN1[9]),
        .O(\state[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_24 
       (.I0(M1dN1[6]),
        .I1(m1_n1_counter[6]),
        .I2(M1dN1[7]),
        .I3(m1_n1_counter[7]),
        .I4(m1_n1_counter[8]),
        .I5(M1dN1[8]),
        .O(\state[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_25 
       (.I0(M1dN1[4]),
        .I1(m1_n1_counter[4]),
        .I2(M1dN1[5]),
        .I3(m1_n1_counter[5]),
        .I4(m1_n1_counter[3]),
        .I5(M1dN1[3]),
        .O(\state[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_26 
       (.I0(m1_n1_counter[0]),
        .I1(M1dN1[0]),
        .I2(M1dN1[1]),
        .I3(m1_n1_counter[1]),
        .I4(M1dN1[2]),
        .I5(m1_n1_counter[2]),
        .O(\state[2]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \state[2]_i_3 
       (.I0(\state[2]_i_7_n_0 ),
        .I1(\state[2]_i_8_n_0 ),
        .I2(activate_A[0]),
        .I3(activate_A[3]),
        .I4(activate_A[6]),
        .O(\state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_4 
       (.I0(state[1]),
        .I1(second_switch),
        .O(\state[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \state[2]_i_7 
       (.I0(valid_A),
        .I1(state[0]),
        .I2(state[1]),
        .O(\state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \state[2]_i_8 
       (.I0(state[0]),
        .I1(activate_A[7]),
        .I2(activate_A[5]),
        .I3(activate_A[2]),
        .I4(activate_A[4]),
        .I5(activate_A[1]),
        .O(\state[2]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \state_reg[2]_i_14 
       (.CI(1'b0),
        .CO({\state_reg[2]_i_14_n_0 ,\NLW_state_reg[2]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state_reg[2]_i_14_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_23_n_0 ,\state[2]_i_24_n_0 ,\state[2]_i_25_n_0 ,\state[2]_i_26_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \state_reg[2]_i_5 
       (.CI(\state_reg[2]_i_9_n_0 ),
        .CO({\state_reg[2]_i_5_n_0 ,\NLW_state_reg[2]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_10_n_0 ,\state[2]_i_11_n_0 ,\state[2]_i_12_n_0 ,\state[2]_i_13_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \state_reg[2]_i_6 
       (.CI(\state_reg[2]_i_14_n_0 ),
        .CO({state00_out,\NLW_state_reg[2]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state_reg[2]_i_6_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_15_n_0 ,\state[2]_i_16_n_0 ,\state[2]_i_17_n_0 ,\state[2]_i_18_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \state_reg[2]_i_9 
       (.CI(1'b0),
        .CO({\state_reg[2]_i_9_n_0 ,\NLW_state_reg[2]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state_reg[2]_i_9_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_19_n_0 ,\state[2]_i_20_n_0 ,\state[2]_i_21_n_0 ,\state[2]_i_22_n_0 }));
  LUT3 #(
    .INIT(8'h10)) 
    switch_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(switch_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    switch_reg
       (.C(clk),
        .CE(switch_i_1_n_0),
        .D(1'b1),
        .Q(switch),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    wr_addr_A0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,M2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_wr_addr_A0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p_0_in[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_wr_addr_A0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_wr_addr_A0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_wr_addr_A0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(wr_addr_A0_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_wr_addr_A0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_wr_addr_A0_OVERFLOW_UNCONNECTED),
        .P({NLW_wr_addr_A0_P_UNCONNECTED[47:24],wr_addr_A0_n_82,wr_addr_A0_n_83,wr_addr_A0_n_84,wr_addr_A0_n_85,wr_addr_A0_n_86,wr_addr_A0_n_87,wr_addr_A0_n_88,wr_addr_A0__0}),
        .PATTERNBDETECT(NLW_wr_addr_A0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_wr_addr_A0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_wr_addr_A0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_wr_addr_A0_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h40)) 
    wr_addr_A0_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(wr_addr_A0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wr_addr_A0_i_2
       (.CI(wr_addr_A0_i_3_n_0),
        .CO({wr_addr_A0_i_2_n_0,NLW_wr_addr_A0_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S(offset_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wr_addr_A0_i_3
       (.CI(wr_addr_A0_i_4_n_0),
        .CO({wr_addr_A0_i_3_n_0,NLW_wr_addr_A0_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(offset_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wr_addr_A0_i_4
       (.CI(wr_addr_A0_i_5_n_0),
        .CO({wr_addr_A0_i_4_n_0,NLW_wr_addr_A0_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(offset_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wr_addr_A0_i_5
       (.CI(1'b0),
        .CO({wr_addr_A0_i_5_n_0,NLW_wr_addr_A0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(offset_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(offset_reg[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    wr_addr_A0_i_6
       (.I0(offset_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hABAA0000ABAAFFFF)) 
    \wr_addr_A[0]_i_1 
       (.I0(wr_addr_A0__0[0]),
        .I1(state[1]),
        .I2(switch),
        .I3(\wr_addr_A[0]_i_2_n_0 ),
        .I4(\wr_addr_A[23]_i_3_n_0 ),
        .I5(wr_addr_A[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_addr_A[0]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\wr_addr_A[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[10]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[12]_i_2_n_6 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[10]),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[11]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[12]_i_2_n_5 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[11]),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[12]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[12]_i_2_n_4 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[12]),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[13]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[16]_i_2_n_7 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[13]),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[14]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[16]_i_2_n_6 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[14]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[15]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[16]_i_2_n_5 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[15]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[16]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[16]_i_2_n_4 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[16]),
        .O(p_1_in[16]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[17]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[20]_i_2_n_7 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__1[17]),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[18]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[20]_i_2_n_6 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__1[18]),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[19]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[20]_i_2_n_5 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__1[19]),
        .O(p_1_in[19]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[1]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[4]_i_2_n_7 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[20]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[20]_i_2_n_4 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__1[20]),
        .O(p_1_in[20]));
  LUT4 #(
    .INIT(16'h7888)) 
    \wr_addr_A[20]_i_10 
       (.I0(offset_reg__5_n_0),
        .I1(M2[1]),
        .I2(offset_reg__6_n_0),
        .I3(M2[2]),
        .O(\wr_addr_A[20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_A[20]_i_11 
       (.I0(M2[1]),
        .I1(offset_reg__6_n_0),
        .O(\wr_addr_A[20]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_addr_A[20]_i_12 
       (.I0(\wr_addr_A[20]_i_9_n_0 ),
        .I1(M2[2]),
        .I2(offset_reg__6_n_0),
        .I3(M2[1]),
        .I4(offset_reg__5_n_0),
        .O(\wr_addr_A[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \wr_addr_A[20]_i_13 
       (.I0(M2[2]),
        .I1(offset_reg__6_n_0),
        .I2(M2[1]),
        .I3(offset_reg__5_n_0),
        .I4(M2[0]),
        .I5(offset_reg__4_n_0),
        .O(\wr_addr_A[20]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \wr_addr_A[20]_i_14 
       (.I0(M2[0]),
        .I1(offset_reg__5_n_0),
        .I2(offset_reg__6_n_0),
        .I3(M2[1]),
        .O(\wr_addr_A[20]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_A[20]_i_15 
       (.I0(offset_reg__6_n_0),
        .I1(M2[0]),
        .O(\wr_addr_A[20]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[20]_i_4 
       (.I0(wr_addr_A0_n_85),
        .I1(\wr_addr_A_reg[23]_i_10_n_7 ),
        .O(\wr_addr_A[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[20]_i_5 
       (.I0(wr_addr_A0_n_86),
        .I1(\wr_addr_A_reg[20]_i_8_n_5 ),
        .O(\wr_addr_A[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[20]_i_6 
       (.I0(wr_addr_A0_n_87),
        .I1(\wr_addr_A_reg[20]_i_8_n_6 ),
        .O(\wr_addr_A[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[20]_i_7 
       (.I0(wr_addr_A0_n_88),
        .I1(\wr_addr_A_reg[20]_i_8_n_7 ),
        .O(\wr_addr_A[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \wr_addr_A[20]_i_9 
       (.I0(M2[0]),
        .I1(offset_reg__3_n_0),
        .I2(M2[1]),
        .I3(offset_reg__4_n_0),
        .I4(offset_reg__5_n_0),
        .I5(M2[2]),
        .O(\wr_addr_A[20]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[21]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[23]_i_4_n_7 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__1[21]),
        .O(p_1_in[21]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[22]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[23]_i_4_n_6 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__1[22]),
        .O(p_1_in[22]));
  LUT4 #(
    .INIT(16'h00FE)) 
    \wr_addr_A[23]_i_1 
       (.I0(valid_A),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\wr_addr_A[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \wr_addr_A[23]_i_12 
       (.I0(M2[6]),
        .I1(offset_reg__6_n_0),
        .I2(\wr_addr_A_reg[23]_i_21_n_4 ),
        .I3(\wr_addr_A_reg[23]_i_11_n_5 ),
        .O(\wr_addr_A[23]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[23]_i_13 
       (.I0(\wr_addr_A_reg[23]_i_11_n_6 ),
        .I1(\wr_addr_A_reg[23]_i_21_n_5 ),
        .O(\wr_addr_A[23]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[23]_i_14 
       (.I0(\wr_addr_A_reg[23]_i_11_n_7 ),
        .I1(\wr_addr_A_reg[23]_i_21_n_6 ),
        .O(\wr_addr_A[23]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[23]_i_15 
       (.I0(\wr_addr_A_reg[20]_i_8_n_4 ),
        .I1(\wr_addr_A_reg[23]_i_21_n_7 ),
        .O(\wr_addr_A[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \wr_addr_A[23]_i_16 
       (.I0(offset_reg__4_n_0),
        .I1(M2[2]),
        .I2(offset_reg__3_n_0),
        .I3(M2[1]),
        .I4(M2[0]),
        .I5(offset_reg__2_n_0),
        .O(\wr_addr_A[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \wr_addr_A[23]_i_17 
       (.I0(M2[2]),
        .I1(offset_reg__5_n_0),
        .I2(offset_reg__4_n_0),
        .I3(M2[1]),
        .I4(offset_reg__3_n_0),
        .I5(M2[0]),
        .O(\wr_addr_A[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h157F7F7FEA808080)) 
    \wr_addr_A[23]_i_18 
       (.I0(\wr_addr_A[23]_i_22_n_0 ),
        .I1(M2[1]),
        .I2(offset_reg__2_n_0),
        .I3(M2[2]),
        .I4(offset_reg__3_n_0),
        .I5(\wr_addr_A[23]_i_23_n_0 ),
        .O(\wr_addr_A[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    \wr_addr_A[23]_i_19 
       (.I0(\wr_addr_A[23]_i_16_n_0 ),
        .I1(\wr_addr_A[23]_i_22_n_0 ),
        .I2(offset_reg__3_n_0),
        .I3(M2[2]),
        .I4(offset_reg__2_n_0),
        .I5(M2[1]),
        .O(\wr_addr_A[23]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[23]_i_2 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[23]_i_4_n_5 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__1[23]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \wr_addr_A[23]_i_20 
       (.I0(\wr_addr_A[23]_i_17_n_0 ),
        .I1(offset_reg__4_n_0),
        .I2(M2[2]),
        .I3(\wr_addr_A[23]_i_24_n_0 ),
        .I4(M2[0]),
        .I5(offset_reg__2_n_0),
        .O(\wr_addr_A[23]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_A[23]_i_22 
       (.I0(M2[0]),
        .I1(offset_reg__1_n_0),
        .O(\wr_addr_A[23]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \wr_addr_A[23]_i_23 
       (.I0(offset_reg__0_n_0),
        .I1(M2[0]),
        .I2(M2[1]),
        .I3(offset_reg__1_n_0),
        .I4(M2[2]),
        .I5(offset_reg__2_n_0),
        .O(\wr_addr_A[23]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_A[23]_i_24 
       (.I0(M2[1]),
        .I1(offset_reg__3_n_0),
        .O(\wr_addr_A[23]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \wr_addr_A[23]_i_25 
       (.I0(M2[4]),
        .I1(offset_reg__5_n_0),
        .I2(M2[5]),
        .I3(offset_reg__6_n_0),
        .O(\wr_addr_A[23]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_A[23]_i_26 
       (.I0(offset_reg__6_n_0),
        .I1(M2[4]),
        .O(\wr_addr_A[23]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h0888F777)) 
    \wr_addr_A[23]_i_27 
       (.I0(offset_reg__5_n_0),
        .I1(M2[5]),
        .I2(offset_reg__6_n_0),
        .I3(M2[4]),
        .I4(\wr_addr_A[23]_i_31_n_0 ),
        .O(\wr_addr_A[23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \wr_addr_A[23]_i_28 
       (.I0(offset_reg__6_n_0),
        .I1(M2[5]),
        .I2(offset_reg__5_n_0),
        .I3(M2[4]),
        .I4(M2[3]),
        .I5(offset_reg__4_n_0),
        .O(\wr_addr_A[23]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \wr_addr_A[23]_i_29 
       (.I0(M2[3]),
        .I1(offset_reg__5_n_0),
        .I2(M2[4]),
        .I3(offset_reg__6_n_0),
        .O(\wr_addr_A[23]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \wr_addr_A[23]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_A),
        .I3(state[2]),
        .O(\wr_addr_A[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_A[23]_i_30 
       (.I0(offset_reg__6_n_0),
        .I1(M2[3]),
        .O(\wr_addr_A[23]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \wr_addr_A[23]_i_31 
       (.I0(M2[3]),
        .I1(offset_reg__3_n_0),
        .I2(offset_reg__4_n_0),
        .I3(M2[4]),
        .O(\wr_addr_A[23]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFFABFFEF)) 
    \wr_addr_A[23]_i_5 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(valid_A),
        .I3(state[1]),
        .I4(switch),
        .O(\wr_addr_A[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[23]_i_7 
       (.I0(\wr_addr_A_reg[23]_i_10_n_4 ),
        .I1(wr_addr_A0_n_82),
        .O(\wr_addr_A[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[23]_i_8 
       (.I0(wr_addr_A0_n_83),
        .I1(\wr_addr_A_reg[23]_i_10_n_5 ),
        .O(\wr_addr_A[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr_A[23]_i_9 
       (.I0(wr_addr_A0_n_84),
        .I1(\wr_addr_A_reg[23]_i_10_n_6 ),
        .O(\wr_addr_A[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[2]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[4]_i_2_n_6 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[3]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[4]_i_2_n_5 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[3]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[4]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[4]_i_2_n_4 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[4]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[5]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[8]_i_2_n_7 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[5]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[6]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[8]_i_2_n_6 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[6]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[7]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[8]_i_2_n_5 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[7]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[8]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[8]_i_2_n_4 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[8]),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wr_addr_A[9]_i_1 
       (.I0(\wr_addr_A[23]_i_3_n_0 ),
        .I1(\wr_addr_A_reg[12]_i_2_n_7 ),
        .I2(\wr_addr_A[23]_i_5_n_0 ),
        .I3(wr_addr_A0__0[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[0] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(wr_addr_A[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[10] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(wr_addr_A[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[11] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(wr_addr_A[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[12] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(wr_addr_A[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[12]_i_2 
       (.CI(\wr_addr_A_reg[8]_i_2_n_0 ),
        .CO({\wr_addr_A_reg[12]_i_2_n_0 ,\NLW_wr_addr_A_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_addr_A_reg[12]_i_2_n_4 ,\wr_addr_A_reg[12]_i_2_n_5 ,\wr_addr_A_reg[12]_i_2_n_6 ,\wr_addr_A_reg[12]_i_2_n_7 }),
        .S(wr_addr_A[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[13] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(wr_addr_A[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[14] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(wr_addr_A[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[15] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(wr_addr_A[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[16] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(wr_addr_A[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[16]_i_2 
       (.CI(\wr_addr_A_reg[12]_i_2_n_0 ),
        .CO({\wr_addr_A_reg[16]_i_2_n_0 ,\NLW_wr_addr_A_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_addr_A_reg[16]_i_2_n_4 ,\wr_addr_A_reg[16]_i_2_n_5 ,\wr_addr_A_reg[16]_i_2_n_6 ,\wr_addr_A_reg[16]_i_2_n_7 }),
        .S(wr_addr_A[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[17] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(wr_addr_A[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[18] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(wr_addr_A[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[19] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(wr_addr_A[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[1] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(wr_addr_A[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[20] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(wr_addr_A[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[20]_i_2 
       (.CI(\wr_addr_A_reg[16]_i_2_n_0 ),
        .CO({\wr_addr_A_reg[20]_i_2_n_0 ,\NLW_wr_addr_A_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_addr_A_reg[20]_i_2_n_4 ,\wr_addr_A_reg[20]_i_2_n_5 ,\wr_addr_A_reg[20]_i_2_n_6 ,\wr_addr_A_reg[20]_i_2_n_7 }),
        .S(wr_addr_A[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[20]_i_3 
       (.CI(1'b0),
        .CO({\wr_addr_A_reg[20]_i_3_n_0 ,\NLW_wr_addr_A_reg[20]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({wr_addr_A0_n_85,wr_addr_A0_n_86,wr_addr_A0_n_87,wr_addr_A0_n_88}),
        .O(wr_addr_A0__1[20:17]),
        .S({\wr_addr_A[20]_i_4_n_0 ,\wr_addr_A[20]_i_5_n_0 ,\wr_addr_A[20]_i_6_n_0 ,\wr_addr_A[20]_i_7_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \wr_addr_A_reg[20]_i_8 
       (.CI(1'b0),
        .CO({\wr_addr_A_reg[20]_i_8_n_0 ,\NLW_wr_addr_A_reg[20]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\wr_addr_A[20]_i_9_n_0 ,\wr_addr_A[20]_i_10_n_0 ,\wr_addr_A[20]_i_11_n_0 ,1'b0}),
        .O({\wr_addr_A_reg[20]_i_8_n_4 ,\wr_addr_A_reg[20]_i_8_n_5 ,\wr_addr_A_reg[20]_i_8_n_6 ,\wr_addr_A_reg[20]_i_8_n_7 }),
        .S({\wr_addr_A[20]_i_12_n_0 ,\wr_addr_A[20]_i_13_n_0 ,\wr_addr_A[20]_i_14_n_0 ,\wr_addr_A[20]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[21] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(wr_addr_A[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[22] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(wr_addr_A[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[23] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(wr_addr_A[23]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[23]_i_10 
       (.CI(1'b0),
        .CO(\NLW_wr_addr_A_reg[23]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\wr_addr_A_reg[23]_i_11_n_6 ,\wr_addr_A_reg[23]_i_11_n_7 ,\wr_addr_A_reg[20]_i_8_n_4 }),
        .O({\wr_addr_A_reg[23]_i_10_n_4 ,\wr_addr_A_reg[23]_i_10_n_5 ,\wr_addr_A_reg[23]_i_10_n_6 ,\wr_addr_A_reg[23]_i_10_n_7 }),
        .S({\wr_addr_A[23]_i_12_n_0 ,\wr_addr_A[23]_i_13_n_0 ,\wr_addr_A[23]_i_14_n_0 ,\wr_addr_A[23]_i_15_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[23]_i_11 
       (.CI(\wr_addr_A_reg[20]_i_8_n_0 ),
        .CO(\NLW_wr_addr_A_reg[23]_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\wr_addr_A[23]_i_16_n_0 ,\wr_addr_A[23]_i_17_n_0 }),
        .O({\NLW_wr_addr_A_reg[23]_i_11_O_UNCONNECTED [3],\wr_addr_A_reg[23]_i_11_n_5 ,\wr_addr_A_reg[23]_i_11_n_6 ,\wr_addr_A_reg[23]_i_11_n_7 }),
        .S({1'b0,\wr_addr_A[23]_i_18_n_0 ,\wr_addr_A[23]_i_19_n_0 ,\wr_addr_A[23]_i_20_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \wr_addr_A_reg[23]_i_21 
       (.CI(1'b0),
        .CO(\NLW_wr_addr_A_reg[23]_i_21_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\wr_addr_A[23]_i_25_n_0 ,\wr_addr_A[23]_i_26_n_0 ,1'b0}),
        .O({\wr_addr_A_reg[23]_i_21_n_4 ,\wr_addr_A_reg[23]_i_21_n_5 ,\wr_addr_A_reg[23]_i_21_n_6 ,\wr_addr_A_reg[23]_i_21_n_7 }),
        .S({\wr_addr_A[23]_i_27_n_0 ,\wr_addr_A[23]_i_28_n_0 ,\wr_addr_A[23]_i_29_n_0 ,\wr_addr_A[23]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[23]_i_4 
       (.CI(\wr_addr_A_reg[20]_i_2_n_0 ),
        .CO(\NLW_wr_addr_A_reg[23]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wr_addr_A_reg[23]_i_4_O_UNCONNECTED [3],\wr_addr_A_reg[23]_i_4_n_5 ,\wr_addr_A_reg[23]_i_4_n_6 ,\wr_addr_A_reg[23]_i_4_n_7 }),
        .S({1'b0,wr_addr_A[23:21]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[23]_i_6 
       (.CI(\wr_addr_A_reg[20]_i_3_n_0 ),
        .CO(\NLW_wr_addr_A_reg[23]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,wr_addr_A0_n_83,wr_addr_A0_n_84}),
        .O({\NLW_wr_addr_A_reg[23]_i_6_O_UNCONNECTED [3],wr_addr_A0__1[23:21]}),
        .S({1'b0,\wr_addr_A[23]_i_7_n_0 ,\wr_addr_A[23]_i_8_n_0 ,\wr_addr_A[23]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[2] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(wr_addr_A[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[3] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(wr_addr_A[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[4] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(wr_addr_A[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\wr_addr_A_reg[4]_i_2_n_0 ,\NLW_wr_addr_A_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(wr_addr_A[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_addr_A_reg[4]_i_2_n_4 ,\wr_addr_A_reg[4]_i_2_n_5 ,\wr_addr_A_reg[4]_i_2_n_6 ,\wr_addr_A_reg[4]_i_2_n_7 }),
        .S(wr_addr_A[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[5] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(wr_addr_A[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[6] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(wr_addr_A[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[7] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(wr_addr_A[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[8] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(wr_addr_A[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wr_addr_A_reg[8]_i_2 
       (.CI(\wr_addr_A_reg[4]_i_2_n_0 ),
        .CO({\wr_addr_A_reg[8]_i_2_n_0 ,\NLW_wr_addr_A_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_addr_A_reg[8]_i_2_n_4 ,\wr_addr_A_reg[8]_i_2_n_5 ,\wr_addr_A_reg[8]_i_2_n_6 ,\wr_addr_A_reg[8]_i_2_n_7 }),
        .S(wr_addr_A[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_A_reg[9] 
       (.C(clk),
        .CE(\wr_addr_A[23]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(wr_addr_A[9]),
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
