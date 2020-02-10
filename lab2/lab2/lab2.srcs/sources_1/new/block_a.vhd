----------------------------------------------------------------------------------
-- Create Date: 02/03/2020 
-- authors: Michael Eve, Adam Lipson
-- Module Name: block_a - Behavioral
-- Project Name: Lab 2 16 bit RCA using 4bit CLAAs
-- Target Devices: Nexys4 Board

-- Description:
--This block will define the inputs for each of the CLAA blocks using a temporary value
--for the xor operation on x and y. This allows us to path the value that p and g
--generate so the values for x and y are not overwritten.
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_a is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC_VECTOR (3 downto 0);
           p : out STD_LOGIC_VECTOR (3 downto 0);
           g : out STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0));
end block_a;


architecture Behavioral of block_a is
signal temp : STD_LOGIC_VECTOR (3 downto 0);
begin
temp <= x xor y;
p <= temp;
s <= cin xor temp;
g <= x and y;

end Behavioral;
