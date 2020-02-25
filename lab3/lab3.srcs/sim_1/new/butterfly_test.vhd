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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE_Proposed;
use IEEE_Proposed.float_pkg.all;

use work.complex_record.all;

entity butterfly_test is
--  Port ( );
end butterfly_test;

architecture Behavioral of butterfly_test is

component fft_butterfly is
    Port ( A : in complex; -- STD_LOGIC_VECTOR (31 downto 0);
           B : in complex;
           A_comp : out complex;
           B_comp : out complex);
end component;

signal A, B, A_comp, B_comp : complex;

begin

test_proc: process begin

A.r <= to_float(1.5, A.r);
A.i <= to_float(0.5, A.i);
B.r <= to_float(2.0, B.r);
B.i <= to_float(-3.0, B.i);
wait for 100 ns;

A.r <= to_float(7.5, A.r);
A.i <= to_float(3.2, A.i);
B.r <= to_float(10, B.r);
B.i <= to_float(-7.0, B.i);
wait for 100 ns;

end process;

fft : fft_butterfly port map (A => A, B => B, A_comp => A_comp, B_comp => B_comp);


end Behavioral;
