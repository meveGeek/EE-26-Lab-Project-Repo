// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Feb 10 16:28:10 2020
// Host        : LAB223F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               Z:/ee26/lab2/lab2/lab2.sim/sim_1/synth/timing/xsim/parallel_16bit_test_time_synth.v
// Design      : parallel_claa_16bit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module parallel_claa_16bit
   (x,
    y,
    Cin,
    Sum,
    Cout);
  input [15:0]x;
  input [15:0]y;
  input Cin;
  output [15:0]Sum;
  output Cout;

  wire Cin;
  wire Cin_IBUF;
  wire Cout;
  wire Cout_OBUF;
  wire [15:0]Sum;
  wire [15:0]Sum_OBUF;
  wire [2:2]\adder0/C ;
  wire [3:3]\adder1/C ;
  wire [3:3]\adder2/C ;
  wire [2:2]\adder3/C ;
  wire [15:0]x;
  wire [15:0]x_IBUF;
  wire [15:0]y;
  wire [15:0]y_IBUF;

initial begin
 $sdf_annotate("parallel_16bit_test_time_synth.sdf",,,,"tool_control");
end
  IBUF Cin_IBUF_inst
       (.I(Cin),
        .O(Cin_IBUF));
  OBUF Cout_OBUF_inst
       (.I(Cout_OBUF),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEE0F880)) 
    Cout_OBUF_inst_i_1
       (.I0(y_IBUF[14]),
        .I1(x_IBUF[14]),
        .I2(y_IBUF[15]),
        .I3(x_IBUF[15]),
        .I4(\adder3/C ),
        .O(Cout_OBUF));
  OBUF \Sum_OBUF[0]_inst 
       (.I(Sum_OBUF[0]),
        .O(Sum[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum_OBUF[0]_inst_i_1 
       (.I0(Cin_IBUF),
        .I1(y_IBUF[0]),
        .I2(x_IBUF[0]),
        .O(Sum_OBUF[0]));
  OBUF \Sum_OBUF[10]_inst 
       (.I(Sum_OBUF[10]),
        .O(Sum[10]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \Sum_OBUF[10]_inst_i_1 
       (.I0(y_IBUF[9]),
        .I1(x_IBUF[9]),
        .I2(y_IBUF[8]),
        .I3(x_IBUF[8]),
        .I4(y_IBUF[10]),
        .I5(x_IBUF[10]),
        .O(Sum_OBUF[10]));
  OBUF \Sum_OBUF[11]_inst 
       (.I(Sum_OBUF[11]),
        .O(Sum[11]));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum_OBUF[11]_inst_i_1 
       (.I0(\adder2/C ),
        .I1(y_IBUF[11]),
        .I2(x_IBUF[11]),
        .O(Sum_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \Sum_OBUF[11]_inst_i_2 
       (.I0(y_IBUF[8]),
        .I1(x_IBUF[8]),
        .I2(x_IBUF[9]),
        .I3(y_IBUF[9]),
        .I4(x_IBUF[10]),
        .I5(y_IBUF[10]),
        .O(\adder2/C ));
  OBUF \Sum_OBUF[12]_inst 
       (.I(Sum_OBUF[12]),
        .O(Sum[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[12]_inst_i_1 
       (.I0(x_IBUF[12]),
        .I1(y_IBUF[12]),
        .O(Sum_OBUF[12]));
  OBUF \Sum_OBUF[13]_inst 
       (.I(Sum_OBUF[13]),
        .O(Sum[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Sum_OBUF[13]_inst_i_1 
       (.I0(y_IBUF[12]),
        .I1(x_IBUF[12]),
        .I2(y_IBUF[13]),
        .I3(x_IBUF[13]),
        .O(Sum_OBUF[13]));
  OBUF \Sum_OBUF[14]_inst 
       (.I(Sum_OBUF[14]),
        .O(Sum[14]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \Sum_OBUF[14]_inst_i_1 
       (.I0(x_IBUF[13]),
        .I1(y_IBUF[13]),
        .I2(y_IBUF[12]),
        .I3(x_IBUF[12]),
        .I4(y_IBUF[14]),
        .I5(x_IBUF[14]),
        .O(Sum_OBUF[14]));
  OBUF \Sum_OBUF[15]_inst 
       (.I(Sum_OBUF[15]),
        .O(Sum[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum_OBUF[15]_inst_i_1 
       (.I0(x_IBUF[14]),
        .I1(y_IBUF[14]),
        .I2(\adder3/C ),
        .I3(y_IBUF[15]),
        .I4(x_IBUF[15]),
        .O(Sum_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \Sum_OBUF[15]_inst_i_2 
       (.I0(x_IBUF[12]),
        .I1(y_IBUF[12]),
        .I2(y_IBUF[13]),
        .I3(x_IBUF[13]),
        .O(\adder3/C ));
  OBUF \Sum_OBUF[1]_inst 
       (.I(Sum_OBUF[1]),
        .O(Sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum_OBUF[1]_inst_i_1 
       (.I0(x_IBUF[0]),
        .I1(y_IBUF[0]),
        .I2(Cin_IBUF),
        .I3(y_IBUF[1]),
        .I4(x_IBUF[1]),
        .O(Sum_OBUF[1]));
  OBUF \Sum_OBUF[2]_inst 
       (.I(Sum_OBUF[2]),
        .O(Sum[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Sum_OBUF[2]_inst_i_1 
       (.I0(\adder0/C ),
        .I1(y_IBUF[2]),
        .I2(x_IBUF[2]),
        .O(Sum_OBUF[2]));
  OBUF \Sum_OBUF[3]_inst 
       (.I(Sum_OBUF[3]),
        .O(Sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum_OBUF[3]_inst_i_1 
       (.I0(x_IBUF[2]),
        .I1(y_IBUF[2]),
        .I2(\adder0/C ),
        .I3(y_IBUF[3]),
        .I4(x_IBUF[3]),
        .O(Sum_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Sum_OBUF[3]_inst_i_2 
       (.I0(Cin_IBUF),
        .I1(y_IBUF[0]),
        .I2(x_IBUF[0]),
        .I3(y_IBUF[1]),
        .I4(x_IBUF[1]),
        .O(\adder0/C ));
  OBUF \Sum_OBUF[4]_inst 
       (.I(Sum_OBUF[4]),
        .O(Sum[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[4]_inst_i_1 
       (.I0(x_IBUF[4]),
        .I1(y_IBUF[4]),
        .O(Sum_OBUF[4]));
  OBUF \Sum_OBUF[5]_inst 
       (.I(Sum_OBUF[5]),
        .O(Sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Sum_OBUF[5]_inst_i_1 
       (.I0(y_IBUF[4]),
        .I1(x_IBUF[4]),
        .I2(y_IBUF[5]),
        .I3(x_IBUF[5]),
        .O(Sum_OBUF[5]));
  OBUF \Sum_OBUF[6]_inst 
       (.I(Sum_OBUF[6]),
        .O(Sum[6]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \Sum_OBUF[6]_inst_i_1 
       (.I0(y_IBUF[5]),
        .I1(x_IBUF[5]),
        .I2(y_IBUF[4]),
        .I3(x_IBUF[4]),
        .I4(y_IBUF[6]),
        .I5(x_IBUF[6]),
        .O(Sum_OBUF[6]));
  OBUF \Sum_OBUF[7]_inst 
       (.I(Sum_OBUF[7]),
        .O(Sum[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum_OBUF[7]_inst_i_1 
       (.I0(\adder1/C ),
        .I1(y_IBUF[7]),
        .I2(x_IBUF[7]),
        .O(Sum_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \Sum_OBUF[7]_inst_i_2 
       (.I0(y_IBUF[4]),
        .I1(x_IBUF[4]),
        .I2(x_IBUF[5]),
        .I3(y_IBUF[5]),
        .I4(x_IBUF[6]),
        .I5(y_IBUF[6]),
        .O(\adder1/C ));
  OBUF \Sum_OBUF[8]_inst 
       (.I(Sum_OBUF[8]),
        .O(Sum[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[8]_inst_i_1 
       (.I0(x_IBUF[8]),
        .I1(y_IBUF[8]),
        .O(Sum_OBUF[8]));
  OBUF \Sum_OBUF[9]_inst 
       (.I(Sum_OBUF[9]),
        .O(Sum[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Sum_OBUF[9]_inst_i_1 
       (.I0(y_IBUF[8]),
        .I1(x_IBUF[8]),
        .I2(y_IBUF[9]),
        .I3(x_IBUF[9]),
        .O(Sum_OBUF[9]));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[10]_inst 
       (.I(x[10]),
        .O(x_IBUF[10]));
  IBUF \x_IBUF[11]_inst 
       (.I(x[11]),
        .O(x_IBUF[11]));
  IBUF \x_IBUF[12]_inst 
       (.I(x[12]),
        .O(x_IBUF[12]));
  IBUF \x_IBUF[13]_inst 
       (.I(x[13]),
        .O(x_IBUF[13]));
  IBUF \x_IBUF[14]_inst 
       (.I(x[14]),
        .O(x_IBUF[14]));
  IBUF \x_IBUF[15]_inst 
       (.I(x[15]),
        .O(x_IBUF[15]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \x_IBUF[4]_inst 
       (.I(x[4]),
        .O(x_IBUF[4]));
  IBUF \x_IBUF[5]_inst 
       (.I(x[5]),
        .O(x_IBUF[5]));
  IBUF \x_IBUF[6]_inst 
       (.I(x[6]),
        .O(x_IBUF[6]));
  IBUF \x_IBUF[7]_inst 
       (.I(x[7]),
        .O(x_IBUF[7]));
  IBUF \x_IBUF[8]_inst 
       (.I(x[8]),
        .O(x_IBUF[8]));
  IBUF \x_IBUF[9]_inst 
       (.I(x[9]),
        .O(x_IBUF[9]));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[10]_inst 
       (.I(y[10]),
        .O(y_IBUF[10]));
  IBUF \y_IBUF[11]_inst 
       (.I(y[11]),
        .O(y_IBUF[11]));
  IBUF \y_IBUF[12]_inst 
       (.I(y[12]),
        .O(y_IBUF[12]));
  IBUF \y_IBUF[13]_inst 
       (.I(y[13]),
        .O(y_IBUF[13]));
  IBUF \y_IBUF[14]_inst 
       (.I(y[14]),
        .O(y_IBUF[14]));
  IBUF \y_IBUF[15]_inst 
       (.I(y[15]),
        .O(y_IBUF[15]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
  IBUF \y_IBUF[2]_inst 
       (.I(y[2]),
        .O(y_IBUF[2]));
  IBUF \y_IBUF[3]_inst 
       (.I(y[3]),
        .O(y_IBUF[3]));
  IBUF \y_IBUF[4]_inst 
       (.I(y[4]),
        .O(y_IBUF[4]));
  IBUF \y_IBUF[5]_inst 
       (.I(y[5]),
        .O(y_IBUF[5]));
  IBUF \y_IBUF[6]_inst 
       (.I(y[6]),
        .O(y_IBUF[6]));
  IBUF \y_IBUF[7]_inst 
       (.I(y[7]),
        .O(y_IBUF[7]));
  IBUF \y_IBUF[8]_inst 
       (.I(y[8]),
        .O(y_IBUF[8]));
  IBUF \y_IBUF[9]_inst 
       (.I(y[9]),
        .O(y_IBUF[9]));
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
