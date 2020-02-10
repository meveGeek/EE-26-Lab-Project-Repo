----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2020 05:59:45 PM
-- Design Name: 
-- Module Name: block_c - Behavioral
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

entity block_c is
    Port ( Pin : in STD_LOGIC_VECTOR (3 downto 0);
           Gin : in STD_LOGIC_VECTOR (3 downto 0);
           Pout : out STD_LOGIC;
           Gout : out STD_LOGIC);
end block_c;

architecture Behavioral of block_c is

begin
Pout <= Pin(3) and Pin(2) and Pin(1) and Pin(0);
Gout <= Gin(3) or (Pin(3) and Gin(2)) or (Pin(3) and Pin(2) and Gin(1))
        or (Pin(3) and Pin(2) and Pin(1) and Gin(0));

end Behavioral;
