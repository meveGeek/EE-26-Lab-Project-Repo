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
use work.memory_record.all;

entity fft_8point is
    Port ( num_data : in STD_LOGIC_VECTOR (2 downto 0);
           num_point : in STD_LOGIC_VECTOR (2 downto 0);
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

component ROM is
  port ( address : in std_logic_vector(2 downto 0);
         data : out mem
        );
end component ROM;

type w_array is array(3 downto 0) of complex;
signal W : w_array;
signal w_stage3 : w_array;

--signal rom_out : mem;
--signal x_in : mem;
signal stage1_in, stage1_out, stage2_in, stage2_out, stage3_in, stage3_out, x_out: mem;

signal value: complex;
signal value_array : mem;

type mem_array is array(7 downto 0) of mem;
signal data_out : mem_array;
signal data_in : mem_array;

signal counter: unsigned(5 downto 0) := "000000";
signal slow_clock: std_logic;
signal data_count : unsigned(2 downto 0) := "000";

begin
-- Initializing the input signal
--x_in(0).r <= std_logic_vector(to_float(1, 8, 23)); x_in(0).i <= "00000000000000000000000000000000";
--x_in(1).r <= "00000000000000000000000000000000"; x_in(1).i <= std_logic_vector(to_float(2, 8, 23));
--x_in(2).r <= "00000000000000000000000000000000"; x_in(2).i <= "00000000000000000000000000000000";
--x_in(3).r <= "00000000000000000000000000000000"; x_in(3).i <= "00000000000000000000000000000000";
--x_in(4).r <= "00000000000000000000000000000000"; x_in(4).i <= "00000000000000000000000000000000";
--x_in(5).r <= "00000000000000000000000000000000"; x_in(5).i <= "00000000000000000000000000000000";
--x_in(6).r <= "00000000000000000000000000000000"; x_in(6).i <= std_logic_vector(to_float(1, 8, 23));
--x_in(7).r <= std_logic_vector(to_float(1, 8, 23)); x_in(7).i <= "00000000000000000000000000000000";

W(0).r <= std_logic_vector(to_float(1, 8, 23)); W(0).i <= "00000000000000000000000000000000";
W(1).r <= std_logic_vector(to_float(0.7071067812, 8, 23)); W(1).i <= std_logic_vector(to_float(-0.7071067812, 8, 23));
W(2).r <= "00000000000000000000000000000000"; W(2).i <= std_logic_vector(to_float(-1, 8, 23));
W(3).r <= std_logic_vector(to_float(-0.7071067812, 8, 23)); W(3).i <= std_logic_vector(to_float(-0.7071067812, 8, 23));

w_stage3 <= W;
w_stage3(1) <= w(2);
w_stage3(2) <= w(1);

input_gen:
for i in 0 to 7 generate
    rom_map: rom port map(address => std_logic_vector(to_unsigned(i, 3)),
                          data => data_in(i));
end generate input_gen;

stage1_gen:
for i in 0 to 3 generate
    butterfly1: fft_butterfly port map(A => stage1_in(i),
                                       B => stage1_in(i + 4),
                                       W => W(0),
                                       clk => clk,
                                       A_comp => stage1_out(i),
                                       B_comp => stage1_out(i + 4));
end generate stage1_gen;
                                                                         
stage2_gen1:
for i in 0 to 1 generate
    butterfly2: fft_butterfly port map(A => stage2_in(i),
                                       B => stage2_in(i + 2),
                                       W => W(0),
                                       clk => clk,
                                       A_comp => stage2_out(i),
                                       B_comp => stage2_out(i + 2));
end generate stage2_gen1;                                     

stage2_gen2:
for i in 4 to 5 generate
    butterfly2: fft_butterfly port map(A => stage2_in(i),
                                       B => stage2_in(i + 2),
                                       W => W(2),
                                       clk => clk,
                                       A_comp => stage2_out(i),
                                       B_comp => stage2_out(i + 2));
end generate stage2_gen2;                                     

stage3_gen:
for i in 0 to 3 generate
    butterfly3: fft_butterfly port map(A => stage3_in(2 * i),
                                       B => stage3_in((2 * i) + 1),
                                       W => w_stage3(i),
                                       clk => clk,
                                       A_comp => x_out(2 * i),
                                       B_comp => x_out((2 * i) + 1));
end generate stage3_gen;                                                                                                                      

value_array <= data_out(to_integer(unsigned(num_data)));
value <= value_array(to_integer(unsigned(num_point)));

display : display_butterfly port map(numIn => value,
                                     part => part_fft,
                                     clk => clk,
                                     C => c_fft,
                                     DP => dp_fft,
                                     AN => an_fft);
                                     
--rom_map : rom port map(address => rom_count,
--                       data => rom_out);
                       
process(clk) begin
    if rising_edge(clk) then
        counter <= counter + 1;
        slow_clock <= counter(5);
    end if;  
end process;

process(slow_clock) begin
    if rising_edge(slow_clock) then
        stage1_in <= data_in(to_integer(data_count));
        stage2_in <= stage1_out;
        stage3_in <= stage2_out;
        stage3_out <= x_out;
        data_out(to_integer(data_count - 4)) <= stage3_out;
        data_count <= data_count + 1;
    end if;
end process;
end Behavioral;
