----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2020 05:06:02 PM
-- Design Name: 
-- Module Name: fft_8point - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE_Proposed;
use IEEE_Proposed.float_pkg.all;

use work.complex_record.all;

entity fft_8point is
    Port ( num : in STD_LOGIC_VECTOR (2 downto 0);
           part_fft : in STD_LOGIC;
           clk : in STD_LOGIC;
           dp_fft : out STD_LOGIC;
           an_fft : out STD_LOGIC_VECTOR (7 downto 0);
           c_fft : out STD_LOGIC_VECTOR (6 downto 0));
end fft_8point;

architecture Behavioral of fft_8point is

component fft_butterfly is
    Port ( A : in complex;
           B : in complex;
           W : in complex;
           clk : in STD_LOGIC;
           A_comp : out complex;
           B_comp : out complex);
end component;

component display_butterfly is
    Port ( numIn : in complex;
           part : in STD_LOGIC;
           clk : in STD_LOGIC;
           C : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0));
end component;

type w_array is array(3 downto 0) of complex;
signal W : w_array;
signal w_stage3 : w_array;

type sample_array is array(7 downto 0) of complex;
signal x_in : sample_array;
signal stage1, stage2: sample_array;

signal value, x_out_A, x_out_B: complex;

signal y : integer;
signal A_comp_in, B_comp_in, W_comp_in : complex;

begin
-- Initializing the input signal
x_in(0).r <= std_logic_vector(to_float(1, 8, 23)); x_in(0).i <= "00000000000000000000000000000000";
x_in(1).r <= "00000000000000000000000000000000"; x_in(1).i <= std_logic_vector(to_float(2, 8, 23));
x_in(2).r <= "00000000000000000000000000000000"; x_in(2).i <= "00000000000000000000000000000000";
x_in(3).r <= "00000000000000000000000000000000"; x_in(3).i <= "00000000000000000000000000000000";
x_in(4).r <= "00000000000000000000000000000000"; x_in(4).i <= "00000000000000000000000000000000";
x_in(5).r <= "00000000000000000000000000000000"; x_in(5).i <= "00000000000000000000000000000000";
x_in(6).r <= "00000000000000000000000000000000"; x_in(6).i <= std_logic_vector(to_float(1, 8, 23));
x_in(7).r <= std_logic_vector(to_float(1, 8, 23)); x_in(7).i <= "00000000000000000000000000000000";

W(0).r <= std_logic_vector(to_float(1, 8, 23)); W(0).i <= "00000000000000000000000000000000";
W(1).r <= std_logic_vector(to_float(0.7071067812, 8, 23)); W(1).i <= std_logic_vector(to_float(-0.7071067812, 8, 23));
W(2).r <= "00000000000000000000000000000000"; W(2).i <= std_logic_vector(to_float(-1, 8, 23));
W(3).r <= std_logic_vector(to_float(-0.7071067812, 8, 23)); W(3).i <= std_logic_vector(to_float(-0.7071067812, 8, 23));

w_stage3 <= W;
w_stage3(1) <= w(2);
w_stage3(2) <= w(1);

stage1_gen:
for i in 0 to 3 generate
    butterfly1: fft_butterfly port map(A => x_in(i),
                                       B => x_in(i + 4),
                                       W => W(0),
                                       clk => clk,
                                       A_comp => stage1(i),
                                       B_comp => stage1(i + 4));
end generate stage1_gen;                                                                            

stage2_gen1:
for i in 0 to 1 generate
    butterfly2: fft_butterfly port map(A => stage1(i),
                                       B => stage1(i + 2),
                                       W => W(0),
                                       clk => clk,
                                       A_comp => stage2(i),
                                       B_comp => stage2(i + 2));
end generate stage2_gen1;                                     

stage2_gen2:
for i in 4 to 5 generate
    butterfly2: fft_butterfly port map(A => stage1(i),
                                       B => stage1(i + 2),
                                       W => W(2),
                                       clk => clk,
                                       A_comp => stage2(i),
                                       B_comp => stage2(i + 2));
end generate stage2_gen2;                                     

-- Stage 3
y <= 0 when num(2 downto 1) = "00" else
     1 when num(2 downto 1) = "01" else
     2 when num(2 downto 1) = "10" else
     3 when num(2 downto 1) = "11";
     
A_comp_in <= stage2(2*y);
B_comp_in <= stage2((2*y) + 1);
W_comp_in <= w_stage3(y);
butterfly: fft_butterfly port map(A => A_comp_in,
                                       B => B_comp_in,
                                       W => W_comp_in,
                                       clk => clk,
                                       A_comp => x_out_A,
                                       B_comp => x_out_B);                                                                                                                     

value <= x_out_A when num(0) = '0' else x_out_B;

display : display_butterfly port map(numIn => value,
                                     part => part_fft,
                                     clk => clk,
                                     C => c_fft,
                                     DP => dp_fft,
                                     AN => an_fft);

end Behavioral;
