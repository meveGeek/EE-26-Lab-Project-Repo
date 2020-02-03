----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2020 05:06:34 PM
-- Design Name: 
-- Module Name: claa2_4bit - Behavioral
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

entity claa2_4bit is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c0 : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           pout : out STD_LOGIC_VECTOR (3 downto 0);
           gout : out STD_LOGIC_VECTOR (3 downto 0));
end claa2_4bit;

architecture Behavioral of claa2_4bit is

component block_a is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC_VECTOR(3 downto 0);
           p : out STD_LOGIC_VECTOR (3 downto 0);
           g : out STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component block_b is
    Port ( p : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           g : in STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal P, G, C : STD_LOGIC_VECTOR (4 downto 1);
signal c_to_block_a : STD_LOGIC_VECTOR (3 downto 0);

begin

c_to_block_a <= C(3 downto 1) & c0;

a0 : block_a port map(x => a,
                      y => b,
                      cin => c_to_block_a,
                      p => P,
                      g => G,
                      s => s);
                      
b0 : block_b port map(p => P,
                      cin => c0,
                      g => G,
                      cout => C);

cout <= C(4);
pout <= P;
gout <= G;

end Behavioral;
