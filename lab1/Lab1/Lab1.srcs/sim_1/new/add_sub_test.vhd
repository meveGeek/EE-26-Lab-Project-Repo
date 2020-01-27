----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2020 04:17:25 PM
-- Design Name: 
-- Module Name: add_sub_test - Behavioral
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

entity add_sub_test is
--  Port ( );
end add_sub_test;

architecture Behavioral of add_sub_test is

component add_sub
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           T : in STD_LOGIC;
           sumDiff : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           Z : out STD_LOGIC;
           V : out STD_LOGIC);
end component;

signal a, b, sumDiff : STD_LOGIC_VECTOR (3 downto 0);
signal T, cout, z, v : STD_LOGIC;

begin
adder : add_sub port map (a => a,
                          b => b,
                          T => T,
                          sumDiff => sumDiff,
                          cout => cout,
                          z => z,
                          v => v);
test_proc: process begin    
    a <= "0000";
    b <= "0000";
    t <= '0';
    wait for 10ns;
    
    
    a <= "0011";
    b <= "0100";
    t <= '0';
    wait for 10ns;
    
    a <= "0011";
    b <= "0100";
    t <= '1';
    wait for 10ns;
  
    a <= "1011";
    b <= "0100";
    t <= '0';
    wait for 10ns;  
    
    a <= "1011";
    b <= "0100";
    t <= '1';
    wait for 10ns;      
    
    a <= "1111";
    b <= "0101";
    t <= '0';
    wait for 10ns;  
    
    a <= "1111";
    b <= "0101";
    t <= '1';
    wait for 10ns;  
    
    a <= "1011";
    b <= "1100";
    t <= '0';
    wait for 10ns;
    
    a <= "1011";
    b <= "1100";
    t <= '1';
    wait for 10ns;  
    
    a <= "1111";
    b <= "1111";
    t <= '0';
    wait for 10ns;  

    a <= "0111";
    b <= "0111";
    t <= '0';
    wait for 10ns;  
end process;
end Behavioral;
