////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: L.70
//  \   \         Application: netgen
//  /   /         Filename: addsb_11_0_a25ab30f6829c208.v
// /___/   /\     Timestamp: Tue Dec 13 17:24:05 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/addsb_11_0_a25ab30f6829c208.ngc ./tmp/_cg/addsb_11_0_a25ab30f6829c208.v 
// Device	: 5vlx20tff323-2
// Input file	: ./tmp/_cg/addsb_11_0_a25ab30f6829c208.ngc
// Output file	: ./tmp/_cg/addsb_11_0_a25ab30f6829c208.v
// # of Modules	: 1
// Design Name	: addsb_11_0_a25ab30f6829c208
// Xilinx        : /tools/xilinx/11.5/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module addsb_11_0_a25ab30f6829c208 (
a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input [32 : 0] a;
  input [32 : 0] b;
  output [32 : 0] s;
  
  // synthesis translate_off
  
  wire \BU2/c_out ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire [32 : 0] \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum ;
  wire [31 : 0] \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple ;
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(0)1  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(1)1  (
    .I0(b[1]),
    .I1(a[1]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(2)1  (
    .I0(b[2]),
    .I1(a[2]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(3)1  (
    .I0(b[3]),
    .I1(a[3]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(4)1  (
    .I0(b[4]),
    .I1(a[4]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(5)1  (
    .I0(b[5]),
    .I1(a[5]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(6)1  (
    .I0(b[6]),
    .I1(a[6]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(7)1  (
    .I0(b[7]),
    .I1(a[7]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(8)1  (
    .I0(b[8]),
    .I1(a[8]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(9)1  (
    .I0(b[9]),
    .I1(a[9]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(10)1  (
    .I0(b[10]),
    .I1(a[10]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(11)1  (
    .I0(b[11]),
    .I1(a[11]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(12)1  (
    .I0(b[12]),
    .I1(a[12]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(13)1  (
    .I0(b[13]),
    .I1(a[13]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(14)1  (
    .I0(b[14]),
    .I1(a[14]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(15)1  (
    .I0(b[15]),
    .I1(a[15]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(16)1  (
    .I0(b[16]),
    .I1(a[16]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(17)1  (
    .I0(b[17]),
    .I1(a[17]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(18)1  (
    .I0(b[18]),
    .I1(a[18]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(19)1  (
    .I0(b[19]),
    .I1(a[19]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(20)1  (
    .I0(b[20]),
    .I1(a[20]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(21)1  (
    .I0(b[21]),
    .I1(a[21]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(22)1  (
    .I0(b[22]),
    .I1(a[22]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(23)1  (
    .I0(b[23]),
    .I1(a[23]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(24)1  (
    .I0(b[24]),
    .I1(a[24]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(25)1  (
    .I0(b[25]),
    .I1(a[25]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(26)1  (
    .I0(b[26]),
    .I1(a[26]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(27)1  (
    .I0(b[27]),
    .I1(a[27]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(28)1  (
    .I0(b[28]),
    .I1(a[28]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(29)1  (
    .I0(b[29]),
    .I1(a[29]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [29])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(30)1  (
    .I0(b[30]),
    .I1(a[30]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [30])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(31)1  (
    .I0(b[31]),
    .I1(a[31]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [31])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/Mxor_halfsum_Result(32)1  (
    .I0(b[32]),
    .I1(a[32]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [32])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.carrymux0  (
    .CI(\BU2/c_out ),
    .DI(a[0]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [0]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [0])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.carryxor0  (
    .CI(\BU2/c_out ),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [0]),
    .O(s[0])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carryxortop  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [31]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [32]),
    .O(s[32])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [0]),
    .DI(a[1]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [1]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [1])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [0]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [1]),
    .O(s[1])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [1]),
    .DI(a[2]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [2]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [2])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [1]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [2]),
    .O(s[2])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [2]),
    .DI(a[3]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [3]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [3])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [2]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [3]),
    .O(s[3])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [3]),
    .DI(a[4]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [4]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [4])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [3]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [4]),
    .O(s[4])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [4]),
    .DI(a[5]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [5]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [5])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [4]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [5]),
    .O(s[5])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [5]),
    .DI(a[6]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [6]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [6])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [5]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [6]),
    .O(s[6])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [6]),
    .DI(a[7]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [7]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [7])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [6]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [7]),
    .O(s[7])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [7]),
    .DI(a[8]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [8]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [8])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[8].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [7]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [8]),
    .O(s[8])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [8]),
    .DI(a[9]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [9]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [9])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[9].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [8]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [9]),
    .O(s[9])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [9]),
    .DI(a[10]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [10]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [10])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[10].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [9]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [10]),
    .O(s[10])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [10]),
    .DI(a[11]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [11]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [11])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[11].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [10]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [11]),
    .O(s[11])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [11]),
    .DI(a[12]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [12]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [12])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[12].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [11]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [12]),
    .O(s[12])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [12]),
    .DI(a[13]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [13]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [13])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[13].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [12]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [13]),
    .O(s[13])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [13]),
    .DI(a[14]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [14]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [14])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[14].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [13]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [14]),
    .O(s[14])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[15].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [14]),
    .DI(a[15]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [15]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [15])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[15].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [14]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [15]),
    .O(s[15])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[16].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [15]),
    .DI(a[16]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [16]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [16])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[16].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [15]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [16]),
    .O(s[16])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[17].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [16]),
    .DI(a[17]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [17]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [17])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[17].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [16]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [17]),
    .O(s[17])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[18].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [17]),
    .DI(a[18]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [18]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [18])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[18].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [17]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [18]),
    .O(s[18])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[19].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [18]),
    .DI(a[19]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [19]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [19])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[19].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [18]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [19]),
    .O(s[19])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[20].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [19]),
    .DI(a[20]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [20]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [20])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[20].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [19]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [20]),
    .O(s[20])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[21].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [20]),
    .DI(a[21]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [21]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [21])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[21].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [20]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [21]),
    .O(s[21])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[22].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [21]),
    .DI(a[22]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [22]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [22])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[22].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [21]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [22]),
    .O(s[22])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[23].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [22]),
    .DI(a[23]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [23]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [23])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[23].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [22]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [23]),
    .O(s[23])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[24].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [23]),
    .DI(a[24]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [24]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [24])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[24].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [23]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [24]),
    .O(s[24])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[25].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [24]),
    .DI(a[25]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [25]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [25])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[25].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [24]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [25]),
    .O(s[25])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[26].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [25]),
    .DI(a[26]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [26]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [26])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[26].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [25]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [26]),
    .O(s[26])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[27].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [26]),
    .DI(a[27]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [27]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [27])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[27].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [26]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [27]),
    .O(s[27])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[28].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [27]),
    .DI(a[28]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [28]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [28])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[28].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [27]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [28]),
    .O(s[28])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[29].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [28]),
    .DI(a[29]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [29]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [29])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[29].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [28]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [29]),
    .O(s[29])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[30].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [29]),
    .DI(a[30]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [30]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [30])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[30].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [29]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [30]),
    .O(s[30])
  );
  MUXCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[31].carrymux  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [30]),
    .DI(a[31]),
    .S(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [31]),
    .O(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [31])
  );
  XORCY   \BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[31].carryxor  (
    .CI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/carry_simple [30]),
    .LI(\BU2/U0/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/halfsum [31]),
    .O(s[31])
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/c_out )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

// synthesis translate_on
