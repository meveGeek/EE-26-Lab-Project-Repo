----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2020 05:17:14 PM
-- Design Name: 
-- Module Name: block_b - Behavioral
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
