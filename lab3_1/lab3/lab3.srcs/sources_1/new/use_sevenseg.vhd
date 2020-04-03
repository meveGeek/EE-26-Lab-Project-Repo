----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2020 04:33:39 PM
-- Design Name: 
-- Module Name: sevenseg - Behavioral
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

entity use_sevenseg is
    Port ( clk : in STD_LOGIC;
           C : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR(7 downto 0));
end use_sevenseg;

architecture Behavioral of use_sevenseg is


component sevenseg is
    Port ( num : in STD_LOGIC_VECTOR (15 downto 0);
           clk : in STD_LOGIC;
           point : in STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN_out : out STD_LOGIC_VECTOR(3 downto 0));
end component;

begin

segs: sevenseg port map (num => X"1234",
                         clk => clk,
                         point => "1000",
                         C_out => C,
                         DP => DP,
                         AN_out => AN);

end Behavioral;
