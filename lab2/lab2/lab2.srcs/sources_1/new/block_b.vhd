----------------------------------------------------------------------------------
-- Create Date: 02/03/2020 
-- authors: Michael Eve, Adam Lipson
-- Module Name: block_b - Behavioral
-- Project Name: Lab 2 16 bit RCA using 4bit CLAAs
-- Target Devices: Nexys4 Board
-- Tool Versions:
-- Description:
--This block will generate our propagation carry or generate the carry. If G
--holds a logic 1, then P becomes negligible. We control this factor by pathing the
--outputs cout(i) to the different logic operations between P and G so they can
--exist within the Block B bus that manages the final weighted values of P and G
--after they go through each of the 4 bit ripple adders.

-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_b is
    Port ( p : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           g : in STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC_VECTOR (3 downto 0));
end block_b;

architecture Behavioral of block_b is

begin

cout(0) <= g(0) or (cin and p(0));
cout(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
cout(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0))
           or (p(2) and p(1) and p(0) and cin);
cout(3) <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0))
                      or (p(3) and p(2) and p(1) and p(0) and cin);

end Behavioral;
