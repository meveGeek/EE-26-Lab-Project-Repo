// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jan 27 17:14:05 2020
// Host        : LAB223F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               Z:/ee26/lab1/Lab1/Lab1.sim/sim_1/synth/timing/xsim/add_sub_test_time_synth.v
// Design      : add_sub
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module add_sub
   (a,
    b,
    T,
    sumDiff,
    cout,
    Z,
    V);
  input [3:0]a;
  input [3:0]b;
  input T;
  output [3:0]sumDiff;
  output cout;
  output Z;
  output V;

  wire \RA/FA3/Cout1__0 ;
  wire \RA/cout1 ;
  wire T;
  wire T_IBUF;
  wire V;
  wire V_OBUF;
  wire Z;
  wire Z_OBUF;
  wire Z_OBUF_inst_i_3_n_0;
  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire cout;
  wire cout_OBUF;
  wire [3:0]sumDiff;
  wire [3:0]sumDiff_OBUF;

initial begin
 $sdf_annotate("add_sub_test_time_synth.sdf",,,,"tool_control");
end
  IBUF T_IBUF_inst
       (.I(T),
        .O(T_IBUF));
  OBUF V_OBUF_inst
       (.I(V_OBUF),
        .O(V));
  LUT6 #(
    .INIT(64'h2422111844241888)) 
    V_OBUF_inst_i_1
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(\RA/cout1 ),
        .I3(b_IBUF[2]),
        .I4(T_IBUF),
        .I5(a_IBUF[2]),
        .O(V_OBUF));
  OBUF Z_OBUF_inst
       (.I(Z_OBUF),
        .O(Z));
  LUT6 #(
    .INIT(64'h8004088008808004)) 
    Z_OBUF_inst_i_1
       (.I0(\RA/FA3/Cout1__0 ),
        .I1(Z_OBUF_inst_i_3_n_0),
        .I2(\RA/cout1 ),
        .I3(a_IBUF[2]),
        .I4(T_IBUF),
        .I5(b_IBUF[2]),
        .O(Z_OBUF));
  LUT3 #(
    .INIT(8'h96)) 
    Z_OBUF_inst_i_2
       (.I0(a_IBUF[3]),
        .I1(T_IBUF),
        .I2(b_IBUF[3]),
        .O(\RA/FA3/Cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h85202085)) 
    Z_OBUF_inst_i_3
       (.I0(a_IBUF[0]),
        .I1(T_IBUF),
        .I2(b_IBUF[0]),
        .I3(a_IBUF[1]),
        .I4(b_IBUF[1]),
        .O(Z_OBUF_inst_i_3_n_0));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  LUT6 #(
    .INIT(64'hBE3ABEAC3A28AC28)) 
    cout_OBUF_inst_i_1
       (.I0(a_IBUF[3]),
        .I1(T_IBUF),
        .I2(b_IBUF[3]),
        .I3(a_IBUF[2]),
        .I4(b_IBUF[2]),
        .I5(\RA/cout1 ),
        .O(cout_OBUF));
  OBUF \sumDiff_OBUF[0]_inst 
       (.I(sumDiff_OBUF[0]),
        .O(sumDiff[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sumDiff_OBUF[0]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .O(sumDiff_OBUF[0]));
  OBUF \sumDiff_OBUF[1]_inst 
       (.I(sumDiff_OBUF[1]),
        .O(sumDiff[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66969666)) 
    \sumDiff_OBUF[1]_inst_i_1 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(T_IBUF),
        .I4(a_IBUF[0]),
        .O(sumDiff_OBUF[1]));
  OBUF \sumDiff_OBUF[2]_inst 
       (.I(sumDiff_OBUF[2]),
        .O(sumDiff[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \sumDiff_OBUF[2]_inst_i_1 
       (.I0(b_IBUF[2]),
        .I1(T_IBUF),
        .I2(a_IBUF[2]),
        .I3(\RA/cout1 ),
        .O(sumDiff_OBUF[2]));
  OBUF \sumDiff_OBUF[3]_inst 
       (.I(sumDiff_OBUF[3]),
        .O(sumDiff[3]));
  LUT6 #(
    .INIT(64'h6966999699699666)) 
    \sumDiff_OBUF[3]_inst_i_1 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(\RA/cout1 ),
        .I3(b_IBUF[2]),
        .I4(T_IBUF),
        .I5(a_IBUF[2]),
        .O(sumDiff_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBE28ACAC)) 
    \sumDiff_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[1]),
        .I1(T_IBUF),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[0]),
        .I4(b_IBUF[0]),
        .O(\RA/cout1 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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
