----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/22/2020 05:14:52 PM
-- Design Name: 
-- Module Name: ripple_adder - Behavioral
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

entity ripple_adder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin: in STD_LOGIC;
           v : out STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (3 downto 0));
end ripple_adder;

architecture Behavioral of ripple_adder is
    signal cout0, cout1, cout2, cout3 : STD_LOGIC;

    component full_adder
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Cout : out STD_LOGIC;
               sum : out STD_LOGIC);
    end component;    
begin
    FA0: full_adder port map(a => a(0), b => b(0), cin =>cin, cout => cout0, sum => sum(0));
    FA1: full_adder port map(a => a(1), b => b(1), cin =>cout0, cout => cout1, sum => sum(1));
    FA2: full_adder port map(a => a(2), b => b(2), cin =>cout1, cout => cout2, sum => sum(2));
    FA3: full_adder port map(a => a(3), b => b(3), cin =>cout2, cout => cout3, sum => sum(3));
    v <= cout3 xor cout2;
    cout <= cout3;

end Behavioral;
