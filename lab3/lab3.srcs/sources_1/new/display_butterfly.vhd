----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2020 05:47:13 PM
-- Design Name: 
-- Module Name: display_butterfly - Behavioral
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

entity display_butterfly is
    Port ( num : in STD_LOGIC;
           part : in STD_LOGIC;
           clk : in STD_LOGIC;
           C : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0));
end display_butterfly;

architecture Behavioral of display_butterfly is

component fft_butterfly is
    Port ( A : in complex;
           B : in complex;
           clk: in STD_LOGIC;
           A_comp : out complex;
           B_comp : out complex);
end component;

component sevenseg is
    Port ( num : in STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC;
           point : in STD_LOGIC_VECTOR (7 downto 0);
           C_out : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN_out : out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal A, B, A_comp, B_comp : complex;
signal to_display : STD_LOGIC_VECTOR(31 downto 0);

begin
A.r <= std_logic_vector(to_float(1.5, 8, 23));
A.i <= std_logic_vector(to_float(0.5, 8, 23));
B.r <= std_logic_vector(to_float(2.0, 8, 23));
B.i <= std_logic_vector(to_float(-3.0, 8, 23));

fft: fft_butterfly port map(A => A,
                            B => B,
                            clk => clk,
                            A_comp => A_comp,
                            B_comp => B_comp);

to_display <= (A_comp.r) when num = '0' and part = '0' else
              (A_comp.i) when num = '0' and part = '1' else
              (B_comp.r) when num = '1' and part = '0' else
              (B_comp.i) when num = '1' and part = '1';

display : sevenseg port map(num => to_display,
                            clk => clk,
                            point => "00000000",
                            C_out => C,
                            DP => DP,
                            AN_out => AN);

end Behavioral;
