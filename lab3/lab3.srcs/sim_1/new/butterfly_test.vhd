----------------------------------------------------------------------------------

-- Company:

-- Engineer:

--

-- Create Date: 02/20/2020 05:33:59 PM

-- Design Name:

-- Module Name: butterfly_test - Behavioral

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

-- use IEEE.NUMERIC_STD.ALL;

 

-- Uncomment the following library declaration if instantiating

-- any Xilinx leaf cells in this code.

--library UNISIM;

--use UNISIM.VComponents.all;

 

-- library IEEE_Proposed;

-- use IEEE_Proposed.float_pkg.all;

 

-- use work.complex_record.all;

 

entity butterfly_test is

--  Port ( );

end butterfly_test;

 

architecture Behavioral of butterfly_test is

 

component display_butterfly is

    Port ( num : in STD_LOGIC; -- which number to use. (0 or 1)

           part : in STD_LOGIC; -- real (0) or imaginary (1) part in a number

           clk : in STD_LOGIC;

           C : out STD_LOGIC_VECTOR (6 downto 0); -- 7 segments
           DP : out STD_LOGIC; -- decimal point
           AN : out STD_LOGIC_VECTOR (7 downto 0)); -- display unit number

end component;

signal num : std_logic := '0';
signal part : std_logic :='0';
signal DP : std_logic;
signal clk : std_logic := '0';
signal C : std_logic_vector (6 downto 0);
signal AN : std_logic_vector (7 downto 0); 

begin

test_proc: process begin

for i in 1 to 100 loop
    wait for 5 ns;
    clk <= not clk;
    wait for 5 ns;
    clk <= not clk;
end loop;
end process; 

display : display_butterfly port map (num => num, part => part, clk => clk, C => C, DP => DP, AN => AN);

end Behavioral;