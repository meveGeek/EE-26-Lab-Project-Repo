----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2020 04:21:13 PM
-- Design Name: 
-- Module Name: sevenseg_decode - Behavioral
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

entity sevenseg_decode is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           segments : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decode;

architecture Behavioral of sevenseg_decode is

begin

segments <= "0000001" when x = "0000" else
            "1001111" when x = "0001" else
            "0010010" when x = "0010" else
            "0000110" when x = "0011" else
            "1001100" when x = "0100" else
            "0100100" when x = "0101" else
            "0100000" when x = "0110" else
            "0001111" when x = "0111" else
            "0000000" when x = "1000" else
            "0000100" when x = "1001" else
            "0001000" when x = "1010" else
            "1100000" when x = "1011" else
            "0110001" when x = "1100" else
            "1000001" when x = "1101" else
            "0110000" when x = "1110" else
            "0111000";

end Behavioral;
