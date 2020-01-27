-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jan 27 16:39:01 2020
-- Host        : LAB223F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               Z:/ee26/lab1/Lab1/Lab1.sim/sim_1/synth/func/xsim/add_sub_test_func_synth.vhd
-- Design      : add_sub
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_sub is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    T : in STD_LOGIC;
    sumDiff : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cout : out STD_LOGIC;
    Z : out STD_LOGIC;
    V : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of add_sub : entity is true;
end add_sub;

architecture STRUCTURE of add_sub is
  signal \RA/FA3/Cout1__0\ : STD_LOGIC;
  signal \RA/cout1\ : STD_LOGIC;
  signal T_IBUF : STD_LOGIC;
  signal V_OBUF : STD_LOGIC;
  signal Z_OBUF : STD_LOGIC;
  signal Z_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal a_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal b_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cout_OBUF : STD_LOGIC;
  signal sumDiff_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Z_OBUF_inst_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sumDiff_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sumDiff_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sumDiff_OBUF[3]_inst_i_2\ : label is "soft_lutpair1";
begin
T_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => T,
      O => T_IBUF
    );
V_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => V_OBUF,
      O => V
    );
V_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2422111844241888"
    )
        port map (
      I0 => b_IBUF(3),
      I1 => a_IBUF(3),
      I2 => \RA/cout1\,
      I3 => b_IBUF(2),
      I4 => T_IBUF,
      I5 => a_IBUF(2),
      O => V_OBUF
    );
Z_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF,
      O => Z
    );
Z_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8004088008808004"
    )
        port map (
      I0 => \RA/FA3/Cout1__0\,
      I1 => Z_OBUF_inst_i_3_n_0,
      I2 => \RA/cout1\,
      I3 => a_IBUF(2),
      I4 => T_IBUF,
      I5 => b_IBUF(2),
      O => Z_OBUF
    );
Z_OBUF_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => T_IBUF,
      I2 => b_IBUF(3),
      O => \RA/FA3/Cout1__0\
    );
Z_OBUF_inst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"85202085"
    )
        port map (
      I0 => a_IBUF(0),
      I1 => T_IBUF,
      I2 => b_IBUF(0),
      I3 => a_IBUF(1),
      I4 => b_IBUF(1),
      O => Z_OBUF_inst_i_3_n_0
    );
\a_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(0),
      O => a_IBUF(0)
    );
\a_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(1),
      O => a_IBUF(1)
    );
\a_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(2),
      O => a_IBUF(2)
    );
\a_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(3),
      O => a_IBUF(3)
    );
\b_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(0),
      O => b_IBUF(0)
    );
\b_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(1),
      O => b_IBUF(1)
    );
\b_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(2),
      O => b_IBUF(2)
    );
\b_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(3),
      O => b_IBUF(3)
    );
cout_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => cout_OBUF,
      O => cout
    );
cout_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE3ABEAC3A28AC28"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => T_IBUF,
      I2 => b_IBUF(3),
      I3 => a_IBUF(2),
      I4 => b_IBUF(2),
      I5 => \RA/cout1\,
      O => cout_OBUF
    );
\sumDiff_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sumDiff_OBUF(0),
      O => sumDiff(0)
    );
\sumDiff_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_IBUF(0),
      I1 => a_IBUF(0),
      O => sumDiff_OBUF(0)
    );
\sumDiff_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sumDiff_OBUF(1),
      O => sumDiff(1)
    );
\sumDiff_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66969666"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => a_IBUF(1),
      I2 => b_IBUF(0),
      I3 => T_IBUF,
      I4 => a_IBUF(0),
      O => sumDiff_OBUF(1)
    );
\sumDiff_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sumDiff_OBUF(2),
      O => sumDiff(2)
    );
\sumDiff_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => T_IBUF,
      I2 => a_IBUF(2),
      I3 => \RA/cout1\,
      O => sumDiff_OBUF(2)
    );
\sumDiff_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sumDiff_OBUF(3),
      O => sumDiff(3)
    );
\sumDiff_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966999699699666"
    )
        port map (
      I0 => b_IBUF(3),
      I1 => a_IBUF(3),
      I2 => \RA/cout1\,
      I3 => b_IBUF(2),
      I4 => T_IBUF,
      I5 => a_IBUF(2),
      O => sumDiff_OBUF(3)
    );
\sumDiff_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE28ACAC"
    )
        port map (
      I0 => a_IBUF(1),
      I1 => T_IBUF,
      I2 => b_IBUF(1),
      I3 => a_IBUF(0),
      I4 => b_IBUF(0),
      O => \RA/cout1\
    );
end STRUCTURE;
