----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2020 04:18:53 PM
-- Design Name: 
-- Module Name: 16bit_ripple - Behavioral
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

entity ripple_16bit is
    Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
           B : in STD_LOGIC_VECTOR (15 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (15 downto 0);
           Cout : out STD_LOGIC);
end ripple_16bit;

architecture Behavioral of ripple_16bit is

component ripple_adder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin: in STD_LOGIC;
           v : out STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal c4, c8, c12 : STD_LOGIC;

begin
    R0: ripple_adder port map(a => A(3 downto 0), 
                              b => B(3 downto 0), 
                              cin => Cin, 
                              sum => S (3 downto 0), 
                              Cout => c4);
                              
    R1: ripple_adder port map(a => A(7 downto 4), 
                              b => B(7 downto 4), 
                              cin => c4, 
                              sum => S (7 downto 4), 
                              Cout => c8);
                              
    R2: ripple_adder port map(a => A(11 downto 8), 
                              b => B(11 downto 8), 
                              cin => c8, 
                              sum => S (11 downto 8), 
                              Cout => c12);
                              
    R3: ripple_adder port map(a => A(15 downto 12), 
                              b => B(15 downto 12), 
                              cin => c12, 
                              sum => S (15 downto 12), 
                              Cout => Cout);

end Behavioral;
