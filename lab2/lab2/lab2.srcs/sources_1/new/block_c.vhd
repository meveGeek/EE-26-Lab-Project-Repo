----------------------------------------------------------------------------------
-- Create Date: 02/03/2020 
-- authors: Michael Eve, Adam Lipson
-- Module Name: block_c - Behavioral
-- Project Name: Lab 2 16 bit RCA using 4bit CLAAs
-- Target Devices: Nexys4 Board
-- Tool Versions:
-- Description:
--This block will generate the P and G out values for each of the CLAA blocks. This
--will be done by pathing the indiviual inputs for P and G for each bit (0-3) so that
--every CLAA has the same means of generating the P and G outputs necessary to go
--into the 16bit CLAA block UNIT.

-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


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
