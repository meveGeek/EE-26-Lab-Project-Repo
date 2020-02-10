----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2020 06:03:55 PM
-- Design Name: 
-- Module Name: parallel_claa_16bit - Behavioral
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

entity parallel_claa_16bit is
    Port ( x : in STD_LOGIC_VECTOR (15 downto 0);
           y : in STD_LOGIC_VECTOR (15 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (15 downto 0);
           Cout : out STD_LOGIC);
end parallel_claa_16bit;

architecture Behavioral of parallel_claa_16bit is

component claa2_4bit is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c0 : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           pout : out STD_LOGIC_VECTOR (3 downto 0);
           gout : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component block_b is
    Port ( p : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           g : in STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component block_c is
    Port ( Pin : in STD_LOGIC_VECTOR (3 downto 0);
           Gin : in STD_LOGIC_VECTOR (3 downto 0);
           Pout : out STD_LOGIC;
           Gout : out STD_LOGIC);
end component;

signal C_lookahead : STD_LOGIC_VECTOR(4 downto 1);
signal p0, p1, p2, p3, g0, g1, g2, g3 : STD_LOGIC_VECTOR(3 downto 0);
signal big_p, big_g : STD_LOGIC_VECTOR(3 downto 0);

begin

adder0 : claa2_4bit port map(a => x(3 downto 0),
                             b => y(3 downto 0),
                             c0 => Cin,
                             s => Sum(3 downto 0),
                             pout => p0,
                             gout => g0);
c0 : block_c port map(Pin => p0,
                      Gin => g0,
                      Pout => big_p(0),
                      Gout => big_g(0));
                      
adder1 : claa2_4bit port map(a => x(7 downto 3),
                             b => y(7 downto 3),
                             c0 => C_lookahead(1),
                             s => Sum(7 downto 3),
                             pout => p1,
                             gout => g1);
c1 : block_c port map(Pin => p0, ------ CHANGE THESE ---------
                      Gin => g0,
                      Pout => big_p(0),
                      Gout => big_g(0));

end Behavioral;
