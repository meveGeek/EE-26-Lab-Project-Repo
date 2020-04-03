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
    Port ( numIn : in complex;
           part : in STD_LOGIC;
           clk : in STD_LOGIC;
           C : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0));
end display_butterfly;

architecture Behavioral of display_butterfly is

component sevenseg is
    Port ( num : in STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC;
           point : in STD_LOGIC_VECTOR (7 downto 0);
           C_out : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN_out : out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal to_display : STD_LOGIC_VECTOR(31 downto 0);

begin
to_display <= (numIn.r) when part = '0' else
              (numIn.i) when part = '1';

display : sevenseg port map(num => to_display,
                            clk => clk,
                            point => "00000000",
                            C_out => C,
                            DP => DP,
                            AN_out => AN);

end Behavioral;
