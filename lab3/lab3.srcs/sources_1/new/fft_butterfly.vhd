----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2020 04:37:59 PM
-- Design Name: 
-- Module Name: fft_butterfly - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE_Proposed;
use IEEE_Proposed.float_pkg.all;

use work.complex_record.all;

entity fft_butterfly is
    Port ( A : in complex;
           B : in complex;
           A_comp : out complex;
           B_comp : out complex);
end fft_butterfly;

-- choose constant k = 1
-- constant N = 8
-- cos(2pi(1)/8) = cos(2pi(1)/8) = 0.7071067812

architecture Behavioral of fft_butterfly is

signal W : complex ;

begin

--W.r <= to_float(0.7071067812, W.r);
--W.i <= to_float(0.7071067812, W.i);
W.r <= to_float(0.5, W.r);
W.i <= to_float(0.5, W.i);

A_comp.r <= A.r + (B.r * W.r) - (B.i *W.i);
A_comp.i <= A.i + (B.i * W.r) + (B.r * W.i);
B_comp.r <= A.r - (B.r * W.r) + (B.i * W.i);
B_comp.i <= A.i - (B.i * W.r) - (B.r * W.i);

end Behavioral;
