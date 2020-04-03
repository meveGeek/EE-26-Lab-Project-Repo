// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Feb 24 18:31:33 2020
// Host        : LAB223F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               Z:/ee26/lab3/lab3.sim/sim_1/synth/timing/xsim/butterfly_test_time_synth.v
// Design      : display_butterfly
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module display_butterfly
   (num,
    part,
    clk,
    C,
    DP,
    AN);
  input num;
  input part;
  input clk;
  output [6:0]C;
  output DP;
  output [7:0]AN;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire [6:0]C;
  wire DP;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;

initial begin
 $sdf_annotate("butterfly_test_time_synth.sdf",,,,"tool_control");
end
  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  OBUF \C_OBUF[0]_inst 
       (.I(1'b1),
        .O(C[0]));
  OBUF \C_OBUF[1]_inst 
       (.I(1'b0),
        .O(C[1]));
  OBUF \C_OBUF[2]_inst 
       (.I(1'b0),
        .O(C[2]));
  OBUF \C_OBUF[3]_inst 
       (.I(1'b0),
        .O(C[3]));
  OBUF \C_OBUF[4]_inst 
       (.I(1'b0),
        .O(C[4]));
  OBUF \C_OBUF[5]_inst 
       (.I(1'b0),
        .O(C[5]));
  OBUF \C_OBUF[6]_inst 
       (.I(1'b0),
        .O(C[6]));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  sevenseg display
       (.AN_OBUF(AN_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module sevenseg
   (AN_OBUF,
    clk_IBUF_BUFG);
  output [7:0]AN_OBUF;
  input clk_IBUF_BUFG;

  wire [7:0]AN_OBUF;
  wire \AN_out[0]_i_1_n_0 ;
  wire \AN_out[1]_i_1_n_0 ;
  wire \AN_out[4]_i_1_n_0 ;
  wire \AN_out[5]_i_1_n_0 ;
  wire \AN_out[7]_i_1_n_0 ;
  wire clk_IBUF_BUFG;
  wire [31:0]cnt;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire \cnt[0]_i_8_n_0 ;
  wire \cnt[0]_i_9_n_0 ;
  wire \cnt[31]_i_1_n_0 ;
  wire [0:0]cnt_0;
  wire [6:2]p_1_in;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_4;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry__4_n_6;
  wire plusOp_carry__4_n_7;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__5_n_4;
  wire plusOp_carry__5_n_5;
  wire plusOp_carry__5_n_6;
  wire plusOp_carry__5_n_7;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry__6_n_5;
  wire plusOp_carry__6_n_6;
  wire plusOp_carry__6_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \slow_clk[0]_i_1_n_0 ;
  wire \slow_clk[1]_i_1_n_0 ;
  wire \slow_clk[2]_i_1_n_0 ;
  wire \slow_clk[2]_i_2_n_0 ;
  wire \slow_clk_reg_n_0_[0] ;
  wire \slow_clk_reg_n_0_[1] ;
  wire \slow_clk_reg_n_0_[2] ;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \AN_out[0]_i_1 
       (.I0(\slow_clk_reg_n_0_[0] ),
        .I1(\slow_clk_reg_n_0_[2] ),
        .O(\AN_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_out[1]_i_1 
       (.I0(\slow_clk_reg_n_0_[2] ),
        .I1(\slow_clk_reg_n_0_[0] ),
        .O(\AN_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_out[2]_i_1 
       (.I0(\slow_clk_reg_n_0_[2] ),
        .I1(\slow_clk_reg_n_0_[0] ),
        .I2(\slow_clk_reg_n_0_[1] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN_out[3]_i_1 
       (.I0(\slow_clk_reg_n_0_[1] ),
        .I1(\slow_clk_reg_n_0_[0] ),
        .I2(\slow_clk_reg_n_0_[2] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_out[4]_i_1 
       (.I0(\slow_clk_reg_n_0_[0] ),
        .I1(\slow_clk_reg_n_0_[2] ),
        .O(\AN_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AN_out[5]_i_1 
       (.I0(\slow_clk_reg_n_0_[0] ),
        .I1(\slow_clk_reg_n_0_[2] ),
        .O(\AN_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN_out[6]_i_1 
       (.I0(\slow_clk_reg_n_0_[1] ),
        .I1(\slow_clk_reg_n_0_[2] ),
        .I2(\slow_clk_reg_n_0_[0] ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN_out[7]_i_1 
       (.I0(\slow_clk_reg_n_0_[2] ),
        .I1(\slow_clk_reg_n_0_[0] ),
        .I2(\slow_clk_reg_n_0_[1] ),
        .O(\AN_out[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \AN_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\AN_out[0]_i_1_n_0 ),
        .Q(AN_OBUF[0]),
        .S(\slow_clk_reg_n_0_[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \AN_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\AN_out[1]_i_1_n_0 ),
        .Q(AN_OBUF[1]),
        .S(\slow_clk_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \AN_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(AN_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AN_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(AN_OBUF[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \AN_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\AN_out[4]_i_1_n_0 ),
        .Q(AN_OBUF[4]),
        .S(\slow_clk_reg_n_0_[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \AN_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\AN_out[5]_i_1_n_0 ),
        .Q(AN_OBUF[5]),
        .S(\slow_clk_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \AN_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(AN_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AN_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\AN_out[7]_i_1_n_0 ),
        .Q(AN_OBUF[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \cnt[0]_i_1 
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(\cnt[0]_i_3_n_0 ),
        .I2(\cnt[0]_i_4_n_0 ),
        .I3(cnt[0]),
        .O(cnt_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt[0]_i_2 
       (.I0(\cnt[0]_i_5_n_0 ),
        .I1(\cnt[0]_i_6_n_0 ),
        .I2(cnt[31]),
        .I3(cnt[30]),
        .I4(cnt[1]),
        .I5(\cnt[0]_i_7_n_0 ),
        .O(\cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \cnt[0]_i_3 
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(\cnt[0]_i_8_n_0 ),
        .O(\cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[0]_i_4 
       (.I0(cnt[12]),
        .I1(cnt[13]),
        .I2(cnt[10]),
        .I3(cnt[11]),
        .I4(\cnt[0]_i_9_n_0 ),
        .O(\cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[0]_i_5 
       (.I0(cnt[23]),
        .I1(cnt[22]),
        .I2(cnt[25]),
        .I3(cnt[24]),
        .O(\cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[0]_i_6 
       (.I0(cnt[19]),
        .I1(cnt[18]),
        .I2(cnt[21]),
        .I3(cnt[20]),
        .O(\cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[0]_i_7 
       (.I0(cnt[27]),
        .I1(cnt[26]),
        .I2(cnt[29]),
        .I3(cnt[28]),
        .O(\cnt[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt[0]_i_8 
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[9]),
        .I3(cnt[8]),
        .O(\cnt[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt[0]_i_9 
       (.I0(cnt[15]),
        .I1(cnt[14]),
        .I2(cnt[17]),
        .I3(cnt[16]),
        .O(\cnt[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cnt[31]_i_1 
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(\cnt[0]_i_3_n_0 ),
        .I2(\cnt[0]_i_4_n_0 ),
        .I3(cnt[0]),
        .O(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_0),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_6),
        .Q(cnt[10]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_5),
        .Q(cnt[11]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_4),
        .Q(cnt[12]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__2_n_7),
        .Q(cnt[13]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__2_n_6),
        .Q(cnt[14]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__2_n_5),
        .Q(cnt[15]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__2_n_4),
        .Q(cnt[16]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__3_n_7),
        .Q(cnt[17]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__3_n_6),
        .Q(cnt[18]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__3_n_5),
        .Q(cnt[19]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_7),
        .Q(cnt[1]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__3_n_4),
        .Q(cnt[20]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__4_n_7),
        .Q(cnt[21]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__4_n_6),
        .Q(cnt[22]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__4_n_5),
        .Q(cnt[23]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__4_n_4),
        .Q(cnt[24]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__5_n_7),
        .Q(cnt[25]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__5_n_6),
        .Q(cnt[26]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__5_n_5),
        .Q(cnt[27]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__5_n_4),
        .Q(cnt[28]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__6_n_7),
        .Q(cnt[29]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_6),
        .Q(cnt[2]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__6_n_6),
        .Q(cnt[30]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__6_n_5),
        .Q(cnt[31]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_5),
        .Q(cnt[3]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_4),
        .Q(cnt[4]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_7),
        .Q(cnt[5]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_6),
        .Q(cnt[6]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_5),
        .Q(cnt[7]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_4),
        .Q(cnt[8]),
        .R(\cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_7),
        .Q(cnt[9]),
        .R(\cnt[31]_i_1_n_0 ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S(cnt[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S(cnt[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S(cnt[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S(cnt[16:13]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__3_n_4,plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S(cnt[20:17]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__4_n_4,plusOp_carry__4_n_5,plusOp_carry__4_n_6,plusOp_carry__4_n_7}),
        .S(cnt[24:21]));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__5_n_4,plusOp_carry__5_n_5,plusOp_carry__5_n_6,plusOp_carry__5_n_7}),
        .S(cnt[28:25]));
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp_carry__6_n_5,plusOp_carry__6_n_6,plusOp_carry__6_n_7}),
        .S({1'b0,cnt[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \slow_clk[0]_i_1 
       (.I0(cnt[0]),
        .I1(\cnt[0]_i_4_n_0 ),
        .I2(\cnt[0]_i_3_n_0 ),
        .I3(\cnt[0]_i_2_n_0 ),
        .I4(\slow_clk_reg_n_0_[0] ),
        .O(\slow_clk[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000002)) 
    \slow_clk[1]_i_1 
       (.I0(\slow_clk_reg_n_0_[0] ),
        .I1(\cnt[0]_i_2_n_0 ),
        .I2(\cnt[0]_i_3_n_0 ),
        .I3(\cnt[0]_i_4_n_0 ),
        .I4(cnt[0]),
        .I5(\slow_clk_reg_n_0_[1] ),
        .O(\slow_clk[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \slow_clk[2]_i_1 
       (.I0(\slow_clk[2]_i_2_n_0 ),
        .I1(\cnt[0]_i_2_n_0 ),
        .I2(\cnt[0]_i_3_n_0 ),
        .I3(\cnt[0]_i_4_n_0 ),
        .I4(cnt[0]),
        .I5(\slow_clk_reg_n_0_[2] ),
        .O(\slow_clk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \slow_clk[2]_i_2 
       (.I0(\slow_clk_reg_n_0_[0] ),
        .I1(\slow_clk_reg_n_0_[1] ),
        .O(\slow_clk[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clk_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\slow_clk[0]_i_1_n_0 ),
        .Q(\slow_clk_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\slow_clk[1]_i_1_n_0 ),
        .Q(\slow_clk_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slow_clk_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\slow_clk[2]_i_1_n_0 ),
        .Q(\slow_clk_reg_n_0_[2] ),
        .R(1'b0));
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
