////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: L.70
//  \   \         Application: netgen
//  /   /         Filename: asr_11_0_372caaa934b22d95.v
// /___/   /\     Timestamp: Tue Dec 13 17:24:36 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/asr_11_0_372caaa934b22d95.ngc ./tmp/_cg/asr_11_0_372caaa934b22d95.v 
// Device	: 5vlx20tff323-2
// Input file	: ./tmp/_cg/asr_11_0_372caaa934b22d95.ngc
// Output file	: ./tmp/_cg/asr_11_0_372caaa934b22d95.v
// # of Modules	: 1
// Design Name	: asr_11_0_372caaa934b22d95
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

module asr_11_0_372caaa934b22d95 (
  ce, clk, a, d, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input ce;
  input clk;
  input [3 : 0] a;
  input [7 : 0] d;
  output [7 : 0] q;
  
  // synthesis translate_off
  
  wire \BU2/sclr ;
  wire \BU2/sset ;
  wire \BU2/sinit ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[0].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[1].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[2].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[3].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[4].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[5].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[6].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire \NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[7].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ;
  wire [4 : 4] \BU2/U0/i_bb_inst/ai ;
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[0].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[0]),
    .CE(ce),
    .Q(q[0]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[0].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[1].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[1]),
    .CE(ce),
    .Q(q[1]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[1].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[2].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[2]),
    .CE(ce),
    .Q(q[2]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[2].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[3].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[3]),
    .CE(ce),
    .Q(q[3]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[3].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[4].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[4]),
    .CE(ce),
    .Q(q[4]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[4].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[5].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[5]),
    .CE(ce),
    .Q(q[5]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[5].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[6].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[6]),
    .CE(ce),
    .Q(q[6]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[6].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[7].i_lls_only/usecarry32.shreg  (
    .CLK(clk),
    .D(d[7]),
    .CE(ce),
    .Q(q[7]),
    .Q31(\NLW_BU2/U0/i_bb_inst/lls_area.depth_lteq_1srl.gen_srl[7].i_lls_only/usecarry32.shreg_Q31_UNCONNECTED ),
    .A({\BU2/U0/i_bb_inst/ai [4], a[3], a[2], a[1], a[0]})
  );
  GND   \BU2/U0/i_bb_inst/XST_GND  (
    .G(\BU2/U0/i_bb_inst/ai [4])
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
