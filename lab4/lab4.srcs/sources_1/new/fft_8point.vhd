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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE_Proposed;
use IEEE_Proposed.float_pkg.all;

use work.complex_record.all;

entity fft_8point is
    Port ( num : in STD_LOGIC_VECTOR (2 downto 0);
           part : in STD_LOGIC;
           clk : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (6 downto 0);
           c : out STD_LOGIC_VECTOR (7 downto 0));
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

type w_array is array(3 downto 0) of complex;

signal W : w_array;
signal w_stage3 : w_array;
type sample_array is array(7 downto 0) of complex;

signal x_in : sample_array;

signal stage1, stage2, x_out : sample_array;

begin
w_stage3 <= w;
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

stage3_gen:
for i in 0 to 3 generate
    butterfly1: fft_butterfly port map(A => stage2(2 * i),
                                       B => stage2((2 * i) + 1),
                                       W => W(i),
                                       clk => clk,
                                       A_comp => x_out(2 * i),
                                       B_comp => x_out((2 * i) + 1));
end generate stage3_gen;

end Behavioral;
