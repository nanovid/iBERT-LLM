// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Mar 22 15:22:13 2024
// Host        : deathstar.eng running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim exp_synth.sv
// Design      : exp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* verilator lint_off UNDRIVEN */
/* verilator coverage_off */
// verilator tracing_on

// (* D_W = "32" *) (* FP_BITS = "30" *) 
// (* NotValidForBitStream *)
module exp
#(
    parameter integer D_W     = 32,
    parameter integer FP_BITS = 30
)
   (clk,
    rst,
    in_valid,
    qin,
    qb,
    qc,
    qln2,
    qln2_inv,
    out_valid,
    qout);
  input clk;
  input rst;
  input in_valid;
  input [31:0]qin;
  input [31:0]qb;
  input [31:0]qc;
  input [31:0]qln2;
  input [31:0]qln2_inv;
  output out_valid;
  output [31:0]qout;

  wire clk;
  wire fp_mul__0_n_100;
  wire fp_mul__0_n_101;
  wire fp_mul__0_n_102;
  wire fp_mul__0_n_103;
  wire fp_mul__0_n_104;
  wire fp_mul__0_n_105;
  wire fp_mul__0_n_58;
  wire fp_mul__0_n_59;
  wire fp_mul__0_n_60;
  wire fp_mul__0_n_61;
  wire fp_mul__0_n_62;
  wire fp_mul__0_n_63;
  wire fp_mul__0_n_64;
  wire fp_mul__0_n_65;
  wire fp_mul__0_n_66;
  wire fp_mul__0_n_67;
  wire fp_mul__0_n_68;
  wire fp_mul__0_n_69;
  wire fp_mul__0_n_70;
  wire fp_mul__0_n_71;
  wire fp_mul__0_n_72;
  wire fp_mul__0_n_73;
  wire fp_mul__0_n_74;
  wire fp_mul__0_n_75;
  wire fp_mul__0_n_76;
  wire fp_mul__0_n_77;
  wire fp_mul__0_n_78;
  wire fp_mul__0_n_79;
  wire fp_mul__0_n_80;
  wire fp_mul__0_n_81;
  wire fp_mul__0_n_82;
  wire fp_mul__0_n_83;
  wire fp_mul__0_n_84;
  wire fp_mul__0_n_85;
  wire fp_mul__0_n_86;
  wire fp_mul__0_n_87;
  wire fp_mul__0_n_88;
  wire fp_mul__0_n_89;
  wire fp_mul__0_n_90;
  wire fp_mul__0_n_91;
  wire fp_mul__0_n_92;
  wire fp_mul__0_n_93;
  wire fp_mul__0_n_94;
  wire fp_mul__0_n_95;
  wire fp_mul__0_n_96;
  wire fp_mul__0_n_97;
  wire fp_mul__0_n_98;
  wire fp_mul__0_n_99;
  wire fp_mul__1_n_100;
  wire fp_mul__1_n_101;
  wire fp_mul__1_n_102;
  wire fp_mul__1_n_103;
  wire fp_mul__1_n_104;
  wire fp_mul__1_n_105;
  wire fp_mul__1_n_106;
  wire fp_mul__1_n_107;
  wire fp_mul__1_n_108;
  wire fp_mul__1_n_109;
  wire fp_mul__1_n_110;
  wire fp_mul__1_n_111;
  wire fp_mul__1_n_112;
  wire fp_mul__1_n_113;
  wire fp_mul__1_n_114;
  wire fp_mul__1_n_115;
  wire fp_mul__1_n_116;
  wire fp_mul__1_n_117;
  wire fp_mul__1_n_118;
  wire fp_mul__1_n_119;
  wire fp_mul__1_n_120;
  wire fp_mul__1_n_121;
  wire fp_mul__1_n_122;
  wire fp_mul__1_n_123;
  wire fp_mul__1_n_124;
  wire fp_mul__1_n_125;
  wire fp_mul__1_n_126;
  wire fp_mul__1_n_127;
  wire fp_mul__1_n_128;
  wire fp_mul__1_n_129;
  wire fp_mul__1_n_130;
  wire fp_mul__1_n_131;
  wire fp_mul__1_n_132;
  wire fp_mul__1_n_133;
  wire fp_mul__1_n_134;
  wire fp_mul__1_n_135;
  wire fp_mul__1_n_136;
  wire fp_mul__1_n_137;
  wire fp_mul__1_n_138;
  wire fp_mul__1_n_139;
  wire fp_mul__1_n_140;
  wire fp_mul__1_n_141;
  wire fp_mul__1_n_142;
  wire fp_mul__1_n_143;
  wire fp_mul__1_n_144;
  wire fp_mul__1_n_145;
  wire fp_mul__1_n_146;
  wire fp_mul__1_n_147;
  wire fp_mul__1_n_148;
  wire fp_mul__1_n_149;
  wire fp_mul__1_n_150;
  wire fp_mul__1_n_151;
  wire fp_mul__1_n_152;
  wire fp_mul__1_n_153;
  wire fp_mul__1_n_58;
  wire fp_mul__1_n_59;
  wire fp_mul__1_n_60;
  wire fp_mul__1_n_61;
  wire fp_mul__1_n_62;
  wire fp_mul__1_n_63;
  wire fp_mul__1_n_64;
  wire fp_mul__1_n_65;
  wire fp_mul__1_n_66;
  wire fp_mul__1_n_67;
  wire fp_mul__1_n_68;
  wire fp_mul__1_n_69;
  wire fp_mul__1_n_70;
  wire fp_mul__1_n_71;
  wire fp_mul__1_n_72;
  wire fp_mul__1_n_73;
  wire fp_mul__1_n_74;
  wire fp_mul__1_n_75;
  wire fp_mul__1_n_76;
  wire fp_mul__1_n_77;
  wire fp_mul__1_n_78;
  wire fp_mul__1_n_79;
  wire fp_mul__1_n_80;
  wire fp_mul__1_n_81;
  wire fp_mul__1_n_82;
  wire fp_mul__1_n_83;
  wire fp_mul__1_n_84;
  wire fp_mul__1_n_85;
  wire fp_mul__1_n_86;
  wire fp_mul__1_n_87;
  wire fp_mul__1_n_88;
  wire fp_mul__1_n_89;
  wire fp_mul__1_n_90;
  wire fp_mul__1_n_91;
  wire fp_mul__1_n_92;
  wire fp_mul__1_n_93;
  wire fp_mul__1_n_94;
  wire fp_mul__1_n_95;
  wire fp_mul__1_n_96;
  wire fp_mul__1_n_97;
  wire fp_mul__1_n_98;
  wire fp_mul__1_n_99;
  wire fp_mul__2_n_100;
  wire fp_mul__2_n_101;
  wire fp_mul__2_n_102;
  wire fp_mul__2_n_103;
  wire fp_mul__2_n_104;
  wire fp_mul__2_n_105;
  wire fp_mul__2_n_58;
  wire fp_mul__2_n_59;
  wire fp_mul__2_n_60;
  wire fp_mul__2_n_61;
  wire fp_mul__2_n_62;
  wire fp_mul__2_n_63;
  wire fp_mul__2_n_64;
  wire fp_mul__2_n_65;
  wire fp_mul__2_n_66;
  wire fp_mul__2_n_67;
  wire fp_mul__2_n_68;
  wire fp_mul__2_n_69;
  wire fp_mul__2_n_70;
  wire fp_mul__2_n_71;
  wire fp_mul__2_n_72;
  wire fp_mul__2_n_73;
  wire fp_mul__2_n_74;
  wire fp_mul__2_n_75;
  wire fp_mul__2_n_76;
  wire fp_mul__2_n_77;
  wire fp_mul__2_n_78;
  wire fp_mul__2_n_79;
  wire fp_mul__2_n_80;
  wire fp_mul__2_n_81;
  wire fp_mul__2_n_82;
  wire fp_mul__2_n_83;
  wire fp_mul__2_n_84;
  wire fp_mul__2_n_85;
  wire fp_mul__2_n_86;
  wire fp_mul__2_n_87;
  wire fp_mul__2_n_88;
  wire fp_mul__2_n_89;
  wire fp_mul__2_n_90;
  wire fp_mul__2_n_91;
  wire fp_mul__2_n_92;
  wire fp_mul__2_n_93;
  wire fp_mul__2_n_94;
  wire fp_mul__2_n_95;
  wire fp_mul__2_n_96;
  wire fp_mul__2_n_97;
  wire fp_mul__2_n_98;
  wire fp_mul__2_n_99;
  wire fp_mul_n_100;
  wire fp_mul_n_101;
  wire fp_mul_n_102;
  wire fp_mul_n_103;
  wire fp_mul_n_104;
  wire fp_mul_n_105;
  wire fp_mul_n_106;
  wire fp_mul_n_107;
  wire fp_mul_n_108;
  wire fp_mul_n_109;
  wire fp_mul_n_110;
  wire fp_mul_n_111;
  wire fp_mul_n_112;
  wire fp_mul_n_113;
  wire fp_mul_n_114;
  wire fp_mul_n_115;
  wire fp_mul_n_116;
  wire fp_mul_n_117;
  wire fp_mul_n_118;
  wire fp_mul_n_119;
  wire fp_mul_n_120;
  wire fp_mul_n_121;
  wire fp_mul_n_122;
  wire fp_mul_n_123;
  wire fp_mul_n_124;
  wire fp_mul_n_125;
  wire fp_mul_n_126;
  wire fp_mul_n_127;
  wire fp_mul_n_128;
  wire fp_mul_n_129;
  wire fp_mul_n_130;
  wire fp_mul_n_131;
  wire fp_mul_n_132;
  wire fp_mul_n_133;
  wire fp_mul_n_134;
  wire fp_mul_n_135;
  wire fp_mul_n_136;
  wire fp_mul_n_137;
  wire fp_mul_n_138;
  wire fp_mul_n_139;
  wire fp_mul_n_140;
  wire fp_mul_n_141;
  wire fp_mul_n_142;
  wire fp_mul_n_143;
  wire fp_mul_n_144;
  wire fp_mul_n_145;
  wire fp_mul_n_146;
  wire fp_mul_n_147;
  wire fp_mul_n_148;
  wire fp_mul_n_149;
  wire fp_mul_n_150;
  wire fp_mul_n_151;
  wire fp_mul_n_152;
  wire fp_mul_n_153;
  wire fp_mul_n_58;
  wire fp_mul_n_59;
  wire fp_mul_n_60;
  wire fp_mul_n_61;
  wire fp_mul_n_62;
  wire fp_mul_n_63;
  wire fp_mul_n_64;
  wire fp_mul_n_65;
  wire fp_mul_n_66;
  wire fp_mul_n_67;
  wire fp_mul_n_68;
  wire fp_mul_n_69;
  wire fp_mul_n_70;
  wire fp_mul_n_71;
  wire fp_mul_n_72;
  wire fp_mul_n_73;
  wire fp_mul_n_74;
  wire fp_mul_n_75;
  wire fp_mul_n_76;
  wire fp_mul_n_77;
  wire fp_mul_n_78;
  wire fp_mul_n_79;
  wire fp_mul_n_80;
  wire fp_mul_n_81;
  wire fp_mul_n_82;
  wire fp_mul_n_83;
  wire fp_mul_n_84;
  wire fp_mul_n_85;
  wire fp_mul_n_86;
  wire fp_mul_n_87;
  wire fp_mul_n_88;
  wire fp_mul_n_89;
  wire fp_mul_n_90;
  wire fp_mul_n_91;
  wire fp_mul_n_92;
  wire fp_mul_n_93;
  wire fp_mul_n_94;
  wire fp_mul_n_95;
  wire fp_mul_n_96;
  wire fp_mul_n_97;
  wire fp_mul_n_98;
  wire fp_mul_n_99;
  wire in_v_r0_reg_r_n_0;
  wire in_v_r1_reg_r_n_0;
  wire in_v_r2_reg_r_n_0;
  wire in_v_r3_reg_r_n_0;
  wire in_v_r4_reg_r_n_0;
  wire in_v_r5_reg_r_n_0;
  wire in_v_r5_reg_srl6___in_v_r5_reg_r_n_0;
  wire in_v_r6_reg_gate_n_0;
  wire in_v_r6_reg_in_v_r6_reg_r_n_0;
  wire in_v_r6_reg_r_n_0;
  wire in_valid;
  wire out_valid;
  wire [33:0]p_0_in;
  wire [31:0]qb;
  wire [31:0]qb_r0;
  wire [31:0]qc;
  wire [31:0]qc_r0;
  wire [31:0]qin;
  wire [31:0]qin_r0;
  wire [31:0]qin_r1;
  wire [31:0]qin_r2;
  wire ql_r50__0_i_10_n_0;
  wire ql_r50__0_i_11_n_0;
  wire ql_r50__0_i_12_n_0;
  wire ql_r50__0_i_13_n_0;
  wire ql_r50__0_i_14_n_0;
  wire ql_r50__0_i_15_n_0;
  wire ql_r50__0_i_1_n_1;
  wire ql_r50__0_i_1_n_2;
  wire ql_r50__0_i_1_n_3;
  wire ql_r50__0_i_1_n_4;
  wire ql_r50__0_i_1_n_5;
  wire ql_r50__0_i_1_n_6;
  wire ql_r50__0_i_1_n_7;
  wire ql_r50__0_i_2_n_0;
  wire ql_r50__0_i_2_n_1;
  wire ql_r50__0_i_2_n_2;
  wire ql_r50__0_i_2_n_3;
  wire ql_r50__0_i_2_n_4;
  wire ql_r50__0_i_2_n_5;
  wire ql_r50__0_i_2_n_6;
  wire ql_r50__0_i_2_n_7;
  wire ql_r50__0_i_3_n_0;
  wire ql_r50__0_i_3_n_1;
  wire ql_r50__0_i_3_n_2;
  wire ql_r50__0_i_3_n_3;
  wire ql_r50__0_i_3_n_4;
  wire ql_r50__0_i_3_n_5;
  wire ql_r50__0_i_3_n_6;
  wire ql_r50__0_i_3_n_7;
  wire ql_r50__0_i_4_n_0;
  wire ql_r50__0_i_5_n_0;
  wire ql_r50__0_i_6_n_0;
  wire ql_r50__0_i_7_n_0;
  wire ql_r50__0_i_8_n_0;
  wire ql_r50__0_i_9_n_0;
  wire ql_r50__0_n_100;
  wire ql_r50__0_n_101;
  wire ql_r50__0_n_102;
  wire ql_r50__0_n_103;
  wire ql_r50__0_n_104;
  wire ql_r50__0_n_105;
  wire ql_r50__0_n_106;
  wire ql_r50__0_n_107;
  wire ql_r50__0_n_108;
  wire ql_r50__0_n_109;
  wire ql_r50__0_n_110;
  wire ql_r50__0_n_111;
  wire ql_r50__0_n_112;
  wire ql_r50__0_n_113;
  wire ql_r50__0_n_114;
  wire ql_r50__0_n_115;
  wire ql_r50__0_n_116;
  wire ql_r50__0_n_117;
  wire ql_r50__0_n_118;
  wire ql_r50__0_n_119;
  wire ql_r50__0_n_120;
  wire ql_r50__0_n_121;
  wire ql_r50__0_n_122;
  wire ql_r50__0_n_123;
  wire ql_r50__0_n_124;
  wire ql_r50__0_n_125;
  wire ql_r50__0_n_126;
  wire ql_r50__0_n_127;
  wire ql_r50__0_n_128;
  wire ql_r50__0_n_129;
  wire ql_r50__0_n_130;
  wire ql_r50__0_n_131;
  wire ql_r50__0_n_132;
  wire ql_r50__0_n_133;
  wire ql_r50__0_n_134;
  wire ql_r50__0_n_135;
  wire ql_r50__0_n_136;
  wire ql_r50__0_n_137;
  wire ql_r50__0_n_138;
  wire ql_r50__0_n_139;
  wire ql_r50__0_n_140;
  wire ql_r50__0_n_141;
  wire ql_r50__0_n_142;
  wire ql_r50__0_n_143;
  wire ql_r50__0_n_144;
  wire ql_r50__0_n_145;
  wire ql_r50__0_n_146;
  wire ql_r50__0_n_147;
  wire ql_r50__0_n_148;
  wire ql_r50__0_n_149;
  wire ql_r50__0_n_150;
  wire ql_r50__0_n_151;
  wire ql_r50__0_n_152;
  wire ql_r50__0_n_153;
  wire ql_r50__0_n_58;
  wire ql_r50__0_n_59;
  wire ql_r50__0_n_60;
  wire ql_r50__0_n_61;
  wire ql_r50__0_n_62;
  wire ql_r50__0_n_63;
  wire ql_r50__0_n_64;
  wire ql_r50__0_n_65;
  wire ql_r50__0_n_66;
  wire ql_r50__0_n_67;
  wire ql_r50__0_n_68;
  wire ql_r50__0_n_69;
  wire ql_r50__0_n_70;
  wire ql_r50__0_n_71;
  wire ql_r50__0_n_72;
  wire ql_r50__0_n_73;
  wire ql_r50__0_n_74;
  wire ql_r50__0_n_75;
  wire ql_r50__0_n_76;
  wire ql_r50__0_n_77;
  wire ql_r50__0_n_78;
  wire ql_r50__0_n_79;
  wire ql_r50__0_n_80;
  wire ql_r50__0_n_81;
  wire ql_r50__0_n_82;
  wire ql_r50__0_n_83;
  wire ql_r50__0_n_84;
  wire ql_r50__0_n_85;
  wire ql_r50__0_n_86;
  wire ql_r50__0_n_87;
  wire ql_r50__0_n_88;
  wire ql_r50__0_n_89;
  wire ql_r50__0_n_90;
  wire ql_r50__0_n_91;
  wire ql_r50__0_n_92;
  wire ql_r50__0_n_93;
  wire ql_r50__0_n_94;
  wire ql_r50__0_n_95;
  wire ql_r50__0_n_96;
  wire ql_r50__0_n_97;
  wire ql_r50__0_n_98;
  wire ql_r50__0_n_99;
  wire ql_r50__1_i_10_n_0;
  wire ql_r50__1_i_11_n_0;
  wire ql_r50__1_i_12_n_0;
  wire ql_r50__1_i_13_n_0;
  wire ql_r50__1_i_14_n_0;
  wire ql_r50__1_i_15_n_0;
  wire ql_r50__1_i_16_n_0;
  wire ql_r50__1_i_17_n_0;
  wire ql_r50__1_i_18_n_0;
  wire ql_r50__1_i_19_n_0;
  wire ql_r50__1_i_1_n_0;
  wire ql_r50__1_i_1_n_1;
  wire ql_r50__1_i_1_n_2;
  wire ql_r50__1_i_1_n_3;
  wire ql_r50__1_i_1_n_4;
  wire ql_r50__1_i_1_n_5;
  wire ql_r50__1_i_1_n_6;
  wire ql_r50__1_i_1_n_7;
  wire ql_r50__1_i_20_n_0;
  wire ql_r50__1_i_2_n_0;
  wire ql_r50__1_i_2_n_1;
  wire ql_r50__1_i_2_n_2;
  wire ql_r50__1_i_2_n_3;
  wire ql_r50__1_i_2_n_4;
  wire ql_r50__1_i_2_n_5;
  wire ql_r50__1_i_2_n_6;
  wire ql_r50__1_i_2_n_7;
  wire ql_r50__1_i_3_n_0;
  wire ql_r50__1_i_3_n_1;
  wire ql_r50__1_i_3_n_2;
  wire ql_r50__1_i_3_n_3;
  wire ql_r50__1_i_3_n_4;
  wire ql_r50__1_i_3_n_5;
  wire ql_r50__1_i_3_n_6;
  wire ql_r50__1_i_3_n_7;
  wire ql_r50__1_i_4_n_0;
  wire ql_r50__1_i_4_n_1;
  wire ql_r50__1_i_4_n_2;
  wire ql_r50__1_i_4_n_3;
  wire ql_r50__1_i_4_n_4;
  wire ql_r50__1_i_4_n_5;
  wire ql_r50__1_i_4_n_6;
  wire ql_r50__1_i_4_n_7;
  wire ql_r50__1_i_5_n_0;
  wire ql_r50__1_i_6_n_0;
  wire ql_r50__1_i_7_n_0;
  wire ql_r50__1_i_8_n_0;
  wire ql_r50__1_i_9_n_0;
  wire ql_r50__1_n_106;
  wire ql_r50__1_n_107;
  wire ql_r50__1_n_108;
  wire ql_r50__1_n_109;
  wire ql_r50__1_n_110;
  wire ql_r50__1_n_111;
  wire ql_r50__1_n_112;
  wire ql_r50__1_n_113;
  wire ql_r50__1_n_114;
  wire ql_r50__1_n_115;
  wire ql_r50__1_n_116;
  wire ql_r50__1_n_117;
  wire ql_r50__1_n_118;
  wire ql_r50__1_n_119;
  wire ql_r50__1_n_120;
  wire ql_r50__1_n_121;
  wire ql_r50__1_n_122;
  wire ql_r50__1_n_123;
  wire ql_r50__1_n_124;
  wire ql_r50__1_n_125;
  wire ql_r50__1_n_126;
  wire ql_r50__1_n_127;
  wire ql_r50__1_n_128;
  wire ql_r50__1_n_129;
  wire ql_r50__1_n_130;
  wire ql_r50__1_n_131;
  wire ql_r50__1_n_132;
  wire ql_r50__1_n_133;
  wire ql_r50__1_n_134;
  wire ql_r50__1_n_135;
  wire ql_r50__1_n_136;
  wire ql_r50__1_n_137;
  wire ql_r50__1_n_138;
  wire ql_r50__1_n_139;
  wire ql_r50__1_n_140;
  wire ql_r50__1_n_141;
  wire ql_r50__1_n_142;
  wire ql_r50__1_n_143;
  wire ql_r50__1_n_144;
  wire ql_r50__1_n_145;
  wire ql_r50__1_n_146;
  wire ql_r50__1_n_147;
  wire ql_r50__1_n_148;
  wire ql_r50__1_n_149;
  wire ql_r50__1_n_150;
  wire ql_r50__1_n_151;
  wire ql_r50__1_n_152;
  wire ql_r50__1_n_153;
  wire ql_r50__2_n_100;
  wire ql_r50__2_n_101;
  wire ql_r50__2_n_102;
  wire ql_r50__2_n_103;
  wire ql_r50__2_n_104;
  wire ql_r50__2_n_105;
  wire ql_r50__2_n_106;
  wire ql_r50__2_n_107;
  wire ql_r50__2_n_108;
  wire ql_r50__2_n_109;
  wire ql_r50__2_n_110;
  wire ql_r50__2_n_111;
  wire ql_r50__2_n_112;
  wire ql_r50__2_n_113;
  wire ql_r50__2_n_114;
  wire ql_r50__2_n_115;
  wire ql_r50__2_n_116;
  wire ql_r50__2_n_117;
  wire ql_r50__2_n_118;
  wire ql_r50__2_n_119;
  wire ql_r50__2_n_120;
  wire ql_r50__2_n_121;
  wire ql_r50__2_n_122;
  wire ql_r50__2_n_123;
  wire ql_r50__2_n_124;
  wire ql_r50__2_n_125;
  wire ql_r50__2_n_126;
  wire ql_r50__2_n_127;
  wire ql_r50__2_n_128;
  wire ql_r50__2_n_129;
  wire ql_r50__2_n_130;
  wire ql_r50__2_n_131;
  wire ql_r50__2_n_132;
  wire ql_r50__2_n_133;
  wire ql_r50__2_n_134;
  wire ql_r50__2_n_135;
  wire ql_r50__2_n_136;
  wire ql_r50__2_n_137;
  wire ql_r50__2_n_138;
  wire ql_r50__2_n_139;
  wire ql_r50__2_n_140;
  wire ql_r50__2_n_141;
  wire ql_r50__2_n_142;
  wire ql_r50__2_n_143;
  wire ql_r50__2_n_144;
  wire ql_r50__2_n_145;
  wire ql_r50__2_n_146;
  wire ql_r50__2_n_147;
  wire ql_r50__2_n_148;
  wire ql_r50__2_n_149;
  wire ql_r50__2_n_150;
  wire ql_r50__2_n_151;
  wire ql_r50__2_n_152;
  wire ql_r50__2_n_153;
  wire ql_r50__2_n_58;
  wire ql_r50__2_n_59;
  wire ql_r50__2_n_60;
  wire ql_r50__2_n_61;
  wire ql_r50__2_n_62;
  wire ql_r50__2_n_63;
  wire ql_r50__2_n_64;
  wire ql_r50__2_n_65;
  wire ql_r50__2_n_66;
  wire ql_r50__2_n_67;
  wire ql_r50__2_n_68;
  wire ql_r50__2_n_69;
  wire ql_r50__2_n_70;
  wire ql_r50__2_n_71;
  wire ql_r50__2_n_72;
  wire ql_r50__2_n_73;
  wire ql_r50__2_n_74;
  wire ql_r50__2_n_75;
  wire ql_r50__2_n_76;
  wire ql_r50__2_n_77;
  wire ql_r50__2_n_78;
  wire ql_r50__2_n_79;
  wire ql_r50__2_n_80;
  wire ql_r50__2_n_81;
  wire ql_r50__2_n_82;
  wire ql_r50__2_n_83;
  wire ql_r50__2_n_84;
  wire ql_r50__2_n_85;
  wire ql_r50__2_n_86;
  wire ql_r50__2_n_87;
  wire ql_r50__2_n_88;
  wire ql_r50__2_n_89;
  wire ql_r50__2_n_90;
  wire ql_r50__2_n_91;
  wire ql_r50__2_n_92;
  wire ql_r50__2_n_93;
  wire ql_r50__2_n_94;
  wire ql_r50__2_n_95;
  wire ql_r50__2_n_96;
  wire ql_r50__2_n_97;
  wire ql_r50__2_n_98;
  wire ql_r50__2_n_99;
  wire ql_r50__3_i_10_n_0;
  wire ql_r50__3_i_11_n_0;
  wire ql_r50__3_i_12_n_0;
  wire ql_r50__3_i_13_n_0;
  wire ql_r50__3_i_14_n_0;
  wire ql_r50__3_i_15_n_0;
  wire ql_r50__3_i_16_n_0;
  wire ql_r50__3_i_17_n_0;
  wire ql_r50__3_i_18_n_0;
  wire ql_r50__3_i_19_n_0;
  wire ql_r50__3_i_1_n_0;
  wire ql_r50__3_i_1_n_1;
  wire ql_r50__3_i_1_n_2;
  wire ql_r50__3_i_1_n_3;
  wire ql_r50__3_i_1_n_4;
  wire ql_r50__3_i_1_n_5;
  wire ql_r50__3_i_1_n_6;
  wire ql_r50__3_i_1_n_7;
  wire ql_r50__3_i_20_n_0;
  wire ql_r50__3_i_2_n_0;
  wire ql_r50__3_i_2_n_1;
  wire ql_r50__3_i_2_n_2;
  wire ql_r50__3_i_2_n_3;
  wire ql_r50__3_i_2_n_4;
  wire ql_r50__3_i_2_n_5;
  wire ql_r50__3_i_2_n_6;
  wire ql_r50__3_i_2_n_7;
  wire ql_r50__3_i_3_n_0;
  wire ql_r50__3_i_3_n_1;
  wire ql_r50__3_i_3_n_2;
  wire ql_r50__3_i_3_n_3;
  wire ql_r50__3_i_3_n_4;
  wire ql_r50__3_i_3_n_5;
  wire ql_r50__3_i_3_n_6;
  wire ql_r50__3_i_3_n_7;
  wire ql_r50__3_i_4_n_0;
  wire ql_r50__3_i_4_n_1;
  wire ql_r50__3_i_4_n_2;
  wire ql_r50__3_i_4_n_3;
  wire ql_r50__3_i_4_n_4;
  wire ql_r50__3_i_4_n_5;
  wire ql_r50__3_i_4_n_6;
  wire ql_r50__3_i_4_n_7;
  wire ql_r50__3_i_5_n_0;
  wire ql_r50__3_i_6_n_0;
  wire ql_r50__3_i_7_n_0;
  wire ql_r50__3_i_8_n_0;
  wire ql_r50__3_i_9_n_0;
  wire ql_r50__3_n_106;
  wire ql_r50__3_n_107;
  wire ql_r50__3_n_108;
  wire ql_r50__3_n_109;
  wire ql_r50__3_n_110;
  wire ql_r50__3_n_111;
  wire ql_r50__3_n_112;
  wire ql_r50__3_n_113;
  wire ql_r50__3_n_114;
  wire ql_r50__3_n_115;
  wire ql_r50__3_n_116;
  wire ql_r50__3_n_117;
  wire ql_r50__3_n_118;
  wire ql_r50__3_n_119;
  wire ql_r50__3_n_120;
  wire ql_r50__3_n_121;
  wire ql_r50__3_n_122;
  wire ql_r50__3_n_123;
  wire ql_r50__3_n_124;
  wire ql_r50__3_n_125;
  wire ql_r50__3_n_126;
  wire ql_r50__3_n_127;
  wire ql_r50__3_n_128;
  wire ql_r50__3_n_129;
  wire ql_r50__3_n_130;
  wire ql_r50__3_n_131;
  wire ql_r50__3_n_132;
  wire ql_r50__3_n_133;
  wire ql_r50__3_n_134;
  wire ql_r50__3_n_135;
  wire ql_r50__3_n_136;
  wire ql_r50__3_n_137;
  wire ql_r50__3_n_138;
  wire ql_r50__3_n_139;
  wire ql_r50__3_n_140;
  wire ql_r50__3_n_141;
  wire ql_r50__3_n_142;
  wire ql_r50__3_n_143;
  wire ql_r50__3_n_144;
  wire ql_r50__3_n_145;
  wire ql_r50__3_n_146;
  wire ql_r50__3_n_147;
  wire ql_r50__3_n_148;
  wire ql_r50__3_n_149;
  wire ql_r50__3_n_150;
  wire ql_r50__3_n_151;
  wire ql_r50__3_n_152;
  wire ql_r50__3_n_153;
  wire ql_r50__4_n_100;
  wire ql_r50__4_n_101;
  wire ql_r50__4_n_102;
  wire ql_r50__4_n_103;
  wire ql_r50__4_n_104;
  wire ql_r50__4_n_105;
  wire ql_r50__4_n_106;
  wire ql_r50__4_n_107;
  wire ql_r50__4_n_108;
  wire ql_r50__4_n_109;
  wire ql_r50__4_n_110;
  wire ql_r50__4_n_111;
  wire ql_r50__4_n_112;
  wire ql_r50__4_n_113;
  wire ql_r50__4_n_114;
  wire ql_r50__4_n_115;
  wire ql_r50__4_n_116;
  wire ql_r50__4_n_117;
  wire ql_r50__4_n_118;
  wire ql_r50__4_n_119;
  wire ql_r50__4_n_120;
  wire ql_r50__4_n_121;
  wire ql_r50__4_n_122;
  wire ql_r50__4_n_123;
  wire ql_r50__4_n_124;
  wire ql_r50__4_n_125;
  wire ql_r50__4_n_126;
  wire ql_r50__4_n_127;
  wire ql_r50__4_n_128;
  wire ql_r50__4_n_129;
  wire ql_r50__4_n_130;
  wire ql_r50__4_n_131;
  wire ql_r50__4_n_132;
  wire ql_r50__4_n_133;
  wire ql_r50__4_n_134;
  wire ql_r50__4_n_135;
  wire ql_r50__4_n_136;
  wire ql_r50__4_n_137;
  wire ql_r50__4_n_138;
  wire ql_r50__4_n_139;
  wire ql_r50__4_n_140;
  wire ql_r50__4_n_141;
  wire ql_r50__4_n_142;
  wire ql_r50__4_n_143;
  wire ql_r50__4_n_144;
  wire ql_r50__4_n_145;
  wire ql_r50__4_n_146;
  wire ql_r50__4_n_147;
  wire ql_r50__4_n_148;
  wire ql_r50__4_n_149;
  wire ql_r50__4_n_150;
  wire ql_r50__4_n_151;
  wire ql_r50__4_n_152;
  wire ql_r50__4_n_153;
  wire ql_r50__4_n_58;
  wire ql_r50__4_n_59;
  wire ql_r50__4_n_60;
  wire ql_r50__4_n_61;
  wire ql_r50__4_n_62;
  wire ql_r50__4_n_63;
  wire ql_r50__4_n_64;
  wire ql_r50__4_n_65;
  wire ql_r50__4_n_66;
  wire ql_r50__4_n_67;
  wire ql_r50__4_n_68;
  wire ql_r50__4_n_69;
  wire ql_r50__4_n_70;
  wire ql_r50__4_n_71;
  wire ql_r50__4_n_72;
  wire ql_r50__4_n_73;
  wire ql_r50__4_n_74;
  wire ql_r50__4_n_75;
  wire ql_r50__4_n_76;
  wire ql_r50__4_n_77;
  wire ql_r50__4_n_78;
  wire ql_r50__4_n_79;
  wire ql_r50__4_n_80;
  wire ql_r50__4_n_81;
  wire ql_r50__4_n_82;
  wire ql_r50__4_n_83;
  wire ql_r50__4_n_84;
  wire ql_r50__4_n_85;
  wire ql_r50__4_n_86;
  wire ql_r50__4_n_87;
  wire ql_r50__4_n_88;
  wire ql_r50__4_n_89;
  wire ql_r50__4_n_90;
  wire ql_r50__4_n_91;
  wire ql_r50__4_n_92;
  wire ql_r50__4_n_93;
  wire ql_r50__4_n_94;
  wire ql_r50__4_n_95;
  wire ql_r50__4_n_96;
  wire ql_r50__4_n_97;
  wire ql_r50__4_n_98;
  wire ql_r50__4_n_99;
  wire ql_r50__5_n_106;
  wire ql_r50__5_n_107;
  wire ql_r50__5_n_108;
  wire ql_r50__5_n_109;
  wire ql_r50__5_n_110;
  wire ql_r50__5_n_111;
  wire ql_r50__5_n_112;
  wire ql_r50__5_n_113;
  wire ql_r50__5_n_114;
  wire ql_r50__5_n_115;
  wire ql_r50__5_n_116;
  wire ql_r50__5_n_117;
  wire ql_r50__5_n_118;
  wire ql_r50__5_n_119;
  wire ql_r50__5_n_120;
  wire ql_r50__5_n_121;
  wire ql_r50__5_n_122;
  wire ql_r50__5_n_123;
  wire ql_r50__5_n_124;
  wire ql_r50__5_n_125;
  wire ql_r50__5_n_126;
  wire ql_r50__5_n_127;
  wire ql_r50__5_n_128;
  wire ql_r50__5_n_129;
  wire ql_r50__5_n_130;
  wire ql_r50__5_n_131;
  wire ql_r50__5_n_132;
  wire ql_r50__5_n_133;
  wire ql_r50__5_n_134;
  wire ql_r50__5_n_135;
  wire ql_r50__5_n_136;
  wire ql_r50__5_n_137;
  wire ql_r50__5_n_138;
  wire ql_r50__5_n_139;
  wire ql_r50__5_n_140;
  wire ql_r50__5_n_141;
  wire ql_r50__5_n_142;
  wire ql_r50__5_n_143;
  wire ql_r50__5_n_144;
  wire ql_r50__5_n_145;
  wire ql_r50__5_n_146;
  wire ql_r50__5_n_147;
  wire ql_r50__5_n_148;
  wire ql_r50__5_n_149;
  wire ql_r50__5_n_150;
  wire ql_r50__5_n_151;
  wire ql_r50__5_n_152;
  wire ql_r50__5_n_153;
  wire ql_r50__6_n_100;
  wire ql_r50__6_n_101;
  wire ql_r50__6_n_102;
  wire ql_r50__6_n_103;
  wire ql_r50__6_n_104;
  wire ql_r50__6_n_105;
  wire ql_r50__6_n_106;
  wire ql_r50__6_n_107;
  wire ql_r50__6_n_108;
  wire ql_r50__6_n_109;
  wire ql_r50__6_n_110;
  wire ql_r50__6_n_111;
  wire ql_r50__6_n_112;
  wire ql_r50__6_n_113;
  wire ql_r50__6_n_114;
  wire ql_r50__6_n_115;
  wire ql_r50__6_n_116;
  wire ql_r50__6_n_117;
  wire ql_r50__6_n_118;
  wire ql_r50__6_n_119;
  wire ql_r50__6_n_120;
  wire ql_r50__6_n_121;
  wire ql_r50__6_n_122;
  wire ql_r50__6_n_123;
  wire ql_r50__6_n_124;
  wire ql_r50__6_n_125;
  wire ql_r50__6_n_126;
  wire ql_r50__6_n_127;
  wire ql_r50__6_n_128;
  wire ql_r50__6_n_129;
  wire ql_r50__6_n_130;
  wire ql_r50__6_n_131;
  wire ql_r50__6_n_132;
  wire ql_r50__6_n_133;
  wire ql_r50__6_n_134;
  wire ql_r50__6_n_135;
  wire ql_r50__6_n_136;
  wire ql_r50__6_n_137;
  wire ql_r50__6_n_138;
  wire ql_r50__6_n_139;
  wire ql_r50__6_n_140;
  wire ql_r50__6_n_141;
  wire ql_r50__6_n_142;
  wire ql_r50__6_n_143;
  wire ql_r50__6_n_144;
  wire ql_r50__6_n_145;
  wire ql_r50__6_n_146;
  wire ql_r50__6_n_147;
  wire ql_r50__6_n_148;
  wire ql_r50__6_n_149;
  wire ql_r50__6_n_150;
  wire ql_r50__6_n_151;
  wire ql_r50__6_n_152;
  wire ql_r50__6_n_153;
  wire ql_r50__6_n_58;
  wire ql_r50__6_n_59;
  wire ql_r50__6_n_60;
  wire ql_r50__6_n_61;
  wire ql_r50__6_n_62;
  wire ql_r50__6_n_63;
  wire ql_r50__6_n_64;
  wire ql_r50__6_n_65;
  wire ql_r50__6_n_66;
  wire ql_r50__6_n_67;
  wire ql_r50__6_n_68;
  wire ql_r50__6_n_69;
  wire ql_r50__6_n_70;
  wire ql_r50__6_n_71;
  wire ql_r50__6_n_72;
  wire ql_r50__6_n_73;
  wire ql_r50__6_n_74;
  wire ql_r50__6_n_75;
  wire ql_r50__6_n_76;
  wire ql_r50__6_n_77;
  wire ql_r50__6_n_78;
  wire ql_r50__6_n_79;
  wire ql_r50__6_n_80;
  wire ql_r50__6_n_81;
  wire ql_r50__6_n_82;
  wire ql_r50__6_n_83;
  wire ql_r50__6_n_84;
  wire ql_r50__6_n_85;
  wire ql_r50__6_n_86;
  wire ql_r50__6_n_87;
  wire ql_r50__6_n_88;
  wire ql_r50__6_n_89;
  wire ql_r50__6_n_90;
  wire ql_r50__6_n_91;
  wire ql_r50__6_n_92;
  wire ql_r50__6_n_93;
  wire ql_r50__6_n_94;
  wire ql_r50__6_n_95;
  wire ql_r50__6_n_96;
  wire ql_r50__6_n_97;
  wire ql_r50__6_n_98;
  wire ql_r50__6_n_99;
  wire ql_r50_i_10_n_0;
  wire ql_r50_i_11_n_0;
  wire ql_r50_i_12_n_0;
  wire ql_r50_i_13_n_0;
  wire ql_r50_i_14_n_0;
  wire ql_r50_i_15_n_0;
  wire ql_r50_i_16_n_0;
  wire ql_r50_i_17_n_0;
  wire ql_r50_i_18_n_0;
  wire ql_r50_i_19_n_0;
  wire ql_r50_i_1_n_0;
  wire ql_r50_i_1_n_1;
  wire ql_r50_i_1_n_2;
  wire ql_r50_i_1_n_3;
  wire ql_r50_i_1_n_4;
  wire ql_r50_i_1_n_5;
  wire ql_r50_i_1_n_6;
  wire ql_r50_i_1_n_7;
  wire ql_r50_i_20_n_0;
  wire ql_r50_i_21_n_0;
  wire ql_r50_i_22_n_0;
  wire ql_r50_i_23_n_0;
  wire ql_r50_i_24_n_0;
  wire ql_r50_i_25_n_0;
  wire ql_r50_i_26_n_0;
  wire ql_r50_i_2_n_0;
  wire ql_r50_i_2_n_1;
  wire ql_r50_i_2_n_2;
  wire ql_r50_i_2_n_3;
  wire ql_r50_i_2_n_4;
  wire ql_r50_i_2_n_5;
  wire ql_r50_i_2_n_6;
  wire ql_r50_i_2_n_7;
  wire ql_r50_i_3_n_0;
  wire ql_r50_i_3_n_1;
  wire ql_r50_i_3_n_2;
  wire ql_r50_i_3_n_3;
  wire ql_r50_i_3_n_4;
  wire ql_r50_i_3_n_5;
  wire ql_r50_i_3_n_6;
  wire ql_r50_i_3_n_7;
  wire ql_r50_i_4_n_0;
  wire ql_r50_i_4_n_1;
  wire ql_r50_i_4_n_2;
  wire ql_r50_i_4_n_3;
  wire ql_r50_i_4_n_4;
  wire ql_r50_i_4_n_5;
  wire ql_r50_i_4_n_6;
  wire ql_r50_i_4_n_7;
  wire ql_r50_i_5_n_0;
  wire ql_r50_i_5_n_1;
  wire ql_r50_i_5_n_2;
  wire ql_r50_i_5_n_3;
  wire ql_r50_i_5_n_4;
  wire ql_r50_i_5_n_5;
  wire ql_r50_i_5_n_6;
  wire ql_r50_i_5_n_7;
  wire ql_r50_i_6_n_0;
  wire ql_r50_i_7_n_0;
  wire ql_r50_i_8_n_0;
  wire ql_r50_i_9_n_0;
  wire ql_r50_n_106;
  wire ql_r50_n_107;
  wire ql_r50_n_108;
  wire ql_r50_n_109;
  wire ql_r50_n_110;
  wire ql_r50_n_111;
  wire ql_r50_n_112;
  wire ql_r50_n_113;
  wire ql_r50_n_114;
  wire ql_r50_n_115;
  wire ql_r50_n_116;
  wire ql_r50_n_117;
  wire ql_r50_n_118;
  wire ql_r50_n_119;
  wire ql_r50_n_120;
  wire ql_r50_n_121;
  wire ql_r50_n_122;
  wire ql_r50_n_123;
  wire ql_r50_n_124;
  wire ql_r50_n_125;
  wire ql_r50_n_126;
  wire ql_r50_n_127;
  wire ql_r50_n_128;
  wire ql_r50_n_129;
  wire ql_r50_n_130;
  wire ql_r50_n_131;
  wire ql_r50_n_132;
  wire ql_r50_n_133;
  wire ql_r50_n_134;
  wire ql_r50_n_135;
  wire ql_r50_n_136;
  wire ql_r50_n_137;
  wire ql_r50_n_138;
  wire ql_r50_n_139;
  wire ql_r50_n_140;
  wire ql_r50_n_141;
  wire ql_r50_n_142;
  wire ql_r50_n_143;
  wire ql_r50_n_144;
  wire ql_r50_n_145;
  wire ql_r50_n_146;
  wire ql_r50_n_147;
  wire ql_r50_n_148;
  wire ql_r50_n_149;
  wire ql_r50_n_150;
  wire ql_r50_n_151;
  wire ql_r50_n_152;
  wire ql_r50_n_153;
  wire \ql_r5_reg[0]__2_n_0 ;
  wire \ql_r5_reg[0]__3_n_0 ;
  wire \ql_r5_reg[0]__4_n_0 ;
  wire \ql_r5_reg[10]__2_n_0 ;
  wire \ql_r5_reg[10]__3_n_0 ;
  wire \ql_r5_reg[10]__4_n_0 ;
  wire \ql_r5_reg[11]__2_n_0 ;
  wire \ql_r5_reg[11]__3_n_0 ;
  wire \ql_r5_reg[11]__4_n_0 ;
  wire \ql_r5_reg[12]__2_n_0 ;
  wire \ql_r5_reg[12]__3_n_0 ;
  wire \ql_r5_reg[12]__4_n_0 ;
  wire \ql_r5_reg[13]__2_n_0 ;
  wire \ql_r5_reg[13]__3_n_0 ;
  wire \ql_r5_reg[13]__4_n_0 ;
  wire \ql_r5_reg[14]__2_n_0 ;
  wire \ql_r5_reg[14]__3_n_0 ;
  wire \ql_r5_reg[14]__4_n_0 ;
  wire \ql_r5_reg[15]__2_n_0 ;
  wire \ql_r5_reg[15]__3_n_0 ;
  wire \ql_r5_reg[15]__4_n_0 ;
  wire \ql_r5_reg[16]__2_n_0 ;
  wire \ql_r5_reg[16]__3_n_0 ;
  wire \ql_r5_reg[16]__4_n_0 ;
  wire \ql_r5_reg[1]__2_n_0 ;
  wire \ql_r5_reg[1]__3_n_0 ;
  wire \ql_r5_reg[1]__4_n_0 ;
  wire \ql_r5_reg[2]__2_n_0 ;
  wire \ql_r5_reg[2]__3_n_0 ;
  wire \ql_r5_reg[2]__4_n_0 ;
  wire \ql_r5_reg[3]__2_n_0 ;
  wire \ql_r5_reg[3]__3_n_0 ;
  wire \ql_r5_reg[3]__4_n_0 ;
  wire \ql_r5_reg[4]__2_n_0 ;
  wire \ql_r5_reg[4]__3_n_0 ;
  wire \ql_r5_reg[4]__4_n_0 ;
  wire \ql_r5_reg[5]__2_n_0 ;
  wire \ql_r5_reg[5]__3_n_0 ;
  wire \ql_r5_reg[5]__4_n_0 ;
  wire \ql_r5_reg[6]__2_n_0 ;
  wire \ql_r5_reg[6]__3_n_0 ;
  wire \ql_r5_reg[6]__4_n_0 ;
  wire \ql_r5_reg[7]__2_n_0 ;
  wire \ql_r5_reg[7]__3_n_0 ;
  wire \ql_r5_reg[7]__4_n_0 ;
  wire \ql_r5_reg[8]__2_n_0 ;
  wire \ql_r5_reg[8]__3_n_0 ;
  wire \ql_r5_reg[8]__4_n_0 ;
  wire \ql_r5_reg[9]__2_n_0 ;
  wire \ql_r5_reg[9]__3_n_0 ;
  wire \ql_r5_reg[9]__4_n_0 ;
  wire ql_r5_reg__0_n_100;
  wire ql_r5_reg__0_n_101;
  wire ql_r5_reg__0_n_102;
  wire ql_r5_reg__0_n_103;
  wire ql_r5_reg__0_n_104;
  wire ql_r5_reg__0_n_105;
  wire ql_r5_reg__0_n_58;
  wire ql_r5_reg__0_n_59;
  wire ql_r5_reg__0_n_60;
  wire ql_r5_reg__0_n_61;
  wire ql_r5_reg__0_n_62;
  wire ql_r5_reg__0_n_63;
  wire ql_r5_reg__0_n_64;
  wire ql_r5_reg__0_n_65;
  wire ql_r5_reg__0_n_66;
  wire ql_r5_reg__0_n_67;
  wire ql_r5_reg__0_n_68;
  wire ql_r5_reg__0_n_69;
  wire ql_r5_reg__0_n_70;
  wire ql_r5_reg__0_n_71;
  wire ql_r5_reg__0_n_72;
  wire ql_r5_reg__0_n_73;
  wire ql_r5_reg__0_n_74;
  wire ql_r5_reg__0_n_75;
  wire ql_r5_reg__0_n_76;
  wire ql_r5_reg__0_n_77;
  wire ql_r5_reg__0_n_78;
  wire ql_r5_reg__0_n_79;
  wire ql_r5_reg__0_n_80;
  wire ql_r5_reg__0_n_81;
  wire ql_r5_reg__0_n_82;
  wire ql_r5_reg__0_n_83;
  wire ql_r5_reg__0_n_84;
  wire ql_r5_reg__0_n_85;
  wire ql_r5_reg__0_n_86;
  wire ql_r5_reg__0_n_87;
  wire ql_r5_reg__0_n_88;
  wire ql_r5_reg__0_n_89;
  wire ql_r5_reg__0_n_90;
  wire ql_r5_reg__0_n_91;
  wire ql_r5_reg__0_n_92;
  wire ql_r5_reg__0_n_93;
  wire ql_r5_reg__0_n_94;
  wire ql_r5_reg__0_n_95;
  wire ql_r5_reg__0_n_96;
  wire ql_r5_reg__0_n_97;
  wire ql_r5_reg__0_n_98;
  wire ql_r5_reg__0_n_99;
  wire [63:33]ql_r5_reg__1;
  wire ql_r5_reg_n_100;
  wire ql_r5_reg_n_101;
  wire ql_r5_reg_n_102;
  wire ql_r5_reg_n_103;
  wire ql_r5_reg_n_104;
  wire ql_r5_reg_n_105;
  wire ql_r5_reg_n_58;
  wire ql_r5_reg_n_59;
  wire ql_r5_reg_n_60;
  wire ql_r5_reg_n_61;
  wire ql_r5_reg_n_62;
  wire ql_r5_reg_n_63;
  wire ql_r5_reg_n_64;
  wire ql_r5_reg_n_65;
  wire ql_r5_reg_n_66;
  wire ql_r5_reg_n_67;
  wire ql_r5_reg_n_68;
  wire ql_r5_reg_n_69;
  wire ql_r5_reg_n_70;
  wire ql_r5_reg_n_71;
  wire ql_r5_reg_n_72;
  wire ql_r5_reg_n_73;
  wire ql_r5_reg_n_74;
  wire ql_r5_reg_n_75;
  wire ql_r5_reg_n_76;
  wire ql_r5_reg_n_77;
  wire ql_r5_reg_n_78;
  wire ql_r5_reg_n_79;
  wire ql_r5_reg_n_80;
  wire ql_r5_reg_n_81;
  wire ql_r5_reg_n_82;
  wire ql_r5_reg_n_83;
  wire ql_r5_reg_n_84;
  wire ql_r5_reg_n_85;
  wire ql_r5_reg_n_86;
  wire ql_r5_reg_n_87;
  wire ql_r5_reg_n_88;
  wire ql_r5_reg_n_89;
  wire ql_r5_reg_n_90;
  wire ql_r5_reg_n_91;
  wire ql_r5_reg_n_92;
  wire ql_r5_reg_n_93;
  wire ql_r5_reg_n_94;
  wire ql_r5_reg_n_95;
  wire ql_r5_reg_n_96;
  wire ql_r5_reg_n_97;
  wire ql_r5_reg_n_98;
  wire ql_r5_reg_n_99;
  wire [63:0]ql_r6;
  wire \ql_r6[11]_i_2_n_0 ;
  wire \ql_r6[11]_i_3_n_0 ;
  wire \ql_r6[11]_i_4_n_0 ;
  wire \ql_r6[11]_i_5_n_0 ;
  wire \ql_r6[15]_i_2_n_0 ;
  wire \ql_r6[15]_i_3_n_0 ;
  wire \ql_r6[15]_i_4_n_0 ;
  wire \ql_r6[15]_i_5_n_0 ;
  wire \ql_r6[19]_i_2_n_0 ;
  wire \ql_r6[19]_i_3_n_0 ;
  wire \ql_r6[19]_i_4_n_0 ;
  wire \ql_r6[19]_i_5_n_0 ;
  wire \ql_r6[23]_i_2_n_0 ;
  wire \ql_r6[23]_i_3_n_0 ;
  wire \ql_r6[23]_i_4_n_0 ;
  wire \ql_r6[23]_i_5_n_0 ;
  wire \ql_r6[27]_i_2_n_0 ;
  wire \ql_r6[27]_i_3_n_0 ;
  wire \ql_r6[27]_i_4_n_0 ;
  wire \ql_r6[27]_i_5_n_0 ;
  wire \ql_r6[31]_i_2_n_0 ;
  wire \ql_r6[31]_i_3_n_0 ;
  wire \ql_r6[31]_i_4_n_0 ;
  wire \ql_r6[31]_i_5_n_0 ;
  wire \ql_r6[35]_i_2_n_0 ;
  wire \ql_r6[35]_i_3_n_0 ;
  wire \ql_r6[35]_i_4_n_0 ;
  wire \ql_r6[35]_i_5_n_0 ;
  wire \ql_r6[35]_i_6_n_0 ;
  wire \ql_r6[39]_i_3_n_0 ;
  wire \ql_r6[39]_i_4_n_0 ;
  wire \ql_r6[39]_i_5_n_0 ;
  wire \ql_r6[39]_i_6_n_0 ;
  wire \ql_r6[39]_i_7_n_0 ;
  wire \ql_r6[39]_i_8_n_0 ;
  wire \ql_r6[39]_i_9_n_0 ;
  wire \ql_r6[3]_i_2_n_0 ;
  wire \ql_r6[3]_i_3_n_0 ;
  wire \ql_r6[3]_i_4_n_0 ;
  wire \ql_r6[3]_i_5_n_0 ;
  wire \ql_r6[43]_i_10_n_0 ;
  wire \ql_r6[43]_i_3_n_0 ;
  wire \ql_r6[43]_i_4_n_0 ;
  wire \ql_r6[43]_i_5_n_0 ;
  wire \ql_r6[43]_i_6_n_0 ;
  wire \ql_r6[43]_i_7_n_0 ;
  wire \ql_r6[43]_i_8_n_0 ;
  wire \ql_r6[43]_i_9_n_0 ;
  wire \ql_r6[47]_i_10_n_0 ;
  wire \ql_r6[47]_i_3_n_0 ;
  wire \ql_r6[47]_i_4_n_0 ;
  wire \ql_r6[47]_i_5_n_0 ;
  wire \ql_r6[47]_i_6_n_0 ;
  wire \ql_r6[47]_i_7_n_0 ;
  wire \ql_r6[47]_i_8_n_0 ;
  wire \ql_r6[47]_i_9_n_0 ;
  wire \ql_r6[51]_i_10_n_0 ;
  wire \ql_r6[51]_i_3_n_0 ;
  wire \ql_r6[51]_i_4_n_0 ;
  wire \ql_r6[51]_i_5_n_0 ;
  wire \ql_r6[51]_i_6_n_0 ;
  wire \ql_r6[51]_i_7_n_0 ;
  wire \ql_r6[51]_i_8_n_0 ;
  wire \ql_r6[51]_i_9_n_0 ;
  wire \ql_r6[55]_i_10_n_0 ;
  wire \ql_r6[55]_i_11_n_0 ;
  wire \ql_r6[55]_i_3_n_0 ;
  wire \ql_r6[55]_i_4_n_0 ;
  wire \ql_r6[55]_i_5_n_0 ;
  wire \ql_r6[55]_i_6_n_0 ;
  wire \ql_r6[55]_i_7_n_0 ;
  wire \ql_r6[55]_i_8_n_0 ;
  wire \ql_r6[55]_i_9_n_0 ;
  wire \ql_r6[59]_i_10_n_0 ;
  wire \ql_r6[59]_i_11_n_0 ;
  wire \ql_r6[59]_i_12_n_0 ;
  wire \ql_r6[59]_i_13_n_0 ;
  wire \ql_r6[59]_i_14_n_0 ;
  wire \ql_r6[59]_i_3_n_0 ;
  wire \ql_r6[59]_i_4_n_0 ;
  wire \ql_r6[59]_i_5_n_0 ;
  wire \ql_r6[59]_i_6_n_0 ;
  wire \ql_r6[59]_i_7_n_0 ;
  wire \ql_r6[59]_i_8_n_0 ;
  wire \ql_r6[59]_i_9_n_0 ;
  wire \ql_r6[63]_i_10_n_0 ;
  wire \ql_r6[63]_i_11_n_0 ;
  wire \ql_r6[63]_i_12_n_0 ;
  wire \ql_r6[63]_i_13_n_0 ;
  wire \ql_r6[63]_i_14_n_0 ;
  wire \ql_r6[63]_i_15_n_0 ;
  wire \ql_r6[63]_i_16_n_0 ;
  wire \ql_r6[63]_i_17_n_0 ;
  wire \ql_r6[63]_i_18_n_0 ;
  wire \ql_r6[63]_i_19_n_0 ;
  wire \ql_r6[63]_i_20_n_0 ;
  wire \ql_r6[63]_i_4_n_0 ;
  wire \ql_r6[63]_i_5_n_0 ;
  wire \ql_r6[63]_i_6_n_0 ;
  wire \ql_r6[63]_i_7_n_0 ;
  wire \ql_r6[63]_i_8_n_0 ;
  wire \ql_r6[63]_i_9_n_0 ;
  wire \ql_r6[7]_i_2_n_0 ;
  wire \ql_r6[7]_i_3_n_0 ;
  wire \ql_r6[7]_i_4_n_0 ;
  wire \ql_r6[7]_i_5_n_0 ;
  wire \ql_r6_reg[11]_i_1_n_0 ;
  wire \ql_r6_reg[11]_i_1_n_1 ;
  wire \ql_r6_reg[11]_i_1_n_2 ;
  wire \ql_r6_reg[11]_i_1_n_3 ;
  wire \ql_r6_reg[11]_i_1_n_4 ;
  wire \ql_r6_reg[11]_i_1_n_5 ;
  wire \ql_r6_reg[11]_i_1_n_6 ;
  wire \ql_r6_reg[11]_i_1_n_7 ;
  wire \ql_r6_reg[15]_i_1_n_0 ;
  wire \ql_r6_reg[15]_i_1_n_1 ;
  wire \ql_r6_reg[15]_i_1_n_2 ;
  wire \ql_r6_reg[15]_i_1_n_3 ;
  wire \ql_r6_reg[15]_i_1_n_4 ;
  wire \ql_r6_reg[15]_i_1_n_5 ;
  wire \ql_r6_reg[15]_i_1_n_6 ;
  wire \ql_r6_reg[15]_i_1_n_7 ;
  wire \ql_r6_reg[19]_i_1_n_0 ;
  wire \ql_r6_reg[19]_i_1_n_1 ;
  wire \ql_r6_reg[19]_i_1_n_2 ;
  wire \ql_r6_reg[19]_i_1_n_3 ;
  wire \ql_r6_reg[19]_i_1_n_4 ;
  wire \ql_r6_reg[19]_i_1_n_5 ;
  wire \ql_r6_reg[19]_i_1_n_6 ;
  wire \ql_r6_reg[19]_i_1_n_7 ;
  wire \ql_r6_reg[23]_i_1_n_0 ;
  wire \ql_r6_reg[23]_i_1_n_1 ;
  wire \ql_r6_reg[23]_i_1_n_2 ;
  wire \ql_r6_reg[23]_i_1_n_3 ;
  wire \ql_r6_reg[23]_i_1_n_4 ;
  wire \ql_r6_reg[23]_i_1_n_5 ;
  wire \ql_r6_reg[23]_i_1_n_6 ;
  wire \ql_r6_reg[23]_i_1_n_7 ;
  wire \ql_r6_reg[27]_i_1_n_0 ;
  wire \ql_r6_reg[27]_i_1_n_1 ;
  wire \ql_r6_reg[27]_i_1_n_2 ;
  wire \ql_r6_reg[27]_i_1_n_3 ;
  wire \ql_r6_reg[27]_i_1_n_4 ;
  wire \ql_r6_reg[27]_i_1_n_5 ;
  wire \ql_r6_reg[27]_i_1_n_6 ;
  wire \ql_r6_reg[27]_i_1_n_7 ;
  wire \ql_r6_reg[31]_i_1_n_0 ;
  wire \ql_r6_reg[31]_i_1_n_1 ;
  wire \ql_r6_reg[31]_i_1_n_2 ;
  wire \ql_r6_reg[31]_i_1_n_3 ;
  wire \ql_r6_reg[31]_i_1_n_4 ;
  wire \ql_r6_reg[31]_i_1_n_5 ;
  wire \ql_r6_reg[31]_i_1_n_6 ;
  wire \ql_r6_reg[31]_i_1_n_7 ;
  wire \ql_r6_reg[35]_i_1_n_0 ;
  wire \ql_r6_reg[35]_i_1_n_1 ;
  wire \ql_r6_reg[35]_i_1_n_2 ;
  wire \ql_r6_reg[35]_i_1_n_3 ;
  wire \ql_r6_reg[35]_i_1_n_4 ;
  wire \ql_r6_reg[35]_i_1_n_5 ;
  wire \ql_r6_reg[35]_i_1_n_6 ;
  wire \ql_r6_reg[35]_i_1_n_7 ;
  wire \ql_r6_reg[39]_i_1_n_0 ;
  wire \ql_r6_reg[39]_i_1_n_1 ;
  wire \ql_r6_reg[39]_i_1_n_2 ;
  wire \ql_r6_reg[39]_i_1_n_3 ;
  wire \ql_r6_reg[39]_i_1_n_4 ;
  wire \ql_r6_reg[39]_i_1_n_5 ;
  wire \ql_r6_reg[39]_i_1_n_6 ;
  wire \ql_r6_reg[39]_i_1_n_7 ;
  wire \ql_r6_reg[39]_i_2_n_0 ;
  wire \ql_r6_reg[39]_i_2_n_1 ;
  wire \ql_r6_reg[39]_i_2_n_2 ;
  wire \ql_r6_reg[39]_i_2_n_3 ;
  wire \ql_r6_reg[3]_i_1_n_0 ;
  wire \ql_r6_reg[3]_i_1_n_1 ;
  wire \ql_r6_reg[3]_i_1_n_2 ;
  wire \ql_r6_reg[3]_i_1_n_3 ;
  wire \ql_r6_reg[3]_i_1_n_4 ;
  wire \ql_r6_reg[3]_i_1_n_5 ;
  wire \ql_r6_reg[3]_i_1_n_6 ;
  wire \ql_r6_reg[3]_i_1_n_7 ;
  wire \ql_r6_reg[43]_i_1_n_0 ;
  wire \ql_r6_reg[43]_i_1_n_1 ;
  wire \ql_r6_reg[43]_i_1_n_2 ;
  wire \ql_r6_reg[43]_i_1_n_3 ;
  wire \ql_r6_reg[43]_i_1_n_4 ;
  wire \ql_r6_reg[43]_i_1_n_5 ;
  wire \ql_r6_reg[43]_i_1_n_6 ;
  wire \ql_r6_reg[43]_i_1_n_7 ;
  wire \ql_r6_reg[43]_i_2_n_0 ;
  wire \ql_r6_reg[43]_i_2_n_1 ;
  wire \ql_r6_reg[43]_i_2_n_2 ;
  wire \ql_r6_reg[43]_i_2_n_3 ;
  wire \ql_r6_reg[47]_i_1_n_0 ;
  wire \ql_r6_reg[47]_i_1_n_1 ;
  wire \ql_r6_reg[47]_i_1_n_2 ;
  wire \ql_r6_reg[47]_i_1_n_3 ;
  wire \ql_r6_reg[47]_i_1_n_4 ;
  wire \ql_r6_reg[47]_i_1_n_5 ;
  wire \ql_r6_reg[47]_i_1_n_6 ;
  wire \ql_r6_reg[47]_i_1_n_7 ;
  wire \ql_r6_reg[47]_i_2_n_0 ;
  wire \ql_r6_reg[47]_i_2_n_1 ;
  wire \ql_r6_reg[47]_i_2_n_2 ;
  wire \ql_r6_reg[47]_i_2_n_3 ;
  wire \ql_r6_reg[51]_i_1_n_0 ;
  wire \ql_r6_reg[51]_i_1_n_1 ;
  wire \ql_r6_reg[51]_i_1_n_2 ;
  wire \ql_r6_reg[51]_i_1_n_3 ;
  wire \ql_r6_reg[51]_i_1_n_4 ;
  wire \ql_r6_reg[51]_i_1_n_5 ;
  wire \ql_r6_reg[51]_i_1_n_6 ;
  wire \ql_r6_reg[51]_i_1_n_7 ;
  wire \ql_r6_reg[51]_i_2_n_0 ;
  wire \ql_r6_reg[51]_i_2_n_1 ;
  wire \ql_r6_reg[51]_i_2_n_2 ;
  wire \ql_r6_reg[51]_i_2_n_3 ;
  wire \ql_r6_reg[55]_i_1_n_0 ;
  wire \ql_r6_reg[55]_i_1_n_1 ;
  wire \ql_r6_reg[55]_i_1_n_2 ;
  wire \ql_r6_reg[55]_i_1_n_3 ;
  wire \ql_r6_reg[55]_i_1_n_4 ;
  wire \ql_r6_reg[55]_i_1_n_5 ;
  wire \ql_r6_reg[55]_i_1_n_6 ;
  wire \ql_r6_reg[55]_i_1_n_7 ;
  wire \ql_r6_reg[55]_i_2_n_0 ;
  wire \ql_r6_reg[55]_i_2_n_1 ;
  wire \ql_r6_reg[55]_i_2_n_2 ;
  wire \ql_r6_reg[55]_i_2_n_3 ;
  wire \ql_r6_reg[59]_i_1_n_0 ;
  wire \ql_r6_reg[59]_i_1_n_1 ;
  wire \ql_r6_reg[59]_i_1_n_2 ;
  wire \ql_r6_reg[59]_i_1_n_3 ;
  wire \ql_r6_reg[59]_i_1_n_4 ;
  wire \ql_r6_reg[59]_i_1_n_5 ;
  wire \ql_r6_reg[59]_i_1_n_6 ;
  wire \ql_r6_reg[59]_i_1_n_7 ;
  wire \ql_r6_reg[59]_i_2_n_0 ;
  wire \ql_r6_reg[59]_i_2_n_1 ;
  wire \ql_r6_reg[59]_i_2_n_2 ;
  wire \ql_r6_reg[59]_i_2_n_3 ;
  wire \ql_r6_reg[63]_i_1_n_1 ;
  wire \ql_r6_reg[63]_i_1_n_2 ;
  wire \ql_r6_reg[63]_i_1_n_3 ;
  wire \ql_r6_reg[63]_i_1_n_4 ;
  wire \ql_r6_reg[63]_i_1_n_5 ;
  wire \ql_r6_reg[63]_i_1_n_6 ;
  wire \ql_r6_reg[63]_i_1_n_7 ;
  wire \ql_r6_reg[63]_i_2_n_2 ;
  wire \ql_r6_reg[63]_i_2_n_3 ;
  wire \ql_r6_reg[63]_i_3_n_0 ;
  wire \ql_r6_reg[63]_i_3_n_1 ;
  wire \ql_r6_reg[63]_i_3_n_2 ;
  wire \ql_r6_reg[63]_i_3_n_3 ;
  wire \ql_r6_reg[7]_i_1_n_0 ;
  wire \ql_r6_reg[7]_i_1_n_1 ;
  wire \ql_r6_reg[7]_i_1_n_2 ;
  wire \ql_r6_reg[7]_i_1_n_3 ;
  wire \ql_r6_reg[7]_i_1_n_4 ;
  wire \ql_r6_reg[7]_i_1_n_5 ;
  wire \ql_r6_reg[7]_i_1_n_6 ;
  wire \ql_r6_reg[7]_i_1_n_7 ;
  wire [31:0]qln2;
  wire [31:0]qln2_inv;
  wire [31:0]qout;
  wire \qout_r[0]_i_1_n_0 ;
  wire \qout_r[0]_i_2_n_0 ;
  wire \qout_r[0]_i_3_n_0 ;
  wire \qout_r[10]_i_1_n_0 ;
  wire \qout_r[10]_i_2_n_0 ;
  wire \qout_r[10]_i_3_n_0 ;
  wire \qout_r[11]_i_1_n_0 ;
  wire \qout_r[11]_i_2_n_0 ;
  wire \qout_r[11]_i_3_n_0 ;
  wire \qout_r[11]_i_4_n_0 ;
  wire \qout_r[12]_i_1_n_0 ;
  wire \qout_r[12]_i_2_n_0 ;
  wire \qout_r[12]_i_3_n_0 ;
  wire \qout_r[13]_i_1_n_0 ;
  wire \qout_r[13]_i_2_n_0 ;
  wire \qout_r[13]_i_3_n_0 ;
  wire \qout_r[13]_i_4_n_0 ;
  wire \qout_r[14]_i_1_n_0 ;
  wire \qout_r[14]_i_2_n_0 ;
  wire \qout_r[14]_i_3_n_0 ;
  wire \qout_r[15]_i_1_n_0 ;
  wire \qout_r[15]_i_2_n_0 ;
  wire \qout_r[15]_i_3_n_0 ;
  wire \qout_r[15]_i_4_n_0 ;
  wire \qout_r[16]_i_1_n_0 ;
  wire \qout_r[16]_i_2_n_0 ;
  wire \qout_r[16]_i_3_n_0 ;
  wire \qout_r[17]_i_1_n_0 ;
  wire \qout_r[17]_i_2_n_0 ;
  wire \qout_r[17]_i_3_n_0 ;
  wire \qout_r[17]_i_4_n_0 ;
  wire \qout_r[18]_i_1_n_0 ;
  wire \qout_r[18]_i_2_n_0 ;
  wire \qout_r[18]_i_3_n_0 ;
  wire \qout_r[19]_i_1_n_0 ;
  wire \qout_r[19]_i_2_n_0 ;
  wire \qout_r[19]_i_3_n_0 ;
  wire \qout_r[19]_i_4_n_0 ;
  wire \qout_r[1]_i_1_n_0 ;
  wire \qout_r[1]_i_2_n_0 ;
  wire \qout_r[1]_i_3_n_0 ;
  wire \qout_r[1]_i_4_n_0 ;
  wire \qout_r[1]_i_5_n_0 ;
  wire \qout_r[20]_i_1_n_0 ;
  wire \qout_r[20]_i_2_n_0 ;
  wire \qout_r[20]_i_3_n_0 ;
  wire \qout_r[21]_i_1_n_0 ;
  wire \qout_r[21]_i_2_n_0 ;
  wire \qout_r[21]_i_3_n_0 ;
  wire \qout_r[21]_i_4_n_0 ;
  wire \qout_r[22]_i_1_n_0 ;
  wire \qout_r[22]_i_2_n_0 ;
  wire \qout_r[22]_i_3_n_0 ;
  wire \qout_r[23]_i_1_n_0 ;
  wire \qout_r[23]_i_2_n_0 ;
  wire \qout_r[23]_i_3_n_0 ;
  wire \qout_r[23]_i_4_n_0 ;
  wire \qout_r[24]_i_10_n_0 ;
  wire \qout_r[24]_i_11_n_0 ;
  wire \qout_r[24]_i_1_n_0 ;
  wire \qout_r[24]_i_2_n_0 ;
  wire \qout_r[24]_i_3_n_0 ;
  wire \qout_r[24]_i_4_n_0 ;
  wire \qout_r[24]_i_5_n_0 ;
  wire \qout_r[24]_i_6_n_0 ;
  wire \qout_r[24]_i_7_n_0 ;
  wire \qout_r[24]_i_8_n_0 ;
  wire \qout_r[24]_i_9_n_0 ;
  wire \qout_r[25]_i_1_n_0 ;
  wire \qout_r[25]_i_2_n_0 ;
  wire \qout_r[25]_i_3_n_0 ;
  wire \qout_r[25]_i_4_n_0 ;
  wire \qout_r[26]_i_1_n_0 ;
  wire \qout_r[26]_i_2_n_0 ;
  wire \qout_r[27]_i_1_n_0 ;
  wire \qout_r[27]_i_2_n_0 ;
  wire \qout_r[27]_i_3_n_0 ;
  wire \qout_r[27]_i_4_n_0 ;
  wire \qout_r[27]_i_5_n_0 ;
  wire \qout_r[28]_i_1_n_0 ;
  wire \qout_r[28]_i_2_n_0 ;
  wire \qout_r[28]_i_3_n_0 ;
  wire \qout_r[28]_i_4_n_0 ;
  wire \qout_r[29]_i_1_n_0 ;
  wire \qout_r[29]_i_2_n_0 ;
  wire \qout_r[29]_i_3_n_0 ;
  wire \qout_r[29]_i_4_n_0 ;
  wire \qout_r[2]_i_1_n_0 ;
  wire \qout_r[2]_i_2_n_0 ;
  wire \qout_r[2]_i_3_n_0 ;
  wire \qout_r[30]_i_1_n_0 ;
  wire \qout_r[30]_i_2_n_0 ;
  wire \qout_r[30]_i_3_n_0 ;
  wire \qout_r[31]_i_10_n_0 ;
  wire \qout_r[31]_i_11_n_0 ;
  wire \qout_r[31]_i_12_n_0 ;
  wire \qout_r[31]_i_13_n_0 ;
  wire \qout_r[31]_i_14_n_0 ;
  wire \qout_r[31]_i_15_n_0 ;
  wire \qout_r[31]_i_16_n_0 ;
  wire \qout_r[31]_i_17_n_0 ;
  wire \qout_r[31]_i_18_n_0 ;
  wire \qout_r[31]_i_19_n_0 ;
  wire \qout_r[31]_i_1_n_0 ;
  wire \qout_r[31]_i_20_n_0 ;
  wire \qout_r[31]_i_21_n_0 ;
  wire \qout_r[31]_i_22_n_0 ;
  wire \qout_r[31]_i_23_n_0 ;
  wire \qout_r[31]_i_24_n_0 ;
  wire \qout_r[31]_i_25_n_0 ;
  wire \qout_r[31]_i_2_n_0 ;
  wire \qout_r[31]_i_3_n_0 ;
  wire \qout_r[31]_i_4_n_0 ;
  wire \qout_r[31]_i_5_n_0 ;
  wire \qout_r[31]_i_6_n_0 ;
  wire \qout_r[31]_i_7_n_0 ;
  wire \qout_r[31]_i_8_n_0 ;
  wire \qout_r[31]_i_9_n_0 ;
  wire \qout_r[3]_i_1_n_0 ;
  wire \qout_r[3]_i_2_n_0 ;
  wire \qout_r[3]_i_3_n_0 ;
  wire \qout_r[3]_i_4_n_0 ;
  wire \qout_r[4]_i_1_n_0 ;
  wire \qout_r[4]_i_2_n_0 ;
  wire \qout_r[4]_i_3_n_0 ;
  wire \qout_r[5]_i_1_n_0 ;
  wire \qout_r[5]_i_2_n_0 ;
  wire \qout_r[5]_i_3_n_0 ;
  wire \qout_r[5]_i_4_n_0 ;
  wire \qout_r[6]_i_1_n_0 ;
  wire \qout_r[6]_i_2_n_0 ;
  wire \qout_r[6]_i_3_n_0 ;
  wire \qout_r[7]_i_1_n_0 ;
  wire \qout_r[7]_i_2_n_0 ;
  wire \qout_r[7]_i_3_n_0 ;
  wire \qout_r[7]_i_4_n_0 ;
  wire \qout_r[8]_i_1_n_0 ;
  wire \qout_r[8]_i_2_n_0 ;
  wire \qout_r[8]_i_3_n_0 ;
  wire \qout_r[9]_i_1_n_0 ;
  wire \qout_r[9]_i_2_n_0 ;
  wire \qout_r[9]_i_3_n_0 ;
  wire \qout_r[9]_i_4_n_0 ;
  wire qp_r20__0_i_10_n_0;
  wire qp_r20__0_i_11_n_0;
  wire qp_r20__0_i_12_n_0;
  wire qp_r20__0_i_13_n_0;
  wire qp_r20__0_i_14_n_0;
  wire qp_r20__0_i_15_n_0;
  wire qp_r20__0_i_16_n_0;
  wire qp_r20__0_i_17_n_0;
  wire qp_r20__0_i_17_n_1;
  wire qp_r20__0_i_17_n_2;
  wire qp_r20__0_i_17_n_3;
  wire qp_r20__0_i_18_n_0;
  wire qp_r20__0_i_19_n_0;
  wire qp_r20__0_i_1_n_0;
  wire qp_r20__0_i_1_n_1;
  wire qp_r20__0_i_1_n_2;
  wire qp_r20__0_i_1_n_3;
  wire qp_r20__0_i_20_n_0;
  wire qp_r20__0_i_21_n_0;
  wire qp_r20__0_i_22_n_0;
  wire qp_r20__0_i_22_n_1;
  wire qp_r20__0_i_22_n_2;
  wire qp_r20__0_i_22_n_3;
  wire qp_r20__0_i_23_n_0;
  wire qp_r20__0_i_24_n_0;
  wire qp_r20__0_i_25_n_0;
  wire qp_r20__0_i_26_n_0;
  wire qp_r20__0_i_27_n_0;
  wire qp_r20__0_i_27_n_1;
  wire qp_r20__0_i_27_n_2;
  wire qp_r20__0_i_27_n_3;
  wire qp_r20__0_i_28_n_0;
  wire qp_r20__0_i_29_n_0;
  wire qp_r20__0_i_2_n_0;
  wire qp_r20__0_i_2_n_1;
  wire qp_r20__0_i_2_n_2;
  wire qp_r20__0_i_2_n_3;
  wire qp_r20__0_i_30_n_0;
  wire qp_r20__0_i_31_n_0;
  wire qp_r20__0_i_32_n_0;
  wire qp_r20__0_i_33_n_0;
  wire qp_r20__0_i_34_n_0;
  wire qp_r20__0_i_3_n_0;
  wire qp_r20__0_i_3_n_1;
  wire qp_r20__0_i_3_n_2;
  wire qp_r20__0_i_3_n_3;
  wire qp_r20__0_i_4_n_0;
  wire qp_r20__0_i_4_n_1;
  wire qp_r20__0_i_4_n_2;
  wire qp_r20__0_i_4_n_3;
  wire qp_r20__0_i_5_n_0;
  wire qp_r20__0_i_6_n_0;
  wire qp_r20__0_i_7_n_0;
  wire qp_r20__0_i_8_n_0;
  wire qp_r20__0_i_9_n_0;
  wire qp_r20__0_n_100;
  wire qp_r20__0_n_101;
  wire qp_r20__0_n_102;
  wire qp_r20__0_n_103;
  wire qp_r20__0_n_104;
  wire qp_r20__0_n_105;
  wire qp_r20__0_n_106;
  wire qp_r20__0_n_107;
  wire qp_r20__0_n_108;
  wire qp_r20__0_n_109;
  wire qp_r20__0_n_110;
  wire qp_r20__0_n_111;
  wire qp_r20__0_n_112;
  wire qp_r20__0_n_113;
  wire qp_r20__0_n_114;
  wire qp_r20__0_n_115;
  wire qp_r20__0_n_116;
  wire qp_r20__0_n_117;
  wire qp_r20__0_n_118;
  wire qp_r20__0_n_119;
  wire qp_r20__0_n_120;
  wire qp_r20__0_n_121;
  wire qp_r20__0_n_122;
  wire qp_r20__0_n_123;
  wire qp_r20__0_n_124;
  wire qp_r20__0_n_125;
  wire qp_r20__0_n_126;
  wire qp_r20__0_n_127;
  wire qp_r20__0_n_128;
  wire qp_r20__0_n_129;
  wire qp_r20__0_n_130;
  wire qp_r20__0_n_131;
  wire qp_r20__0_n_132;
  wire qp_r20__0_n_133;
  wire qp_r20__0_n_134;
  wire qp_r20__0_n_135;
  wire qp_r20__0_n_136;
  wire qp_r20__0_n_137;
  wire qp_r20__0_n_138;
  wire qp_r20__0_n_139;
  wire qp_r20__0_n_140;
  wire qp_r20__0_n_141;
  wire qp_r20__0_n_142;
  wire qp_r20__0_n_143;
  wire qp_r20__0_n_144;
  wire qp_r20__0_n_145;
  wire qp_r20__0_n_146;
  wire qp_r20__0_n_147;
  wire qp_r20__0_n_148;
  wire qp_r20__0_n_149;
  wire qp_r20__0_n_150;
  wire qp_r20__0_n_151;
  wire qp_r20__0_n_152;
  wire qp_r20__0_n_153;
  wire qp_r20__0_n_58;
  wire qp_r20__0_n_59;
  wire qp_r20__0_n_60;
  wire qp_r20__0_n_61;
  wire qp_r20__0_n_62;
  wire qp_r20__0_n_63;
  wire qp_r20__0_n_64;
  wire qp_r20__0_n_65;
  wire qp_r20__0_n_66;
  wire qp_r20__0_n_67;
  wire qp_r20__0_n_68;
  wire qp_r20__0_n_69;
  wire qp_r20__0_n_70;
  wire qp_r20__0_n_71;
  wire qp_r20__0_n_72;
  wire qp_r20__0_n_73;
  wire qp_r20__0_n_74;
  wire qp_r20__0_n_75;
  wire qp_r20__0_n_76;
  wire qp_r20__0_n_77;
  wire qp_r20__0_n_78;
  wire qp_r20__0_n_79;
  wire qp_r20__0_n_80;
  wire qp_r20__0_n_81;
  wire qp_r20__0_n_82;
  wire qp_r20__0_n_83;
  wire qp_r20__0_n_84;
  wire qp_r20__0_n_85;
  wire qp_r20__0_n_86;
  wire qp_r20__0_n_87;
  wire qp_r20__0_n_88;
  wire qp_r20__0_n_89;
  wire qp_r20__0_n_90;
  wire qp_r20__0_n_91;
  wire qp_r20__0_n_92;
  wire qp_r20__0_n_93;
  wire qp_r20__0_n_94;
  wire qp_r20__0_n_95;
  wire qp_r20__0_n_96;
  wire qp_r20__0_n_97;
  wire qp_r20__0_n_98;
  wire qp_r20__0_n_99;
  wire qp_r20_i_10_n_0;
  wire qp_r20_i_11_n_0;
  wire qp_r20_i_12_n_0;
  wire qp_r20_i_13_n_0;
  wire qp_r20_i_14_n_0;
  wire qp_r20_i_15_n_0;
  wire qp_r20_i_16_n_0;
  wire qp_r20_i_17_n_0;
  wire qp_r20_i_18_n_0;
  wire qp_r20_i_19_n_0;
  wire qp_r20_i_1_n_1;
  wire qp_r20_i_1_n_2;
  wire qp_r20_i_1_n_3;
  wire qp_r20_i_20_n_0;
  wire qp_r20_i_21_n_0;
  wire qp_r20_i_22_n_0;
  wire qp_r20_i_23_n_0;
  wire qp_r20_i_24_n_0;
  wire qp_r20_i_25_n_0;
  wire qp_r20_i_2_n_0;
  wire qp_r20_i_2_n_1;
  wire qp_r20_i_2_n_2;
  wire qp_r20_i_2_n_3;
  wire qp_r20_i_3_n_0;
  wire qp_r20_i_3_n_1;
  wire qp_r20_i_3_n_2;
  wire qp_r20_i_3_n_3;
  wire qp_r20_i_4_n_0;
  wire qp_r20_i_4_n_1;
  wire qp_r20_i_4_n_2;
  wire qp_r20_i_4_n_3;
  wire qp_r20_i_5_n_0;
  wire qp_r20_i_5_n_1;
  wire qp_r20_i_5_n_2;
  wire qp_r20_i_5_n_3;
  wire qp_r20_i_6_n_0;
  wire qp_r20_i_7_n_0;
  wire qp_r20_i_8_n_0;
  wire qp_r20_i_9_n_0;
  wire qp_r20_n_100;
  wire qp_r20_n_101;
  wire qp_r20_n_102;
  wire qp_r20_n_103;
  wire qp_r20_n_104;
  wire qp_r20_n_105;
  wire qp_r20_n_106;
  wire qp_r20_n_107;
  wire qp_r20_n_108;
  wire qp_r20_n_109;
  wire qp_r20_n_110;
  wire qp_r20_n_111;
  wire qp_r20_n_112;
  wire qp_r20_n_113;
  wire qp_r20_n_114;
  wire qp_r20_n_115;
  wire qp_r20_n_116;
  wire qp_r20_n_117;
  wire qp_r20_n_118;
  wire qp_r20_n_119;
  wire qp_r20_n_120;
  wire qp_r20_n_121;
  wire qp_r20_n_122;
  wire qp_r20_n_123;
  wire qp_r20_n_124;
  wire qp_r20_n_125;
  wire qp_r20_n_126;
  wire qp_r20_n_127;
  wire qp_r20_n_128;
  wire qp_r20_n_129;
  wire qp_r20_n_130;
  wire qp_r20_n_131;
  wire qp_r20_n_132;
  wire qp_r20_n_133;
  wire qp_r20_n_134;
  wire qp_r20_n_135;
  wire qp_r20_n_136;
  wire qp_r20_n_137;
  wire qp_r20_n_138;
  wire qp_r20_n_139;
  wire qp_r20_n_140;
  wire qp_r20_n_141;
  wire qp_r20_n_142;
  wire qp_r20_n_143;
  wire qp_r20_n_144;
  wire qp_r20_n_145;
  wire qp_r20_n_146;
  wire qp_r20_n_147;
  wire qp_r20_n_148;
  wire qp_r20_n_149;
  wire qp_r20_n_150;
  wire qp_r20_n_151;
  wire qp_r20_n_152;
  wire qp_r20_n_153;
  wire qp_r20_n_58;
  wire qp_r20_n_59;
  wire qp_r20_n_60;
  wire qp_r20_n_61;
  wire qp_r20_n_62;
  wire qp_r20_n_63;
  wire qp_r20_n_64;
  wire qp_r20_n_65;
  wire qp_r20_n_66;
  wire qp_r20_n_67;
  wire qp_r20_n_68;
  wire qp_r20_n_69;
  wire qp_r20_n_70;
  wire qp_r20_n_71;
  wire qp_r20_n_72;
  wire qp_r20_n_73;
  wire qp_r20_n_74;
  wire qp_r20_n_75;
  wire qp_r20_n_76;
  wire qp_r20_n_77;
  wire qp_r20_n_78;
  wire qp_r20_n_79;
  wire qp_r20_n_80;
  wire qp_r20_n_81;
  wire qp_r20_n_82;
  wire qp_r20_n_83;
  wire qp_r20_n_84;
  wire qp_r20_n_85;
  wire qp_r20_n_86;
  wire qp_r20_n_87;
  wire qp_r20_n_88;
  wire qp_r20_n_89;
  wire qp_r20_n_90;
  wire qp_r20_n_91;
  wire qp_r20_n_92;
  wire qp_r20_n_93;
  wire qp_r20_n_94;
  wire qp_r20_n_95;
  wire qp_r20_n_96;
  wire qp_r20_n_97;
  wire qp_r20_n_98;
  wire qp_r20_n_99;
  wire \qp_r2_reg[0]__0_n_0 ;
  wire \qp_r2_reg[10]__0_n_0 ;
  wire \qp_r2_reg[11]__0_n_0 ;
  wire \qp_r2_reg[12]__0_n_0 ;
  wire \qp_r2_reg[13]__0_n_0 ;
  wire \qp_r2_reg[14]__0_n_0 ;
  wire \qp_r2_reg[15]__0_n_0 ;
  wire \qp_r2_reg[16]__0_n_0 ;
  wire \qp_r2_reg[1]__0_n_0 ;
  wire \qp_r2_reg[2]__0_n_0 ;
  wire \qp_r2_reg[3]__0_n_0 ;
  wire \qp_r2_reg[4]__0_n_0 ;
  wire \qp_r2_reg[5]__0_n_0 ;
  wire \qp_r2_reg[6]__0_n_0 ;
  wire \qp_r2_reg[7]__0_n_0 ;
  wire \qp_r2_reg[8]__0_n_0 ;
  wire \qp_r2_reg[9]__0_n_0 ;
  wire qp_r2_reg__0_n_100;
  wire qp_r2_reg__0_n_101;
  wire qp_r2_reg__0_n_102;
  wire qp_r2_reg__0_n_103;
  wire qp_r2_reg__0_n_104;
  wire qp_r2_reg__0_n_105;
  wire qp_r2_reg__0_n_58;
  wire qp_r2_reg__0_n_59;
  wire qp_r2_reg__0_n_60;
  wire qp_r2_reg__0_n_61;
  wire qp_r2_reg__0_n_62;
  wire qp_r2_reg__0_n_63;
  wire qp_r2_reg__0_n_64;
  wire qp_r2_reg__0_n_65;
  wire qp_r2_reg__0_n_66;
  wire qp_r2_reg__0_n_67;
  wire qp_r2_reg__0_n_68;
  wire qp_r2_reg__0_n_69;
  wire qp_r2_reg__0_n_70;
  wire qp_r2_reg__0_n_71;
  wire qp_r2_reg__0_n_72;
  wire qp_r2_reg__0_n_73;
  wire qp_r2_reg__0_n_74;
  wire qp_r2_reg__0_n_75;
  wire qp_r2_reg__0_n_76;
  wire qp_r2_reg__0_n_77;
  wire qp_r2_reg__0_n_78;
  wire qp_r2_reg__0_n_79;
  wire qp_r2_reg__0_n_80;
  wire qp_r2_reg__0_n_81;
  wire qp_r2_reg__0_n_82;
  wire qp_r2_reg__0_n_83;
  wire qp_r2_reg__0_n_84;
  wire qp_r2_reg__0_n_85;
  wire qp_r2_reg__0_n_86;
  wire qp_r2_reg__0_n_87;
  wire qp_r2_reg__0_n_88;
  wire qp_r2_reg__0_n_89;
  wire qp_r2_reg__0_n_90;
  wire qp_r2_reg__0_n_91;
  wire qp_r2_reg__0_n_92;
  wire qp_r2_reg__0_n_93;
  wire qp_r2_reg__0_n_94;
  wire qp_r2_reg__0_n_95;
  wire qp_r2_reg__0_n_96;
  wire qp_r2_reg__0_n_97;
  wire qp_r2_reg__0_n_98;
  wire qp_r2_reg__0_n_99;
  wire [63:16]qp_r2_reg__1;
  wire \qp_r2_reg_n_0_[0] ;
  wire \qp_r2_reg_n_0_[10] ;
  wire \qp_r2_reg_n_0_[11] ;
  wire \qp_r2_reg_n_0_[12] ;
  wire \qp_r2_reg_n_0_[13] ;
  wire \qp_r2_reg_n_0_[14] ;
  wire \qp_r2_reg_n_0_[15] ;
  wire \qp_r2_reg_n_0_[16] ;
  wire \qp_r2_reg_n_0_[1] ;
  wire \qp_r2_reg_n_0_[2] ;
  wire \qp_r2_reg_n_0_[3] ;
  wire \qp_r2_reg_n_0_[4] ;
  wire \qp_r2_reg_n_0_[5] ;
  wire \qp_r2_reg_n_0_[6] ;
  wire \qp_r2_reg_n_0_[7] ;
  wire \qp_r2_reg_n_0_[8] ;
  wire \qp_r2_reg_n_0_[9] ;
  wire qp_r2_reg_n_100;
  wire qp_r2_reg_n_101;
  wire qp_r2_reg_n_102;
  wire qp_r2_reg_n_103;
  wire qp_r2_reg_n_104;
  wire qp_r2_reg_n_105;
  wire qp_r2_reg_n_58;
  wire qp_r2_reg_n_59;
  wire qp_r2_reg_n_60;
  wire qp_r2_reg_n_61;
  wire qp_r2_reg_n_62;
  wire qp_r2_reg_n_63;
  wire qp_r2_reg_n_64;
  wire qp_r2_reg_n_65;
  wire qp_r2_reg_n_66;
  wire qp_r2_reg_n_67;
  wire qp_r2_reg_n_68;
  wire qp_r2_reg_n_69;
  wire qp_r2_reg_n_70;
  wire qp_r2_reg_n_71;
  wire qp_r2_reg_n_72;
  wire qp_r2_reg_n_73;
  wire qp_r2_reg_n_74;
  wire qp_r2_reg_n_75;
  wire qp_r2_reg_n_76;
  wire qp_r2_reg_n_77;
  wire qp_r2_reg_n_78;
  wire qp_r2_reg_n_79;
  wire qp_r2_reg_n_80;
  wire qp_r2_reg_n_81;
  wire qp_r2_reg_n_82;
  wire qp_r2_reg_n_83;
  wire qp_r2_reg_n_84;
  wire qp_r2_reg_n_85;
  wire qp_r2_reg_n_86;
  wire qp_r2_reg_n_87;
  wire qp_r2_reg_n_88;
  wire qp_r2_reg_n_89;
  wire qp_r2_reg_n_90;
  wire qp_r2_reg_n_91;
  wire qp_r2_reg_n_92;
  wire qp_r2_reg_n_93;
  wire qp_r2_reg_n_94;
  wire qp_r2_reg_n_95;
  wire qp_r2_reg_n_96;
  wire qp_r2_reg_n_97;
  wire qp_r2_reg_n_98;
  wire qp_r2_reg_n_99;
  wire [63:0]qp_r3;
  wire [63:0]qp_r30;
  wire \qp_r3[11]_i_2_n_0 ;
  wire \qp_r3[11]_i_3_n_0 ;
  wire \qp_r3[11]_i_4_n_0 ;
  wire \qp_r3[11]_i_5_n_0 ;
  wire \qp_r3[15]_i_2_n_0 ;
  wire \qp_r3[15]_i_3_n_0 ;
  wire \qp_r3[15]_i_4_n_0 ;
  wire \qp_r3[15]_i_5_n_0 ;
  wire \qp_r3[19]_i_2_n_0 ;
  wire \qp_r3[19]_i_3_n_0 ;
  wire \qp_r3[19]_i_4_n_0 ;
  wire \qp_r3[19]_i_5_n_0 ;
  wire \qp_r3[19]_i_7_n_0 ;
  wire \qp_r3[19]_i_8_n_0 ;
  wire \qp_r3[19]_i_9_n_0 ;
  wire \qp_r3[23]_i_10_n_0 ;
  wire \qp_r3[23]_i_2_n_0 ;
  wire \qp_r3[23]_i_3_n_0 ;
  wire \qp_r3[23]_i_4_n_0 ;
  wire \qp_r3[23]_i_5_n_0 ;
  wire \qp_r3[23]_i_7_n_0 ;
  wire \qp_r3[23]_i_8_n_0 ;
  wire \qp_r3[23]_i_9_n_0 ;
  wire \qp_r3[27]_i_2_n_0 ;
  wire \qp_r3[27]_i_3_n_0 ;
  wire \qp_r3[27]_i_4_n_0 ;
  wire \qp_r3[27]_i_5_n_0 ;
  wire \qp_r3[31]_i_10_n_0 ;
  wire \qp_r3[31]_i_11_n_0 ;
  wire \qp_r3[31]_i_12_n_0 ;
  wire \qp_r3[31]_i_13_n_0 ;
  wire \qp_r3[31]_i_14_n_0 ;
  wire \qp_r3[31]_i_15_n_0 ;
  wire \qp_r3[31]_i_3_n_0 ;
  wire \qp_r3[31]_i_4_n_0 ;
  wire \qp_r3[31]_i_5_n_0 ;
  wire \qp_r3[31]_i_6_n_0 ;
  wire \qp_r3[31]_i_8_n_0 ;
  wire \qp_r3[31]_i_9_n_0 ;
  wire \qp_r3[35]_i_10_n_0 ;
  wire \qp_r3[35]_i_3_n_0 ;
  wire \qp_r3[35]_i_4_n_0 ;
  wire \qp_r3[35]_i_5_n_0 ;
  wire \qp_r3[35]_i_6_n_0 ;
  wire \qp_r3[35]_i_7_n_0 ;
  wire \qp_r3[35]_i_8_n_0 ;
  wire \qp_r3[35]_i_9_n_0 ;
  wire \qp_r3[39]_i_10_n_0 ;
  wire \qp_r3[39]_i_3_n_0 ;
  wire \qp_r3[39]_i_4_n_0 ;
  wire \qp_r3[39]_i_5_n_0 ;
  wire \qp_r3[39]_i_6_n_0 ;
  wire \qp_r3[39]_i_7_n_0 ;
  wire \qp_r3[39]_i_8_n_0 ;
  wire \qp_r3[39]_i_9_n_0 ;
  wire \qp_r3[3]_i_2_n_0 ;
  wire \qp_r3[3]_i_3_n_0 ;
  wire \qp_r3[3]_i_4_n_0 ;
  wire \qp_r3[3]_i_5_n_0 ;
  wire \qp_r3[43]_i_10_n_0 ;
  wire \qp_r3[43]_i_3_n_0 ;
  wire \qp_r3[43]_i_4_n_0 ;
  wire \qp_r3[43]_i_5_n_0 ;
  wire \qp_r3[43]_i_6_n_0 ;
  wire \qp_r3[43]_i_7_n_0 ;
  wire \qp_r3[43]_i_8_n_0 ;
  wire \qp_r3[43]_i_9_n_0 ;
  wire \qp_r3[47]_i_10_n_0 ;
  wire \qp_r3[47]_i_3_n_0 ;
  wire \qp_r3[47]_i_4_n_0 ;
  wire \qp_r3[47]_i_5_n_0 ;
  wire \qp_r3[47]_i_6_n_0 ;
  wire \qp_r3[47]_i_7_n_0 ;
  wire \qp_r3[47]_i_8_n_0 ;
  wire \qp_r3[47]_i_9_n_0 ;
  wire \qp_r3[51]_i_10_n_0 ;
  wire \qp_r3[51]_i_3_n_0 ;
  wire \qp_r3[51]_i_4_n_0 ;
  wire \qp_r3[51]_i_5_n_0 ;
  wire \qp_r3[51]_i_6_n_0 ;
  wire \qp_r3[51]_i_7_n_0 ;
  wire \qp_r3[51]_i_8_n_0 ;
  wire \qp_r3[51]_i_9_n_0 ;
  wire \qp_r3[55]_i_10_n_0 ;
  wire \qp_r3[55]_i_3_n_0 ;
  wire \qp_r3[55]_i_4_n_0 ;
  wire \qp_r3[55]_i_5_n_0 ;
  wire \qp_r3[55]_i_6_n_0 ;
  wire \qp_r3[55]_i_7_n_0 ;
  wire \qp_r3[55]_i_8_n_0 ;
  wire \qp_r3[55]_i_9_n_0 ;
  wire \qp_r3[59]_i_10_n_0 ;
  wire \qp_r3[59]_i_3_n_0 ;
  wire \qp_r3[59]_i_4_n_0 ;
  wire \qp_r3[59]_i_5_n_0 ;
  wire \qp_r3[59]_i_6_n_0 ;
  wire \qp_r3[59]_i_7_n_0 ;
  wire \qp_r3[59]_i_8_n_0 ;
  wire \qp_r3[59]_i_9_n_0 ;
  wire \qp_r3[63]_i_10_n_0 ;
  wire \qp_r3[63]_i_3_n_0 ;
  wire \qp_r3[63]_i_4_n_0 ;
  wire \qp_r3[63]_i_5_n_0 ;
  wire \qp_r3[63]_i_6_n_0 ;
  wire \qp_r3[63]_i_7_n_0 ;
  wire \qp_r3[63]_i_8_n_0 ;
  wire \qp_r3[63]_i_9_n_0 ;
  wire \qp_r3[7]_i_2_n_0 ;
  wire \qp_r3[7]_i_3_n_0 ;
  wire \qp_r3[7]_i_4_n_0 ;
  wire \qp_r3[7]_i_5_n_0 ;
  wire \qp_r3_reg[11]_i_1_n_0 ;
  wire \qp_r3_reg[11]_i_1_n_1 ;
  wire \qp_r3_reg[11]_i_1_n_2 ;
  wire \qp_r3_reg[11]_i_1_n_3 ;
  wire \qp_r3_reg[15]_i_1_n_0 ;
  wire \qp_r3_reg[15]_i_1_n_1 ;
  wire \qp_r3_reg[15]_i_1_n_2 ;
  wire \qp_r3_reg[15]_i_1_n_3 ;
  wire \qp_r3_reg[19]_i_1_n_0 ;
  wire \qp_r3_reg[19]_i_1_n_1 ;
  wire \qp_r3_reg[19]_i_1_n_2 ;
  wire \qp_r3_reg[19]_i_1_n_3 ;
  wire \qp_r3_reg[19]_i_6_n_0 ;
  wire \qp_r3_reg[19]_i_6_n_1 ;
  wire \qp_r3_reg[19]_i_6_n_2 ;
  wire \qp_r3_reg[19]_i_6_n_3 ;
  wire \qp_r3_reg[23]_i_1_n_0 ;
  wire \qp_r3_reg[23]_i_1_n_1 ;
  wire \qp_r3_reg[23]_i_1_n_2 ;
  wire \qp_r3_reg[23]_i_1_n_3 ;
  wire \qp_r3_reg[23]_i_6_n_0 ;
  wire \qp_r3_reg[23]_i_6_n_1 ;
  wire \qp_r3_reg[23]_i_6_n_2 ;
  wire \qp_r3_reg[23]_i_6_n_3 ;
  wire \qp_r3_reg[27]_i_1_n_0 ;
  wire \qp_r3_reg[27]_i_1_n_1 ;
  wire \qp_r3_reg[27]_i_1_n_2 ;
  wire \qp_r3_reg[27]_i_1_n_3 ;
  wire \qp_r3_reg[31]_i_1_n_0 ;
  wire \qp_r3_reg[31]_i_1_n_1 ;
  wire \qp_r3_reg[31]_i_1_n_2 ;
  wire \qp_r3_reg[31]_i_1_n_3 ;
  wire \qp_r3_reg[31]_i_2_n_0 ;
  wire \qp_r3_reg[31]_i_2_n_1 ;
  wire \qp_r3_reg[31]_i_2_n_2 ;
  wire \qp_r3_reg[31]_i_2_n_3 ;
  wire \qp_r3_reg[31]_i_7_n_0 ;
  wire \qp_r3_reg[31]_i_7_n_1 ;
  wire \qp_r3_reg[31]_i_7_n_2 ;
  wire \qp_r3_reg[31]_i_7_n_3 ;
  wire \qp_r3_reg[35]_i_1_n_0 ;
  wire \qp_r3_reg[35]_i_1_n_1 ;
  wire \qp_r3_reg[35]_i_1_n_2 ;
  wire \qp_r3_reg[35]_i_1_n_3 ;
  wire \qp_r3_reg[35]_i_2_n_0 ;
  wire \qp_r3_reg[35]_i_2_n_1 ;
  wire \qp_r3_reg[35]_i_2_n_2 ;
  wire \qp_r3_reg[35]_i_2_n_3 ;
  wire \qp_r3_reg[39]_i_1_n_0 ;
  wire \qp_r3_reg[39]_i_1_n_1 ;
  wire \qp_r3_reg[39]_i_1_n_2 ;
  wire \qp_r3_reg[39]_i_1_n_3 ;
  wire \qp_r3_reg[39]_i_2_n_0 ;
  wire \qp_r3_reg[39]_i_2_n_1 ;
  wire \qp_r3_reg[39]_i_2_n_2 ;
  wire \qp_r3_reg[39]_i_2_n_3 ;
  wire \qp_r3_reg[3]_i_1_n_0 ;
  wire \qp_r3_reg[3]_i_1_n_1 ;
  wire \qp_r3_reg[3]_i_1_n_2 ;
  wire \qp_r3_reg[3]_i_1_n_3 ;
  wire \qp_r3_reg[43]_i_1_n_0 ;
  wire \qp_r3_reg[43]_i_1_n_1 ;
  wire \qp_r3_reg[43]_i_1_n_2 ;
  wire \qp_r3_reg[43]_i_1_n_3 ;
  wire \qp_r3_reg[43]_i_2_n_0 ;
  wire \qp_r3_reg[43]_i_2_n_1 ;
  wire \qp_r3_reg[43]_i_2_n_2 ;
  wire \qp_r3_reg[43]_i_2_n_3 ;
  wire \qp_r3_reg[47]_i_1_n_0 ;
  wire \qp_r3_reg[47]_i_1_n_1 ;
  wire \qp_r3_reg[47]_i_1_n_2 ;
  wire \qp_r3_reg[47]_i_1_n_3 ;
  wire \qp_r3_reg[47]_i_2_n_0 ;
  wire \qp_r3_reg[47]_i_2_n_1 ;
  wire \qp_r3_reg[47]_i_2_n_2 ;
  wire \qp_r3_reg[47]_i_2_n_3 ;
  wire \qp_r3_reg[51]_i_1_n_0 ;
  wire \qp_r3_reg[51]_i_1_n_1 ;
  wire \qp_r3_reg[51]_i_1_n_2 ;
  wire \qp_r3_reg[51]_i_1_n_3 ;
  wire \qp_r3_reg[51]_i_2_n_0 ;
  wire \qp_r3_reg[51]_i_2_n_1 ;
  wire \qp_r3_reg[51]_i_2_n_2 ;
  wire \qp_r3_reg[51]_i_2_n_3 ;
  wire \qp_r3_reg[55]_i_1_n_0 ;
  wire \qp_r3_reg[55]_i_1_n_1 ;
  wire \qp_r3_reg[55]_i_1_n_2 ;
  wire \qp_r3_reg[55]_i_1_n_3 ;
  wire \qp_r3_reg[55]_i_2_n_0 ;
  wire \qp_r3_reg[55]_i_2_n_1 ;
  wire \qp_r3_reg[55]_i_2_n_2 ;
  wire \qp_r3_reg[55]_i_2_n_3 ;
  wire \qp_r3_reg[59]_i_1_n_0 ;
  wire \qp_r3_reg[59]_i_1_n_1 ;
  wire \qp_r3_reg[59]_i_1_n_2 ;
  wire \qp_r3_reg[59]_i_1_n_3 ;
  wire \qp_r3_reg[59]_i_2_n_0 ;
  wire \qp_r3_reg[59]_i_2_n_1 ;
  wire \qp_r3_reg[59]_i_2_n_2 ;
  wire \qp_r3_reg[59]_i_2_n_3 ;
  wire \qp_r3_reg[63]_i_1_n_1 ;
  wire \qp_r3_reg[63]_i_1_n_2 ;
  wire \qp_r3_reg[63]_i_1_n_3 ;
  wire \qp_r3_reg[63]_i_2_n_1 ;
  wire \qp_r3_reg[63]_i_2_n_2 ;
  wire \qp_r3_reg[63]_i_2_n_3 ;
  wire \qp_r3_reg[7]_i_1_n_0 ;
  wire \qp_r3_reg[7]_i_1_n_1 ;
  wire \qp_r3_reg[7]_i_1_n_2 ;
  wire \qp_r3_reg[7]_i_1_n_3 ;
  wire rst;
  wire \z_r4_reg[0]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[10]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[11]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[12]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[13]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[14]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[15]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[16]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[17]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[18]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[19]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[1]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[20]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[21]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[22]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[23]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[24]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[25]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[26]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[27]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[28]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[29]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[2]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[30]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[31]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[32]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[33]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[3]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[4]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[5]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[6]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[7]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[8]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r4_reg[9]_srl4___in_v_r3_reg_r_n_0 ;
  wire \z_r5_reg[0]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[10]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[11]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[12]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[13]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[14]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[15]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[16]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[17]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[18]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[19]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[1]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[20]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[21]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[22]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[23]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[24]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[25]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[26]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[27]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[28]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[29]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[2]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[30]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[31]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[32]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[33]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[3]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[4]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[5]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[6]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[7]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[8]_in_v_r4_reg_r_n_0 ;
  wire \z_r5_reg[9]_in_v_r4_reg_r_n_0 ;
  wire z_r5_reg_gate__0_n_0;
  wire z_r5_reg_gate__10_n_0;
  wire z_r5_reg_gate__11_n_0;
  wire z_r5_reg_gate__12_n_0;
  wire z_r5_reg_gate__13_n_0;
  wire z_r5_reg_gate__14_n_0;
  wire z_r5_reg_gate__15_n_0;
  wire z_r5_reg_gate__16_n_0;
  wire z_r5_reg_gate__17_n_0;
  wire z_r5_reg_gate__18_n_0;
  wire z_r5_reg_gate__19_n_0;
  wire z_r5_reg_gate__1_n_0;
  wire z_r5_reg_gate__20_n_0;
  wire z_r5_reg_gate__21_n_0;
  wire z_r5_reg_gate__22_n_0;
  wire z_r5_reg_gate__23_n_0;
  wire z_r5_reg_gate__24_n_0;
  wire z_r5_reg_gate__25_n_0;
  wire z_r5_reg_gate__26_n_0;
  wire z_r5_reg_gate__27_n_0;
  wire z_r5_reg_gate__28_n_0;
  wire z_r5_reg_gate__29_n_0;
  wire z_r5_reg_gate__2_n_0;
  wire z_r5_reg_gate__30_n_0;
  wire z_r5_reg_gate__31_n_0;
  wire z_r5_reg_gate__32_n_0;
  wire z_r5_reg_gate__3_n_0;
  wire z_r5_reg_gate__4_n_0;
  wire z_r5_reg_gate__5_n_0;
  wire z_r5_reg_gate__6_n_0;
  wire z_r5_reg_gate__7_n_0;
  wire z_r5_reg_gate__8_n_0;
  wire z_r5_reg_gate__9_n_0;
  wire z_r5_reg_gate_n_0;
  wire [33:0]z_r6;
  wire NLW_fp_mul_CARRYCASCOUT_UNCONNECTED;
  wire NLW_fp_mul_MULTSIGNOUT_UNCONNECTED;
  wire NLW_fp_mul_OVERFLOW_UNCONNECTED;
  wire NLW_fp_mul_PATTERNBDETECT_UNCONNECTED;
  wire NLW_fp_mul_PATTERNDETECT_UNCONNECTED;
  wire NLW_fp_mul_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_fp_mul_ACOUT_UNCONNECTED;
  wire [17:0]NLW_fp_mul_BCOUT_UNCONNECTED;
  wire [3:0]NLW_fp_mul_CARRYOUT_UNCONNECTED;
  wire NLW_fp_mul__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_fp_mul__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_fp_mul__0_OVERFLOW_UNCONNECTED;
  wire NLW_fp_mul__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_fp_mul__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_fp_mul__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_fp_mul__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_fp_mul__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_fp_mul__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_fp_mul__0_PCOUT_UNCONNECTED;
  wire NLW_fp_mul__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_fp_mul__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_fp_mul__1_OVERFLOW_UNCONNECTED;
  wire NLW_fp_mul__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_fp_mul__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_fp_mul__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_fp_mul__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_fp_mul__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_fp_mul__1_CARRYOUT_UNCONNECTED;
  wire NLW_fp_mul__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_fp_mul__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_fp_mul__2_OVERFLOW_UNCONNECTED;
  wire NLW_fp_mul__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_fp_mul__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_fp_mul__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_fp_mul__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_fp_mul__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_fp_mul__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_fp_mul__2_PCOUT_UNCONNECTED;
  wire NLW_ql_r50_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ql_r50_P_UNCONNECTED;
  wire NLW_ql_r50__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50__0_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50__0_CARRYOUT_UNCONNECTED;
  wire [3:3]NLW_ql_r50__0_i_1_CO_UNCONNECTED;
  wire NLW_ql_r50__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50__1_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ql_r50__1_P_UNCONNECTED;
  wire NLW_ql_r50__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50__2_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50__2_CARRYOUT_UNCONNECTED;
  wire NLW_ql_r50__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50__3_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ql_r50__3_P_UNCONNECTED;
  wire NLW_ql_r50__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50__4_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50__4_CARRYOUT_UNCONNECTED;
  wire NLW_ql_r50__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50__5_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50__5_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ql_r50__5_P_UNCONNECTED;
  wire NLW_ql_r50__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r50__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r50__6_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r50__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r50__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r50__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r50__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r50__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r50__6_CARRYOUT_UNCONNECTED;
  wire NLW_ql_r5_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r5_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r5_reg_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r5_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r5_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r5_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r5_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r5_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r5_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ql_r5_reg_PCOUT_UNCONNECTED;
  wire NLW_ql_r5_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ql_r5_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ql_r5_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_ql_r5_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ql_r5_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ql_r5_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ql_r5_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ql_r5_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ql_r5_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ql_r5_reg__0_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_ql_r6_reg[63]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_ql_r6_reg[63]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_ql_r6_reg[63]_i_2_O_UNCONNECTED ;
  wire NLW_qp_r20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_qp_r20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_qp_r20_OVERFLOW_UNCONNECTED;
  wire NLW_qp_r20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_qp_r20_PATTERNDETECT_UNCONNECTED;
  wire NLW_qp_r20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_qp_r20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_qp_r20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_qp_r20_CARRYOUT_UNCONNECTED;
  wire NLW_qp_r20__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_qp_r20__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_qp_r20__0_OVERFLOW_UNCONNECTED;
  wire NLW_qp_r20__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_qp_r20__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_qp_r20__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_qp_r20__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_qp_r20__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_qp_r20__0_CARRYOUT_UNCONNECTED;
  wire [3:0]NLW_qp_r20__0_i_17_O_UNCONNECTED;
  wire [3:0]NLW_qp_r20__0_i_22_O_UNCONNECTED;
  wire [3:0]NLW_qp_r20__0_i_27_O_UNCONNECTED;
  wire [1:0]NLW_qp_r20__0_i_4_O_UNCONNECTED;
  wire [3:3]NLW_qp_r20_i_1_CO_UNCONNECTED;
  wire NLW_qp_r2_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_qp_r2_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_qp_r2_reg_OVERFLOW_UNCONNECTED;
  wire NLW_qp_r2_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_qp_r2_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_qp_r2_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_qp_r2_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_qp_r2_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_qp_r2_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_qp_r2_reg_PCOUT_UNCONNECTED;
  wire NLW_qp_r2_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_qp_r2_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_qp_r2_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_qp_r2_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_qp_r2_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_qp_r2_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_qp_r2_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_qp_r2_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_qp_r2_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_qp_r2_reg__0_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_qp_r3_reg[63]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_qp_r3_reg[63]_i_2_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r6_reg_gate_n_0),
        .Q(out_valid),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    fp_mul
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,qln2_inv[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_fp_mul_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({qin[31],qin[31],qin[31],qin[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_fp_mul_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_fp_mul_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_fp_mul_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_fp_mul_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_fp_mul_OVERFLOW_UNCONNECTED),
        .P({fp_mul_n_58,fp_mul_n_59,fp_mul_n_60,fp_mul_n_61,fp_mul_n_62,fp_mul_n_63,fp_mul_n_64,fp_mul_n_65,fp_mul_n_66,fp_mul_n_67,fp_mul_n_68,fp_mul_n_69,fp_mul_n_70,fp_mul_n_71,fp_mul_n_72,fp_mul_n_73,fp_mul_n_74,fp_mul_n_75,fp_mul_n_76,fp_mul_n_77,fp_mul_n_78,fp_mul_n_79,fp_mul_n_80,fp_mul_n_81,fp_mul_n_82,fp_mul_n_83,fp_mul_n_84,fp_mul_n_85,fp_mul_n_86,fp_mul_n_87,fp_mul_n_88,fp_mul_n_89,fp_mul_n_90,fp_mul_n_91,fp_mul_n_92,fp_mul_n_93,fp_mul_n_94,fp_mul_n_95,fp_mul_n_96,fp_mul_n_97,fp_mul_n_98,fp_mul_n_99,fp_mul_n_100,fp_mul_n_101,fp_mul_n_102,fp_mul_n_103,fp_mul_n_104,fp_mul_n_105}),
        .PATTERNBDETECT(NLW_fp_mul_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_fp_mul_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({fp_mul_n_106,fp_mul_n_107,fp_mul_n_108,fp_mul_n_109,fp_mul_n_110,fp_mul_n_111,fp_mul_n_112,fp_mul_n_113,fp_mul_n_114,fp_mul_n_115,fp_mul_n_116,fp_mul_n_117,fp_mul_n_118,fp_mul_n_119,fp_mul_n_120,fp_mul_n_121,fp_mul_n_122,fp_mul_n_123,fp_mul_n_124,fp_mul_n_125,fp_mul_n_126,fp_mul_n_127,fp_mul_n_128,fp_mul_n_129,fp_mul_n_130,fp_mul_n_131,fp_mul_n_132,fp_mul_n_133,fp_mul_n_134,fp_mul_n_135,fp_mul_n_136,fp_mul_n_137,fp_mul_n_138,fp_mul_n_139,fp_mul_n_140,fp_mul_n_141,fp_mul_n_142,fp_mul_n_143,fp_mul_n_144,fp_mul_n_145,fp_mul_n_146,fp_mul_n_147,fp_mul_n_148,fp_mul_n_149,fp_mul_n_150,fp_mul_n_151,fp_mul_n_152,fp_mul_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_fp_mul_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    fp_mul__0
       (.A({qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31],qin[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_fp_mul__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({qln2_inv[31],qln2_inv[31],qln2_inv[31],qln2_inv[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_fp_mul__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_fp_mul__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_fp_mul__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_fp_mul__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_fp_mul__0_OVERFLOW_UNCONNECTED),
        .P({fp_mul__0_n_58,fp_mul__0_n_59,fp_mul__0_n_60,fp_mul__0_n_61,fp_mul__0_n_62,fp_mul__0_n_63,fp_mul__0_n_64,fp_mul__0_n_65,fp_mul__0_n_66,fp_mul__0_n_67,fp_mul__0_n_68,fp_mul__0_n_69,fp_mul__0_n_70,fp_mul__0_n_71,fp_mul__0_n_72,fp_mul__0_n_73,fp_mul__0_n_74,fp_mul__0_n_75,fp_mul__0_n_76,fp_mul__0_n_77,fp_mul__0_n_78,fp_mul__0_n_79,fp_mul__0_n_80,fp_mul__0_n_81,fp_mul__0_n_82,fp_mul__0_n_83,fp_mul__0_n_84,fp_mul__0_n_85,fp_mul__0_n_86,fp_mul__0_n_87,fp_mul__0_n_88,fp_mul__0_n_89,fp_mul__0_n_90,fp_mul__0_n_91,fp_mul__0_n_92,fp_mul__0_n_93,fp_mul__0_n_94,fp_mul__0_n_95,fp_mul__0_n_96,fp_mul__0_n_97,fp_mul__0_n_98,fp_mul__0_n_99,fp_mul__0_n_100,fp_mul__0_n_101,fp_mul__0_n_102,fp_mul__0_n_103,fp_mul__0_n_104,fp_mul__0_n_105}),
        .PATTERNBDETECT(NLW_fp_mul__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_fp_mul__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({fp_mul_n_106,fp_mul_n_107,fp_mul_n_108,fp_mul_n_109,fp_mul_n_110,fp_mul_n_111,fp_mul_n_112,fp_mul_n_113,fp_mul_n_114,fp_mul_n_115,fp_mul_n_116,fp_mul_n_117,fp_mul_n_118,fp_mul_n_119,fp_mul_n_120,fp_mul_n_121,fp_mul_n_122,fp_mul_n_123,fp_mul_n_124,fp_mul_n_125,fp_mul_n_126,fp_mul_n_127,fp_mul_n_128,fp_mul_n_129,fp_mul_n_130,fp_mul_n_131,fp_mul_n_132,fp_mul_n_133,fp_mul_n_134,fp_mul_n_135,fp_mul_n_136,fp_mul_n_137,fp_mul_n_138,fp_mul_n_139,fp_mul_n_140,fp_mul_n_141,fp_mul_n_142,fp_mul_n_143,fp_mul_n_144,fp_mul_n_145,fp_mul_n_146,fp_mul_n_147,fp_mul_n_148,fp_mul_n_149,fp_mul_n_150,fp_mul_n_151,fp_mul_n_152,fp_mul_n_153}),
        .PCOUT(NLW_fp_mul__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(rst),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_fp_mul__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    fp_mul__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,qin[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_fp_mul__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qln2_inv[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_fp_mul__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_fp_mul__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_fp_mul__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_fp_mul__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_fp_mul__1_OVERFLOW_UNCONNECTED),
        .P({fp_mul__1_n_58,fp_mul__1_n_59,fp_mul__1_n_60,fp_mul__1_n_61,fp_mul__1_n_62,fp_mul__1_n_63,fp_mul__1_n_64,fp_mul__1_n_65,fp_mul__1_n_66,fp_mul__1_n_67,fp_mul__1_n_68,fp_mul__1_n_69,fp_mul__1_n_70,fp_mul__1_n_71,fp_mul__1_n_72,fp_mul__1_n_73,fp_mul__1_n_74,fp_mul__1_n_75,fp_mul__1_n_76,fp_mul__1_n_77,fp_mul__1_n_78,fp_mul__1_n_79,fp_mul__1_n_80,fp_mul__1_n_81,fp_mul__1_n_82,fp_mul__1_n_83,fp_mul__1_n_84,fp_mul__1_n_85,fp_mul__1_n_86,fp_mul__1_n_87,fp_mul__1_n_88,fp_mul__1_n_89,fp_mul__1_n_90,fp_mul__1_n_91,fp_mul__1_n_92,fp_mul__1_n_93,fp_mul__1_n_94,fp_mul__1_n_95,fp_mul__1_n_96,fp_mul__1_n_97,fp_mul__1_n_98,fp_mul__1_n_99,fp_mul__1_n_100,fp_mul__1_n_101,fp_mul__1_n_102,fp_mul__1_n_103,fp_mul__1_n_104,fp_mul__1_n_105}),
        .PATTERNBDETECT(NLW_fp_mul__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_fp_mul__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({fp_mul__1_n_106,fp_mul__1_n_107,fp_mul__1_n_108,fp_mul__1_n_109,fp_mul__1_n_110,fp_mul__1_n_111,fp_mul__1_n_112,fp_mul__1_n_113,fp_mul__1_n_114,fp_mul__1_n_115,fp_mul__1_n_116,fp_mul__1_n_117,fp_mul__1_n_118,fp_mul__1_n_119,fp_mul__1_n_120,fp_mul__1_n_121,fp_mul__1_n_122,fp_mul__1_n_123,fp_mul__1_n_124,fp_mul__1_n_125,fp_mul__1_n_126,fp_mul__1_n_127,fp_mul__1_n_128,fp_mul__1_n_129,fp_mul__1_n_130,fp_mul__1_n_131,fp_mul__1_n_132,fp_mul__1_n_133,fp_mul__1_n_134,fp_mul__1_n_135,fp_mul__1_n_136,fp_mul__1_n_137,fp_mul__1_n_138,fp_mul__1_n_139,fp_mul__1_n_140,fp_mul__1_n_141,fp_mul__1_n_142,fp_mul__1_n_143,fp_mul__1_n_144,fp_mul__1_n_145,fp_mul__1_n_146,fp_mul__1_n_147,fp_mul__1_n_148,fp_mul__1_n_149,fp_mul__1_n_150,fp_mul__1_n_151,fp_mul__1_n_152,fp_mul__1_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_fp_mul__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    fp_mul__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,qin[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_fp_mul__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({qln2_inv[31],qln2_inv[31],qln2_inv[31],qln2_inv[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_fp_mul__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_fp_mul__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_fp_mul__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_fp_mul__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_fp_mul__2_OVERFLOW_UNCONNECTED),
        .P({fp_mul__2_n_58,fp_mul__2_n_59,fp_mul__2_n_60,fp_mul__2_n_61,fp_mul__2_n_62,fp_mul__2_n_63,fp_mul__2_n_64,fp_mul__2_n_65,fp_mul__2_n_66,fp_mul__2_n_67,fp_mul__2_n_68,fp_mul__2_n_69,fp_mul__2_n_70,fp_mul__2_n_71,fp_mul__2_n_72,fp_mul__2_n_73,fp_mul__2_n_74,fp_mul__2_n_75,fp_mul__2_n_76,fp_mul__2_n_77,fp_mul__2_n_78,fp_mul__2_n_79,fp_mul__2_n_80,fp_mul__2_n_81,fp_mul__2_n_82,fp_mul__2_n_83,fp_mul__2_n_84,fp_mul__2_n_85,fp_mul__2_n_86,fp_mul__2_n_87,fp_mul__2_n_88,fp_mul__2_n_89,fp_mul__2_n_90,fp_mul__2_n_91,fp_mul__2_n_92,fp_mul__2_n_93,fp_mul__2_n_94,fp_mul__2_n_95,fp_mul__2_n_96,fp_mul__2_n_97,fp_mul__2_n_98,fp_mul__2_n_99,fp_mul__2_n_100,fp_mul__2_n_101,fp_mul__2_n_102,fp_mul__2_n_103,fp_mul__2_n_104,fp_mul__2_n_105}),
        .PATTERNBDETECT(NLW_fp_mul__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_fp_mul__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({fp_mul__1_n_106,fp_mul__1_n_107,fp_mul__1_n_108,fp_mul__1_n_109,fp_mul__1_n_110,fp_mul__1_n_111,fp_mul__1_n_112,fp_mul__1_n_113,fp_mul__1_n_114,fp_mul__1_n_115,fp_mul__1_n_116,fp_mul__1_n_117,fp_mul__1_n_118,fp_mul__1_n_119,fp_mul__1_n_120,fp_mul__1_n_121,fp_mul__1_n_122,fp_mul__1_n_123,fp_mul__1_n_124,fp_mul__1_n_125,fp_mul__1_n_126,fp_mul__1_n_127,fp_mul__1_n_128,fp_mul__1_n_129,fp_mul__1_n_130,fp_mul__1_n_131,fp_mul__1_n_132,fp_mul__1_n_133,fp_mul__1_n_134,fp_mul__1_n_135,fp_mul__1_n_136,fp_mul__1_n_137,fp_mul__1_n_138,fp_mul__1_n_139,fp_mul__1_n_140,fp_mul__1_n_141,fp_mul__1_n_142,fp_mul__1_n_143,fp_mul__1_n_144,fp_mul__1_n_145,fp_mul__1_n_146,fp_mul__1_n_147,fp_mul__1_n_148,fp_mul__1_n_149,fp_mul__1_n_150,fp_mul__1_n_151,fp_mul__1_n_152,fp_mul__1_n_153}),
        .PCOUT(NLW_fp_mul__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(rst),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_fp_mul__2_UNDERFLOW_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r0_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(in_v_r0_reg_r_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r1_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r0_reg_r_n_0),
        .Q(in_v_r1_reg_r_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r2_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r1_reg_r_n_0),
        .Q(in_v_r2_reg_r_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r3_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r2_reg_r_n_0),
        .Q(in_v_r3_reg_r_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r4_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r3_reg_r_n_0),
        .Q(in_v_r4_reg_r_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r5_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r4_reg_r_n_0),
        .Q(in_v_r5_reg_r_n_0),
        .R(rst));
  (* srl_name = "in_v_r5_reg_srl6___in_v_r5_reg_r" *) 
  SRL16E #(
    .INIT(16'h0000)) 
    in_v_r5_reg_srl6___in_v_r5_reg_r
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(in_valid),
        .Q(in_v_r5_reg_srl6___in_v_r5_reg_r_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    in_v_r6_reg_gate
       (.I0(in_v_r6_reg_in_v_r6_reg_r_n_0),
        .I1(in_v_r6_reg_r_n_0),
        .O(in_v_r6_reg_gate_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r6_reg_in_v_r6_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r5_reg_srl6___in_v_r5_reg_r_n_0),
        .Q(in_v_r6_reg_in_v_r6_reg_r_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    in_v_r6_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(in_v_r5_reg_r_n_0),
        .Q(in_v_r6_reg_r_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[0]),
        .Q(qb_r0[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[10]),
        .Q(qb_r0[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[11]),
        .Q(qb_r0[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[12]),
        .Q(qb_r0[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[13]),
        .Q(qb_r0[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[14]),
        .Q(qb_r0[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[15]),
        .Q(qb_r0[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[16]),
        .Q(qb_r0[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[17]),
        .Q(qb_r0[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[18]),
        .Q(qb_r0[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[19]),
        .Q(qb_r0[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[1]),
        .Q(qb_r0[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[20]),
        .Q(qb_r0[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[21]),
        .Q(qb_r0[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[22]),
        .Q(qb_r0[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[23]),
        .Q(qb_r0[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[24]),
        .Q(qb_r0[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[25]),
        .Q(qb_r0[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[26]),
        .Q(qb_r0[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[27]),
        .Q(qb_r0[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[28]),
        .Q(qb_r0[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[29]),
        .Q(qb_r0[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[2]),
        .Q(qb_r0[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[30]),
        .Q(qb_r0[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[31]),
        .Q(qb_r0[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[3]),
        .Q(qb_r0[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[4]),
        .Q(qb_r0[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[5]),
        .Q(qb_r0[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[6]),
        .Q(qb_r0[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[7]),
        .Q(qb_r0[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[8]),
        .Q(qb_r0[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qb_r0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qb[9]),
        .Q(qb_r0[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[0]),
        .Q(qc_r0[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[10]),
        .Q(qc_r0[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[11]),
        .Q(qc_r0[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[12]),
        .Q(qc_r0[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[13]),
        .Q(qc_r0[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[14]),
        .Q(qc_r0[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[15]),
        .Q(qc_r0[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[16]),
        .Q(qc_r0[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[17]),
        .Q(qc_r0[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[18]),
        .Q(qc_r0[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[19]),
        .Q(qc_r0[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[1]),
        .Q(qc_r0[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[20]),
        .Q(qc_r0[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[21]),
        .Q(qc_r0[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[22]),
        .Q(qc_r0[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[23]),
        .Q(qc_r0[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[24]),
        .Q(qc_r0[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[25]),
        .Q(qc_r0[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[26]),
        .Q(qc_r0[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[27]),
        .Q(qc_r0[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[28]),
        .Q(qc_r0[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[29]),
        .Q(qc_r0[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[2]),
        .Q(qc_r0[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[30]),
        .Q(qc_r0[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[31]),
        .Q(qc_r0[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[3]),
        .Q(qc_r0[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[4]),
        .Q(qc_r0[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[5]),
        .Q(qc_r0[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[6]),
        .Q(qc_r0[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[7]),
        .Q(qc_r0[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[8]),
        .Q(qc_r0[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qc_r0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qc[9]),
        .Q(qc_r0[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[0]),
        .Q(qin_r0[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[10]),
        .Q(qin_r0[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[11]),
        .Q(qin_r0[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[12]),
        .Q(qin_r0[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[13]),
        .Q(qin_r0[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[14]),
        .Q(qin_r0[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[15]),
        .Q(qin_r0[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[16]),
        .Q(qin_r0[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[17]),
        .Q(qin_r0[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[18]),
        .Q(qin_r0[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[19]),
        .Q(qin_r0[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[1]),
        .Q(qin_r0[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[20]),
        .Q(qin_r0[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[21]),
        .Q(qin_r0[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[22]),
        .Q(qin_r0[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[23]),
        .Q(qin_r0[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[24]),
        .Q(qin_r0[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[25]),
        .Q(qin_r0[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[26]),
        .Q(qin_r0[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[27]),
        .Q(qin_r0[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[28]),
        .Q(qin_r0[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[29]),
        .Q(qin_r0[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[2]),
        .Q(qin_r0[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[30]),
        .Q(qin_r0[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[31]),
        .Q(qin_r0[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[3]),
        .Q(qin_r0[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[4]),
        .Q(qin_r0[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[5]),
        .Q(qin_r0[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[6]),
        .Q(qin_r0[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[7]),
        .Q(qin_r0[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[8]),
        .Q(qin_r0[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qin[9]),
        .Q(qin_r0[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[0]),
        .Q(qin_r1[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[10]),
        .Q(qin_r1[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[11]),
        .Q(qin_r1[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[12]),
        .Q(qin_r1[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[13]),
        .Q(qin_r1[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[14]),
        .Q(qin_r1[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[15]),
        .Q(qin_r1[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[16]),
        .Q(qin_r1[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[17]),
        .Q(qin_r1[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[18]),
        .Q(qin_r1[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[19]),
        .Q(qin_r1[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[1]),
        .Q(qin_r1[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[20]),
        .Q(qin_r1[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[21]),
        .Q(qin_r1[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[22]),
        .Q(qin_r1[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[23]),
        .Q(qin_r1[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[24]),
        .Q(qin_r1[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[25]),
        .Q(qin_r1[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[26]),
        .Q(qin_r1[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[27]),
        .Q(qin_r1[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[28]),
        .Q(qin_r1[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[29]),
        .Q(qin_r1[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[2]),
        .Q(qin_r1[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[30]),
        .Q(qin_r1[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[31]),
        .Q(qin_r1[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[3]),
        .Q(qin_r1[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[4]),
        .Q(qin_r1[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[5]),
        .Q(qin_r1[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[6]),
        .Q(qin_r1[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[7]),
        .Q(qin_r1[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[8]),
        .Q(qin_r1[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r0[9]),
        .Q(qin_r1[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[0]),
        .Q(qin_r2[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[10]),
        .Q(qin_r2[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[11]),
        .Q(qin_r2[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[12]),
        .Q(qin_r2[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[13]),
        .Q(qin_r2[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[14]),
        .Q(qin_r2[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[15]),
        .Q(qin_r2[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[16]),
        .Q(qin_r2[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[17]),
        .Q(qin_r2[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[18]),
        .Q(qin_r2[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[19]),
        .Q(qin_r2[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[1]),
        .Q(qin_r2[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[20]),
        .Q(qin_r2[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[21]),
        .Q(qin_r2[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[22]),
        .Q(qin_r2[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[23]),
        .Q(qin_r2[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[24]),
        .Q(qin_r2[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[25]),
        .Q(qin_r2[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[26]),
        .Q(qin_r2[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[27]),
        .Q(qin_r2[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[28]),
        .Q(qin_r2[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[29]),
        .Q(qin_r2[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[2]),
        .Q(qin_r2[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[30]),
        .Q(qin_r2[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[31]),
        .Q(qin_r2[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[3]),
        .Q(qin_r2[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[4]),
        .Q(qin_r2[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[5]),
        .Q(qin_r2[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[6]),
        .Q(qin_r2[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[7]),
        .Q(qin_r2[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[8]),
        .Q(qin_r2[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qin_r2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qin_r1[9]),
        .Q(qin_r2[9]),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    ql_r50
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50_i_1_n_5,ql_r50_i_1_n_6,ql_r50_i_1_n_7,ql_r50_i_2_n_4,ql_r50_i_2_n_5,ql_r50_i_2_n_6,ql_r50_i_2_n_7,ql_r50_i_3_n_4,ql_r50_i_3_n_5,ql_r50_i_3_n_6,ql_r50_i_3_n_7,ql_r50_i_4_n_4,ql_r50_i_4_n_5,ql_r50_i_4_n_6,ql_r50_i_4_n_7,ql_r50_i_5_n_4,ql_r50_i_5_n_5}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_ql_r50_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50_OVERFLOW_UNCONNECTED),
        .P(NLW_ql_r50_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_ql_r50_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({ql_r50_n_106,ql_r50_n_107,ql_r50_n_108,ql_r50_n_109,ql_r50_n_110,ql_r50_n_111,ql_r50_n_112,ql_r50_n_113,ql_r50_n_114,ql_r50_n_115,ql_r50_n_116,ql_r50_n_117,ql_r50_n_118,ql_r50_n_119,ql_r50_n_120,ql_r50_n_121,ql_r50_n_122,ql_r50_n_123,ql_r50_n_124,ql_r50_n_125,ql_r50_n_126,ql_r50_n_127,ql_r50_n_128,ql_r50_n_129,ql_r50_n_130,ql_r50_n_131,ql_r50_n_132,ql_r50_n_133,ql_r50_n_134,ql_r50_n_135,ql_r50_n_136,ql_r50_n_137,ql_r50_n_138,ql_r50_n_139,ql_r50_n_140,ql_r50_n_141,ql_r50_n_142,ql_r50_n_143,ql_r50_n_144,ql_r50_n_145,ql_r50_n_146,ql_r50_n_147,ql_r50_n_148,ql_r50_n_149,ql_r50_n_150,ql_r50_n_151,ql_r50_n_152,ql_r50_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ql_r50_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ql_r50__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,qp_r30[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({ql_r50__0_i_1_n_4,ql_r50__0_i_1_n_4,ql_r50__0_i_1_n_4,ql_r50__0_i_1_n_4,ql_r50__0_i_1_n_4,ql_r50__0_i_1_n_4,ql_r50__0_i_1_n_5,ql_r50__0_i_1_n_6,ql_r50__0_i_1_n_7,ql_r50__0_i_2_n_4,ql_r50__0_i_2_n_5,ql_r50__0_i_2_n_6,ql_r50__0_i_2_n_7,ql_r50__0_i_3_n_4,ql_r50__0_i_3_n_5,ql_r50__0_i_3_n_6,ql_r50__0_i_3_n_7,ql_r50_i_1_n_4}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ql_r50__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50__0_OVERFLOW_UNCONNECTED),
        .P({ql_r50__0_n_58,ql_r50__0_n_59,ql_r50__0_n_60,ql_r50__0_n_61,ql_r50__0_n_62,ql_r50__0_n_63,ql_r50__0_n_64,ql_r50__0_n_65,ql_r50__0_n_66,ql_r50__0_n_67,ql_r50__0_n_68,ql_r50__0_n_69,ql_r50__0_n_70,ql_r50__0_n_71,ql_r50__0_n_72,ql_r50__0_n_73,ql_r50__0_n_74,ql_r50__0_n_75,ql_r50__0_n_76,ql_r50__0_n_77,ql_r50__0_n_78,ql_r50__0_n_79,ql_r50__0_n_80,ql_r50__0_n_81,ql_r50__0_n_82,ql_r50__0_n_83,ql_r50__0_n_84,ql_r50__0_n_85,ql_r50__0_n_86,ql_r50__0_n_87,ql_r50__0_n_88,ql_r50__0_n_89,ql_r50__0_n_90,ql_r50__0_n_91,ql_r50__0_n_92,ql_r50__0_n_93,ql_r50__0_n_94,ql_r50__0_n_95,ql_r50__0_n_96,ql_r50__0_n_97,ql_r50__0_n_98,ql_r50__0_n_99,ql_r50__0_n_100,ql_r50__0_n_101,ql_r50__0_n_102,ql_r50__0_n_103,ql_r50__0_n_104,ql_r50__0_n_105}),
        .PATTERNBDETECT(NLW_ql_r50__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({ql_r50_n_106,ql_r50_n_107,ql_r50_n_108,ql_r50_n_109,ql_r50_n_110,ql_r50_n_111,ql_r50_n_112,ql_r50_n_113,ql_r50_n_114,ql_r50_n_115,ql_r50_n_116,ql_r50_n_117,ql_r50_n_118,ql_r50_n_119,ql_r50_n_120,ql_r50_n_121,ql_r50_n_122,ql_r50_n_123,ql_r50_n_124,ql_r50_n_125,ql_r50_n_126,ql_r50_n_127,ql_r50_n_128,ql_r50_n_129,ql_r50_n_130,ql_r50_n_131,ql_r50_n_132,ql_r50_n_133,ql_r50_n_134,ql_r50_n_135,ql_r50_n_136,ql_r50_n_137,ql_r50_n_138,ql_r50_n_139,ql_r50_n_140,ql_r50_n_141,ql_r50_n_142,ql_r50_n_143,ql_r50_n_144,ql_r50_n_145,ql_r50_n_146,ql_r50_n_147,ql_r50_n_148,ql_r50_n_149,ql_r50_n_150,ql_r50_n_151,ql_r50_n_152,ql_r50_n_153}),
        .PCOUT({ql_r50__0_n_106,ql_r50__0_n_107,ql_r50__0_n_108,ql_r50__0_n_109,ql_r50__0_n_110,ql_r50__0_n_111,ql_r50__0_n_112,ql_r50__0_n_113,ql_r50__0_n_114,ql_r50__0_n_115,ql_r50__0_n_116,ql_r50__0_n_117,ql_r50__0_n_118,ql_r50__0_n_119,ql_r50__0_n_120,ql_r50__0_n_121,ql_r50__0_n_122,ql_r50__0_n_123,ql_r50__0_n_124,ql_r50__0_n_125,ql_r50__0_n_126,ql_r50__0_n_127,ql_r50__0_n_128,ql_r50__0_n_129,ql_r50__0_n_130,ql_r50__0_n_131,ql_r50__0_n_132,ql_r50__0_n_133,ql_r50__0_n_134,ql_r50__0_n_135,ql_r50__0_n_136,ql_r50__0_n_137,ql_r50__0_n_138,ql_r50__0_n_139,ql_r50__0_n_140,ql_r50__0_n_141,ql_r50__0_n_142,ql_r50__0_n_143,ql_r50__0_n_144,ql_r50__0_n_145,ql_r50__0_n_146,ql_r50__0_n_147,ql_r50__0_n_148,ql_r50__0_n_149,ql_r50__0_n_150,ql_r50__0_n_151,ql_r50__0_n_152,ql_r50__0_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst),
        .UNDERFLOW(NLW_ql_r50__0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__0_i_1
       (.CI(ql_r50__0_i_2_n_0),
        .CO({NLW_ql_r50__0_i_1_CO_UNCONNECTED[3],ql_r50__0_i_1_n_1,ql_r50__0_i_1_n_2,ql_r50__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,qp_r3[61:59]}),
        .O({ql_r50__0_i_1_n_4,ql_r50__0_i_1_n_5,ql_r50__0_i_1_n_6,ql_r50__0_i_1_n_7}),
        .S({ql_r50__0_i_4_n_0,ql_r50__0_i_5_n_0,ql_r50__0_i_6_n_0,ql_r50__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_10
       (.I0(qp_r3[56]),
        .I1(qp_r3[57]),
        .O(ql_r50__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_11
       (.I0(qp_r3[55]),
        .I1(qp_r3[56]),
        .O(ql_r50__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_12
       (.I0(qp_r3[54]),
        .I1(qp_r3[55]),
        .O(ql_r50__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_13
       (.I0(qp_r3[53]),
        .I1(qp_r3[54]),
        .O(ql_r50__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_14
       (.I0(qp_r3[52]),
        .I1(qp_r3[53]),
        .O(ql_r50__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_15
       (.I0(qp_r3[51]),
        .I1(qp_r3[52]),
        .O(ql_r50__0_i_15_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__0_i_2
       (.CI(ql_r50__0_i_3_n_0),
        .CO({ql_r50__0_i_2_n_0,ql_r50__0_i_2_n_1,ql_r50__0_i_2_n_2,ql_r50__0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[58:55]),
        .O({ql_r50__0_i_2_n_4,ql_r50__0_i_2_n_5,ql_r50__0_i_2_n_6,ql_r50__0_i_2_n_7}),
        .S({ql_r50__0_i_8_n_0,ql_r50__0_i_9_n_0,ql_r50__0_i_10_n_0,ql_r50__0_i_11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__0_i_3
       (.CI(ql_r50_i_1_n_0),
        .CO({ql_r50__0_i_3_n_0,ql_r50__0_i_3_n_1,ql_r50__0_i_3_n_2,ql_r50__0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[54:51]),
        .O({ql_r50__0_i_3_n_4,ql_r50__0_i_3_n_5,ql_r50__0_i_3_n_6,ql_r50__0_i_3_n_7}),
        .S({ql_r50__0_i_12_n_0,ql_r50__0_i_13_n_0,ql_r50__0_i_14_n_0,ql_r50__0_i_15_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_4
       (.I0(qp_r3[62]),
        .I1(qp_r3[63]),
        .O(ql_r50__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_5
       (.I0(qp_r3[61]),
        .I1(qp_r3[62]),
        .O(ql_r50__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_6
       (.I0(qp_r3[60]),
        .I1(qp_r3[61]),
        .O(ql_r50__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_7
       (.I0(qp_r3[59]),
        .I1(qp_r3[60]),
        .O(ql_r50__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_8
       (.I0(qp_r3[58]),
        .I1(qp_r3[59]),
        .O(ql_r50__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50__0_i_9
       (.I0(qp_r3[57]),
        .I1(qp_r3[58]),
        .O(ql_r50__0_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    ql_r50__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50_i_5_n_6,ql_r50_i_5_n_7,ql_r50__1_i_1_n_4,ql_r50__1_i_1_n_5,ql_r50__1_i_1_n_6,ql_r50__1_i_1_n_7,ql_r50__1_i_2_n_4,ql_r50__1_i_2_n_5,ql_r50__1_i_2_n_6,ql_r50__1_i_2_n_7,ql_r50__1_i_3_n_4,ql_r50__1_i_3_n_5,ql_r50__1_i_3_n_6,ql_r50__1_i_3_n_7,ql_r50__1_i_4_n_4,ql_r50__1_i_4_n_5,ql_r50__1_i_4_n_6}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_ql_r50__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50__1_OVERFLOW_UNCONNECTED),
        .P(NLW_ql_r50__1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_ql_r50__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({ql_r50__1_n_106,ql_r50__1_n_107,ql_r50__1_n_108,ql_r50__1_n_109,ql_r50__1_n_110,ql_r50__1_n_111,ql_r50__1_n_112,ql_r50__1_n_113,ql_r50__1_n_114,ql_r50__1_n_115,ql_r50__1_n_116,ql_r50__1_n_117,ql_r50__1_n_118,ql_r50__1_n_119,ql_r50__1_n_120,ql_r50__1_n_121,ql_r50__1_n_122,ql_r50__1_n_123,ql_r50__1_n_124,ql_r50__1_n_125,ql_r50__1_n_126,ql_r50__1_n_127,ql_r50__1_n_128,ql_r50__1_n_129,ql_r50__1_n_130,ql_r50__1_n_131,ql_r50__1_n_132,ql_r50__1_n_133,ql_r50__1_n_134,ql_r50__1_n_135,ql_r50__1_n_136,ql_r50__1_n_137,ql_r50__1_n_138,ql_r50__1_n_139,ql_r50__1_n_140,ql_r50__1_n_141,ql_r50__1_n_142,ql_r50__1_n_143,ql_r50__1_n_144,ql_r50__1_n_145,ql_r50__1_n_146,ql_r50__1_n_147,ql_r50__1_n_148,ql_r50__1_n_149,ql_r50__1_n_150,ql_r50__1_n_151,ql_r50__1_n_152,ql_r50__1_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ql_r50__1_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__1_i_1
       (.CI(ql_r50__1_i_2_n_0),
        .CO({ql_r50__1_i_1_n_0,ql_r50__1_i_1_n_1,ql_r50__1_i_1_n_2,ql_r50__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({qb_r0[31],qp_r3[30:28]}),
        .O({ql_r50__1_i_1_n_4,ql_r50__1_i_1_n_5,ql_r50__1_i_1_n_6,ql_r50__1_i_1_n_7}),
        .S({ql_r50__1_i_5_n_0,ql_r50__1_i_6_n_0,ql_r50__1_i_7_n_0,ql_r50__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_10
       (.I0(qp_r3[26]),
        .I1(qb_r0[26]),
        .O(ql_r50__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_11
       (.I0(qp_r3[25]),
        .I1(qb_r0[25]),
        .O(ql_r50__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_12
       (.I0(qp_r3[24]),
        .I1(qb_r0[24]),
        .O(ql_r50__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_13
       (.I0(qp_r3[23]),
        .I1(qb_r0[23]),
        .O(ql_r50__1_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_14
       (.I0(qp_r3[22]),
        .I1(qb_r0[22]),
        .O(ql_r50__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_15
       (.I0(qp_r3[21]),
        .I1(qb_r0[21]),
        .O(ql_r50__1_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_16
       (.I0(qp_r3[20]),
        .I1(qb_r0[20]),
        .O(ql_r50__1_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_17
       (.I0(qp_r3[19]),
        .I1(qb_r0[19]),
        .O(ql_r50__1_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_18
       (.I0(qp_r3[18]),
        .I1(qb_r0[18]),
        .O(ql_r50__1_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_19
       (.I0(qp_r3[17]),
        .I1(qb_r0[17]),
        .O(ql_r50__1_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__1_i_2
       (.CI(ql_r50__1_i_3_n_0),
        .CO({ql_r50__1_i_2_n_0,ql_r50__1_i_2_n_1,ql_r50__1_i_2_n_2,ql_r50__1_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[27:24]),
        .O({ql_r50__1_i_2_n_4,ql_r50__1_i_2_n_5,ql_r50__1_i_2_n_6,ql_r50__1_i_2_n_7}),
        .S({ql_r50__1_i_9_n_0,ql_r50__1_i_10_n_0,ql_r50__1_i_11_n_0,ql_r50__1_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_20
       (.I0(qp_r3[16]),
        .I1(qb_r0[16]),
        .O(ql_r50__1_i_20_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__1_i_3
       (.CI(ql_r50__1_i_4_n_0),
        .CO({ql_r50__1_i_3_n_0,ql_r50__1_i_3_n_1,ql_r50__1_i_3_n_2,ql_r50__1_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[23:20]),
        .O({ql_r50__1_i_3_n_4,ql_r50__1_i_3_n_5,ql_r50__1_i_3_n_6,ql_r50__1_i_3_n_7}),
        .S({ql_r50__1_i_13_n_0,ql_r50__1_i_14_n_0,ql_r50__1_i_15_n_0,ql_r50__1_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__1_i_4
       (.CI(ql_r50__3_i_1_n_0),
        .CO({ql_r50__1_i_4_n_0,ql_r50__1_i_4_n_1,ql_r50__1_i_4_n_2,ql_r50__1_i_4_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[19:16]),
        .O({ql_r50__1_i_4_n_4,ql_r50__1_i_4_n_5,ql_r50__1_i_4_n_6,ql_r50__1_i_4_n_7}),
        .S({ql_r50__1_i_17_n_0,ql_r50__1_i_18_n_0,ql_r50__1_i_19_n_0,ql_r50__1_i_20_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_5
       (.I0(qb_r0[31]),
        .I1(qp_r3[31]),
        .O(ql_r50__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_6
       (.I0(qp_r3[30]),
        .I1(qb_r0[30]),
        .O(ql_r50__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_7
       (.I0(qp_r3[29]),
        .I1(qb_r0[29]),
        .O(ql_r50__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_8
       (.I0(qp_r3[28]),
        .I1(qb_r0[28]),
        .O(ql_r50__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__1_i_9
       (.I0(qp_r3[27]),
        .I1(qb_r0[27]),
        .O(ql_r50__1_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    ql_r50__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50_i_1_n_5,ql_r50_i_1_n_6,ql_r50_i_1_n_7,ql_r50_i_2_n_4,ql_r50_i_2_n_5,ql_r50_i_2_n_6,ql_r50_i_2_n_7,ql_r50_i_3_n_4,ql_r50_i_3_n_5,ql_r50_i_3_n_6,ql_r50_i_3_n_7,ql_r50_i_4_n_4,ql_r50_i_4_n_5,ql_r50_i_4_n_6,ql_r50_i_4_n_7,ql_r50_i_5_n_4,ql_r50_i_5_n_5}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_ql_r50__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50__2_OVERFLOW_UNCONNECTED),
        .P({ql_r50__2_n_58,ql_r50__2_n_59,ql_r50__2_n_60,ql_r50__2_n_61,ql_r50__2_n_62,ql_r50__2_n_63,ql_r50__2_n_64,ql_r50__2_n_65,ql_r50__2_n_66,ql_r50__2_n_67,ql_r50__2_n_68,ql_r50__2_n_69,ql_r50__2_n_70,ql_r50__2_n_71,ql_r50__2_n_72,ql_r50__2_n_73,ql_r50__2_n_74,ql_r50__2_n_75,ql_r50__2_n_76,ql_r50__2_n_77,ql_r50__2_n_78,ql_r50__2_n_79,ql_r50__2_n_80,ql_r50__2_n_81,ql_r50__2_n_82,ql_r50__2_n_83,ql_r50__2_n_84,ql_r50__2_n_85,ql_r50__2_n_86,ql_r50__2_n_87,ql_r50__2_n_88,ql_r50__2_n_89,ql_r50__2_n_90,ql_r50__2_n_91,ql_r50__2_n_92,ql_r50__2_n_93,ql_r50__2_n_94,ql_r50__2_n_95,ql_r50__2_n_96,ql_r50__2_n_97,ql_r50__2_n_98,ql_r50__2_n_99,ql_r50__2_n_100,ql_r50__2_n_101,ql_r50__2_n_102,ql_r50__2_n_103,ql_r50__2_n_104,ql_r50__2_n_105}),
        .PATTERNBDETECT(NLW_ql_r50__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({ql_r50__1_n_106,ql_r50__1_n_107,ql_r50__1_n_108,ql_r50__1_n_109,ql_r50__1_n_110,ql_r50__1_n_111,ql_r50__1_n_112,ql_r50__1_n_113,ql_r50__1_n_114,ql_r50__1_n_115,ql_r50__1_n_116,ql_r50__1_n_117,ql_r50__1_n_118,ql_r50__1_n_119,ql_r50__1_n_120,ql_r50__1_n_121,ql_r50__1_n_122,ql_r50__1_n_123,ql_r50__1_n_124,ql_r50__1_n_125,ql_r50__1_n_126,ql_r50__1_n_127,ql_r50__1_n_128,ql_r50__1_n_129,ql_r50__1_n_130,ql_r50__1_n_131,ql_r50__1_n_132,ql_r50__1_n_133,ql_r50__1_n_134,ql_r50__1_n_135,ql_r50__1_n_136,ql_r50__1_n_137,ql_r50__1_n_138,ql_r50__1_n_139,ql_r50__1_n_140,ql_r50__1_n_141,ql_r50__1_n_142,ql_r50__1_n_143,ql_r50__1_n_144,ql_r50__1_n_145,ql_r50__1_n_146,ql_r50__1_n_147,ql_r50__1_n_148,ql_r50__1_n_149,ql_r50__1_n_150,ql_r50__1_n_151,ql_r50__1_n_152,ql_r50__1_n_153}),
        .PCOUT({ql_r50__2_n_106,ql_r50__2_n_107,ql_r50__2_n_108,ql_r50__2_n_109,ql_r50__2_n_110,ql_r50__2_n_111,ql_r50__2_n_112,ql_r50__2_n_113,ql_r50__2_n_114,ql_r50__2_n_115,ql_r50__2_n_116,ql_r50__2_n_117,ql_r50__2_n_118,ql_r50__2_n_119,ql_r50__2_n_120,ql_r50__2_n_121,ql_r50__2_n_122,ql_r50__2_n_123,ql_r50__2_n_124,ql_r50__2_n_125,ql_r50__2_n_126,ql_r50__2_n_127,ql_r50__2_n_128,ql_r50__2_n_129,ql_r50__2_n_130,ql_r50__2_n_131,ql_r50__2_n_132,ql_r50__2_n_133,ql_r50__2_n_134,ql_r50__2_n_135,ql_r50__2_n_136,ql_r50__2_n_137,ql_r50__2_n_138,ql_r50__2_n_139,ql_r50__2_n_140,ql_r50__2_n_141,ql_r50__2_n_142,ql_r50__2_n_143,ql_r50__2_n_144,ql_r50__2_n_145,ql_r50__2_n_146,ql_r50__2_n_147,ql_r50__2_n_148,ql_r50__2_n_149,ql_r50__2_n_150,ql_r50__2_n_151,ql_r50__2_n_152,ql_r50__2_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ql_r50__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    ql_r50__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50__1_i_4_n_7,ql_r50__3_i_1_n_4,ql_r50__3_i_1_n_5,ql_r50__3_i_1_n_6,ql_r50__3_i_1_n_7,ql_r50__3_i_2_n_4,ql_r50__3_i_2_n_5,ql_r50__3_i_2_n_6,ql_r50__3_i_2_n_7,ql_r50__3_i_3_n_4,ql_r50__3_i_3_n_5,ql_r50__3_i_3_n_6,ql_r50__3_i_3_n_7,ql_r50__3_i_4_n_4,ql_r50__3_i_4_n_5,ql_r50__3_i_4_n_6,ql_r50__3_i_4_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({qp_r30[63],qp_r30[63],qp_r30[63],qp_r30[63],qp_r30[63],qp_r30[63:51]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_ql_r50__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50__3_OVERFLOW_UNCONNECTED),
        .P(NLW_ql_r50__3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_ql_r50__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({ql_r50__2_n_106,ql_r50__2_n_107,ql_r50__2_n_108,ql_r50__2_n_109,ql_r50__2_n_110,ql_r50__2_n_111,ql_r50__2_n_112,ql_r50__2_n_113,ql_r50__2_n_114,ql_r50__2_n_115,ql_r50__2_n_116,ql_r50__2_n_117,ql_r50__2_n_118,ql_r50__2_n_119,ql_r50__2_n_120,ql_r50__2_n_121,ql_r50__2_n_122,ql_r50__2_n_123,ql_r50__2_n_124,ql_r50__2_n_125,ql_r50__2_n_126,ql_r50__2_n_127,ql_r50__2_n_128,ql_r50__2_n_129,ql_r50__2_n_130,ql_r50__2_n_131,ql_r50__2_n_132,ql_r50__2_n_133,ql_r50__2_n_134,ql_r50__2_n_135,ql_r50__2_n_136,ql_r50__2_n_137,ql_r50__2_n_138,ql_r50__2_n_139,ql_r50__2_n_140,ql_r50__2_n_141,ql_r50__2_n_142,ql_r50__2_n_143,ql_r50__2_n_144,ql_r50__2_n_145,ql_r50__2_n_146,ql_r50__2_n_147,ql_r50__2_n_148,ql_r50__2_n_149,ql_r50__2_n_150,ql_r50__2_n_151,ql_r50__2_n_152,ql_r50__2_n_153}),
        .PCOUT({ql_r50__3_n_106,ql_r50__3_n_107,ql_r50__3_n_108,ql_r50__3_n_109,ql_r50__3_n_110,ql_r50__3_n_111,ql_r50__3_n_112,ql_r50__3_n_113,ql_r50__3_n_114,ql_r50__3_n_115,ql_r50__3_n_116,ql_r50__3_n_117,ql_r50__3_n_118,ql_r50__3_n_119,ql_r50__3_n_120,ql_r50__3_n_121,ql_r50__3_n_122,ql_r50__3_n_123,ql_r50__3_n_124,ql_r50__3_n_125,ql_r50__3_n_126,ql_r50__3_n_127,ql_r50__3_n_128,ql_r50__3_n_129,ql_r50__3_n_130,ql_r50__3_n_131,ql_r50__3_n_132,ql_r50__3_n_133,ql_r50__3_n_134,ql_r50__3_n_135,ql_r50__3_n_136,ql_r50__3_n_137,ql_r50__3_n_138,ql_r50__3_n_139,ql_r50__3_n_140,ql_r50__3_n_141,ql_r50__3_n_142,ql_r50__3_n_143,ql_r50__3_n_144,ql_r50__3_n_145,ql_r50__3_n_146,ql_r50__3_n_147,ql_r50__3_n_148,ql_r50__3_n_149,ql_r50__3_n_150,ql_r50__3_n_151,ql_r50__3_n_152,ql_r50__3_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ql_r50__3_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__3_i_1
       (.CI(ql_r50__3_i_2_n_0),
        .CO({ql_r50__3_i_1_n_0,ql_r50__3_i_1_n_1,ql_r50__3_i_1_n_2,ql_r50__3_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[15:12]),
        .O({ql_r50__3_i_1_n_4,ql_r50__3_i_1_n_5,ql_r50__3_i_1_n_6,ql_r50__3_i_1_n_7}),
        .S({ql_r50__3_i_5_n_0,ql_r50__3_i_6_n_0,ql_r50__3_i_7_n_0,ql_r50__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_10
       (.I0(qp_r3[10]),
        .I1(qb_r0[10]),
        .O(ql_r50__3_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_11
       (.I0(qp_r3[9]),
        .I1(qb_r0[9]),
        .O(ql_r50__3_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_12
       (.I0(qp_r3[8]),
        .I1(qb_r0[8]),
        .O(ql_r50__3_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_13
       (.I0(qp_r3[7]),
        .I1(qb_r0[7]),
        .O(ql_r50__3_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_14
       (.I0(qp_r3[6]),
        .I1(qb_r0[6]),
        .O(ql_r50__3_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_15
       (.I0(qp_r3[5]),
        .I1(qb_r0[5]),
        .O(ql_r50__3_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_16
       (.I0(qp_r3[4]),
        .I1(qb_r0[4]),
        .O(ql_r50__3_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_17
       (.I0(qp_r3[3]),
        .I1(qb_r0[3]),
        .O(ql_r50__3_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_18
       (.I0(qp_r3[2]),
        .I1(qb_r0[2]),
        .O(ql_r50__3_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_19
       (.I0(qp_r3[1]),
        .I1(qb_r0[1]),
        .O(ql_r50__3_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__3_i_2
       (.CI(ql_r50__3_i_3_n_0),
        .CO({ql_r50__3_i_2_n_0,ql_r50__3_i_2_n_1,ql_r50__3_i_2_n_2,ql_r50__3_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[11:8]),
        .O({ql_r50__3_i_2_n_4,ql_r50__3_i_2_n_5,ql_r50__3_i_2_n_6,ql_r50__3_i_2_n_7}),
        .S({ql_r50__3_i_9_n_0,ql_r50__3_i_10_n_0,ql_r50__3_i_11_n_0,ql_r50__3_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_20
       (.I0(qp_r3[0]),
        .I1(qb_r0[0]),
        .O(ql_r50__3_i_20_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__3_i_3
       (.CI(ql_r50__3_i_4_n_0),
        .CO({ql_r50__3_i_3_n_0,ql_r50__3_i_3_n_1,ql_r50__3_i_3_n_2,ql_r50__3_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[7:4]),
        .O({ql_r50__3_i_3_n_4,ql_r50__3_i_3_n_5,ql_r50__3_i_3_n_6,ql_r50__3_i_3_n_7}),
        .S({ql_r50__3_i_13_n_0,ql_r50__3_i_14_n_0,ql_r50__3_i_15_n_0,ql_r50__3_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50__3_i_4
       (.CI(1'b0),
        .CO({ql_r50__3_i_4_n_0,ql_r50__3_i_4_n_1,ql_r50__3_i_4_n_2,ql_r50__3_i_4_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[3:0]),
        .O({ql_r50__3_i_4_n_4,ql_r50__3_i_4_n_5,ql_r50__3_i_4_n_6,ql_r50__3_i_4_n_7}),
        .S({ql_r50__3_i_17_n_0,ql_r50__3_i_18_n_0,ql_r50__3_i_19_n_0,ql_r50__3_i_20_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_5
       (.I0(qp_r3[15]),
        .I1(qb_r0[15]),
        .O(ql_r50__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_6
       (.I0(qp_r3[14]),
        .I1(qb_r0[14]),
        .O(ql_r50__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_7
       (.I0(qp_r3[13]),
        .I1(qb_r0[13]),
        .O(ql_r50__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_8
       (.I0(qp_r3[12]),
        .I1(qb_r0[12]),
        .O(ql_r50__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50__3_i_9
       (.I0(qp_r3[11]),
        .I1(qb_r0[11]),
        .O(ql_r50__3_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    ql_r50__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50__1_i_4_n_7,ql_r50__3_i_1_n_4,ql_r50__3_i_1_n_5,ql_r50__3_i_1_n_6,ql_r50__3_i_1_n_7,ql_r50__3_i_2_n_4,ql_r50__3_i_2_n_5,ql_r50__3_i_2_n_6,ql_r50__3_i_2_n_7,ql_r50__3_i_3_n_4,ql_r50__3_i_3_n_5,ql_r50__3_i_3_n_6,ql_r50__3_i_3_n_7,ql_r50__3_i_4_n_4,ql_r50__3_i_4_n_5,ql_r50__3_i_4_n_6,ql_r50__3_i_4_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_ql_r50__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50__4_OVERFLOW_UNCONNECTED),
        .P({ql_r50__4_n_58,ql_r50__4_n_59,ql_r50__4_n_60,ql_r50__4_n_61,ql_r50__4_n_62,ql_r50__4_n_63,ql_r50__4_n_64,ql_r50__4_n_65,ql_r50__4_n_66,ql_r50__4_n_67,ql_r50__4_n_68,ql_r50__4_n_69,ql_r50__4_n_70,ql_r50__4_n_71,ql_r50__4_n_72,ql_r50__4_n_73,ql_r50__4_n_74,ql_r50__4_n_75,ql_r50__4_n_76,ql_r50__4_n_77,ql_r50__4_n_78,ql_r50__4_n_79,ql_r50__4_n_80,ql_r50__4_n_81,ql_r50__4_n_82,ql_r50__4_n_83,ql_r50__4_n_84,ql_r50__4_n_85,ql_r50__4_n_86,ql_r50__4_n_87,ql_r50__4_n_88,ql_r50__4_n_89,ql_r50__4_n_90,ql_r50__4_n_91,ql_r50__4_n_92,ql_r50__4_n_93,ql_r50__4_n_94,ql_r50__4_n_95,ql_r50__4_n_96,ql_r50__4_n_97,ql_r50__4_n_98,ql_r50__4_n_99,ql_r50__4_n_100,ql_r50__4_n_101,ql_r50__4_n_102,ql_r50__4_n_103,ql_r50__4_n_104,ql_r50__4_n_105}),
        .PATTERNBDETECT(NLW_ql_r50__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({ql_r50__4_n_106,ql_r50__4_n_107,ql_r50__4_n_108,ql_r50__4_n_109,ql_r50__4_n_110,ql_r50__4_n_111,ql_r50__4_n_112,ql_r50__4_n_113,ql_r50__4_n_114,ql_r50__4_n_115,ql_r50__4_n_116,ql_r50__4_n_117,ql_r50__4_n_118,ql_r50__4_n_119,ql_r50__4_n_120,ql_r50__4_n_121,ql_r50__4_n_122,ql_r50__4_n_123,ql_r50__4_n_124,ql_r50__4_n_125,ql_r50__4_n_126,ql_r50__4_n_127,ql_r50__4_n_128,ql_r50__4_n_129,ql_r50__4_n_130,ql_r50__4_n_131,ql_r50__4_n_132,ql_r50__4_n_133,ql_r50__4_n_134,ql_r50__4_n_135,ql_r50__4_n_136,ql_r50__4_n_137,ql_r50__4_n_138,ql_r50__4_n_139,ql_r50__4_n_140,ql_r50__4_n_141,ql_r50__4_n_142,ql_r50__4_n_143,ql_r50__4_n_144,ql_r50__4_n_145,ql_r50__4_n_146,ql_r50__4_n_147,ql_r50__4_n_148,ql_r50__4_n_149,ql_r50__4_n_150,ql_r50__4_n_151,ql_r50__4_n_152,ql_r50__4_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ql_r50__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    ql_r50__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50__1_i_4_n_7,ql_r50__3_i_1_n_4,ql_r50__3_i_1_n_5,ql_r50__3_i_1_n_6,ql_r50__3_i_1_n_7,ql_r50__3_i_2_n_4,ql_r50__3_i_2_n_5,ql_r50__3_i_2_n_6,ql_r50__3_i_2_n_7,ql_r50__3_i_3_n_4,ql_r50__3_i_3_n_5,ql_r50__3_i_3_n_6,ql_r50__3_i_3_n_7,ql_r50__3_i_4_n_4,ql_r50__3_i_4_n_5,ql_r50__3_i_4_n_6,ql_r50__3_i_4_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_ql_r50__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50__5_OVERFLOW_UNCONNECTED),
        .P(NLW_ql_r50__5_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_ql_r50__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({ql_r50__4_n_106,ql_r50__4_n_107,ql_r50__4_n_108,ql_r50__4_n_109,ql_r50__4_n_110,ql_r50__4_n_111,ql_r50__4_n_112,ql_r50__4_n_113,ql_r50__4_n_114,ql_r50__4_n_115,ql_r50__4_n_116,ql_r50__4_n_117,ql_r50__4_n_118,ql_r50__4_n_119,ql_r50__4_n_120,ql_r50__4_n_121,ql_r50__4_n_122,ql_r50__4_n_123,ql_r50__4_n_124,ql_r50__4_n_125,ql_r50__4_n_126,ql_r50__4_n_127,ql_r50__4_n_128,ql_r50__4_n_129,ql_r50__4_n_130,ql_r50__4_n_131,ql_r50__4_n_132,ql_r50__4_n_133,ql_r50__4_n_134,ql_r50__4_n_135,ql_r50__4_n_136,ql_r50__4_n_137,ql_r50__4_n_138,ql_r50__4_n_139,ql_r50__4_n_140,ql_r50__4_n_141,ql_r50__4_n_142,ql_r50__4_n_143,ql_r50__4_n_144,ql_r50__4_n_145,ql_r50__4_n_146,ql_r50__4_n_147,ql_r50__4_n_148,ql_r50__4_n_149,ql_r50__4_n_150,ql_r50__4_n_151,ql_r50__4_n_152,ql_r50__4_n_153}),
        .PCOUT({ql_r50__5_n_106,ql_r50__5_n_107,ql_r50__5_n_108,ql_r50__5_n_109,ql_r50__5_n_110,ql_r50__5_n_111,ql_r50__5_n_112,ql_r50__5_n_113,ql_r50__5_n_114,ql_r50__5_n_115,ql_r50__5_n_116,ql_r50__5_n_117,ql_r50__5_n_118,ql_r50__5_n_119,ql_r50__5_n_120,ql_r50__5_n_121,ql_r50__5_n_122,ql_r50__5_n_123,ql_r50__5_n_124,ql_r50__5_n_125,ql_r50__5_n_126,ql_r50__5_n_127,ql_r50__5_n_128,ql_r50__5_n_129,ql_r50__5_n_130,ql_r50__5_n_131,ql_r50__5_n_132,ql_r50__5_n_133,ql_r50__5_n_134,ql_r50__5_n_135,ql_r50__5_n_136,ql_r50__5_n_137,ql_r50__5_n_138,ql_r50__5_n_139,ql_r50__5_n_140,ql_r50__5_n_141,ql_r50__5_n_142,ql_r50__5_n_143,ql_r50__5_n_144,ql_r50__5_n_145,ql_r50__5_n_146,ql_r50__5_n_147,ql_r50__5_n_148,ql_r50__5_n_149,ql_r50__5_n_150,ql_r50__5_n_151,ql_r50__5_n_152,ql_r50__5_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ql_r50__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    ql_r50__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50_i_5_n_6,ql_r50_i_5_n_7,ql_r50__1_i_1_n_4,ql_r50__1_i_1_n_5,ql_r50__1_i_1_n_6,ql_r50__1_i_1_n_7,ql_r50__1_i_2_n_4,ql_r50__1_i_2_n_5,ql_r50__1_i_2_n_6,ql_r50__1_i_2_n_7,ql_r50__1_i_3_n_4,ql_r50__1_i_3_n_5,ql_r50__1_i_3_n_6,ql_r50__1_i_3_n_7,ql_r50__1_i_4_n_4,ql_r50__1_i_4_n_5,ql_r50__1_i_4_n_6}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r50__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r50__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r50__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r50__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_ql_r50__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r50__6_OVERFLOW_UNCONNECTED),
        .P({ql_r50__6_n_58,ql_r50__6_n_59,ql_r50__6_n_60,ql_r50__6_n_61,ql_r50__6_n_62,ql_r50__6_n_63,ql_r50__6_n_64,ql_r50__6_n_65,ql_r50__6_n_66,ql_r50__6_n_67,ql_r50__6_n_68,ql_r50__6_n_69,ql_r50__6_n_70,ql_r50__6_n_71,ql_r50__6_n_72,ql_r50__6_n_73,ql_r50__6_n_74,ql_r50__6_n_75,ql_r50__6_n_76,ql_r50__6_n_77,ql_r50__6_n_78,ql_r50__6_n_79,ql_r50__6_n_80,ql_r50__6_n_81,ql_r50__6_n_82,ql_r50__6_n_83,ql_r50__6_n_84,ql_r50__6_n_85,ql_r50__6_n_86,ql_r50__6_n_87,ql_r50__6_n_88,ql_r50__6_n_89,ql_r50__6_n_90,ql_r50__6_n_91,ql_r50__6_n_92,ql_r50__6_n_93,ql_r50__6_n_94,ql_r50__6_n_95,ql_r50__6_n_96,ql_r50__6_n_97,ql_r50__6_n_98,ql_r50__6_n_99,ql_r50__6_n_100,ql_r50__6_n_101,ql_r50__6_n_102,ql_r50__6_n_103,ql_r50__6_n_104,ql_r50__6_n_105}),
        .PATTERNBDETECT(NLW_ql_r50__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r50__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({ql_r50__5_n_106,ql_r50__5_n_107,ql_r50__5_n_108,ql_r50__5_n_109,ql_r50__5_n_110,ql_r50__5_n_111,ql_r50__5_n_112,ql_r50__5_n_113,ql_r50__5_n_114,ql_r50__5_n_115,ql_r50__5_n_116,ql_r50__5_n_117,ql_r50__5_n_118,ql_r50__5_n_119,ql_r50__5_n_120,ql_r50__5_n_121,ql_r50__5_n_122,ql_r50__5_n_123,ql_r50__5_n_124,ql_r50__5_n_125,ql_r50__5_n_126,ql_r50__5_n_127,ql_r50__5_n_128,ql_r50__5_n_129,ql_r50__5_n_130,ql_r50__5_n_131,ql_r50__5_n_132,ql_r50__5_n_133,ql_r50__5_n_134,ql_r50__5_n_135,ql_r50__5_n_136,ql_r50__5_n_137,ql_r50__5_n_138,ql_r50__5_n_139,ql_r50__5_n_140,ql_r50__5_n_141,ql_r50__5_n_142,ql_r50__5_n_143,ql_r50__5_n_144,ql_r50__5_n_145,ql_r50__5_n_146,ql_r50__5_n_147,ql_r50__5_n_148,ql_r50__5_n_149,ql_r50__5_n_150,ql_r50__5_n_151,ql_r50__5_n_152,ql_r50__5_n_153}),
        .PCOUT({ql_r50__6_n_106,ql_r50__6_n_107,ql_r50__6_n_108,ql_r50__6_n_109,ql_r50__6_n_110,ql_r50__6_n_111,ql_r50__6_n_112,ql_r50__6_n_113,ql_r50__6_n_114,ql_r50__6_n_115,ql_r50__6_n_116,ql_r50__6_n_117,ql_r50__6_n_118,ql_r50__6_n_119,ql_r50__6_n_120,ql_r50__6_n_121,ql_r50__6_n_122,ql_r50__6_n_123,ql_r50__6_n_124,ql_r50__6_n_125,ql_r50__6_n_126,ql_r50__6_n_127,ql_r50__6_n_128,ql_r50__6_n_129,ql_r50__6_n_130,ql_r50__6_n_131,ql_r50__6_n_132,ql_r50__6_n_133,ql_r50__6_n_134,ql_r50__6_n_135,ql_r50__6_n_136,ql_r50__6_n_137,ql_r50__6_n_138,ql_r50__6_n_139,ql_r50__6_n_140,ql_r50__6_n_141,ql_r50__6_n_142,ql_r50__6_n_143,ql_r50__6_n_144,ql_r50__6_n_145,ql_r50__6_n_146,ql_r50__6_n_147,ql_r50__6_n_148,ql_r50__6_n_149,ql_r50__6_n_150,ql_r50__6_n_151,ql_r50__6_n_152,ql_r50__6_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ql_r50__6_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50_i_1
       (.CI(ql_r50_i_2_n_0),
        .CO({ql_r50_i_1_n_0,ql_r50_i_1_n_1,ql_r50_i_1_n_2,ql_r50_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[50:47]),
        .O({ql_r50_i_1_n_4,ql_r50_i_1_n_5,ql_r50_i_1_n_6,ql_r50_i_1_n_7}),
        .S({ql_r50_i_6_n_0,ql_r50_i_7_n_0,ql_r50_i_8_n_0,ql_r50_i_9_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_10
       (.I0(qp_r3[46]),
        .I1(qp_r3[47]),
        .O(ql_r50_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_11
       (.I0(qp_r3[45]),
        .I1(qp_r3[46]),
        .O(ql_r50_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_12
       (.I0(qp_r3[44]),
        .I1(qp_r3[45]),
        .O(ql_r50_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_13
       (.I0(qp_r3[43]),
        .I1(qp_r3[44]),
        .O(ql_r50_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_14
       (.I0(qp_r3[42]),
        .I1(qp_r3[43]),
        .O(ql_r50_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_15
       (.I0(qp_r3[41]),
        .I1(qp_r3[42]),
        .O(ql_r50_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_16
       (.I0(qp_r3[40]),
        .I1(qp_r3[41]),
        .O(ql_r50_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_17
       (.I0(qp_r3[39]),
        .I1(qp_r3[40]),
        .O(ql_r50_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_18
       (.I0(qp_r3[38]),
        .I1(qp_r3[39]),
        .O(ql_r50_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_19
       (.I0(qp_r3[37]),
        .I1(qp_r3[38]),
        .O(ql_r50_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50_i_2
       (.CI(ql_r50_i_3_n_0),
        .CO({ql_r50_i_2_n_0,ql_r50_i_2_n_1,ql_r50_i_2_n_2,ql_r50_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[46:43]),
        .O({ql_r50_i_2_n_4,ql_r50_i_2_n_5,ql_r50_i_2_n_6,ql_r50_i_2_n_7}),
        .S({ql_r50_i_10_n_0,ql_r50_i_11_n_0,ql_r50_i_12_n_0,ql_r50_i_13_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_20
       (.I0(qp_r3[36]),
        .I1(qp_r3[37]),
        .O(ql_r50_i_20_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_21
       (.I0(qp_r3[35]),
        .I1(qp_r3[36]),
        .O(ql_r50_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ql_r50_i_22
       (.I0(qb_r0[31]),
        .O(ql_r50_i_22_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_23
       (.I0(qp_r3[34]),
        .I1(qp_r3[35]),
        .O(ql_r50_i_23_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_24
       (.I0(qp_r3[33]),
        .I1(qp_r3[34]),
        .O(ql_r50_i_24_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_25
       (.I0(qp_r3[32]),
        .I1(qp_r3[33]),
        .O(ql_r50_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ql_r50_i_26
       (.I0(qb_r0[31]),
        .I1(qp_r3[32]),
        .O(ql_r50_i_26_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50_i_3
       (.CI(ql_r50_i_4_n_0),
        .CO({ql_r50_i_3_n_0,ql_r50_i_3_n_1,ql_r50_i_3_n_2,ql_r50_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[42:39]),
        .O({ql_r50_i_3_n_4,ql_r50_i_3_n_5,ql_r50_i_3_n_6,ql_r50_i_3_n_7}),
        .S({ql_r50_i_14_n_0,ql_r50_i_15_n_0,ql_r50_i_16_n_0,ql_r50_i_17_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50_i_4
       (.CI(ql_r50_i_5_n_0),
        .CO({ql_r50_i_4_n_0,ql_r50_i_4_n_1,ql_r50_i_4_n_2,ql_r50_i_4_n_3}),
        .CYINIT(1'b0),
        .DI(qp_r3[38:35]),
        .O({ql_r50_i_4_n_4,ql_r50_i_4_n_5,ql_r50_i_4_n_6,ql_r50_i_4_n_7}),
        .S({ql_r50_i_18_n_0,ql_r50_i_19_n_0,ql_r50_i_20_n_0,ql_r50_i_21_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ql_r50_i_5
       (.CI(ql_r50__1_i_1_n_0),
        .CO({ql_r50_i_5_n_0,ql_r50_i_5_n_1,ql_r50_i_5_n_2,ql_r50_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({qp_r3[34:32],ql_r50_i_22_n_0}),
        .O({ql_r50_i_5_n_4,ql_r50_i_5_n_5,ql_r50_i_5_n_6,ql_r50_i_5_n_7}),
        .S({ql_r50_i_23_n_0,ql_r50_i_24_n_0,ql_r50_i_25_n_0,ql_r50_i_26_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_6
       (.I0(qp_r3[50]),
        .I1(qp_r3[51]),
        .O(ql_r50_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_7
       (.I0(qp_r3[49]),
        .I1(qp_r3[50]),
        .O(ql_r50_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_8
       (.I0(qp_r3[48]),
        .I1(qp_r3[49]),
        .O(ql_r50_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ql_r50_i_9
       (.I0(qp_r3[47]),
        .I1(qp_r3[48]),
        .O(ql_r50_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ql_r5_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50_i_5_n_6,ql_r50_i_5_n_7,ql_r50__1_i_1_n_4,ql_r50__1_i_1_n_5,ql_r50__1_i_1_n_6,ql_r50__1_i_1_n_7,ql_r50__1_i_2_n_4,ql_r50__1_i_2_n_5,ql_r50__1_i_2_n_6,ql_r50__1_i_2_n_7,ql_r50__1_i_3_n_4,ql_r50__1_i_3_n_5,ql_r50__1_i_3_n_6,ql_r50__1_i_3_n_7,ql_r50__1_i_4_n_4,ql_r50__1_i_4_n_5,ql_r50__1_i_4_n_6}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r5_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[50:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r5_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r5_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r5_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ql_r5_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r5_reg_OVERFLOW_UNCONNECTED),
        .P({ql_r5_reg_n_58,ql_r5_reg_n_59,ql_r5_reg_n_60,ql_r5_reg_n_61,ql_r5_reg_n_62,ql_r5_reg_n_63,ql_r5_reg_n_64,ql_r5_reg_n_65,ql_r5_reg_n_66,ql_r5_reg_n_67,ql_r5_reg_n_68,ql_r5_reg_n_69,ql_r5_reg_n_70,ql_r5_reg_n_71,ql_r5_reg_n_72,ql_r5_reg_n_73,ql_r5_reg_n_74,ql_r5_reg_n_75,ql_r5_reg_n_76,ql_r5_reg_n_77,ql_r5_reg_n_78,ql_r5_reg_n_79,ql_r5_reg_n_80,ql_r5_reg_n_81,ql_r5_reg_n_82,ql_r5_reg_n_83,ql_r5_reg_n_84,ql_r5_reg_n_85,ql_r5_reg_n_86,ql_r5_reg_n_87,ql_r5_reg_n_88,ql_r5_reg_n_89,ql_r5_reg_n_90,ql_r5_reg_n_91,ql_r5_reg_n_92,ql_r5_reg_n_93,ql_r5_reg_n_94,ql_r5_reg_n_95,ql_r5_reg_n_96,ql_r5_reg_n_97,ql_r5_reg_n_98,ql_r5_reg_n_99,ql_r5_reg_n_100,ql_r5_reg_n_101,ql_r5_reg_n_102,ql_r5_reg_n_103,ql_r5_reg_n_104,ql_r5_reg_n_105}),
        .PATTERNBDETECT(NLW_ql_r5_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r5_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({ql_r50__3_n_106,ql_r50__3_n_107,ql_r50__3_n_108,ql_r50__3_n_109,ql_r50__3_n_110,ql_r50__3_n_111,ql_r50__3_n_112,ql_r50__3_n_113,ql_r50__3_n_114,ql_r50__3_n_115,ql_r50__3_n_116,ql_r50__3_n_117,ql_r50__3_n_118,ql_r50__3_n_119,ql_r50__3_n_120,ql_r50__3_n_121,ql_r50__3_n_122,ql_r50__3_n_123,ql_r50__3_n_124,ql_r50__3_n_125,ql_r50__3_n_126,ql_r50__3_n_127,ql_r50__3_n_128,ql_r50__3_n_129,ql_r50__3_n_130,ql_r50__3_n_131,ql_r50__3_n_132,ql_r50__3_n_133,ql_r50__3_n_134,ql_r50__3_n_135,ql_r50__3_n_136,ql_r50__3_n_137,ql_r50__3_n_138,ql_r50__3_n_139,ql_r50__3_n_140,ql_r50__3_n_141,ql_r50__3_n_142,ql_r50__3_n_143,ql_r50__3_n_144,ql_r50__3_n_145,ql_r50__3_n_146,ql_r50__3_n_147,ql_r50__3_n_148,ql_r50__3_n_149,ql_r50__3_n_150,ql_r50__3_n_151,ql_r50__3_n_152,ql_r50__3_n_153}),
        .PCOUT(NLW_ql_r5_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst),
        .UNDERFLOW(NLW_ql_r5_reg_UNDERFLOW_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[0]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_105),
        .Q(\ql_r5_reg[0]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[0]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_105),
        .Q(\ql_r5_reg[0]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[0]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_105),
        .Q(\ql_r5_reg[0]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[10]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_95),
        .Q(\ql_r5_reg[10]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[10]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_95),
        .Q(\ql_r5_reg[10]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[10]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_95),
        .Q(\ql_r5_reg[10]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[11]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_94),
        .Q(\ql_r5_reg[11]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[11]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_94),
        .Q(\ql_r5_reg[11]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[11]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_94),
        .Q(\ql_r5_reg[11]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[12]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_93),
        .Q(\ql_r5_reg[12]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[12]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_93),
        .Q(\ql_r5_reg[12]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[12]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_93),
        .Q(\ql_r5_reg[12]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[13]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_92),
        .Q(\ql_r5_reg[13]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[13]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_92),
        .Q(\ql_r5_reg[13]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[13]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_92),
        .Q(\ql_r5_reg[13]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[14]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_91),
        .Q(\ql_r5_reg[14]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[14]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_91),
        .Q(\ql_r5_reg[14]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[14]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_91),
        .Q(\ql_r5_reg[14]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[15]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_90),
        .Q(\ql_r5_reg[15]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[15]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_90),
        .Q(\ql_r5_reg[15]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[15]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_90),
        .Q(\ql_r5_reg[15]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[16]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_89),
        .Q(\ql_r5_reg[16]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[16]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_89),
        .Q(\ql_r5_reg[16]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[16]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_89),
        .Q(\ql_r5_reg[16]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[1]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_104),
        .Q(\ql_r5_reg[1]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[1]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_104),
        .Q(\ql_r5_reg[1]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[1]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_104),
        .Q(\ql_r5_reg[1]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[2]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_103),
        .Q(\ql_r5_reg[2]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[2]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_103),
        .Q(\ql_r5_reg[2]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[2]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_103),
        .Q(\ql_r5_reg[2]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[3]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_102),
        .Q(\ql_r5_reg[3]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[3]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_102),
        .Q(\ql_r5_reg[3]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[3]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_102),
        .Q(\ql_r5_reg[3]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[4]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_101),
        .Q(\ql_r5_reg[4]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[4]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_101),
        .Q(\ql_r5_reg[4]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[4]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_101),
        .Q(\ql_r5_reg[4]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[5]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_100),
        .Q(\ql_r5_reg[5]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[5]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_100),
        .Q(\ql_r5_reg[5]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[5]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_100),
        .Q(\ql_r5_reg[5]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[6]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_99),
        .Q(\ql_r5_reg[6]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[6]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_99),
        .Q(\ql_r5_reg[6]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[6]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_99),
        .Q(\ql_r5_reg[6]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[7]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_98),
        .Q(\ql_r5_reg[7]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[7]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_98),
        .Q(\ql_r5_reg[7]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[7]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_98),
        .Q(\ql_r5_reg[7]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[8]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_97),
        .Q(\ql_r5_reg[8]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[8]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_97),
        .Q(\ql_r5_reg[8]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[8]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_97),
        .Q(\ql_r5_reg[8]__4_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[9]__2 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__2_n_96),
        .Q(\ql_r5_reg[9]__2_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[9]__3 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__4_n_96),
        .Q(\ql_r5_reg[9]__3_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r5_reg[9]__4 
       (.C(clk),
        .CE(1'b1),
        .D(ql_r50__6_n_96),
        .Q(\ql_r5_reg[9]__4_n_0 ),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ql_r5_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ql_r50__1_i_4_n_7,ql_r50__3_i_1_n_4,ql_r50__3_i_1_n_5,ql_r50__3_i_1_n_6,ql_r50__3_i_1_n_7,ql_r50__3_i_2_n_4,ql_r50__3_i_2_n_5,ql_r50__3_i_2_n_6,ql_r50__3_i_2_n_7,ql_r50__3_i_3_n_4,ql_r50__3_i_3_n_5,ql_r50__3_i_3_n_6,ql_r50__3_i_3_n_7,ql_r50__3_i_4_n_4,ql_r50__3_i_4_n_5,ql_r50__3_i_4_n_6,ql_r50__3_i_4_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ql_r5_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qp_r30[50:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ql_r5_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ql_r5_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ql_r5_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ql_r5_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ql_r5_reg__0_OVERFLOW_UNCONNECTED),
        .P({ql_r5_reg__0_n_58,ql_r5_reg__0_n_59,ql_r5_reg__0_n_60,ql_r5_reg__0_n_61,ql_r5_reg__0_n_62,ql_r5_reg__0_n_63,ql_r5_reg__0_n_64,ql_r5_reg__0_n_65,ql_r5_reg__0_n_66,ql_r5_reg__0_n_67,ql_r5_reg__0_n_68,ql_r5_reg__0_n_69,ql_r5_reg__0_n_70,ql_r5_reg__0_n_71,ql_r5_reg__0_n_72,ql_r5_reg__0_n_73,ql_r5_reg__0_n_74,ql_r5_reg__0_n_75,ql_r5_reg__0_n_76,ql_r5_reg__0_n_77,ql_r5_reg__0_n_78,ql_r5_reg__0_n_79,ql_r5_reg__0_n_80,ql_r5_reg__0_n_81,ql_r5_reg__0_n_82,ql_r5_reg__0_n_83,ql_r5_reg__0_n_84,ql_r5_reg__0_n_85,ql_r5_reg__0_n_86,ql_r5_reg__0_n_87,ql_r5_reg__0_n_88,ql_r5_reg__0_n_89,ql_r5_reg__0_n_90,ql_r5_reg__0_n_91,ql_r5_reg__0_n_92,ql_r5_reg__0_n_93,ql_r5_reg__0_n_94,ql_r5_reg__0_n_95,ql_r5_reg__0_n_96,ql_r5_reg__0_n_97,ql_r5_reg__0_n_98,ql_r5_reg__0_n_99,ql_r5_reg__0_n_100,ql_r5_reg__0_n_101,ql_r5_reg__0_n_102,ql_r5_reg__0_n_103,ql_r5_reg__0_n_104,ql_r5_reg__0_n_105}),
        .PATTERNBDETECT(NLW_ql_r5_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ql_r5_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({ql_r50__6_n_106,ql_r50__6_n_107,ql_r50__6_n_108,ql_r50__6_n_109,ql_r50__6_n_110,ql_r50__6_n_111,ql_r50__6_n_112,ql_r50__6_n_113,ql_r50__6_n_114,ql_r50__6_n_115,ql_r50__6_n_116,ql_r50__6_n_117,ql_r50__6_n_118,ql_r50__6_n_119,ql_r50__6_n_120,ql_r50__6_n_121,ql_r50__6_n_122,ql_r50__6_n_123,ql_r50__6_n_124,ql_r50__6_n_125,ql_r50__6_n_126,ql_r50__6_n_127,ql_r50__6_n_128,ql_r50__6_n_129,ql_r50__6_n_130,ql_r50__6_n_131,ql_r50__6_n_132,ql_r50__6_n_133,ql_r50__6_n_134,ql_r50__6_n_135,ql_r50__6_n_136,ql_r50__6_n_137,ql_r50__6_n_138,ql_r50__6_n_139,ql_r50__6_n_140,ql_r50__6_n_141,ql_r50__6_n_142,ql_r50__6_n_143,ql_r50__6_n_144,ql_r50__6_n_145,ql_r50__6_n_146,ql_r50__6_n_147,ql_r50__6_n_148,ql_r50__6_n_149,ql_r50__6_n_150,ql_r50__6_n_151,ql_r50__6_n_152,ql_r50__6_n_153}),
        .PCOUT(NLW_ql_r5_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst),
        .UNDERFLOW(NLW_ql_r5_reg__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[11]_i_2 
       (.I0(\ql_r5_reg[11]__3_n_0 ),
        .I1(qc_r0[11]),
        .O(\ql_r6[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[11]_i_3 
       (.I0(\ql_r5_reg[10]__3_n_0 ),
        .I1(qc_r0[10]),
        .O(\ql_r6[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[11]_i_4 
       (.I0(\ql_r5_reg[9]__3_n_0 ),
        .I1(qc_r0[9]),
        .O(\ql_r6[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[11]_i_5 
       (.I0(\ql_r5_reg[8]__3_n_0 ),
        .I1(qc_r0[8]),
        .O(\ql_r6[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[15]_i_2 
       (.I0(\ql_r5_reg[15]__3_n_0 ),
        .I1(qc_r0[15]),
        .O(\ql_r6[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[15]_i_3 
       (.I0(\ql_r5_reg[14]__3_n_0 ),
        .I1(qc_r0[14]),
        .O(\ql_r6[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[15]_i_4 
       (.I0(\ql_r5_reg[13]__3_n_0 ),
        .I1(qc_r0[13]),
        .O(\ql_r6[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[15]_i_5 
       (.I0(\ql_r5_reg[12]__3_n_0 ),
        .I1(qc_r0[12]),
        .O(\ql_r6[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[19]_i_2 
       (.I0(\ql_r5_reg[2]__4_n_0 ),
        .I1(qc_r0[19]),
        .O(\ql_r6[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[19]_i_3 
       (.I0(\ql_r5_reg[1]__4_n_0 ),
        .I1(qc_r0[18]),
        .O(\ql_r6[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[19]_i_4 
       (.I0(\ql_r5_reg[0]__4_n_0 ),
        .I1(qc_r0[17]),
        .O(\ql_r6[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[19]_i_5 
       (.I0(\ql_r5_reg[16]__3_n_0 ),
        .I1(qc_r0[16]),
        .O(\ql_r6[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[23]_i_2 
       (.I0(\ql_r5_reg[6]__4_n_0 ),
        .I1(qc_r0[23]),
        .O(\ql_r6[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[23]_i_3 
       (.I0(\ql_r5_reg[5]__4_n_0 ),
        .I1(qc_r0[22]),
        .O(\ql_r6[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[23]_i_4 
       (.I0(\ql_r5_reg[4]__4_n_0 ),
        .I1(qc_r0[21]),
        .O(\ql_r6[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[23]_i_5 
       (.I0(\ql_r5_reg[3]__4_n_0 ),
        .I1(qc_r0[20]),
        .O(\ql_r6[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[27]_i_2 
       (.I0(\ql_r5_reg[10]__4_n_0 ),
        .I1(qc_r0[27]),
        .O(\ql_r6[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[27]_i_3 
       (.I0(\ql_r5_reg[9]__4_n_0 ),
        .I1(qc_r0[26]),
        .O(\ql_r6[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[27]_i_4 
       (.I0(\ql_r5_reg[8]__4_n_0 ),
        .I1(qc_r0[25]),
        .O(\ql_r6[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[27]_i_5 
       (.I0(\ql_r5_reg[7]__4_n_0 ),
        .I1(qc_r0[24]),
        .O(\ql_r6[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[31]_i_2 
       (.I0(qc_r0[31]),
        .I1(\ql_r5_reg[14]__4_n_0 ),
        .O(\ql_r6[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[31]_i_3 
       (.I0(\ql_r5_reg[13]__4_n_0 ),
        .I1(qc_r0[30]),
        .O(\ql_r6[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[31]_i_4 
       (.I0(\ql_r5_reg[12]__4_n_0 ),
        .I1(qc_r0[29]),
        .O(\ql_r6[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[31]_i_5 
       (.I0(\ql_r5_reg[11]__4_n_0 ),
        .I1(qc_r0[28]),
        .O(\ql_r6[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ql_r6[35]_i_2 
       (.I0(qc_r0[31]),
        .O(\ql_r6[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[35]_i_3 
       (.I0(ql_r5_reg__1[34]),
        .I1(ql_r5_reg__1[35]),
        .O(\ql_r6[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[35]_i_4 
       (.I0(ql_r5_reg__1[33]),
        .I1(ql_r5_reg__1[34]),
        .O(\ql_r6[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[35]_i_5 
       (.I0(\ql_r5_reg[15]__4_n_0 ),
        .I1(ql_r5_reg__1[33]),
        .O(\ql_r6[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[35]_i_6 
       (.I0(qc_r0[31]),
        .I1(\ql_r5_reg[15]__4_n_0 ),
        .O(\ql_r6[35]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[39]_i_3 
       (.I0(ql_r5_reg__1[38]),
        .I1(ql_r5_reg__1[39]),
        .O(\ql_r6[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[39]_i_4 
       (.I0(ql_r5_reg__1[37]),
        .I1(ql_r5_reg__1[38]),
        .O(\ql_r6[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[39]_i_5 
       (.I0(ql_r5_reg__1[36]),
        .I1(ql_r5_reg__1[37]),
        .O(\ql_r6[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[39]_i_6 
       (.I0(ql_r5_reg__1[35]),
        .I1(ql_r5_reg__1[36]),
        .O(\ql_r6[39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[39]_i_7 
       (.I0(ql_r5_reg__0_n_103),
        .I1(\ql_r5_reg[2]__2_n_0 ),
        .O(\ql_r6[39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[39]_i_8 
       (.I0(ql_r5_reg__0_n_104),
        .I1(\ql_r5_reg[1]__2_n_0 ),
        .O(\ql_r6[39]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[39]_i_9 
       (.I0(ql_r5_reg__0_n_105),
        .I1(\ql_r5_reg[0]__2_n_0 ),
        .O(\ql_r6[39]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[3]_i_2 
       (.I0(\ql_r5_reg[3]__3_n_0 ),
        .I1(qc_r0[3]),
        .O(\ql_r6[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[3]_i_3 
       (.I0(\ql_r5_reg[2]__3_n_0 ),
        .I1(qc_r0[2]),
        .O(\ql_r6[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[3]_i_4 
       (.I0(\ql_r5_reg[1]__3_n_0 ),
        .I1(qc_r0[1]),
        .O(\ql_r6[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[3]_i_5 
       (.I0(\ql_r5_reg[0]__3_n_0 ),
        .I1(qc_r0[0]),
        .O(\ql_r6[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[43]_i_10 
       (.I0(ql_r5_reg__0_n_102),
        .I1(\ql_r5_reg[3]__2_n_0 ),
        .O(\ql_r6[43]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[43]_i_3 
       (.I0(ql_r5_reg__1[42]),
        .I1(ql_r5_reg__1[43]),
        .O(\ql_r6[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[43]_i_4 
       (.I0(ql_r5_reg__1[41]),
        .I1(ql_r5_reg__1[42]),
        .O(\ql_r6[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[43]_i_5 
       (.I0(ql_r5_reg__1[40]),
        .I1(ql_r5_reg__1[41]),
        .O(\ql_r6[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[43]_i_6 
       (.I0(ql_r5_reg__1[39]),
        .I1(ql_r5_reg__1[40]),
        .O(\ql_r6[43]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[43]_i_7 
       (.I0(ql_r5_reg__0_n_99),
        .I1(\ql_r5_reg[6]__2_n_0 ),
        .O(\ql_r6[43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[43]_i_8 
       (.I0(ql_r5_reg__0_n_100),
        .I1(\ql_r5_reg[5]__2_n_0 ),
        .O(\ql_r6[43]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[43]_i_9 
       (.I0(ql_r5_reg__0_n_101),
        .I1(\ql_r5_reg[4]__2_n_0 ),
        .O(\ql_r6[43]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[47]_i_10 
       (.I0(ql_r5_reg__0_n_98),
        .I1(\ql_r5_reg[7]__2_n_0 ),
        .O(\ql_r6[47]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[47]_i_3 
       (.I0(ql_r5_reg__1[46]),
        .I1(ql_r5_reg__1[47]),
        .O(\ql_r6[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[47]_i_4 
       (.I0(ql_r5_reg__1[45]),
        .I1(ql_r5_reg__1[46]),
        .O(\ql_r6[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[47]_i_5 
       (.I0(ql_r5_reg__1[44]),
        .I1(ql_r5_reg__1[45]),
        .O(\ql_r6[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[47]_i_6 
       (.I0(ql_r5_reg__1[43]),
        .I1(ql_r5_reg__1[44]),
        .O(\ql_r6[47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[47]_i_7 
       (.I0(ql_r5_reg__0_n_95),
        .I1(\ql_r5_reg[10]__2_n_0 ),
        .O(\ql_r6[47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[47]_i_8 
       (.I0(ql_r5_reg__0_n_96),
        .I1(\ql_r5_reg[9]__2_n_0 ),
        .O(\ql_r6[47]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[47]_i_9 
       (.I0(ql_r5_reg__0_n_97),
        .I1(\ql_r5_reg[8]__2_n_0 ),
        .O(\ql_r6[47]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[51]_i_10 
       (.I0(ql_r5_reg__0_n_94),
        .I1(\ql_r5_reg[11]__2_n_0 ),
        .O(\ql_r6[51]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[51]_i_3 
       (.I0(ql_r5_reg__1[50]),
        .I1(ql_r5_reg__1[51]),
        .O(\ql_r6[51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[51]_i_4 
       (.I0(ql_r5_reg__1[49]),
        .I1(ql_r5_reg__1[50]),
        .O(\ql_r6[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[51]_i_5 
       (.I0(ql_r5_reg__1[48]),
        .I1(ql_r5_reg__1[49]),
        .O(\ql_r6[51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[51]_i_6 
       (.I0(ql_r5_reg__1[47]),
        .I1(ql_r5_reg__1[48]),
        .O(\ql_r6[51]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[51]_i_7 
       (.I0(ql_r5_reg__0_n_91),
        .I1(\ql_r5_reg[14]__2_n_0 ),
        .O(\ql_r6[51]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[51]_i_8 
       (.I0(ql_r5_reg__0_n_92),
        .I1(\ql_r5_reg[13]__2_n_0 ),
        .O(\ql_r6[51]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[51]_i_9 
       (.I0(ql_r5_reg__0_n_93),
        .I1(\ql_r5_reg[12]__2_n_0 ),
        .O(\ql_r6[51]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[55]_i_10 
       (.I0(ql_r5_reg__0_n_89),
        .I1(\ql_r5_reg[16]__2_n_0 ),
        .O(\ql_r6[55]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[55]_i_11 
       (.I0(ql_r5_reg__0_n_90),
        .I1(\ql_r5_reg[15]__2_n_0 ),
        .O(\ql_r6[55]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[55]_i_3 
       (.I0(ql_r5_reg__1[54]),
        .I1(ql_r5_reg__1[55]),
        .O(\ql_r6[55]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[55]_i_4 
       (.I0(ql_r5_reg__1[53]),
        .I1(ql_r5_reg__1[54]),
        .O(\ql_r6[55]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[55]_i_5 
       (.I0(ql_r5_reg__1[52]),
        .I1(ql_r5_reg__1[53]),
        .O(\ql_r6[55]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[55]_i_6 
       (.I0(ql_r5_reg__1[51]),
        .I1(ql_r5_reg__1[52]),
        .O(\ql_r6[55]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ql_r6[55]_i_7 
       (.I0(ql_r5_reg__0_n_87),
        .I1(ql_r50__0_n_104),
        .I2(ql_r5_reg_n_104),
        .O(\ql_r6[55]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \ql_r6[55]_i_8 
       (.I0(ql_r50__0_n_104),
        .I1(ql_r5_reg_n_104),
        .I2(ql_r5_reg__0_n_87),
        .I3(ql_r5_reg_n_105),
        .I4(ql_r50__0_n_105),
        .O(\ql_r6[55]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ql_r6[55]_i_9 
       (.I0(ql_r50__0_n_105),
        .I1(ql_r5_reg_n_105),
        .I2(ql_r5_reg__0_n_88),
        .O(\ql_r6[55]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[59]_i_10 
       (.I0(ql_r50__0_n_104),
        .I1(ql_r5_reg_n_104),
        .I2(ql_r5_reg__0_n_87),
        .O(\ql_r6[59]_i_10_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[59]_i_11 
       (.I0(ql_r50__0_n_100),
        .I1(ql_r5_reg_n_100),
        .I2(ql_r5_reg__0_n_83),
        .I3(\ql_r6[59]_i_7_n_0 ),
        .O(\ql_r6[59]_i_11_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[59]_i_12 
       (.I0(ql_r50__0_n_101),
        .I1(ql_r5_reg_n_101),
        .I2(ql_r5_reg__0_n_84),
        .I3(\ql_r6[59]_i_8_n_0 ),
        .O(\ql_r6[59]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[59]_i_13 
       (.I0(ql_r50__0_n_102),
        .I1(ql_r5_reg_n_102),
        .I2(ql_r5_reg__0_n_85),
        .I3(\ql_r6[59]_i_9_n_0 ),
        .O(\ql_r6[59]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[59]_i_14 
       (.I0(ql_r50__0_n_103),
        .I1(ql_r5_reg_n_103),
        .I2(ql_r5_reg__0_n_86),
        .I3(\ql_r6[59]_i_10_n_0 ),
        .O(\ql_r6[59]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[59]_i_3 
       (.I0(ql_r5_reg__1[58]),
        .I1(ql_r5_reg__1[59]),
        .O(\ql_r6[59]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[59]_i_4 
       (.I0(ql_r5_reg__1[57]),
        .I1(ql_r5_reg__1[58]),
        .O(\ql_r6[59]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[59]_i_5 
       (.I0(ql_r5_reg__1[56]),
        .I1(ql_r5_reg__1[57]),
        .O(\ql_r6[59]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[59]_i_6 
       (.I0(ql_r5_reg__1[55]),
        .I1(ql_r5_reg__1[56]),
        .O(\ql_r6[59]_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[59]_i_7 
       (.I0(ql_r50__0_n_101),
        .I1(ql_r5_reg_n_101),
        .I2(ql_r5_reg__0_n_84),
        .O(\ql_r6[59]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[59]_i_8 
       (.I0(ql_r50__0_n_102),
        .I1(ql_r5_reg_n_102),
        .I2(ql_r5_reg__0_n_85),
        .O(\ql_r6[59]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[59]_i_9 
       (.I0(ql_r50__0_n_103),
        .I1(ql_r5_reg_n_103),
        .I2(ql_r5_reg__0_n_86),
        .O(\ql_r6[59]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \ql_r6[63]_i_10 
       (.I0(ql_r5_reg__0_n_77),
        .I1(ql_r5_reg_n_94),
        .I2(ql_r50__0_n_94),
        .I3(ql_r5_reg_n_93),
        .I4(ql_r50__0_n_93),
        .I5(ql_r5_reg__0_n_76),
        .O(\ql_r6[63]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[63]_i_11 
       (.I0(\ql_r6[63]_i_8_n_0 ),
        .I1(ql_r5_reg_n_94),
        .I2(ql_r50__0_n_94),
        .I3(ql_r5_reg__0_n_77),
        .O(\ql_r6[63]_i_11_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[63]_i_12 
       (.I0(ql_r50__0_n_95),
        .I1(ql_r5_reg_n_95),
        .I2(ql_r5_reg__0_n_78),
        .I3(\ql_r6[63]_i_9_n_0 ),
        .O(\ql_r6[63]_i_12_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[63]_i_13 
       (.I0(ql_r50__0_n_97),
        .I1(ql_r5_reg_n_97),
        .I2(ql_r5_reg__0_n_80),
        .O(\ql_r6[63]_i_13_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[63]_i_14 
       (.I0(ql_r50__0_n_98),
        .I1(ql_r5_reg_n_98),
        .I2(ql_r5_reg__0_n_81),
        .O(\ql_r6[63]_i_14_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[63]_i_15 
       (.I0(ql_r50__0_n_99),
        .I1(ql_r5_reg_n_99),
        .I2(ql_r5_reg__0_n_82),
        .O(\ql_r6[63]_i_15_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[63]_i_16 
       (.I0(ql_r50__0_n_100),
        .I1(ql_r5_reg_n_100),
        .I2(ql_r5_reg__0_n_83),
        .O(\ql_r6[63]_i_16_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[63]_i_17 
       (.I0(ql_r50__0_n_96),
        .I1(ql_r5_reg_n_96),
        .I2(ql_r5_reg__0_n_79),
        .I3(\ql_r6[63]_i_13_n_0 ),
        .O(\ql_r6[63]_i_17_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[63]_i_18 
       (.I0(ql_r50__0_n_97),
        .I1(ql_r5_reg_n_97),
        .I2(ql_r5_reg__0_n_80),
        .I3(\ql_r6[63]_i_14_n_0 ),
        .O(\ql_r6[63]_i_18_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[63]_i_19 
       (.I0(ql_r50__0_n_98),
        .I1(ql_r5_reg_n_98),
        .I2(ql_r5_reg__0_n_81),
        .I3(\ql_r6[63]_i_15_n_0 ),
        .O(\ql_r6[63]_i_19_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ql_r6[63]_i_20 
       (.I0(ql_r50__0_n_99),
        .I1(ql_r5_reg_n_99),
        .I2(ql_r5_reg__0_n_82),
        .I3(\ql_r6[63]_i_16_n_0 ),
        .O(\ql_r6[63]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[63]_i_4 
       (.I0(ql_r5_reg__1[62]),
        .I1(ql_r5_reg__1[63]),
        .O(\ql_r6[63]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[63]_i_5 
       (.I0(ql_r5_reg__1[61]),
        .I1(ql_r5_reg__1[62]),
        .O(\ql_r6[63]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[63]_i_6 
       (.I0(ql_r5_reg__1[60]),
        .I1(ql_r5_reg__1[61]),
        .O(\ql_r6[63]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ql_r6[63]_i_7 
       (.I0(ql_r5_reg__1[59]),
        .I1(ql_r5_reg__1[60]),
        .O(\ql_r6[63]_i_7_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[63]_i_8 
       (.I0(ql_r50__0_n_95),
        .I1(ql_r5_reg_n_95),
        .I2(ql_r5_reg__0_n_78),
        .O(\ql_r6[63]_i_8_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ql_r6[63]_i_9 
       (.I0(ql_r50__0_n_96),
        .I1(ql_r5_reg_n_96),
        .I2(ql_r5_reg__0_n_79),
        .O(\ql_r6[63]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[7]_i_2 
       (.I0(\ql_r5_reg[7]__3_n_0 ),
        .I1(qc_r0[7]),
        .O(\ql_r6[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[7]_i_3 
       (.I0(\ql_r5_reg[6]__3_n_0 ),
        .I1(qc_r0[6]),
        .O(\ql_r6[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[7]_i_4 
       (.I0(\ql_r5_reg[5]__3_n_0 ),
        .I1(qc_r0[5]),
        .O(\ql_r6[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ql_r6[7]_i_5 
       (.I0(\ql_r5_reg[4]__3_n_0 ),
        .I1(qc_r0[4]),
        .O(\ql_r6[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[3]_i_1_n_7 ),
        .Q(ql_r6[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[11]_i_1_n_5 ),
        .Q(ql_r6[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[11]_i_1_n_4 ),
        .Q(ql_r6[11]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[11]_i_1 
       (.CI(\ql_r6_reg[7]_i_1_n_0 ),
        .CO({\ql_r6_reg[11]_i_1_n_0 ,\ql_r6_reg[11]_i_1_n_1 ,\ql_r6_reg[11]_i_1_n_2 ,\ql_r6_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r5_reg[11]__3_n_0 ,\ql_r5_reg[10]__3_n_0 ,\ql_r5_reg[9]__3_n_0 ,\ql_r5_reg[8]__3_n_0 }),
        .O({\ql_r6_reg[11]_i_1_n_4 ,\ql_r6_reg[11]_i_1_n_5 ,\ql_r6_reg[11]_i_1_n_6 ,\ql_r6_reg[11]_i_1_n_7 }),
        .S({\ql_r6[11]_i_2_n_0 ,\ql_r6[11]_i_3_n_0 ,\ql_r6[11]_i_4_n_0 ,\ql_r6[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[15]_i_1_n_7 ),
        .Q(ql_r6[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[15]_i_1_n_6 ),
        .Q(ql_r6[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[15]_i_1_n_5 ),
        .Q(ql_r6[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[15]_i_1_n_4 ),
        .Q(ql_r6[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[15]_i_1 
       (.CI(\ql_r6_reg[11]_i_1_n_0 ),
        .CO({\ql_r6_reg[15]_i_1_n_0 ,\ql_r6_reg[15]_i_1_n_1 ,\ql_r6_reg[15]_i_1_n_2 ,\ql_r6_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r5_reg[15]__3_n_0 ,\ql_r5_reg[14]__3_n_0 ,\ql_r5_reg[13]__3_n_0 ,\ql_r5_reg[12]__3_n_0 }),
        .O({\ql_r6_reg[15]_i_1_n_4 ,\ql_r6_reg[15]_i_1_n_5 ,\ql_r6_reg[15]_i_1_n_6 ,\ql_r6_reg[15]_i_1_n_7 }),
        .S({\ql_r6[15]_i_2_n_0 ,\ql_r6[15]_i_3_n_0 ,\ql_r6[15]_i_4_n_0 ,\ql_r6[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[19]_i_1_n_7 ),
        .Q(ql_r6[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[19]_i_1_n_6 ),
        .Q(ql_r6[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[19]_i_1_n_5 ),
        .Q(ql_r6[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[19]_i_1_n_4 ),
        .Q(ql_r6[19]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[19]_i_1 
       (.CI(\ql_r6_reg[15]_i_1_n_0 ),
        .CO({\ql_r6_reg[19]_i_1_n_0 ,\ql_r6_reg[19]_i_1_n_1 ,\ql_r6_reg[19]_i_1_n_2 ,\ql_r6_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r5_reg[2]__4_n_0 ,\ql_r5_reg[1]__4_n_0 ,\ql_r5_reg[0]__4_n_0 ,\ql_r5_reg[16]__3_n_0 }),
        .O({\ql_r6_reg[19]_i_1_n_4 ,\ql_r6_reg[19]_i_1_n_5 ,\ql_r6_reg[19]_i_1_n_6 ,\ql_r6_reg[19]_i_1_n_7 }),
        .S({\ql_r6[19]_i_2_n_0 ,\ql_r6[19]_i_3_n_0 ,\ql_r6[19]_i_4_n_0 ,\ql_r6[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[3]_i_1_n_6 ),
        .Q(ql_r6[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[23]_i_1_n_7 ),
        .Q(ql_r6[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[23]_i_1_n_6 ),
        .Q(ql_r6[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[23]_i_1_n_5 ),
        .Q(ql_r6[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[23]_i_1_n_4 ),
        .Q(ql_r6[23]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[23]_i_1 
       (.CI(\ql_r6_reg[19]_i_1_n_0 ),
        .CO({\ql_r6_reg[23]_i_1_n_0 ,\ql_r6_reg[23]_i_1_n_1 ,\ql_r6_reg[23]_i_1_n_2 ,\ql_r6_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r5_reg[6]__4_n_0 ,\ql_r5_reg[5]__4_n_0 ,\ql_r5_reg[4]__4_n_0 ,\ql_r5_reg[3]__4_n_0 }),
        .O({\ql_r6_reg[23]_i_1_n_4 ,\ql_r6_reg[23]_i_1_n_5 ,\ql_r6_reg[23]_i_1_n_6 ,\ql_r6_reg[23]_i_1_n_7 }),
        .S({\ql_r6[23]_i_2_n_0 ,\ql_r6[23]_i_3_n_0 ,\ql_r6[23]_i_4_n_0 ,\ql_r6[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[27]_i_1_n_7 ),
        .Q(ql_r6[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[27]_i_1_n_6 ),
        .Q(ql_r6[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[27]_i_1_n_5 ),
        .Q(ql_r6[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[27]_i_1_n_4 ),
        .Q(ql_r6[27]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[27]_i_1 
       (.CI(\ql_r6_reg[23]_i_1_n_0 ),
        .CO({\ql_r6_reg[27]_i_1_n_0 ,\ql_r6_reg[27]_i_1_n_1 ,\ql_r6_reg[27]_i_1_n_2 ,\ql_r6_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r5_reg[10]__4_n_0 ,\ql_r5_reg[9]__4_n_0 ,\ql_r5_reg[8]__4_n_0 ,\ql_r5_reg[7]__4_n_0 }),
        .O({\ql_r6_reg[27]_i_1_n_4 ,\ql_r6_reg[27]_i_1_n_5 ,\ql_r6_reg[27]_i_1_n_6 ,\ql_r6_reg[27]_i_1_n_7 }),
        .S({\ql_r6[27]_i_2_n_0 ,\ql_r6[27]_i_3_n_0 ,\ql_r6[27]_i_4_n_0 ,\ql_r6[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[31]_i_1_n_7 ),
        .Q(ql_r6[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[31]_i_1_n_6 ),
        .Q(ql_r6[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[3]_i_1_n_5 ),
        .Q(ql_r6[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[31]_i_1_n_5 ),
        .Q(ql_r6[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[31]_i_1_n_4 ),
        .Q(ql_r6[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[31]_i_1 
       (.CI(\ql_r6_reg[27]_i_1_n_0 ),
        .CO({\ql_r6_reg[31]_i_1_n_0 ,\ql_r6_reg[31]_i_1_n_1 ,\ql_r6_reg[31]_i_1_n_2 ,\ql_r6_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({qc_r0[31],\ql_r5_reg[13]__4_n_0 ,\ql_r5_reg[12]__4_n_0 ,\ql_r5_reg[11]__4_n_0 }),
        .O({\ql_r6_reg[31]_i_1_n_4 ,\ql_r6_reg[31]_i_1_n_5 ,\ql_r6_reg[31]_i_1_n_6 ,\ql_r6_reg[31]_i_1_n_7 }),
        .S({\ql_r6[31]_i_2_n_0 ,\ql_r6[31]_i_3_n_0 ,\ql_r6[31]_i_4_n_0 ,\ql_r6[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[35]_i_1_n_7 ),
        .Q(ql_r6[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[35]_i_1_n_6 ),
        .Q(ql_r6[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[35]_i_1_n_5 ),
        .Q(ql_r6[34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[35]_i_1_n_4 ),
        .Q(ql_r6[35]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[35]_i_1 
       (.CI(\ql_r6_reg[31]_i_1_n_0 ),
        .CO({\ql_r6_reg[35]_i_1_n_0 ,\ql_r6_reg[35]_i_1_n_1 ,\ql_r6_reg[35]_i_1_n_2 ,\ql_r6_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ql_r5_reg__1[34:33],\ql_r5_reg[15]__4_n_0 ,\ql_r6[35]_i_2_n_0 }),
        .O({\ql_r6_reg[35]_i_1_n_4 ,\ql_r6_reg[35]_i_1_n_5 ,\ql_r6_reg[35]_i_1_n_6 ,\ql_r6_reg[35]_i_1_n_7 }),
        .S({\ql_r6[35]_i_3_n_0 ,\ql_r6[35]_i_4_n_0 ,\ql_r6[35]_i_5_n_0 ,\ql_r6[35]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[39]_i_1_n_7 ),
        .Q(ql_r6[36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[39]_i_1_n_6 ),
        .Q(ql_r6[37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[39]_i_1_n_5 ),
        .Q(ql_r6[38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[39]_i_1_n_4 ),
        .Q(ql_r6[39]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[39]_i_1 
       (.CI(\ql_r6_reg[35]_i_1_n_0 ),
        .CO({\ql_r6_reg[39]_i_1_n_0 ,\ql_r6_reg[39]_i_1_n_1 ,\ql_r6_reg[39]_i_1_n_2 ,\ql_r6_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ql_r5_reg__1[38:35]),
        .O({\ql_r6_reg[39]_i_1_n_4 ,\ql_r6_reg[39]_i_1_n_5 ,\ql_r6_reg[39]_i_1_n_6 ,\ql_r6_reg[39]_i_1_n_7 }),
        .S({\ql_r6[39]_i_3_n_0 ,\ql_r6[39]_i_4_n_0 ,\ql_r6[39]_i_5_n_0 ,\ql_r6[39]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[39]_i_2 
       (.CI(1'b0),
        .CO({\ql_r6_reg[39]_i_2_n_0 ,\ql_r6_reg[39]_i_2_n_1 ,\ql_r6_reg[39]_i_2_n_2 ,\ql_r6_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({ql_r5_reg__0_n_103,ql_r5_reg__0_n_104,ql_r5_reg__0_n_105,1'b0}),
        .O(ql_r5_reg__1[36:33]),
        .S({\ql_r6[39]_i_7_n_0 ,\ql_r6[39]_i_8_n_0 ,\ql_r6[39]_i_9_n_0 ,\ql_r5_reg[16]__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[3]_i_1_n_4 ),
        .Q(ql_r6[3]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\ql_r6_reg[3]_i_1_n_0 ,\ql_r6_reg[3]_i_1_n_1 ,\ql_r6_reg[3]_i_1_n_2 ,\ql_r6_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r5_reg[3]__3_n_0 ,\ql_r5_reg[2]__3_n_0 ,\ql_r5_reg[1]__3_n_0 ,\ql_r5_reg[0]__3_n_0 }),
        .O({\ql_r6_reg[3]_i_1_n_4 ,\ql_r6_reg[3]_i_1_n_5 ,\ql_r6_reg[3]_i_1_n_6 ,\ql_r6_reg[3]_i_1_n_7 }),
        .S({\ql_r6[3]_i_2_n_0 ,\ql_r6[3]_i_3_n_0 ,\ql_r6[3]_i_4_n_0 ,\ql_r6[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[43]_i_1_n_7 ),
        .Q(ql_r6[40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[43]_i_1_n_6 ),
        .Q(ql_r6[41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[43]_i_1_n_5 ),
        .Q(ql_r6[42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[43]_i_1_n_4 ),
        .Q(ql_r6[43]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[43]_i_1 
       (.CI(\ql_r6_reg[39]_i_1_n_0 ),
        .CO({\ql_r6_reg[43]_i_1_n_0 ,\ql_r6_reg[43]_i_1_n_1 ,\ql_r6_reg[43]_i_1_n_2 ,\ql_r6_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ql_r5_reg__1[42:39]),
        .O({\ql_r6_reg[43]_i_1_n_4 ,\ql_r6_reg[43]_i_1_n_5 ,\ql_r6_reg[43]_i_1_n_6 ,\ql_r6_reg[43]_i_1_n_7 }),
        .S({\ql_r6[43]_i_3_n_0 ,\ql_r6[43]_i_4_n_0 ,\ql_r6[43]_i_5_n_0 ,\ql_r6[43]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[43]_i_2 
       (.CI(\ql_r6_reg[39]_i_2_n_0 ),
        .CO({\ql_r6_reg[43]_i_2_n_0 ,\ql_r6_reg[43]_i_2_n_1 ,\ql_r6_reg[43]_i_2_n_2 ,\ql_r6_reg[43]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({ql_r5_reg__0_n_99,ql_r5_reg__0_n_100,ql_r5_reg__0_n_101,ql_r5_reg__0_n_102}),
        .O(ql_r5_reg__1[40:37]),
        .S({\ql_r6[43]_i_7_n_0 ,\ql_r6[43]_i_8_n_0 ,\ql_r6[43]_i_9_n_0 ,\ql_r6[43]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[47]_i_1_n_7 ),
        .Q(ql_r6[44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[47]_i_1_n_6 ),
        .Q(ql_r6[45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[47]_i_1_n_5 ),
        .Q(ql_r6[46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[47]_i_1_n_4 ),
        .Q(ql_r6[47]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[47]_i_1 
       (.CI(\ql_r6_reg[43]_i_1_n_0 ),
        .CO({\ql_r6_reg[47]_i_1_n_0 ,\ql_r6_reg[47]_i_1_n_1 ,\ql_r6_reg[47]_i_1_n_2 ,\ql_r6_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ql_r5_reg__1[46:43]),
        .O({\ql_r6_reg[47]_i_1_n_4 ,\ql_r6_reg[47]_i_1_n_5 ,\ql_r6_reg[47]_i_1_n_6 ,\ql_r6_reg[47]_i_1_n_7 }),
        .S({\ql_r6[47]_i_3_n_0 ,\ql_r6[47]_i_4_n_0 ,\ql_r6[47]_i_5_n_0 ,\ql_r6[47]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[47]_i_2 
       (.CI(\ql_r6_reg[43]_i_2_n_0 ),
        .CO({\ql_r6_reg[47]_i_2_n_0 ,\ql_r6_reg[47]_i_2_n_1 ,\ql_r6_reg[47]_i_2_n_2 ,\ql_r6_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({ql_r5_reg__0_n_95,ql_r5_reg__0_n_96,ql_r5_reg__0_n_97,ql_r5_reg__0_n_98}),
        .O(ql_r5_reg__1[44:41]),
        .S({\ql_r6[47]_i_7_n_0 ,\ql_r6[47]_i_8_n_0 ,\ql_r6[47]_i_9_n_0 ,\ql_r6[47]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[51]_i_1_n_7 ),
        .Q(ql_r6[48]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[51]_i_1_n_6 ),
        .Q(ql_r6[49]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[7]_i_1_n_7 ),
        .Q(ql_r6[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[51]_i_1_n_5 ),
        .Q(ql_r6[50]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[51]_i_1_n_4 ),
        .Q(ql_r6[51]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[51]_i_1 
       (.CI(\ql_r6_reg[47]_i_1_n_0 ),
        .CO({\ql_r6_reg[51]_i_1_n_0 ,\ql_r6_reg[51]_i_1_n_1 ,\ql_r6_reg[51]_i_1_n_2 ,\ql_r6_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ql_r5_reg__1[50:47]),
        .O({\ql_r6_reg[51]_i_1_n_4 ,\ql_r6_reg[51]_i_1_n_5 ,\ql_r6_reg[51]_i_1_n_6 ,\ql_r6_reg[51]_i_1_n_7 }),
        .S({\ql_r6[51]_i_3_n_0 ,\ql_r6[51]_i_4_n_0 ,\ql_r6[51]_i_5_n_0 ,\ql_r6[51]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[51]_i_2 
       (.CI(\ql_r6_reg[47]_i_2_n_0 ),
        .CO({\ql_r6_reg[51]_i_2_n_0 ,\ql_r6_reg[51]_i_2_n_1 ,\ql_r6_reg[51]_i_2_n_2 ,\ql_r6_reg[51]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({ql_r5_reg__0_n_91,ql_r5_reg__0_n_92,ql_r5_reg__0_n_93,ql_r5_reg__0_n_94}),
        .O(ql_r5_reg__1[48:45]),
        .S({\ql_r6[51]_i_7_n_0 ,\ql_r6[51]_i_8_n_0 ,\ql_r6[51]_i_9_n_0 ,\ql_r6[51]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[55]_i_1_n_7 ),
        .Q(ql_r6[52]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[55]_i_1_n_6 ),
        .Q(ql_r6[53]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[55]_i_1_n_5 ),
        .Q(ql_r6[54]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[55]_i_1_n_4 ),
        .Q(ql_r6[55]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[55]_i_1 
       (.CI(\ql_r6_reg[51]_i_1_n_0 ),
        .CO({\ql_r6_reg[55]_i_1_n_0 ,\ql_r6_reg[55]_i_1_n_1 ,\ql_r6_reg[55]_i_1_n_2 ,\ql_r6_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ql_r5_reg__1[54:51]),
        .O({\ql_r6_reg[55]_i_1_n_4 ,\ql_r6_reg[55]_i_1_n_5 ,\ql_r6_reg[55]_i_1_n_6 ,\ql_r6_reg[55]_i_1_n_7 }),
        .S({\ql_r6[55]_i_3_n_0 ,\ql_r6[55]_i_4_n_0 ,\ql_r6[55]_i_5_n_0 ,\ql_r6[55]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[55]_i_2 
       (.CI(\ql_r6_reg[51]_i_2_n_0 ),
        .CO({\ql_r6_reg[55]_i_2_n_0 ,\ql_r6_reg[55]_i_2_n_1 ,\ql_r6_reg[55]_i_2_n_2 ,\ql_r6_reg[55]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r6[55]_i_7_n_0 ,ql_r5_reg__0_n_88,ql_r5_reg__0_n_89,ql_r5_reg__0_n_90}),
        .O(ql_r5_reg__1[52:49]),
        .S({\ql_r6[55]_i_8_n_0 ,\ql_r6[55]_i_9_n_0 ,\ql_r6[55]_i_10_n_0 ,\ql_r6[55]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[59]_i_1_n_7 ),
        .Q(ql_r6[56]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[59]_i_1_n_6 ),
        .Q(ql_r6[57]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[59]_i_1_n_5 ),
        .Q(ql_r6[58]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[59]_i_1_n_4 ),
        .Q(ql_r6[59]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[59]_i_1 
       (.CI(\ql_r6_reg[55]_i_1_n_0 ),
        .CO({\ql_r6_reg[59]_i_1_n_0 ,\ql_r6_reg[59]_i_1_n_1 ,\ql_r6_reg[59]_i_1_n_2 ,\ql_r6_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ql_r5_reg__1[58:55]),
        .O({\ql_r6_reg[59]_i_1_n_4 ,\ql_r6_reg[59]_i_1_n_5 ,\ql_r6_reg[59]_i_1_n_6 ,\ql_r6_reg[59]_i_1_n_7 }),
        .S({\ql_r6[59]_i_3_n_0 ,\ql_r6[59]_i_4_n_0 ,\ql_r6[59]_i_5_n_0 ,\ql_r6[59]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[59]_i_2 
       (.CI(\ql_r6_reg[55]_i_2_n_0 ),
        .CO({\ql_r6_reg[59]_i_2_n_0 ,\ql_r6_reg[59]_i_2_n_1 ,\ql_r6_reg[59]_i_2_n_2 ,\ql_r6_reg[59]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r6[59]_i_7_n_0 ,\ql_r6[59]_i_8_n_0 ,\ql_r6[59]_i_9_n_0 ,\ql_r6[59]_i_10_n_0 }),
        .O(ql_r5_reg__1[56:53]),
        .S({\ql_r6[59]_i_11_n_0 ,\ql_r6[59]_i_12_n_0 ,\ql_r6[59]_i_13_n_0 ,\ql_r6[59]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[7]_i_1_n_6 ),
        .Q(ql_r6[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[63]_i_1_n_7 ),
        .Q(ql_r6[60]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[63]_i_1_n_6 ),
        .Q(ql_r6[61]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[63]_i_1_n_5 ),
        .Q(ql_r6[62]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[63]_i_1_n_4 ),
        .Q(ql_r6[63]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[63]_i_1 
       (.CI(\ql_r6_reg[59]_i_1_n_0 ),
        .CO({\NLW_ql_r6_reg[63]_i_1_CO_UNCONNECTED [3],\ql_r6_reg[63]_i_1_n_1 ,\ql_r6_reg[63]_i_1_n_2 ,\ql_r6_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ql_r5_reg__1[61:59]}),
        .O({\ql_r6_reg[63]_i_1_n_4 ,\ql_r6_reg[63]_i_1_n_5 ,\ql_r6_reg[63]_i_1_n_6 ,\ql_r6_reg[63]_i_1_n_7 }),
        .S({\ql_r6[63]_i_4_n_0 ,\ql_r6[63]_i_5_n_0 ,\ql_r6[63]_i_6_n_0 ,\ql_r6[63]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[63]_i_2 
       (.CI(\ql_r6_reg[63]_i_3_n_0 ),
        .CO({\NLW_ql_r6_reg[63]_i_2_CO_UNCONNECTED [3:2],\ql_r6_reg[63]_i_2_n_2 ,\ql_r6_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ql_r6[63]_i_8_n_0 ,\ql_r6[63]_i_9_n_0 }),
        .O({\NLW_ql_r6_reg[63]_i_2_O_UNCONNECTED [3],ql_r5_reg__1[63:61]}),
        .S({1'b0,\ql_r6[63]_i_10_n_0 ,\ql_r6[63]_i_11_n_0 ,\ql_r6[63]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[63]_i_3 
       (.CI(\ql_r6_reg[59]_i_2_n_0 ),
        .CO({\ql_r6_reg[63]_i_3_n_0 ,\ql_r6_reg[63]_i_3_n_1 ,\ql_r6_reg[63]_i_3_n_2 ,\ql_r6_reg[63]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r6[63]_i_13_n_0 ,\ql_r6[63]_i_14_n_0 ,\ql_r6[63]_i_15_n_0 ,\ql_r6[63]_i_16_n_0 }),
        .O(ql_r5_reg__1[60:57]),
        .S({\ql_r6[63]_i_17_n_0 ,\ql_r6[63]_i_18_n_0 ,\ql_r6[63]_i_19_n_0 ,\ql_r6[63]_i_20_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[7]_i_1_n_5 ),
        .Q(ql_r6[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[7]_i_1_n_4 ),
        .Q(ql_r6[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ql_r6_reg[7]_i_1 
       (.CI(\ql_r6_reg[3]_i_1_n_0 ),
        .CO({\ql_r6_reg[7]_i_1_n_0 ,\ql_r6_reg[7]_i_1_n_1 ,\ql_r6_reg[7]_i_1_n_2 ,\ql_r6_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ql_r5_reg[7]__3_n_0 ,\ql_r5_reg[6]__3_n_0 ,\ql_r5_reg[5]__3_n_0 ,\ql_r5_reg[4]__3_n_0 }),
        .O({\ql_r6_reg[7]_i_1_n_4 ,\ql_r6_reg[7]_i_1_n_5 ,\ql_r6_reg[7]_i_1_n_6 ,\ql_r6_reg[7]_i_1_n_7 }),
        .S({\ql_r6[7]_i_2_n_0 ,\ql_r6[7]_i_3_n_0 ,\ql_r6[7]_i_4_n_0 ,\ql_r6[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[11]_i_1_n_7 ),
        .Q(ql_r6[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ql_r6_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\ql_r6_reg[11]_i_1_n_6 ),
        .Q(ql_r6[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \qout_r[0]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[0]_i_2_n_0 ),
        .I2(z_r6[1]),
        .I3(\qout_r[2]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[1]_i_2_n_0 ),
        .O(\qout_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \qout_r[0]_i_2 
       (.I0(\qout_r[12]_i_3_n_0 ),
        .I1(z_r6[3]),
        .I2(\qout_r[4]_i_3_n_0 ),
        .I3(z_r6[2]),
        .I4(\qout_r[8]_i_3_n_0 ),
        .I5(\qout_r[0]_i_3_n_0 ),
        .O(\qout_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[0]_i_3 
       (.I0(ql_r6[48]),
        .I1(ql_r6[16]),
        .I2(z_r6[4]),
        .I3(ql_r6[32]),
        .I4(z_r6[5]),
        .I5(ql_r6[0]),
        .O(\qout_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[10]_i_1 
       (.I0(\qout_r[12]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[10]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[11]_i_2_n_0 ),
        .O(\qout_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[10]_i_2 
       (.I0(\qout_r[22]_i_3_n_0 ),
        .I1(\qout_r[14]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[18]_i_3_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[10]_i_3_n_0 ),
        .O(\qout_r[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[10]_i_3 
       (.I0(ql_r6[58]),
        .I1(ql_r6[26]),
        .I2(z_r6[4]),
        .I3(ql_r6[42]),
        .I4(z_r6[5]),
        .I5(ql_r6[10]),
        .O(\qout_r[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[11]_i_1 
       (.I0(\qout_r[14]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[12]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[11]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[11]_i_2 
       (.I0(\qout_r[13]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[11]_i_3_n_0 ),
        .O(\qout_r[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[11]_i_3 
       (.I0(\qout_r[23]_i_4_n_0 ),
        .I1(\qout_r[15]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[19]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[11]_i_4_n_0 ),
        .O(\qout_r[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[11]_i_4 
       (.I0(ql_r6[59]),
        .I1(ql_r6[27]),
        .I2(z_r6[4]),
        .I3(ql_r6[43]),
        .I4(z_r6[5]),
        .I5(ql_r6[11]),
        .O(\qout_r[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[12]_i_1 
       (.I0(\qout_r[14]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[12]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[13]_i_2_n_0 ),
        .O(\qout_r[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[12]_i_2 
       (.I0(\qout_r[24]_i_11_n_0 ),
        .I1(\qout_r[16]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[20]_i_3_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[12]_i_3_n_0 ),
        .O(\qout_r[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[12]_i_3 
       (.I0(ql_r6[60]),
        .I1(ql_r6[28]),
        .I2(z_r6[4]),
        .I3(ql_r6[44]),
        .I4(z_r6[5]),
        .I5(ql_r6[12]),
        .O(\qout_r[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[13]_i_1 
       (.I0(\qout_r[16]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[14]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[13]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[13]_i_2 
       (.I0(\qout_r[15]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[13]_i_3_n_0 ),
        .O(\qout_r[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[13]_i_3 
       (.I0(\qout_r[25]_i_4_n_0 ),
        .I1(\qout_r[17]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[21]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[13]_i_4_n_0 ),
        .O(\qout_r[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[13]_i_4 
       (.I0(ql_r6[61]),
        .I1(ql_r6[29]),
        .I2(z_r6[4]),
        .I3(ql_r6[45]),
        .I4(z_r6[5]),
        .I5(ql_r6[13]),
        .O(\qout_r[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[14]_i_1 
       (.I0(\qout_r[16]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[14]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[15]_i_2_n_0 ),
        .O(\qout_r[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[14]_i_2 
       (.I0(\qout_r[24]_i_7_n_0 ),
        .I1(\qout_r[18]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[22]_i_3_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[14]_i_3_n_0 ),
        .O(\qout_r[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[14]_i_3 
       (.I0(ql_r6[62]),
        .I1(ql_r6[30]),
        .I2(z_r6[4]),
        .I3(ql_r6[46]),
        .I4(z_r6[5]),
        .I5(ql_r6[14]),
        .O(\qout_r[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[15]_i_1 
       (.I0(\qout_r[18]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[16]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[15]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[15]_i_2 
       (.I0(\qout_r[17]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[15]_i_3_n_0 ),
        .O(\qout_r[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[15]_i_3 
       (.I0(\qout_r[27]_i_5_n_0 ),
        .I1(\qout_r[19]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[23]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[15]_i_4_n_0 ),
        .O(\qout_r[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[15]_i_4 
       (.I0(ql_r6[63]),
        .I1(ql_r6[31]),
        .I2(z_r6[4]),
        .I3(ql_r6[47]),
        .I4(z_r6[5]),
        .I5(ql_r6[15]),
        .O(\qout_r[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[16]_i_1 
       (.I0(\qout_r[18]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[16]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[17]_i_2_n_0 ),
        .O(\qout_r[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[16]_i_2 
       (.I0(\qout_r[24]_i_9_n_0 ),
        .I1(\qout_r[20]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[24]_i_11_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[16]_i_3_n_0 ),
        .O(\qout_r[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[16]_i_3 
       (.I0(ql_r6[32]),
        .I1(z_r6[4]),
        .I2(ql_r6[48]),
        .I3(z_r6[5]),
        .I4(ql_r6[16]),
        .O(\qout_r[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[17]_i_1 
       (.I0(\qout_r[20]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[18]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[17]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[17]_i_2 
       (.I0(\qout_r[19]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[17]_i_3_n_0 ),
        .O(\qout_r[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[17]_i_3 
       (.I0(\qout_r[29]_i_4_n_0 ),
        .I1(\qout_r[21]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[25]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[17]_i_4_n_0 ),
        .O(\qout_r[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[17]_i_4 
       (.I0(ql_r6[33]),
        .I1(z_r6[4]),
        .I2(ql_r6[49]),
        .I3(z_r6[5]),
        .I4(ql_r6[17]),
        .O(\qout_r[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[18]_i_1 
       (.I0(\qout_r[20]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[18]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[19]_i_2_n_0 ),
        .O(\qout_r[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[18]_i_2 
       (.I0(\qout_r[24]_i_5_n_0 ),
        .I1(\qout_r[22]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[24]_i_7_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[18]_i_3_n_0 ),
        .O(\qout_r[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[18]_i_3 
       (.I0(ql_r6[34]),
        .I1(z_r6[4]),
        .I2(ql_r6[50]),
        .I3(z_r6[5]),
        .I4(ql_r6[18]),
        .O(\qout_r[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[19]_i_1 
       (.I0(\qout_r[22]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[20]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[19]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[19]_i_2 
       (.I0(\qout_r[21]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[19]_i_3_n_0 ),
        .O(\qout_r[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[19]_i_3 
       (.I0(\qout_r[31]_i_23_n_0 ),
        .I1(\qout_r[23]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[27]_i_5_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[19]_i_4_n_0 ),
        .O(\qout_r[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[19]_i_4 
       (.I0(ql_r6[35]),
        .I1(z_r6[4]),
        .I2(ql_r6[51]),
        .I3(z_r6[5]),
        .I4(ql_r6[19]),
        .O(\qout_r[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[1]_i_1 
       (.I0(\qout_r[4]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[2]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[1]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \qout_r[1]_i_2 
       (.I0(\qout_r[3]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[1]_i_3_n_0 ),
        .I3(z_r6[2]),
        .I4(\qout_r[1]_i_4_n_0 ),
        .O(\qout_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[1]_i_3 
       (.I0(\qout_r[13]_i_4_n_0 ),
        .I1(z_r6[3]),
        .I2(\qout_r[5]_i_4_n_0 ),
        .O(\qout_r[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[1]_i_4 
       (.I0(\qout_r[9]_i_4_n_0 ),
        .I1(z_r6[3]),
        .I2(\qout_r[1]_i_5_n_0 ),
        .O(\qout_r[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[1]_i_5 
       (.I0(ql_r6[49]),
        .I1(ql_r6[17]),
        .I2(z_r6[4]),
        .I3(ql_r6[33]),
        .I4(z_r6[5]),
        .I5(ql_r6[1]),
        .O(\qout_r[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[20]_i_1 
       (.I0(\qout_r[22]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[20]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[21]_i_2_n_0 ),
        .O(\qout_r[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[20]_i_2 
       (.I0(\qout_r[24]_i_10_n_0 ),
        .I1(\qout_r[24]_i_11_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[24]_i_9_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[20]_i_3_n_0 ),
        .O(\qout_r[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[20]_i_3 
       (.I0(ql_r6[36]),
        .I1(z_r6[4]),
        .I2(ql_r6[52]),
        .I3(z_r6[5]),
        .I4(ql_r6[20]),
        .O(\qout_r[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[21]_i_1 
       (.I0(\qout_r[24]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[22]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[21]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[21]_i_2 
       (.I0(\qout_r[23]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[21]_i_3_n_0 ),
        .O(\qout_r[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[21]_i_3 
       (.I0(\qout_r[31]_i_19_n_0 ),
        .I1(\qout_r[25]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[29]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[21]_i_4_n_0 ),
        .O(\qout_r[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[21]_i_4 
       (.I0(ql_r6[37]),
        .I1(z_r6[4]),
        .I2(ql_r6[53]),
        .I3(z_r6[5]),
        .I4(ql_r6[21]),
        .O(\qout_r[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[22]_i_1 
       (.I0(\qout_r[24]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[22]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[23]_i_2_n_0 ),
        .O(\qout_r[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[22]_i_2 
       (.I0(\qout_r[24]_i_6_n_0 ),
        .I1(\qout_r[24]_i_7_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[24]_i_5_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[22]_i_3_n_0 ),
        .O(\qout_r[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[22]_i_3 
       (.I0(ql_r6[38]),
        .I1(z_r6[4]),
        .I2(ql_r6[54]),
        .I3(z_r6[5]),
        .I4(ql_r6[22]),
        .O(\qout_r[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[23]_i_1 
       (.I0(\qout_r[24]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[24]_i_3_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[23]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[23]_i_2 
       (.I0(\qout_r[25]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[23]_i_3_n_0 ),
        .O(\qout_r[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[23]_i_3 
       (.I0(\qout_r[31]_i_21_n_0 ),
        .I1(\qout_r[27]_i_5_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[31]_i_23_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[23]_i_4_n_0 ),
        .O(\qout_r[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[23]_i_4 
       (.I0(ql_r6[39]),
        .I1(z_r6[4]),
        .I2(ql_r6[55]),
        .I3(z_r6[5]),
        .I4(ql_r6[23]),
        .O(\qout_r[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[24]_i_1 
       (.I0(\qout_r[24]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[24]_i_3_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[25]_i_2_n_0 ),
        .O(\qout_r[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[24]_i_10 
       (.I0(ql_r6[48]),
        .I1(z_r6[4]),
        .I2(ql_r6[32]),
        .I3(z_r6[5]),
        .O(\qout_r[24]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[24]_i_11 
       (.I0(ql_r6[40]),
        .I1(z_r6[4]),
        .I2(ql_r6[56]),
        .I3(z_r6[5]),
        .I4(ql_r6[24]),
        .O(\qout_r[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[24]_i_2 
       (.I0(\qout_r[24]_i_4_n_0 ),
        .I1(\qout_r[24]_i_5_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[24]_i_6_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_7_n_0 ),
        .O(\qout_r[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[24]_i_3 
       (.I0(\qout_r[24]_i_8_n_0 ),
        .I1(\qout_r[24]_i_9_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[24]_i_10_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_11_n_0 ),
        .O(\qout_r[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[24]_i_4 
       (.I0(ql_r6[54]),
        .I1(z_r6[4]),
        .I2(ql_r6[38]),
        .I3(z_r6[5]),
        .O(\qout_r[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[24]_i_5 
       (.I0(ql_r6[46]),
        .I1(z_r6[4]),
        .I2(ql_r6[62]),
        .I3(z_r6[5]),
        .I4(ql_r6[30]),
        .O(\qout_r[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[24]_i_6 
       (.I0(ql_r6[50]),
        .I1(z_r6[4]),
        .I2(ql_r6[34]),
        .I3(z_r6[5]),
        .O(\qout_r[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[24]_i_7 
       (.I0(ql_r6[42]),
        .I1(z_r6[4]),
        .I2(ql_r6[58]),
        .I3(z_r6[5]),
        .I4(ql_r6[26]),
        .O(\qout_r[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[24]_i_8 
       (.I0(ql_r6[52]),
        .I1(z_r6[4]),
        .I2(ql_r6[36]),
        .I3(z_r6[5]),
        .O(\qout_r[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[24]_i_9 
       (.I0(ql_r6[44]),
        .I1(z_r6[4]),
        .I2(ql_r6[60]),
        .I3(z_r6[5]),
        .I4(ql_r6[28]),
        .O(\qout_r[24]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \qout_r[25]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[25]_i_2_n_0 ),
        .I2(z_r6[0]),
        .I3(\qout_r[26]_i_2_n_0 ),
        .O(\qout_r[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \qout_r[25]_i_2 
       (.I0(\qout_r[27]_i_3_n_0 ),
        .I1(z_r6[2]),
        .I2(\qout_r[27]_i_4_n_0 ),
        .I3(z_r6[1]),
        .I4(\qout_r[25]_i_3_n_0 ),
        .O(\qout_r[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[25]_i_3 
       (.I0(\qout_r[31]_i_18_n_0 ),
        .I1(\qout_r[29]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[31]_i_19_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[25]_i_4_n_0 ),
        .O(\qout_r[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[25]_i_4 
       (.I0(ql_r6[41]),
        .I1(z_r6[4]),
        .I2(ql_r6[57]),
        .I3(z_r6[5]),
        .I4(ql_r6[25]),
        .O(\qout_r[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \qout_r[26]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[26]_i_2_n_0 ),
        .I2(z_r6[0]),
        .I3(\qout_r[27]_i_2_n_0 ),
        .O(\qout_r[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \qout_r[26]_i_2 
       (.I0(\qout_r[28]_i_3_n_0 ),
        .I1(z_r6[2]),
        .I2(\qout_r[28]_i_4_n_0 ),
        .I3(z_r6[1]),
        .I4(\qout_r[24]_i_2_n_0 ),
        .O(\qout_r[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \qout_r[27]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[27]_i_2_n_0 ),
        .I2(z_r6[0]),
        .I3(\qout_r[28]_i_2_n_0 ),
        .O(\qout_r[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[27]_i_2 
       (.I0(\qout_r[31]_i_9_n_0 ),
        .I1(\qout_r[29]_i_3_n_0 ),
        .I2(z_r6[1]),
        .I3(\qout_r[27]_i_3_n_0 ),
        .I4(z_r6[2]),
        .I5(\qout_r[27]_i_4_n_0 ),
        .O(\qout_r[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[27]_i_3 
       (.I0(ql_r6[55]),
        .I1(z_r6[4]),
        .I2(ql_r6[39]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[31]_i_23_n_0 ),
        .O(\qout_r[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[27]_i_4 
       (.I0(ql_r6[51]),
        .I1(z_r6[4]),
        .I2(ql_r6[35]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[27]_i_5_n_0 ),
        .O(\qout_r[27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[27]_i_5 
       (.I0(ql_r6[43]),
        .I1(z_r6[4]),
        .I2(ql_r6[59]),
        .I3(z_r6[5]),
        .I4(ql_r6[27]),
        .O(\qout_r[27]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \qout_r[28]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[28]_i_2_n_0 ),
        .I2(z_r6[0]),
        .I3(\qout_r[29]_i_2_n_0 ),
        .O(\qout_r[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[28]_i_2 
       (.I0(\qout_r[31]_i_12_n_0 ),
        .I1(\qout_r[30]_i_3_n_0 ),
        .I2(z_r6[1]),
        .I3(\qout_r[28]_i_3_n_0 ),
        .I4(z_r6[2]),
        .I5(\qout_r[28]_i_4_n_0 ),
        .O(\qout_r[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[28]_i_3 
       (.I0(ql_r6[56]),
        .I1(z_r6[4]),
        .I2(ql_r6[40]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_10_n_0 ),
        .O(\qout_r[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[28]_i_4 
       (.I0(ql_r6[52]),
        .I1(z_r6[4]),
        .I2(ql_r6[36]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_9_n_0 ),
        .O(\qout_r[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \qout_r[29]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[29]_i_2_n_0 ),
        .I2(z_r6[0]),
        .I3(\qout_r[30]_i_2_n_0 ),
        .O(\qout_r[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \qout_r[29]_i_2 
       (.I0(\qout_r[31]_i_10_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[31]_i_9_n_0 ),
        .I3(z_r6[2]),
        .I4(\qout_r[29]_i_3_n_0 ),
        .O(\qout_r[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[29]_i_3 
       (.I0(ql_r6[53]),
        .I1(z_r6[4]),
        .I2(ql_r6[37]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[29]_i_4_n_0 ),
        .O(\qout_r[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[29]_i_4 
       (.I0(ql_r6[45]),
        .I1(z_r6[4]),
        .I2(ql_r6[61]),
        .I3(z_r6[5]),
        .I4(ql_r6[29]),
        .O(\qout_r[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[2]_i_1 
       (.I0(\qout_r[4]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[2]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[3]_i_2_n_0 ),
        .O(\qout_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[2]_i_2 
       (.I0(\qout_r[14]_i_3_n_0 ),
        .I1(\qout_r[6]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[10]_i_3_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[2]_i_3_n_0 ),
        .O(\qout_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[2]_i_3 
       (.I0(ql_r6[50]),
        .I1(ql_r6[18]),
        .I2(z_r6[4]),
        .I3(ql_r6[34]),
        .I4(z_r6[5]),
        .I5(ql_r6[2]),
        .O(\qout_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \qout_r[30]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[30]_i_2_n_0 ),
        .I2(z_r6[0]),
        .I3(\qout_r[31]_i_3_n_0 ),
        .O(\qout_r[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \qout_r[30]_i_2 
       (.I0(\qout_r[31]_i_13_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[31]_i_12_n_0 ),
        .I3(z_r6[2]),
        .I4(\qout_r[30]_i_3_n_0 ),
        .O(\qout_r[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[30]_i_3 
       (.I0(ql_r6[54]),
        .I1(z_r6[4]),
        .I2(ql_r6[38]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_5_n_0 ),
        .O(\qout_r[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \qout_r[31]_i_1 
       (.I0(\qout_r[31]_i_2_n_0 ),
        .I1(\qout_r[31]_i_3_n_0 ),
        .I2(z_r6[0]),
        .I3(\qout_r[31]_i_4_n_0 ),
        .O(\qout_r[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[31]_i_10 
       (.I0(\qout_r[31]_i_20_n_0 ),
        .I1(\qout_r[31]_i_21_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[31]_i_22_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[31]_i_23_n_0 ),
        .O(\qout_r[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[31]_i_11 
       (.I0(ql_r6[62]),
        .I1(z_r6[4]),
        .I2(ql_r6[46]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_4_n_0 ),
        .O(\qout_r[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[31]_i_12 
       (.I0(ql_r6[58]),
        .I1(z_r6[4]),
        .I2(ql_r6[42]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_6_n_0 ),
        .O(\qout_r[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[31]_i_13 
       (.I0(\qout_r[31]_i_24_n_0 ),
        .I1(\qout_r[24]_i_8_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[31]_i_25_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[24]_i_10_n_0 ),
        .O(\qout_r[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \qout_r[31]_i_14 
       (.I0(z_r6[24]),
        .I1(z_r6[25]),
        .I2(z_r6[22]),
        .I3(z_r6[23]),
        .O(\qout_r[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \qout_r[31]_i_15 
       (.I0(z_r6[28]),
        .I1(z_r6[29]),
        .I2(z_r6[26]),
        .I3(z_r6[27]),
        .O(\qout_r[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \qout_r[31]_i_16 
       (.I0(z_r6[8]),
        .I1(z_r6[9]),
        .I2(z_r6[6]),
        .I3(z_r6[7]),
        .O(\qout_r[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \qout_r[31]_i_17 
       (.I0(z_r6[16]),
        .I1(z_r6[17]),
        .I2(z_r6[14]),
        .I3(z_r6[15]),
        .O(\qout_r[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[31]_i_18 
       (.I0(ql_r6[53]),
        .I1(z_r6[4]),
        .I2(ql_r6[37]),
        .I3(z_r6[5]),
        .O(\qout_r[31]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[31]_i_19 
       (.I0(ql_r6[49]),
        .I1(z_r6[4]),
        .I2(ql_r6[33]),
        .I3(z_r6[5]),
        .O(\qout_r[31]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \qout_r[31]_i_2 
       (.I0(\qout_r[31]_i_5_n_0 ),
        .I1(\qout_r[31]_i_6_n_0 ),
        .I2(\qout_r[31]_i_7_n_0 ),
        .O(\qout_r[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[31]_i_20 
       (.I0(ql_r6[59]),
        .I1(z_r6[4]),
        .I2(ql_r6[43]),
        .I3(z_r6[5]),
        .O(\qout_r[31]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[31]_i_21 
       (.I0(ql_r6[51]),
        .I1(z_r6[4]),
        .I2(ql_r6[35]),
        .I3(z_r6[5]),
        .O(\qout_r[31]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[31]_i_22 
       (.I0(ql_r6[55]),
        .I1(z_r6[4]),
        .I2(ql_r6[39]),
        .I3(z_r6[5]),
        .O(\qout_r[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \qout_r[31]_i_23 
       (.I0(ql_r6[47]),
        .I1(z_r6[4]),
        .I2(ql_r6[63]),
        .I3(z_r6[5]),
        .I4(ql_r6[31]),
        .O(\qout_r[31]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[31]_i_24 
       (.I0(ql_r6[60]),
        .I1(z_r6[4]),
        .I2(ql_r6[44]),
        .I3(z_r6[5]),
        .O(\qout_r[31]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \qout_r[31]_i_25 
       (.I0(ql_r6[56]),
        .I1(z_r6[4]),
        .I2(ql_r6[40]),
        .I3(z_r6[5]),
        .O(\qout_r[31]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \qout_r[31]_i_3 
       (.I0(\qout_r[31]_i_8_n_0 ),
        .I1(z_r6[2]),
        .I2(\qout_r[31]_i_9_n_0 ),
        .I3(z_r6[1]),
        .I4(\qout_r[31]_i_10_n_0 ),
        .O(\qout_r[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \qout_r[31]_i_4 
       (.I0(\qout_r[31]_i_11_n_0 ),
        .I1(z_r6[2]),
        .I2(\qout_r[31]_i_12_n_0 ),
        .I3(z_r6[1]),
        .I4(\qout_r[31]_i_13_n_0 ),
        .O(\qout_r[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \qout_r[31]_i_5 
       (.I0(z_r6[31]),
        .I1(z_r6[30]),
        .I2(z_r6[33]),
        .I3(z_r6[32]),
        .I4(\qout_r[31]_i_14_n_0 ),
        .I5(\qout_r[31]_i_15_n_0 ),
        .O(\qout_r[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \qout_r[31]_i_6 
       (.I0(z_r6[11]),
        .I1(z_r6[10]),
        .I2(z_r6[13]),
        .I3(z_r6[12]),
        .I4(\qout_r[31]_i_16_n_0 ),
        .O(\qout_r[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \qout_r[31]_i_7 
       (.I0(z_r6[19]),
        .I1(z_r6[18]),
        .I2(z_r6[21]),
        .I3(z_r6[20]),
        .I4(\qout_r[31]_i_17_n_0 ),
        .O(\qout_r[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[31]_i_8 
       (.I0(ql_r6[61]),
        .I1(z_r6[4]),
        .I2(ql_r6[45]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[31]_i_18_n_0 ),
        .O(\qout_r[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \qout_r[31]_i_9 
       (.I0(ql_r6[57]),
        .I1(z_r6[4]),
        .I2(ql_r6[41]),
        .I3(z_r6[5]),
        .I4(z_r6[3]),
        .I5(\qout_r[31]_i_19_n_0 ),
        .O(\qout_r[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[3]_i_1 
       (.I0(\qout_r[6]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[4]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[3]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[3]_i_2 
       (.I0(\qout_r[5]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[3]_i_3_n_0 ),
        .O(\qout_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[3]_i_3 
       (.I0(\qout_r[15]_i_4_n_0 ),
        .I1(\qout_r[7]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[11]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[3]_i_4_n_0 ),
        .O(\qout_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[3]_i_4 
       (.I0(ql_r6[51]),
        .I1(ql_r6[19]),
        .I2(z_r6[4]),
        .I3(ql_r6[35]),
        .I4(z_r6[5]),
        .I5(ql_r6[3]),
        .O(\qout_r[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[4]_i_1 
       (.I0(\qout_r[6]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[4]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[5]_i_2_n_0 ),
        .O(\qout_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[4]_i_2 
       (.I0(\qout_r[16]_i_3_n_0 ),
        .I1(\qout_r[8]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[12]_i_3_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[4]_i_3_n_0 ),
        .O(\qout_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[4]_i_3 
       (.I0(ql_r6[52]),
        .I1(ql_r6[20]),
        .I2(z_r6[4]),
        .I3(ql_r6[36]),
        .I4(z_r6[5]),
        .I5(ql_r6[4]),
        .O(\qout_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[5]_i_1 
       (.I0(\qout_r[8]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[6]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[5]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[5]_i_2 
       (.I0(\qout_r[7]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[5]_i_3_n_0 ),
        .O(\qout_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[5]_i_3 
       (.I0(\qout_r[17]_i_4_n_0 ),
        .I1(\qout_r[9]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[13]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[5]_i_4_n_0 ),
        .O(\qout_r[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[5]_i_4 
       (.I0(ql_r6[53]),
        .I1(ql_r6[21]),
        .I2(z_r6[4]),
        .I3(ql_r6[37]),
        .I4(z_r6[5]),
        .I5(ql_r6[5]),
        .O(\qout_r[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[6]_i_1 
       (.I0(\qout_r[8]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[6]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[7]_i_2_n_0 ),
        .O(\qout_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[6]_i_2 
       (.I0(\qout_r[18]_i_3_n_0 ),
        .I1(\qout_r[10]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[14]_i_3_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[6]_i_3_n_0 ),
        .O(\qout_r[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[6]_i_3 
       (.I0(ql_r6[54]),
        .I1(ql_r6[22]),
        .I2(z_r6[4]),
        .I3(ql_r6[38]),
        .I4(z_r6[5]),
        .I5(ql_r6[6]),
        .O(\qout_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[7]_i_1 
       (.I0(\qout_r[10]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[8]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[7]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[7]_i_2 
       (.I0(\qout_r[9]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[7]_i_3_n_0 ),
        .O(\qout_r[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[7]_i_3 
       (.I0(\qout_r[19]_i_4_n_0 ),
        .I1(\qout_r[11]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[15]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[7]_i_4_n_0 ),
        .O(\qout_r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[7]_i_4 
       (.I0(ql_r6[55]),
        .I1(ql_r6[23]),
        .I2(z_r6[4]),
        .I3(ql_r6[39]),
        .I4(z_r6[5]),
        .I5(ql_r6[7]),
        .O(\qout_r[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \qout_r[8]_i_1 
       (.I0(\qout_r[10]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[8]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(z_r6[0]),
        .I5(\qout_r[9]_i_2_n_0 ),
        .O(\qout_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[8]_i_2 
       (.I0(\qout_r[20]_i_3_n_0 ),
        .I1(\qout_r[12]_i_3_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[16]_i_3_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[8]_i_3_n_0 ),
        .O(\qout_r[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[8]_i_3 
       (.I0(ql_r6[56]),
        .I1(ql_r6[24]),
        .I2(z_r6[4]),
        .I3(ql_r6[40]),
        .I4(z_r6[5]),
        .I5(ql_r6[8]),
        .O(\qout_r[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \qout_r[9]_i_1 
       (.I0(\qout_r[12]_i_2_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[10]_i_2_n_0 ),
        .I3(\qout_r[31]_i_2_n_0 ),
        .I4(\qout_r[9]_i_2_n_0 ),
        .I5(z_r6[0]),
        .O(\qout_r[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \qout_r[9]_i_2 
       (.I0(\qout_r[11]_i_3_n_0 ),
        .I1(z_r6[1]),
        .I2(\qout_r[9]_i_3_n_0 ),
        .O(\qout_r[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[9]_i_3 
       (.I0(\qout_r[21]_i_4_n_0 ),
        .I1(\qout_r[13]_i_4_n_0 ),
        .I2(z_r6[2]),
        .I3(\qout_r[17]_i_4_n_0 ),
        .I4(z_r6[3]),
        .I5(\qout_r[9]_i_4_n_0 ),
        .O(\qout_r[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qout_r[9]_i_4 
       (.I0(ql_r6[57]),
        .I1(ql_r6[25]),
        .I2(z_r6[4]),
        .I3(ql_r6[41]),
        .I4(z_r6[5]),
        .I5(ql_r6[9]),
        .O(\qout_r[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[0]_i_1_n_0 ),
        .Q(qout[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[10]_i_1_n_0 ),
        .Q(qout[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[11]_i_1_n_0 ),
        .Q(qout[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[12]_i_1_n_0 ),
        .Q(qout[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[13]_i_1_n_0 ),
        .Q(qout[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[14]_i_1_n_0 ),
        .Q(qout[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[15]_i_1_n_0 ),
        .Q(qout[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[16]_i_1_n_0 ),
        .Q(qout[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[17]_i_1_n_0 ),
        .Q(qout[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[18]_i_1_n_0 ),
        .Q(qout[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[19]_i_1_n_0 ),
        .Q(qout[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[1]_i_1_n_0 ),
        .Q(qout[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[20]_i_1_n_0 ),
        .Q(qout[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[21]_i_1_n_0 ),
        .Q(qout[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[22]_i_1_n_0 ),
        .Q(qout[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[23]_i_1_n_0 ),
        .Q(qout[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[24]_i_1_n_0 ),
        .Q(qout[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[25]_i_1_n_0 ),
        .Q(qout[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[26]_i_1_n_0 ),
        .Q(qout[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[27]_i_1_n_0 ),
        .Q(qout[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[28]_i_1_n_0 ),
        .Q(qout[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[29]_i_1_n_0 ),
        .Q(qout[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[2]_i_1_n_0 ),
        .Q(qout[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[30]_i_1_n_0 ),
        .Q(qout[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[31]_i_1_n_0 ),
        .Q(qout[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[3]_i_1_n_0 ),
        .Q(qout[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[4]_i_1_n_0 ),
        .Q(qout[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[5]_i_1_n_0 ),
        .Q(qout[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[6]_i_1_n_0 ),
        .Q(qout[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[7]_i_1_n_0 ),
        .Q(qout[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[8]_i_1_n_0 ),
        .Q(qout[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qout_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\qout_r[9]_i_1_n_0 ),
        .Q(qout[9]),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 17x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    qp_r20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,qln2[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_qp_r20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_0_in[33],p_0_in[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_qp_r20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_qp_r20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_qp_r20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_qp_r20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_qp_r20_OVERFLOW_UNCONNECTED),
        .P({qp_r20_n_58,qp_r20_n_59,qp_r20_n_60,qp_r20_n_61,qp_r20_n_62,qp_r20_n_63,qp_r20_n_64,qp_r20_n_65,qp_r20_n_66,qp_r20_n_67,qp_r20_n_68,qp_r20_n_69,qp_r20_n_70,qp_r20_n_71,qp_r20_n_72,qp_r20_n_73,qp_r20_n_74,qp_r20_n_75,qp_r20_n_76,qp_r20_n_77,qp_r20_n_78,qp_r20_n_79,qp_r20_n_80,qp_r20_n_81,qp_r20_n_82,qp_r20_n_83,qp_r20_n_84,qp_r20_n_85,qp_r20_n_86,qp_r20_n_87,qp_r20_n_88,qp_r20_n_89,qp_r20_n_90,qp_r20_n_91,qp_r20_n_92,qp_r20_n_93,qp_r20_n_94,qp_r20_n_95,qp_r20_n_96,qp_r20_n_97,qp_r20_n_98,qp_r20_n_99,qp_r20_n_100,qp_r20_n_101,qp_r20_n_102,qp_r20_n_103,qp_r20_n_104,qp_r20_n_105}),
        .PATTERNBDETECT(NLW_qp_r20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_qp_r20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({qp_r20_n_106,qp_r20_n_107,qp_r20_n_108,qp_r20_n_109,qp_r20_n_110,qp_r20_n_111,qp_r20_n_112,qp_r20_n_113,qp_r20_n_114,qp_r20_n_115,qp_r20_n_116,qp_r20_n_117,qp_r20_n_118,qp_r20_n_119,qp_r20_n_120,qp_r20_n_121,qp_r20_n_122,qp_r20_n_123,qp_r20_n_124,qp_r20_n_125,qp_r20_n_126,qp_r20_n_127,qp_r20_n_128,qp_r20_n_129,qp_r20_n_130,qp_r20_n_131,qp_r20_n_132,qp_r20_n_133,qp_r20_n_134,qp_r20_n_135,qp_r20_n_136,qp_r20_n_137,qp_r20_n_138,qp_r20_n_139,qp_r20_n_140,qp_r20_n_141,qp_r20_n_142,qp_r20_n_143,qp_r20_n_144,qp_r20_n_145,qp_r20_n_146,qp_r20_n_147,qp_r20_n_148,qp_r20_n_149,qp_r20_n_150,qp_r20_n_151,qp_r20_n_152,qp_r20_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_qp_r20_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    qp_r20__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_qp_r20__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,qln2[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_qp_r20__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_qp_r20__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_qp_r20__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
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
        .MULTSIGNOUT(NLW_qp_r20__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_qp_r20__0_OVERFLOW_UNCONNECTED),
        .P({qp_r20__0_n_58,qp_r20__0_n_59,qp_r20__0_n_60,qp_r20__0_n_61,qp_r20__0_n_62,qp_r20__0_n_63,qp_r20__0_n_64,qp_r20__0_n_65,qp_r20__0_n_66,qp_r20__0_n_67,qp_r20__0_n_68,qp_r20__0_n_69,qp_r20__0_n_70,qp_r20__0_n_71,qp_r20__0_n_72,qp_r20__0_n_73,qp_r20__0_n_74,qp_r20__0_n_75,qp_r20__0_n_76,qp_r20__0_n_77,qp_r20__0_n_78,qp_r20__0_n_79,qp_r20__0_n_80,qp_r20__0_n_81,qp_r20__0_n_82,qp_r20__0_n_83,qp_r20__0_n_84,qp_r20__0_n_85,qp_r20__0_n_86,qp_r20__0_n_87,qp_r20__0_n_88,qp_r20__0_n_89,qp_r20__0_n_90,qp_r20__0_n_91,qp_r20__0_n_92,qp_r20__0_n_93,qp_r20__0_n_94,qp_r20__0_n_95,qp_r20__0_n_96,qp_r20__0_n_97,qp_r20__0_n_98,qp_r20__0_n_99,qp_r20__0_n_100,qp_r20__0_n_101,qp_r20__0_n_102,qp_r20__0_n_103,qp_r20__0_n_104,qp_r20__0_n_105}),
        .PATTERNBDETECT(NLW_qp_r20__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_qp_r20__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({qp_r20__0_n_106,qp_r20__0_n_107,qp_r20__0_n_108,qp_r20__0_n_109,qp_r20__0_n_110,qp_r20__0_n_111,qp_r20__0_n_112,qp_r20__0_n_113,qp_r20__0_n_114,qp_r20__0_n_115,qp_r20__0_n_116,qp_r20__0_n_117,qp_r20__0_n_118,qp_r20__0_n_119,qp_r20__0_n_120,qp_r20__0_n_121,qp_r20__0_n_122,qp_r20__0_n_123,qp_r20__0_n_124,qp_r20__0_n_125,qp_r20__0_n_126,qp_r20__0_n_127,qp_r20__0_n_128,qp_r20__0_n_129,qp_r20__0_n_130,qp_r20__0_n_131,qp_r20__0_n_132,qp_r20__0_n_133,qp_r20__0_n_134,qp_r20__0_n_135,qp_r20__0_n_136,qp_r20__0_n_137,qp_r20__0_n_138,qp_r20__0_n_139,qp_r20__0_n_140,qp_r20__0_n_141,qp_r20__0_n_142,qp_r20__0_n_143,qp_r20__0_n_144,qp_r20__0_n_145,qp_r20__0_n_146,qp_r20__0_n_147,qp_r20__0_n_148,qp_r20__0_n_149,qp_r20__0_n_150,qp_r20__0_n_151,qp_r20__0_n_152,qp_r20__0_n_153}),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_qp_r20__0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20__0_i_1
       (.CI(qp_r20__0_i_2_n_0),
        .CO({qp_r20__0_i_1_n_0,qp_r20__0_i_1_n_1,qp_r20__0_i_1_n_2,qp_r20__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_79,fp_mul__2_n_80,fp_mul__2_n_81,fp_mul__2_n_82}),
        .O(p_0_in[13:10]),
        .S({qp_r20__0_i_5_n_0,qp_r20__0_i_6_n_0,qp_r20__0_i_7_n_0,qp_r20__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_10
       (.I0(fp_mul__2_n_84),
        .I1(fp_mul__0_n_101),
        .O(qp_r20__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_11
       (.I0(fp_mul__2_n_85),
        .I1(fp_mul__0_n_102),
        .O(qp_r20__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_12
       (.I0(fp_mul__2_n_86),
        .I1(fp_mul__0_n_103),
        .O(qp_r20__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_13
       (.I0(fp_mul__2_n_87),
        .I1(fp_mul__0_n_104),
        .O(qp_r20__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_14
       (.I0(fp_mul__2_n_88),
        .I1(fp_mul__0_n_105),
        .O(qp_r20__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_15
       (.I0(fp_mul__2_n_89),
        .I1(fp_mul_n_89),
        .O(qp_r20__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_16
       (.I0(fp_mul__2_n_90),
        .I1(fp_mul_n_90),
        .O(qp_r20__0_i_16_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20__0_i_17
       (.CI(qp_r20__0_i_22_n_0),
        .CO({qp_r20__0_i_17_n_0,qp_r20__0_i_17_n_1,qp_r20__0_i_17_n_2,qp_r20__0_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_95,fp_mul__2_n_96,fp_mul__2_n_97,fp_mul__2_n_98}),
        .O(NLW_qp_r20__0_i_17_O_UNCONNECTED[3:0]),
        .S({qp_r20__0_i_23_n_0,qp_r20__0_i_24_n_0,qp_r20__0_i_25_n_0,qp_r20__0_i_26_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_18
       (.I0(fp_mul__2_n_91),
        .I1(fp_mul_n_91),
        .O(qp_r20__0_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_19
       (.I0(fp_mul__2_n_92),
        .I1(fp_mul_n_92),
        .O(qp_r20__0_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20__0_i_2
       (.CI(qp_r20__0_i_3_n_0),
        .CO({qp_r20__0_i_2_n_0,qp_r20__0_i_2_n_1,qp_r20__0_i_2_n_2,qp_r20__0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_83,fp_mul__2_n_84,fp_mul__2_n_85,fp_mul__2_n_86}),
        .O(p_0_in[9:6]),
        .S({qp_r20__0_i_9_n_0,qp_r20__0_i_10_n_0,qp_r20__0_i_11_n_0,qp_r20__0_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_20
       (.I0(fp_mul__2_n_93),
        .I1(fp_mul_n_93),
        .O(qp_r20__0_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_21
       (.I0(fp_mul__2_n_94),
        .I1(fp_mul_n_94),
        .O(qp_r20__0_i_21_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20__0_i_22
       (.CI(qp_r20__0_i_27_n_0),
        .CO({qp_r20__0_i_22_n_0,qp_r20__0_i_22_n_1,qp_r20__0_i_22_n_2,qp_r20__0_i_22_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_99,fp_mul__2_n_100,fp_mul__2_n_101,fp_mul__2_n_102}),
        .O(NLW_qp_r20__0_i_22_O_UNCONNECTED[3:0]),
        .S({qp_r20__0_i_28_n_0,qp_r20__0_i_29_n_0,qp_r20__0_i_30_n_0,qp_r20__0_i_31_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_23
       (.I0(fp_mul__2_n_95),
        .I1(fp_mul_n_95),
        .O(qp_r20__0_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_24
       (.I0(fp_mul__2_n_96),
        .I1(fp_mul_n_96),
        .O(qp_r20__0_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_25
       (.I0(fp_mul__2_n_97),
        .I1(fp_mul_n_97),
        .O(qp_r20__0_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_26
       (.I0(fp_mul__2_n_98),
        .I1(fp_mul_n_98),
        .O(qp_r20__0_i_26_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20__0_i_27
       (.CI(1'b0),
        .CO({qp_r20__0_i_27_n_0,qp_r20__0_i_27_n_1,qp_r20__0_i_27_n_2,qp_r20__0_i_27_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_103,fp_mul__2_n_104,fp_mul__2_n_105,1'b0}),
        .O(NLW_qp_r20__0_i_27_O_UNCONNECTED[3:0]),
        .S({qp_r20__0_i_32_n_0,qp_r20__0_i_33_n_0,qp_r20__0_i_34_n_0,fp_mul__1_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_28
       (.I0(fp_mul__2_n_99),
        .I1(fp_mul_n_99),
        .O(qp_r20__0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_29
       (.I0(fp_mul__2_n_100),
        .I1(fp_mul_n_100),
        .O(qp_r20__0_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20__0_i_3
       (.CI(qp_r20__0_i_4_n_0),
        .CO({qp_r20__0_i_3_n_0,qp_r20__0_i_3_n_1,qp_r20__0_i_3_n_2,qp_r20__0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_87,fp_mul__2_n_88,fp_mul__2_n_89,fp_mul__2_n_90}),
        .O(p_0_in[5:2]),
        .S({qp_r20__0_i_13_n_0,qp_r20__0_i_14_n_0,qp_r20__0_i_15_n_0,qp_r20__0_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_30
       (.I0(fp_mul__2_n_101),
        .I1(fp_mul_n_101),
        .O(qp_r20__0_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_31
       (.I0(fp_mul__2_n_102),
        .I1(fp_mul_n_102),
        .O(qp_r20__0_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_32
       (.I0(fp_mul__2_n_103),
        .I1(fp_mul_n_103),
        .O(qp_r20__0_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_33
       (.I0(fp_mul__2_n_104),
        .I1(fp_mul_n_104),
        .O(qp_r20__0_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_34
       (.I0(fp_mul__2_n_105),
        .I1(fp_mul_n_105),
        .O(qp_r20__0_i_34_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20__0_i_4
       (.CI(qp_r20__0_i_17_n_0),
        .CO({qp_r20__0_i_4_n_0,qp_r20__0_i_4_n_1,qp_r20__0_i_4_n_2,qp_r20__0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_91,fp_mul__2_n_92,fp_mul__2_n_93,fp_mul__2_n_94}),
        .O({p_0_in[1:0],NLW_qp_r20__0_i_4_O_UNCONNECTED[1:0]}),
        .S({qp_r20__0_i_18_n_0,qp_r20__0_i_19_n_0,qp_r20__0_i_20_n_0,qp_r20__0_i_21_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_5
       (.I0(fp_mul__2_n_79),
        .I1(fp_mul__0_n_96),
        .O(qp_r20__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_6
       (.I0(fp_mul__2_n_80),
        .I1(fp_mul__0_n_97),
        .O(qp_r20__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_7
       (.I0(fp_mul__2_n_81),
        .I1(fp_mul__0_n_98),
        .O(qp_r20__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_8
       (.I0(fp_mul__2_n_82),
        .I1(fp_mul__0_n_99),
        .O(qp_r20__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20__0_i_9
       (.I0(fp_mul__2_n_83),
        .I1(fp_mul__0_n_100),
        .O(qp_r20__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20_i_1
       (.CI(qp_r20_i_2_n_0),
        .CO({NLW_qp_r20_i_1_CO_UNCONNECTED[3],qp_r20_i_1_n_1,qp_r20_i_1_n_2,qp_r20_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,fp_mul__2_n_60,fp_mul__2_n_61,fp_mul__2_n_62}),
        .O(p_0_in[33:30]),
        .S({qp_r20_i_6_n_0,qp_r20_i_7_n_0,qp_r20_i_8_n_0,qp_r20_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_10
       (.I0(fp_mul__2_n_63),
        .I1(fp_mul__0_n_80),
        .O(qp_r20_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_11
       (.I0(fp_mul__2_n_64),
        .I1(fp_mul__0_n_81),
        .O(qp_r20_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_12
       (.I0(fp_mul__2_n_65),
        .I1(fp_mul__0_n_82),
        .O(qp_r20_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_13
       (.I0(fp_mul__2_n_66),
        .I1(fp_mul__0_n_83),
        .O(qp_r20_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_14
       (.I0(fp_mul__2_n_67),
        .I1(fp_mul__0_n_84),
        .O(qp_r20_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_15
       (.I0(fp_mul__2_n_68),
        .I1(fp_mul__0_n_85),
        .O(qp_r20_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_16
       (.I0(fp_mul__2_n_69),
        .I1(fp_mul__0_n_86),
        .O(qp_r20_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_17
       (.I0(fp_mul__2_n_70),
        .I1(fp_mul__0_n_87),
        .O(qp_r20_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_18
       (.I0(fp_mul__2_n_71),
        .I1(fp_mul__0_n_88),
        .O(qp_r20_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_19
       (.I0(fp_mul__2_n_72),
        .I1(fp_mul__0_n_89),
        .O(qp_r20_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20_i_2
       (.CI(qp_r20_i_3_n_0),
        .CO({qp_r20_i_2_n_0,qp_r20_i_2_n_1,qp_r20_i_2_n_2,qp_r20_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_63,fp_mul__2_n_64,fp_mul__2_n_65,fp_mul__2_n_66}),
        .O(p_0_in[29:26]),
        .S({qp_r20_i_10_n_0,qp_r20_i_11_n_0,qp_r20_i_12_n_0,qp_r20_i_13_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_20
       (.I0(fp_mul__2_n_73),
        .I1(fp_mul__0_n_90),
        .O(qp_r20_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_21
       (.I0(fp_mul__2_n_74),
        .I1(fp_mul__0_n_91),
        .O(qp_r20_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_22
       (.I0(fp_mul__2_n_75),
        .I1(fp_mul__0_n_92),
        .O(qp_r20_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_23
       (.I0(fp_mul__2_n_76),
        .I1(fp_mul__0_n_93),
        .O(qp_r20_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_24
       (.I0(fp_mul__2_n_77),
        .I1(fp_mul__0_n_94),
        .O(qp_r20_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_25
       (.I0(fp_mul__2_n_78),
        .I1(fp_mul__0_n_95),
        .O(qp_r20_i_25_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20_i_3
       (.CI(qp_r20_i_4_n_0),
        .CO({qp_r20_i_3_n_0,qp_r20_i_3_n_1,qp_r20_i_3_n_2,qp_r20_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_67,fp_mul__2_n_68,fp_mul__2_n_69,fp_mul__2_n_70}),
        .O(p_0_in[25:22]),
        .S({qp_r20_i_14_n_0,qp_r20_i_15_n_0,qp_r20_i_16_n_0,qp_r20_i_17_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20_i_4
       (.CI(qp_r20_i_5_n_0),
        .CO({qp_r20_i_4_n_0,qp_r20_i_4_n_1,qp_r20_i_4_n_2,qp_r20_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_71,fp_mul__2_n_72,fp_mul__2_n_73,fp_mul__2_n_74}),
        .O(p_0_in[21:18]),
        .S({qp_r20_i_18_n_0,qp_r20_i_19_n_0,qp_r20_i_20_n_0,qp_r20_i_21_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 qp_r20_i_5
       (.CI(qp_r20__0_i_1_n_0),
        .CO({qp_r20_i_5_n_0,qp_r20_i_5_n_1,qp_r20_i_5_n_2,qp_r20_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({fp_mul__2_n_75,fp_mul__2_n_76,fp_mul__2_n_77,fp_mul__2_n_78}),
        .O(p_0_in[17:14]),
        .S({qp_r20_i_22_n_0,qp_r20_i_23_n_0,qp_r20_i_24_n_0,qp_r20_i_25_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_6
       (.I0(fp_mul__2_n_59),
        .I1(fp_mul__0_n_76),
        .O(qp_r20_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_7
       (.I0(fp_mul__2_n_60),
        .I1(fp_mul__0_n_77),
        .O(qp_r20_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_8
       (.I0(fp_mul__2_n_61),
        .I1(fp_mul__0_n_78),
        .O(qp_r20_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    qp_r20_i_9
       (.I0(fp_mul__2_n_62),
        .I1(fp_mul__0_n_79),
        .O(qp_r20_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 17x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    qp_r2_reg
       (.A({p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33],p_0_in[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_qp_r2_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({qln2[31],qln2[31],qln2[31],qln2[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_qp_r2_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_qp_r2_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_qp_r2_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_qp_r2_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_qp_r2_reg_OVERFLOW_UNCONNECTED),
        .P({qp_r2_reg_n_58,qp_r2_reg_n_59,qp_r2_reg_n_60,qp_r2_reg_n_61,qp_r2_reg_n_62,qp_r2_reg_n_63,qp_r2_reg_n_64,qp_r2_reg_n_65,qp_r2_reg_n_66,qp_r2_reg_n_67,qp_r2_reg_n_68,qp_r2_reg_n_69,qp_r2_reg_n_70,qp_r2_reg_n_71,qp_r2_reg_n_72,qp_r2_reg_n_73,qp_r2_reg_n_74,qp_r2_reg_n_75,qp_r2_reg_n_76,qp_r2_reg_n_77,qp_r2_reg_n_78,qp_r2_reg_n_79,qp_r2_reg_n_80,qp_r2_reg_n_81,qp_r2_reg_n_82,qp_r2_reg_n_83,qp_r2_reg_n_84,qp_r2_reg_n_85,qp_r2_reg_n_86,qp_r2_reg_n_87,qp_r2_reg_n_88,qp_r2_reg_n_89,qp_r2_reg_n_90,qp_r2_reg_n_91,qp_r2_reg_n_92,qp_r2_reg_n_93,qp_r2_reg_n_94,qp_r2_reg_n_95,qp_r2_reg_n_96,qp_r2_reg_n_97,qp_r2_reg_n_98,qp_r2_reg_n_99,qp_r2_reg_n_100,qp_r2_reg_n_101,qp_r2_reg_n_102,qp_r2_reg_n_103,qp_r2_reg_n_104,qp_r2_reg_n_105}),
        .PATTERNBDETECT(NLW_qp_r2_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_qp_r2_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({qp_r20_n_106,qp_r20_n_107,qp_r20_n_108,qp_r20_n_109,qp_r20_n_110,qp_r20_n_111,qp_r20_n_112,qp_r20_n_113,qp_r20_n_114,qp_r20_n_115,qp_r20_n_116,qp_r20_n_117,qp_r20_n_118,qp_r20_n_119,qp_r20_n_120,qp_r20_n_121,qp_r20_n_122,qp_r20_n_123,qp_r20_n_124,qp_r20_n_125,qp_r20_n_126,qp_r20_n_127,qp_r20_n_128,qp_r20_n_129,qp_r20_n_130,qp_r20_n_131,qp_r20_n_132,qp_r20_n_133,qp_r20_n_134,qp_r20_n_135,qp_r20_n_136,qp_r20_n_137,qp_r20_n_138,qp_r20_n_139,qp_r20_n_140,qp_r20_n_141,qp_r20_n_142,qp_r20_n_143,qp_r20_n_144,qp_r20_n_145,qp_r20_n_146,qp_r20_n_147,qp_r20_n_148,qp_r20_n_149,qp_r20_n_150,qp_r20_n_151,qp_r20_n_152,qp_r20_n_153}),
        .PCOUT(NLW_qp_r2_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst),
        .UNDERFLOW(NLW_qp_r2_reg_UNDERFLOW_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_105),
        .Q(\qp_r2_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[0]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_105),
        .Q(\qp_r2_reg[0]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_95),
        .Q(\qp_r2_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[10]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_95),
        .Q(\qp_r2_reg[10]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_94),
        .Q(\qp_r2_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[11]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_94),
        .Q(\qp_r2_reg[11]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_93),
        .Q(\qp_r2_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[12]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_93),
        .Q(\qp_r2_reg[12]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_92),
        .Q(\qp_r2_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[13]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_92),
        .Q(\qp_r2_reg[13]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_91),
        .Q(\qp_r2_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[14]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_91),
        .Q(\qp_r2_reg[14]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_90),
        .Q(\qp_r2_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[15]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_90),
        .Q(\qp_r2_reg[15]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_89),
        .Q(\qp_r2_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[16]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_89),
        .Q(\qp_r2_reg[16]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_104),
        .Q(\qp_r2_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[1]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_104),
        .Q(\qp_r2_reg[1]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_103),
        .Q(\qp_r2_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[2]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_103),
        .Q(\qp_r2_reg[2]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_102),
        .Q(\qp_r2_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[3]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_102),
        .Q(\qp_r2_reg[3]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_101),
        .Q(\qp_r2_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[4]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_101),
        .Q(\qp_r2_reg[4]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_100),
        .Q(\qp_r2_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[5]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_100),
        .Q(\qp_r2_reg[5]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_99),
        .Q(\qp_r2_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[6]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_99),
        .Q(\qp_r2_reg[6]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_98),
        .Q(\qp_r2_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[7]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_98),
        .Q(\qp_r2_reg[7]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_97),
        .Q(\qp_r2_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[8]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_97),
        .Q(\qp_r2_reg[8]__0_n_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20_n_96),
        .Q(\qp_r2_reg_n_0_[9] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r2_reg[9]__0 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r20__0_n_96),
        .Q(\qp_r2_reg[9]__0_n_0 ),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    qp_r2_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_qp_r2_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({qln2[31],qln2[31],qln2[31],qln2[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_qp_r2_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_qp_r2_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_qp_r2_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_qp_r2_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_qp_r2_reg__0_OVERFLOW_UNCONNECTED),
        .P({qp_r2_reg__0_n_58,qp_r2_reg__0_n_59,qp_r2_reg__0_n_60,qp_r2_reg__0_n_61,qp_r2_reg__0_n_62,qp_r2_reg__0_n_63,qp_r2_reg__0_n_64,qp_r2_reg__0_n_65,qp_r2_reg__0_n_66,qp_r2_reg__0_n_67,qp_r2_reg__0_n_68,qp_r2_reg__0_n_69,qp_r2_reg__0_n_70,qp_r2_reg__0_n_71,qp_r2_reg__0_n_72,qp_r2_reg__0_n_73,qp_r2_reg__0_n_74,qp_r2_reg__0_n_75,qp_r2_reg__0_n_76,qp_r2_reg__0_n_77,qp_r2_reg__0_n_78,qp_r2_reg__0_n_79,qp_r2_reg__0_n_80,qp_r2_reg__0_n_81,qp_r2_reg__0_n_82,qp_r2_reg__0_n_83,qp_r2_reg__0_n_84,qp_r2_reg__0_n_85,qp_r2_reg__0_n_86,qp_r2_reg__0_n_87,qp_r2_reg__0_n_88,qp_r2_reg__0_n_89,qp_r2_reg__0_n_90,qp_r2_reg__0_n_91,qp_r2_reg__0_n_92,qp_r2_reg__0_n_93,qp_r2_reg__0_n_94,qp_r2_reg__0_n_95,qp_r2_reg__0_n_96,qp_r2_reg__0_n_97,qp_r2_reg__0_n_98,qp_r2_reg__0_n_99,qp_r2_reg__0_n_100,qp_r2_reg__0_n_101,qp_r2_reg__0_n_102,qp_r2_reg__0_n_103,qp_r2_reg__0_n_104,qp_r2_reg__0_n_105}),
        .PATTERNBDETECT(NLW_qp_r2_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_qp_r2_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({qp_r20__0_n_106,qp_r20__0_n_107,qp_r20__0_n_108,qp_r20__0_n_109,qp_r20__0_n_110,qp_r20__0_n_111,qp_r20__0_n_112,qp_r20__0_n_113,qp_r20__0_n_114,qp_r20__0_n_115,qp_r20__0_n_116,qp_r20__0_n_117,qp_r20__0_n_118,qp_r20__0_n_119,qp_r20__0_n_120,qp_r20__0_n_121,qp_r20__0_n_122,qp_r20__0_n_123,qp_r20__0_n_124,qp_r20__0_n_125,qp_r20__0_n_126,qp_r20__0_n_127,qp_r20__0_n_128,qp_r20__0_n_129,qp_r20__0_n_130,qp_r20__0_n_131,qp_r20__0_n_132,qp_r20__0_n_133,qp_r20__0_n_134,qp_r20__0_n_135,qp_r20__0_n_136,qp_r20__0_n_137,qp_r20__0_n_138,qp_r20__0_n_139,qp_r20__0_n_140,qp_r20__0_n_141,qp_r20__0_n_142,qp_r20__0_n_143,qp_r20__0_n_144,qp_r20__0_n_145,qp_r20__0_n_146,qp_r20__0_n_147,qp_r20__0_n_148,qp_r20__0_n_149,qp_r20__0_n_150,qp_r20__0_n_151,qp_r20__0_n_152,qp_r20__0_n_153}),
        .PCOUT(NLW_qp_r2_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst),
        .UNDERFLOW(NLW_qp_r2_reg__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[11]_i_2 
       (.I0(qin_r2[11]),
        .I1(\qp_r2_reg[11]__0_n_0 ),
        .O(\qp_r3[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[11]_i_3 
       (.I0(qin_r2[10]),
        .I1(\qp_r2_reg[10]__0_n_0 ),
        .O(\qp_r3[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[11]_i_4 
       (.I0(qin_r2[9]),
        .I1(\qp_r2_reg[9]__0_n_0 ),
        .O(\qp_r3[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[11]_i_5 
       (.I0(qin_r2[8]),
        .I1(\qp_r2_reg[8]__0_n_0 ),
        .O(\qp_r3[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[15]_i_2 
       (.I0(qin_r2[15]),
        .I1(\qp_r2_reg[15]__0_n_0 ),
        .O(\qp_r3[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[15]_i_3 
       (.I0(qin_r2[14]),
        .I1(\qp_r2_reg[14]__0_n_0 ),
        .O(\qp_r3[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[15]_i_4 
       (.I0(qin_r2[13]),
        .I1(\qp_r2_reg[13]__0_n_0 ),
        .O(\qp_r3[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[15]_i_5 
       (.I0(qin_r2[12]),
        .I1(\qp_r2_reg[12]__0_n_0 ),
        .O(\qp_r3[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[19]_i_2 
       (.I0(qin_r2[19]),
        .I1(qp_r2_reg__1[19]),
        .O(\qp_r3[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[19]_i_3 
       (.I0(qin_r2[18]),
        .I1(qp_r2_reg__1[18]),
        .O(\qp_r3[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[19]_i_4 
       (.I0(qin_r2[17]),
        .I1(qp_r2_reg__1[17]),
        .O(\qp_r3[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[19]_i_5 
       (.I0(qin_r2[16]),
        .I1(qp_r2_reg__1[16]),
        .O(\qp_r3[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[19]_i_7 
       (.I0(qp_r2_reg__0_n_103),
        .I1(\qp_r2_reg_n_0_[2] ),
        .O(\qp_r3[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[19]_i_8 
       (.I0(qp_r2_reg__0_n_104),
        .I1(\qp_r2_reg_n_0_[1] ),
        .O(\qp_r3[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[19]_i_9 
       (.I0(qp_r2_reg__0_n_105),
        .I1(\qp_r2_reg_n_0_[0] ),
        .O(\qp_r3[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[23]_i_10 
       (.I0(qp_r2_reg__0_n_102),
        .I1(\qp_r2_reg_n_0_[3] ),
        .O(\qp_r3[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[23]_i_2 
       (.I0(qin_r2[23]),
        .I1(qp_r2_reg__1[23]),
        .O(\qp_r3[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[23]_i_3 
       (.I0(qin_r2[22]),
        .I1(qp_r2_reg__1[22]),
        .O(\qp_r3[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[23]_i_4 
       (.I0(qin_r2[21]),
        .I1(qp_r2_reg__1[21]),
        .O(\qp_r3[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[23]_i_5 
       (.I0(qin_r2[20]),
        .I1(qp_r2_reg__1[20]),
        .O(\qp_r3[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[23]_i_7 
       (.I0(qp_r2_reg__0_n_99),
        .I1(\qp_r2_reg_n_0_[6] ),
        .O(\qp_r3[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[23]_i_8 
       (.I0(qp_r2_reg__0_n_100),
        .I1(\qp_r2_reg_n_0_[5] ),
        .O(\qp_r3[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[23]_i_9 
       (.I0(qp_r2_reg__0_n_101),
        .I1(\qp_r2_reg_n_0_[4] ),
        .O(\qp_r3[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[27]_i_2 
       (.I0(qin_r2[27]),
        .I1(qp_r2_reg__1[27]),
        .O(\qp_r3[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[27]_i_3 
       (.I0(qin_r2[26]),
        .I1(qp_r2_reg__1[26]),
        .O(\qp_r3[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[27]_i_4 
       (.I0(qin_r2[25]),
        .I1(qp_r2_reg__1[25]),
        .O(\qp_r3[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[27]_i_5 
       (.I0(qin_r2[24]),
        .I1(qp_r2_reg__1[24]),
        .O(\qp_r3[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_10 
       (.I0(qp_r2_reg__0_n_93),
        .I1(\qp_r2_reg_n_0_[12] ),
        .O(\qp_r3[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_11 
       (.I0(qp_r2_reg__0_n_94),
        .I1(\qp_r2_reg_n_0_[11] ),
        .O(\qp_r3[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_12 
       (.I0(qp_r2_reg__0_n_95),
        .I1(\qp_r2_reg_n_0_[10] ),
        .O(\qp_r3[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_13 
       (.I0(qp_r2_reg__0_n_96),
        .I1(\qp_r2_reg_n_0_[9] ),
        .O(\qp_r3[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_14 
       (.I0(qp_r2_reg__0_n_97),
        .I1(\qp_r2_reg_n_0_[8] ),
        .O(\qp_r3[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_15 
       (.I0(qp_r2_reg__0_n_98),
        .I1(\qp_r2_reg_n_0_[7] ),
        .O(\qp_r3[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[31]_i_3 
       (.I0(qp_r2_reg__1[31]),
        .I1(qin_r2[31]),
        .O(\qp_r3[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[31]_i_4 
       (.I0(qin_r2[30]),
        .I1(qp_r2_reg__1[30]),
        .O(\qp_r3[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[31]_i_5 
       (.I0(qin_r2[29]),
        .I1(qp_r2_reg__1[29]),
        .O(\qp_r3[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[31]_i_6 
       (.I0(qin_r2[28]),
        .I1(qp_r2_reg__1[28]),
        .O(\qp_r3[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_8 
       (.I0(qp_r2_reg__0_n_91),
        .I1(\qp_r2_reg_n_0_[14] ),
        .O(\qp_r3[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[31]_i_9 
       (.I0(qp_r2_reg__0_n_92),
        .I1(\qp_r2_reg_n_0_[13] ),
        .O(\qp_r3[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[35]_i_10 
       (.I0(qp_r2_reg__0_n_90),
        .I1(\qp_r2_reg_n_0_[15] ),
        .O(\qp_r3[35]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[35]_i_3 
       (.I0(qp_r2_reg__1[34]),
        .I1(qp_r2_reg__1[35]),
        .O(\qp_r3[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[35]_i_4 
       (.I0(qp_r2_reg__1[33]),
        .I1(qp_r2_reg__1[34]),
        .O(\qp_r3[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[35]_i_5 
       (.I0(qp_r2_reg__1[32]),
        .I1(qp_r2_reg__1[33]),
        .O(\qp_r3[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[35]_i_6 
       (.I0(qp_r2_reg__1[31]),
        .I1(qp_r2_reg__1[32]),
        .O(\qp_r3[35]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[35]_i_7 
       (.I0(qp_r2_reg__0_n_87),
        .I1(qp_r2_reg_n_104),
        .O(\qp_r3[35]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[35]_i_8 
       (.I0(qp_r2_reg__0_n_88),
        .I1(qp_r2_reg_n_105),
        .O(\qp_r3[35]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[35]_i_9 
       (.I0(qp_r2_reg__0_n_89),
        .I1(\qp_r2_reg_n_0_[16] ),
        .O(\qp_r3[35]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[39]_i_10 
       (.I0(qp_r2_reg__0_n_86),
        .I1(qp_r2_reg_n_103),
        .O(\qp_r3[39]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[39]_i_3 
       (.I0(qp_r2_reg__1[38]),
        .I1(qp_r2_reg__1[39]),
        .O(\qp_r3[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[39]_i_4 
       (.I0(qp_r2_reg__1[37]),
        .I1(qp_r2_reg__1[38]),
        .O(\qp_r3[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[39]_i_5 
       (.I0(qp_r2_reg__1[36]),
        .I1(qp_r2_reg__1[37]),
        .O(\qp_r3[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[39]_i_6 
       (.I0(qp_r2_reg__1[35]),
        .I1(qp_r2_reg__1[36]),
        .O(\qp_r3[39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[39]_i_7 
       (.I0(qp_r2_reg__0_n_83),
        .I1(qp_r2_reg_n_100),
        .O(\qp_r3[39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[39]_i_8 
       (.I0(qp_r2_reg__0_n_84),
        .I1(qp_r2_reg_n_101),
        .O(\qp_r3[39]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[39]_i_9 
       (.I0(qp_r2_reg__0_n_85),
        .I1(qp_r2_reg_n_102),
        .O(\qp_r3[39]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[3]_i_2 
       (.I0(qin_r2[3]),
        .I1(\qp_r2_reg[3]__0_n_0 ),
        .O(\qp_r3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[3]_i_3 
       (.I0(qin_r2[2]),
        .I1(\qp_r2_reg[2]__0_n_0 ),
        .O(\qp_r3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[3]_i_4 
       (.I0(qin_r2[1]),
        .I1(\qp_r2_reg[1]__0_n_0 ),
        .O(\qp_r3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[3]_i_5 
       (.I0(qin_r2[0]),
        .I1(\qp_r2_reg[0]__0_n_0 ),
        .O(\qp_r3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[43]_i_10 
       (.I0(qp_r2_reg__0_n_82),
        .I1(qp_r2_reg_n_99),
        .O(\qp_r3[43]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[43]_i_3 
       (.I0(qp_r2_reg__1[42]),
        .I1(qp_r2_reg__1[43]),
        .O(\qp_r3[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[43]_i_4 
       (.I0(qp_r2_reg__1[41]),
        .I1(qp_r2_reg__1[42]),
        .O(\qp_r3[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[43]_i_5 
       (.I0(qp_r2_reg__1[40]),
        .I1(qp_r2_reg__1[41]),
        .O(\qp_r3[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[43]_i_6 
       (.I0(qp_r2_reg__1[39]),
        .I1(qp_r2_reg__1[40]),
        .O(\qp_r3[43]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[43]_i_7 
       (.I0(qp_r2_reg__0_n_79),
        .I1(qp_r2_reg_n_96),
        .O(\qp_r3[43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[43]_i_8 
       (.I0(qp_r2_reg__0_n_80),
        .I1(qp_r2_reg_n_97),
        .O(\qp_r3[43]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[43]_i_9 
       (.I0(qp_r2_reg__0_n_81),
        .I1(qp_r2_reg_n_98),
        .O(\qp_r3[43]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[47]_i_10 
       (.I0(qp_r2_reg__0_n_78),
        .I1(qp_r2_reg_n_95),
        .O(\qp_r3[47]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[47]_i_3 
       (.I0(qp_r2_reg__1[46]),
        .I1(qp_r2_reg__1[47]),
        .O(\qp_r3[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[47]_i_4 
       (.I0(qp_r2_reg__1[45]),
        .I1(qp_r2_reg__1[46]),
        .O(\qp_r3[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[47]_i_5 
       (.I0(qp_r2_reg__1[44]),
        .I1(qp_r2_reg__1[45]),
        .O(\qp_r3[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[47]_i_6 
       (.I0(qp_r2_reg__1[43]),
        .I1(qp_r2_reg__1[44]),
        .O(\qp_r3[47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[47]_i_7 
       (.I0(qp_r2_reg__0_n_75),
        .I1(qp_r2_reg_n_92),
        .O(\qp_r3[47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[47]_i_8 
       (.I0(qp_r2_reg__0_n_76),
        .I1(qp_r2_reg_n_93),
        .O(\qp_r3[47]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[47]_i_9 
       (.I0(qp_r2_reg__0_n_77),
        .I1(qp_r2_reg_n_94),
        .O(\qp_r3[47]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[51]_i_10 
       (.I0(qp_r2_reg__0_n_74),
        .I1(qp_r2_reg_n_91),
        .O(\qp_r3[51]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[51]_i_3 
       (.I0(qp_r2_reg__1[50]),
        .I1(qp_r2_reg__1[51]),
        .O(\qp_r3[51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[51]_i_4 
       (.I0(qp_r2_reg__1[49]),
        .I1(qp_r2_reg__1[50]),
        .O(\qp_r3[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[51]_i_5 
       (.I0(qp_r2_reg__1[48]),
        .I1(qp_r2_reg__1[49]),
        .O(\qp_r3[51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[51]_i_6 
       (.I0(qp_r2_reg__1[47]),
        .I1(qp_r2_reg__1[48]),
        .O(\qp_r3[51]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[51]_i_7 
       (.I0(qp_r2_reg__0_n_71),
        .I1(qp_r2_reg_n_88),
        .O(\qp_r3[51]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[51]_i_8 
       (.I0(qp_r2_reg__0_n_72),
        .I1(qp_r2_reg_n_89),
        .O(\qp_r3[51]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[51]_i_9 
       (.I0(qp_r2_reg__0_n_73),
        .I1(qp_r2_reg_n_90),
        .O(\qp_r3[51]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[55]_i_10 
       (.I0(qp_r2_reg__0_n_70),
        .I1(qp_r2_reg_n_87),
        .O(\qp_r3[55]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[55]_i_3 
       (.I0(qp_r2_reg__1[54]),
        .I1(qp_r2_reg__1[55]),
        .O(\qp_r3[55]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[55]_i_4 
       (.I0(qp_r2_reg__1[53]),
        .I1(qp_r2_reg__1[54]),
        .O(\qp_r3[55]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[55]_i_5 
       (.I0(qp_r2_reg__1[52]),
        .I1(qp_r2_reg__1[53]),
        .O(\qp_r3[55]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[55]_i_6 
       (.I0(qp_r2_reg__1[51]),
        .I1(qp_r2_reg__1[52]),
        .O(\qp_r3[55]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[55]_i_7 
       (.I0(qp_r2_reg__0_n_67),
        .I1(qp_r2_reg_n_84),
        .O(\qp_r3[55]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[55]_i_8 
       (.I0(qp_r2_reg__0_n_68),
        .I1(qp_r2_reg_n_85),
        .O(\qp_r3[55]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[55]_i_9 
       (.I0(qp_r2_reg__0_n_69),
        .I1(qp_r2_reg_n_86),
        .O(\qp_r3[55]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[59]_i_10 
       (.I0(qp_r2_reg__0_n_66),
        .I1(qp_r2_reg_n_83),
        .O(\qp_r3[59]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[59]_i_3 
       (.I0(qp_r2_reg__1[58]),
        .I1(qp_r2_reg__1[59]),
        .O(\qp_r3[59]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[59]_i_4 
       (.I0(qp_r2_reg__1[57]),
        .I1(qp_r2_reg__1[58]),
        .O(\qp_r3[59]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[59]_i_5 
       (.I0(qp_r2_reg__1[56]),
        .I1(qp_r2_reg__1[57]),
        .O(\qp_r3[59]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[59]_i_6 
       (.I0(qp_r2_reg__1[55]),
        .I1(qp_r2_reg__1[56]),
        .O(\qp_r3[59]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[59]_i_7 
       (.I0(qp_r2_reg__0_n_63),
        .I1(qp_r2_reg_n_80),
        .O(\qp_r3[59]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[59]_i_8 
       (.I0(qp_r2_reg__0_n_64),
        .I1(qp_r2_reg_n_81),
        .O(\qp_r3[59]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[59]_i_9 
       (.I0(qp_r2_reg__0_n_65),
        .I1(qp_r2_reg_n_82),
        .O(\qp_r3[59]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[63]_i_10 
       (.I0(qp_r2_reg__0_n_62),
        .I1(qp_r2_reg_n_79),
        .O(\qp_r3[63]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[63]_i_3 
       (.I0(qp_r2_reg__1[62]),
        .I1(qp_r2_reg__1[63]),
        .O(\qp_r3[63]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[63]_i_4 
       (.I0(qp_r2_reg__1[61]),
        .I1(qp_r2_reg__1[62]),
        .O(\qp_r3[63]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[63]_i_5 
       (.I0(qp_r2_reg__1[60]),
        .I1(qp_r2_reg__1[61]),
        .O(\qp_r3[63]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[63]_i_6 
       (.I0(qp_r2_reg__1[59]),
        .I1(qp_r2_reg__1[60]),
        .O(\qp_r3[63]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[63]_i_7 
       (.I0(qp_r2_reg__0_n_59),
        .I1(qp_r2_reg_n_76),
        .O(\qp_r3[63]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[63]_i_8 
       (.I0(qp_r2_reg__0_n_60),
        .I1(qp_r2_reg_n_77),
        .O(\qp_r3[63]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \qp_r3[63]_i_9 
       (.I0(qp_r2_reg__0_n_61),
        .I1(qp_r2_reg_n_78),
        .O(\qp_r3[63]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[7]_i_2 
       (.I0(qin_r2[7]),
        .I1(\qp_r2_reg[7]__0_n_0 ),
        .O(\qp_r3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[7]_i_3 
       (.I0(qin_r2[6]),
        .I1(\qp_r2_reg[6]__0_n_0 ),
        .O(\qp_r3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[7]_i_4 
       (.I0(qin_r2[5]),
        .I1(\qp_r2_reg[5]__0_n_0 ),
        .O(\qp_r3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \qp_r3[7]_i_5 
       (.I0(qin_r2[4]),
        .I1(\qp_r2_reg[4]__0_n_0 ),
        .O(\qp_r3[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[0]),
        .Q(qp_r3[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[10]),
        .Q(qp_r3[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[11]),
        .Q(qp_r3[11]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[11]_i_1 
       (.CI(\qp_r3_reg[7]_i_1_n_0 ),
        .CO({\qp_r3_reg[11]_i_1_n_0 ,\qp_r3_reg[11]_i_1_n_1 ,\qp_r3_reg[11]_i_1_n_2 ,\qp_r3_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qin_r2[11:8]),
        .O(qp_r30[11:8]),
        .S({\qp_r3[11]_i_2_n_0 ,\qp_r3[11]_i_3_n_0 ,\qp_r3[11]_i_4_n_0 ,\qp_r3[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[12]),
        .Q(qp_r3[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[13]),
        .Q(qp_r3[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[14]),
        .Q(qp_r3[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[15]),
        .Q(qp_r3[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[15]_i_1 
       (.CI(\qp_r3_reg[11]_i_1_n_0 ),
        .CO({\qp_r3_reg[15]_i_1_n_0 ,\qp_r3_reg[15]_i_1_n_1 ,\qp_r3_reg[15]_i_1_n_2 ,\qp_r3_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qin_r2[15:12]),
        .O(qp_r30[15:12]),
        .S({\qp_r3[15]_i_2_n_0 ,\qp_r3[15]_i_3_n_0 ,\qp_r3[15]_i_4_n_0 ,\qp_r3[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[16]),
        .Q(qp_r3[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[17]),
        .Q(qp_r3[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[18]),
        .Q(qp_r3[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[19]),
        .Q(qp_r3[19]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[19]_i_1 
       (.CI(\qp_r3_reg[15]_i_1_n_0 ),
        .CO({\qp_r3_reg[19]_i_1_n_0 ,\qp_r3_reg[19]_i_1_n_1 ,\qp_r3_reg[19]_i_1_n_2 ,\qp_r3_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qin_r2[19:16]),
        .O(qp_r30[19:16]),
        .S({\qp_r3[19]_i_2_n_0 ,\qp_r3[19]_i_3_n_0 ,\qp_r3[19]_i_4_n_0 ,\qp_r3[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[19]_i_6 
       (.CI(1'b0),
        .CO({\qp_r3_reg[19]_i_6_n_0 ,\qp_r3_reg[19]_i_6_n_1 ,\qp_r3_reg[19]_i_6_n_2 ,\qp_r3_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_103,qp_r2_reg__0_n_104,qp_r2_reg__0_n_105,1'b0}),
        .O(qp_r2_reg__1[19:16]),
        .S({\qp_r3[19]_i_7_n_0 ,\qp_r3[19]_i_8_n_0 ,\qp_r3[19]_i_9_n_0 ,\qp_r2_reg[16]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[1]),
        .Q(qp_r3[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[20]),
        .Q(qp_r3[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[21]),
        .Q(qp_r3[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[22]),
        .Q(qp_r3[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[23]),
        .Q(qp_r3[23]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[23]_i_1 
       (.CI(\qp_r3_reg[19]_i_1_n_0 ),
        .CO({\qp_r3_reg[23]_i_1_n_0 ,\qp_r3_reg[23]_i_1_n_1 ,\qp_r3_reg[23]_i_1_n_2 ,\qp_r3_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qin_r2[23:20]),
        .O(qp_r30[23:20]),
        .S({\qp_r3[23]_i_2_n_0 ,\qp_r3[23]_i_3_n_0 ,\qp_r3[23]_i_4_n_0 ,\qp_r3[23]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[23]_i_6 
       (.CI(\qp_r3_reg[19]_i_6_n_0 ),
        .CO({\qp_r3_reg[23]_i_6_n_0 ,\qp_r3_reg[23]_i_6_n_1 ,\qp_r3_reg[23]_i_6_n_2 ,\qp_r3_reg[23]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_99,qp_r2_reg__0_n_100,qp_r2_reg__0_n_101,qp_r2_reg__0_n_102}),
        .O(qp_r2_reg__1[23:20]),
        .S({\qp_r3[23]_i_7_n_0 ,\qp_r3[23]_i_8_n_0 ,\qp_r3[23]_i_9_n_0 ,\qp_r3[23]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[24]),
        .Q(qp_r3[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[25]),
        .Q(qp_r3[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[26]),
        .Q(qp_r3[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[27]),
        .Q(qp_r3[27]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[27]_i_1 
       (.CI(\qp_r3_reg[23]_i_1_n_0 ),
        .CO({\qp_r3_reg[27]_i_1_n_0 ,\qp_r3_reg[27]_i_1_n_1 ,\qp_r3_reg[27]_i_1_n_2 ,\qp_r3_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qin_r2[27:24]),
        .O(qp_r30[27:24]),
        .S({\qp_r3[27]_i_2_n_0 ,\qp_r3[27]_i_3_n_0 ,\qp_r3[27]_i_4_n_0 ,\qp_r3[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[28]),
        .Q(qp_r3[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[29]),
        .Q(qp_r3[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[2]),
        .Q(qp_r3[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[30]),
        .Q(qp_r3[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[31]),
        .Q(qp_r3[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[31]_i_1 
       (.CI(\qp_r3_reg[27]_i_1_n_0 ),
        .CO({\qp_r3_reg[31]_i_1_n_0 ,\qp_r3_reg[31]_i_1_n_1 ,\qp_r3_reg[31]_i_1_n_2 ,\qp_r3_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__1[31],qin_r2[30:28]}),
        .O(qp_r30[31:28]),
        .S({\qp_r3[31]_i_3_n_0 ,\qp_r3[31]_i_4_n_0 ,\qp_r3[31]_i_5_n_0 ,\qp_r3[31]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[31]_i_2 
       (.CI(\qp_r3_reg[31]_i_7_n_0 ),
        .CO({\qp_r3_reg[31]_i_2_n_0 ,\qp_r3_reg[31]_i_2_n_1 ,\qp_r3_reg[31]_i_2_n_2 ,\qp_r3_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_91,qp_r2_reg__0_n_92,qp_r2_reg__0_n_93,qp_r2_reg__0_n_94}),
        .O(qp_r2_reg__1[31:28]),
        .S({\qp_r3[31]_i_8_n_0 ,\qp_r3[31]_i_9_n_0 ,\qp_r3[31]_i_10_n_0 ,\qp_r3[31]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[31]_i_7 
       (.CI(\qp_r3_reg[23]_i_6_n_0 ),
        .CO({\qp_r3_reg[31]_i_7_n_0 ,\qp_r3_reg[31]_i_7_n_1 ,\qp_r3_reg[31]_i_7_n_2 ,\qp_r3_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_95,qp_r2_reg__0_n_96,qp_r2_reg__0_n_97,qp_r2_reg__0_n_98}),
        .O(qp_r2_reg__1[27:24]),
        .S({\qp_r3[31]_i_12_n_0 ,\qp_r3[31]_i_13_n_0 ,\qp_r3[31]_i_14_n_0 ,\qp_r3[31]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[32]),
        .Q(qp_r3[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[33]),
        .Q(qp_r3[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[34]),
        .Q(qp_r3[34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[35]),
        .Q(qp_r3[35]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[35]_i_1 
       (.CI(\qp_r3_reg[31]_i_1_n_0 ),
        .CO({\qp_r3_reg[35]_i_1_n_0 ,\qp_r3_reg[35]_i_1_n_1 ,\qp_r3_reg[35]_i_1_n_2 ,\qp_r3_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qp_r2_reg__1[35:32]),
        .O(qp_r30[35:32]),
        .S({\qp_r3[35]_i_3_n_0 ,\qp_r3[35]_i_4_n_0 ,\qp_r3[35]_i_5_n_0 ,\qp_r3[35]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[35]_i_2 
       (.CI(\qp_r3_reg[31]_i_2_n_0 ),
        .CO({\qp_r3_reg[35]_i_2_n_0 ,\qp_r3_reg[35]_i_2_n_1 ,\qp_r3_reg[35]_i_2_n_2 ,\qp_r3_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_87,qp_r2_reg__0_n_88,qp_r2_reg__0_n_89,qp_r2_reg__0_n_90}),
        .O(qp_r2_reg__1[35:32]),
        .S({\qp_r3[35]_i_7_n_0 ,\qp_r3[35]_i_8_n_0 ,\qp_r3[35]_i_9_n_0 ,\qp_r3[35]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[36]),
        .Q(qp_r3[36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[37]),
        .Q(qp_r3[37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[38]),
        .Q(qp_r3[38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[39]),
        .Q(qp_r3[39]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[39]_i_1 
       (.CI(\qp_r3_reg[35]_i_1_n_0 ),
        .CO({\qp_r3_reg[39]_i_1_n_0 ,\qp_r3_reg[39]_i_1_n_1 ,\qp_r3_reg[39]_i_1_n_2 ,\qp_r3_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qp_r2_reg__1[39:36]),
        .O(qp_r30[39:36]),
        .S({\qp_r3[39]_i_3_n_0 ,\qp_r3[39]_i_4_n_0 ,\qp_r3[39]_i_5_n_0 ,\qp_r3[39]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[39]_i_2 
       (.CI(\qp_r3_reg[35]_i_2_n_0 ),
        .CO({\qp_r3_reg[39]_i_2_n_0 ,\qp_r3_reg[39]_i_2_n_1 ,\qp_r3_reg[39]_i_2_n_2 ,\qp_r3_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_83,qp_r2_reg__0_n_84,qp_r2_reg__0_n_85,qp_r2_reg__0_n_86}),
        .O(qp_r2_reg__1[39:36]),
        .S({\qp_r3[39]_i_7_n_0 ,\qp_r3[39]_i_8_n_0 ,\qp_r3[39]_i_9_n_0 ,\qp_r3[39]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[3]),
        .Q(qp_r3[3]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\qp_r3_reg[3]_i_1_n_0 ,\qp_r3_reg[3]_i_1_n_1 ,\qp_r3_reg[3]_i_1_n_2 ,\qp_r3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(qin_r2[3:0]),
        .O(qp_r30[3:0]),
        .S({\qp_r3[3]_i_2_n_0 ,\qp_r3[3]_i_3_n_0 ,\qp_r3[3]_i_4_n_0 ,\qp_r3[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[40]),
        .Q(qp_r3[40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[41]),
        .Q(qp_r3[41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[42]),
        .Q(qp_r3[42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[43]),
        .Q(qp_r3[43]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[43]_i_1 
       (.CI(\qp_r3_reg[39]_i_1_n_0 ),
        .CO({\qp_r3_reg[43]_i_1_n_0 ,\qp_r3_reg[43]_i_1_n_1 ,\qp_r3_reg[43]_i_1_n_2 ,\qp_r3_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qp_r2_reg__1[43:40]),
        .O(qp_r30[43:40]),
        .S({\qp_r3[43]_i_3_n_0 ,\qp_r3[43]_i_4_n_0 ,\qp_r3[43]_i_5_n_0 ,\qp_r3[43]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[43]_i_2 
       (.CI(\qp_r3_reg[39]_i_2_n_0 ),
        .CO({\qp_r3_reg[43]_i_2_n_0 ,\qp_r3_reg[43]_i_2_n_1 ,\qp_r3_reg[43]_i_2_n_2 ,\qp_r3_reg[43]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_79,qp_r2_reg__0_n_80,qp_r2_reg__0_n_81,qp_r2_reg__0_n_82}),
        .O(qp_r2_reg__1[43:40]),
        .S({\qp_r3[43]_i_7_n_0 ,\qp_r3[43]_i_8_n_0 ,\qp_r3[43]_i_9_n_0 ,\qp_r3[43]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[44]),
        .Q(qp_r3[44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[45]),
        .Q(qp_r3[45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[46]),
        .Q(qp_r3[46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[47]),
        .Q(qp_r3[47]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[47]_i_1 
       (.CI(\qp_r3_reg[43]_i_1_n_0 ),
        .CO({\qp_r3_reg[47]_i_1_n_0 ,\qp_r3_reg[47]_i_1_n_1 ,\qp_r3_reg[47]_i_1_n_2 ,\qp_r3_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qp_r2_reg__1[47:44]),
        .O(qp_r30[47:44]),
        .S({\qp_r3[47]_i_3_n_0 ,\qp_r3[47]_i_4_n_0 ,\qp_r3[47]_i_5_n_0 ,\qp_r3[47]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[47]_i_2 
       (.CI(\qp_r3_reg[43]_i_2_n_0 ),
        .CO({\qp_r3_reg[47]_i_2_n_0 ,\qp_r3_reg[47]_i_2_n_1 ,\qp_r3_reg[47]_i_2_n_2 ,\qp_r3_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_75,qp_r2_reg__0_n_76,qp_r2_reg__0_n_77,qp_r2_reg__0_n_78}),
        .O(qp_r2_reg__1[47:44]),
        .S({\qp_r3[47]_i_7_n_0 ,\qp_r3[47]_i_8_n_0 ,\qp_r3[47]_i_9_n_0 ,\qp_r3[47]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[48]),
        .Q(qp_r3[48]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[49]),
        .Q(qp_r3[49]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[4]),
        .Q(qp_r3[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[50]),
        .Q(qp_r3[50]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[51]),
        .Q(qp_r3[51]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[51]_i_1 
       (.CI(\qp_r3_reg[47]_i_1_n_0 ),
        .CO({\qp_r3_reg[51]_i_1_n_0 ,\qp_r3_reg[51]_i_1_n_1 ,\qp_r3_reg[51]_i_1_n_2 ,\qp_r3_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qp_r2_reg__1[51:48]),
        .O(qp_r30[51:48]),
        .S({\qp_r3[51]_i_3_n_0 ,\qp_r3[51]_i_4_n_0 ,\qp_r3[51]_i_5_n_0 ,\qp_r3[51]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[51]_i_2 
       (.CI(\qp_r3_reg[47]_i_2_n_0 ),
        .CO({\qp_r3_reg[51]_i_2_n_0 ,\qp_r3_reg[51]_i_2_n_1 ,\qp_r3_reg[51]_i_2_n_2 ,\qp_r3_reg[51]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_71,qp_r2_reg__0_n_72,qp_r2_reg__0_n_73,qp_r2_reg__0_n_74}),
        .O(qp_r2_reg__1[51:48]),
        .S({\qp_r3[51]_i_7_n_0 ,\qp_r3[51]_i_8_n_0 ,\qp_r3[51]_i_9_n_0 ,\qp_r3[51]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[52]),
        .Q(qp_r3[52]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[53]),
        .Q(qp_r3[53]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[54]),
        .Q(qp_r3[54]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[55]),
        .Q(qp_r3[55]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[55]_i_1 
       (.CI(\qp_r3_reg[51]_i_1_n_0 ),
        .CO({\qp_r3_reg[55]_i_1_n_0 ,\qp_r3_reg[55]_i_1_n_1 ,\qp_r3_reg[55]_i_1_n_2 ,\qp_r3_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qp_r2_reg__1[55:52]),
        .O(qp_r30[55:52]),
        .S({\qp_r3[55]_i_3_n_0 ,\qp_r3[55]_i_4_n_0 ,\qp_r3[55]_i_5_n_0 ,\qp_r3[55]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[55]_i_2 
       (.CI(\qp_r3_reg[51]_i_2_n_0 ),
        .CO({\qp_r3_reg[55]_i_2_n_0 ,\qp_r3_reg[55]_i_2_n_1 ,\qp_r3_reg[55]_i_2_n_2 ,\qp_r3_reg[55]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_67,qp_r2_reg__0_n_68,qp_r2_reg__0_n_69,qp_r2_reg__0_n_70}),
        .O(qp_r2_reg__1[55:52]),
        .S({\qp_r3[55]_i_7_n_0 ,\qp_r3[55]_i_8_n_0 ,\qp_r3[55]_i_9_n_0 ,\qp_r3[55]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[56]),
        .Q(qp_r3[56]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[57]),
        .Q(qp_r3[57]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[58]),
        .Q(qp_r3[58]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[59]),
        .Q(qp_r3[59]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[59]_i_1 
       (.CI(\qp_r3_reg[55]_i_1_n_0 ),
        .CO({\qp_r3_reg[59]_i_1_n_0 ,\qp_r3_reg[59]_i_1_n_1 ,\qp_r3_reg[59]_i_1_n_2 ,\qp_r3_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qp_r2_reg__1[59:56]),
        .O(qp_r30[59:56]),
        .S({\qp_r3[59]_i_3_n_0 ,\qp_r3[59]_i_4_n_0 ,\qp_r3[59]_i_5_n_0 ,\qp_r3[59]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[59]_i_2 
       (.CI(\qp_r3_reg[55]_i_2_n_0 ),
        .CO({\qp_r3_reg[59]_i_2_n_0 ,\qp_r3_reg[59]_i_2_n_1 ,\qp_r3_reg[59]_i_2_n_2 ,\qp_r3_reg[59]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({qp_r2_reg__0_n_63,qp_r2_reg__0_n_64,qp_r2_reg__0_n_65,qp_r2_reg__0_n_66}),
        .O(qp_r2_reg__1[59:56]),
        .S({\qp_r3[59]_i_7_n_0 ,\qp_r3[59]_i_8_n_0 ,\qp_r3[59]_i_9_n_0 ,\qp_r3[59]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[5]),
        .Q(qp_r3[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[60]),
        .Q(qp_r3[60]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[61]),
        .Q(qp_r3[61]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[62]),
        .Q(qp_r3[62]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[63]),
        .Q(qp_r3[63]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[63]_i_1 
       (.CI(\qp_r3_reg[59]_i_1_n_0 ),
        .CO({\NLW_qp_r3_reg[63]_i_1_CO_UNCONNECTED [3],\qp_r3_reg[63]_i_1_n_1 ,\qp_r3_reg[63]_i_1_n_2 ,\qp_r3_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,qp_r2_reg__1[62:60]}),
        .O(qp_r30[63:60]),
        .S({\qp_r3[63]_i_3_n_0 ,\qp_r3[63]_i_4_n_0 ,\qp_r3[63]_i_5_n_0 ,\qp_r3[63]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[63]_i_2 
       (.CI(\qp_r3_reg[59]_i_2_n_0 ),
        .CO({\NLW_qp_r3_reg[63]_i_2_CO_UNCONNECTED [3],\qp_r3_reg[63]_i_2_n_1 ,\qp_r3_reg[63]_i_2_n_2 ,\qp_r3_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,qp_r2_reg__0_n_60,qp_r2_reg__0_n_61,qp_r2_reg__0_n_62}),
        .O(qp_r2_reg__1[63:60]),
        .S({\qp_r3[63]_i_7_n_0 ,\qp_r3[63]_i_8_n_0 ,\qp_r3[63]_i_9_n_0 ,\qp_r3[63]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[6]),
        .Q(qp_r3[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[7]),
        .Q(qp_r3[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \qp_r3_reg[7]_i_1 
       (.CI(\qp_r3_reg[3]_i_1_n_0 ),
        .CO({\qp_r3_reg[7]_i_1_n_0 ,\qp_r3_reg[7]_i_1_n_1 ,\qp_r3_reg[7]_i_1_n_2 ,\qp_r3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(qin_r2[7:4]),
        .O(qp_r30[7:4]),
        .S({\qp_r3[7]_i_2_n_0 ,\qp_r3[7]_i_3_n_0 ,\qp_r3[7]_i_4_n_0 ,\qp_r3[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[8]),
        .Q(qp_r3[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qp_r3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qp_r30[9]),
        .Q(qp_r3[9]),
        .R(rst));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[0]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[0]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[0]),
        .Q(\z_r4_reg[0]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[10]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[10]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[10]),
        .Q(\z_r4_reg[10]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[11]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[11]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[11]),
        .Q(\z_r4_reg[11]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[12]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[12]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[12]),
        .Q(\z_r4_reg[12]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[13]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[13]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[13]),
        .Q(\z_r4_reg[13]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[14]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[14]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[14]),
        .Q(\z_r4_reg[14]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[15]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[15]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[15]),
        .Q(\z_r4_reg[15]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[16]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[16]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[16]),
        .Q(\z_r4_reg[16]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[17]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[17]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[17]),
        .Q(\z_r4_reg[17]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[18]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[18]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[18]),
        .Q(\z_r4_reg[18]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[19]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[19]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[19]),
        .Q(\z_r4_reg[19]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[1]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[1]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[1]),
        .Q(\z_r4_reg[1]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[20]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[20]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[20]),
        .Q(\z_r4_reg[20]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[21]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[21]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[21]),
        .Q(\z_r4_reg[21]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[22]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[22]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[22]),
        .Q(\z_r4_reg[22]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[23]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[23]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[23]),
        .Q(\z_r4_reg[23]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[24]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[24]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[24]),
        .Q(\z_r4_reg[24]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[25]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[25]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[25]),
        .Q(\z_r4_reg[25]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[26]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[26]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[26]),
        .Q(\z_r4_reg[26]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[27]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[27]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[27]),
        .Q(\z_r4_reg[27]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[28]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[28]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[28]),
        .Q(\z_r4_reg[28]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[29]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[29]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[29]),
        .Q(\z_r4_reg[29]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[2]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[2]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[2]),
        .Q(\z_r4_reg[2]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[30]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[30]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[30]),
        .Q(\z_r4_reg[30]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[31]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[31]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[31]),
        .Q(\z_r4_reg[31]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[32]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[32]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[32]),
        .Q(\z_r4_reg[32]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[33]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[33]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[33]),
        .Q(\z_r4_reg[33]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[3]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[3]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[3]),
        .Q(\z_r4_reg[3]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[4]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[4]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[4]),
        .Q(\z_r4_reg[4]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[5]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[5]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[5]),
        .Q(\z_r4_reg[5]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[6]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[6]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[6]),
        .Q(\z_r4_reg[6]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[7]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[7]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[7]),
        .Q(\z_r4_reg[7]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[8]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[8]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[8]),
        .Q(\z_r4_reg[8]_srl4___in_v_r3_reg_r_n_0 ));
  (* srl_bus_name = "\z_r4_reg " *) 
  (* srl_name = "\z_r4_reg[9]_srl4___in_v_r3_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \z_r4_reg[9]_srl4___in_v_r3_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(p_0_in[9]),
        .Q(\z_r4_reg[9]_srl4___in_v_r3_reg_r_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[0]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[0]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[0]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[10]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[10]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[10]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[11]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[11]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[11]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[12]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[12]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[12]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[13]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[13]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[13]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[14]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[14]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[14]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[15]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[15]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[15]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[16]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[16]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[16]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[17]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[17]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[17]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[18]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[18]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[18]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[19]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[19]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[19]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[1]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[1]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[1]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[20]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[20]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[20]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[21]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[21]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[21]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[22]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[22]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[22]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[23]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[23]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[23]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[24]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[24]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[24]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[25]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[25]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[25]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[26]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[26]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[26]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[27]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[27]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[27]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[28]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[28]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[28]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[29]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[29]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[29]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[2]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[2]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[2]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[30]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[30]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[30]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[31]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[31]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[31]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[32]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[32]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[32]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[33]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[33]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[33]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[3]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[3]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[3]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[4]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[4]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[4]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[5]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[5]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[5]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[6]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[6]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[6]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[7]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[7]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[7]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[8]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[8]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[8]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r5_reg[9]_in_v_r4_reg_r 
       (.C(clk),
        .CE(1'b1),
        .D(\z_r4_reg[9]_srl4___in_v_r3_reg_r_n_0 ),
        .Q(\z_r5_reg[9]_in_v_r4_reg_r_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate
       (.I0(\z_r5_reg[33]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__0
       (.I0(\z_r5_reg[32]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__1
       (.I0(\z_r5_reg[31]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__10
       (.I0(\z_r5_reg[22]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__11
       (.I0(\z_r5_reg[21]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__12
       (.I0(\z_r5_reg[20]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__13
       (.I0(\z_r5_reg[19]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__14
       (.I0(\z_r5_reg[18]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__15
       (.I0(\z_r5_reg[17]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__16
       (.I0(\z_r5_reg[16]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__17
       (.I0(\z_r5_reg[15]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__18
       (.I0(\z_r5_reg[14]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__19
       (.I0(\z_r5_reg[13]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__2
       (.I0(\z_r5_reg[30]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__20
       (.I0(\z_r5_reg[12]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__21
       (.I0(\z_r5_reg[11]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__22
       (.I0(\z_r5_reg[10]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__23
       (.I0(\z_r5_reg[9]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__24
       (.I0(\z_r5_reg[8]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__25
       (.I0(\z_r5_reg[7]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__26
       (.I0(\z_r5_reg[6]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__27
       (.I0(\z_r5_reg[5]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__28
       (.I0(\z_r5_reg[4]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__29
       (.I0(\z_r5_reg[3]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__3
       (.I0(\z_r5_reg[29]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__30
       (.I0(\z_r5_reg[2]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__31
       (.I0(\z_r5_reg[1]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__32
       (.I0(\z_r5_reg[0]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__4
       (.I0(\z_r5_reg[28]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__5
       (.I0(\z_r5_reg[27]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__6
       (.I0(\z_r5_reg[26]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__7
       (.I0(\z_r5_reg[25]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__8
       (.I0(\z_r5_reg[24]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    z_r5_reg_gate__9
       (.I0(\z_r5_reg[23]_in_v_r4_reg_r_n_0 ),
        .I1(in_v_r4_reg_r_n_0),
        .O(z_r5_reg_gate__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__32_n_0),
        .Q(z_r6[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__22_n_0),
        .Q(z_r6[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__21_n_0),
        .Q(z_r6[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__20_n_0),
        .Q(z_r6[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__19_n_0),
        .Q(z_r6[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__18_n_0),
        .Q(z_r6[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__17_n_0),
        .Q(z_r6[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__16_n_0),
        .Q(z_r6[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__15_n_0),
        .Q(z_r6[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__14_n_0),
        .Q(z_r6[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__13_n_0),
        .Q(z_r6[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__31_n_0),
        .Q(z_r6[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__12_n_0),
        .Q(z_r6[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__11_n_0),
        .Q(z_r6[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__10_n_0),
        .Q(z_r6[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__9_n_0),
        .Q(z_r6[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__8_n_0),
        .Q(z_r6[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__7_n_0),
        .Q(z_r6[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__6_n_0),
        .Q(z_r6[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__5_n_0),
        .Q(z_r6[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__4_n_0),
        .Q(z_r6[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__3_n_0),
        .Q(z_r6[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__30_n_0),
        .Q(z_r6[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__2_n_0),
        .Q(z_r6[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__1_n_0),
        .Q(z_r6[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__0_n_0),
        .Q(z_r6[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate_n_0),
        .Q(z_r6[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__29_n_0),
        .Q(z_r6[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__28_n_0),
        .Q(z_r6[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__27_n_0),
        .Q(z_r6[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__26_n_0),
        .Q(z_r6[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__25_n_0),
        .Q(z_r6[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__24_n_0),
        .Q(z_r6[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \z_r6_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(z_r5_reg_gate__23_n_0),
        .Q(z_r6[9]),
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
