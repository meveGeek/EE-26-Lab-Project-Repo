----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/22/2020 05:37:08 PM
-- Design Name: 
-- Module Name: add_sub - Behavioral
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

entity add_sub is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           T : in STD_LOGIC;
           sumDiff : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           Z : out STD_LOGIC;
           V : out STD_LOGIC);
end add_sub;

architecture Behavioral of add_sub is
   component ripple_adder
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin: in STD_LOGIC;
           v : out STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal bComp : std_logic_vector (3 downto 0);
signal sBuff : std_logic_vector (3 downto 0);

begin
bComp(3) <= (b(3) xor T);
bComp(2) <= (b(2) xor T);
bComp(1) <= (b(1) xor T);
bComp(0) <= (b(0) xor T);

RA: ripple_adder port map (a => a, b => bComp, cin => T, v => V, sum => sBuff, cOut => cout);
Z <= '1' when sBuff = "0000" else '0';
sumDiff <= sBuff;

end Behavioral;
