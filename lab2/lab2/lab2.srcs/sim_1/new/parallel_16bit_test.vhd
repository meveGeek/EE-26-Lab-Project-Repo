----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2020 04:25:27 PM
-- Design Name: 
-- Module Name: parallel_16bit_test - Behavioral
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

entity parallel_16bit_test is
--  Port ( );
end parallel_16bit_test;

architecture Behavioral of parallel_16bit_test is

component parallel_claa_16bit is
    Port ( x : in STD_LOGIC_VECTOR (15 downto 0);
           y : in STD_LOGIC_VECTOR (15 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (15 downto 0);
           Cout : out STD_LOGIC);
end component; 

signal a, b, s : STD_LOGIC_VECTOR (15 downto 0);
signal Cin, Cout : STD_LOGIC;

begin

adder : parallel_claa_16bit port map(x => a,
                              y => b,
                              Cin => Cin,
                              Sum => S,
                              Cout => Cout);

test_proc: process begin
    a <= "0000000000000000";
    b <= "0000000000000000";
    Cin <= '0';
    wait for 30 ns;
    
    a <= "1111111111111111";
    b <= "1111111111111111";
    Cin <= '0';
    wait for 30 ns;
    
    a <= "1010101010101010";
    b <= "0101010101011111";
    Cin <= '0';
    wait for 30 ns;
    
    a <= "0011000001011000";
    b <= "0000011111000000";
    Cin <= '0';
    wait for 30 ns;
    
    a <= "1100111101010101";
    b <= "1001111000101101";
    Cin <= '0';
    wait for 30 ns;
    
end process;


end Behavioral;
