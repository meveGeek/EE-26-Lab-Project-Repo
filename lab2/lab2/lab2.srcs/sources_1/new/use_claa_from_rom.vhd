----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2020 04:47:02 PM
-- Design Name: 
-- Module Name: use_claa_from_rom - Behavioral
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

entity use_claa_from_rom is
    Port (address1 : in STD_LOGIC_VECTOR(3 downto 0);
          address2 : in STD_LOGIC_VECTOR(3 downto 0) );
end use_claa_from_rom;

architecture Behavioral of use_claa_from_rom is

component dist_mem_gen_0 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END component;

component parallel_claa_16bit is
    Port ( x : in STD_LOGIC_VECTOR (15 downto 0);
           y : in STD_LOGIC_VECTOR (15 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (15 downto 0);
           Cout : out STD_LOGIC);
end component; 

signal x, y, s : STD_LOGIC_VECTOR (15 downto 0);
signal Cin, Cout : STD_LOGIC;

begin
rom1 : dist_mem_gen_0 port map(a => address1,
                               spo => x);
rom2 : dist_mem_gen_0 port map(a => address2,
                               spo => y);

adder : parallel_claa_16bit port map(x => x,
                                     y => y,
                                     Cin => '0',
                                     Sum => s,
                                     Cout => Cout);
                                     

end Behavioral;
