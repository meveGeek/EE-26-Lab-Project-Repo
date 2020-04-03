----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2020 04:33:39 PM
-- Design Name: 
-- Module Name: sevenseg - Behavioral
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

entity sevenseg is
    Port ( num : in STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC;
           point : in STD_LOGIC_VECTOR (7 downto 0);
           C_out : out STD_LOGIC_VECTOR (6 downto 0);
           DP : out STD_LOGIC;
           AN_out : out STD_LOGIC_VECTOR(7 downto 0));
end sevenseg;

architecture Behavioral of sevenseg is

signal slow_clk : unsigned(2 downto 0) := "000";
signal cnt : unsigned(31 downto 0) := X"00000000";
signal decode_digit : STD_LOGIC_VECTOR(3 downto 0);

component sevenseg_decode is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           segments : out STD_LOGIC_VECTOR (6 downto 0));
end component;

begin

dec: sevenseg_decode port map(x => decode_digit, segments => C_out);

process (clk) begin
if (clk'event and clk = '1') then
    cnt <= cnt + 1;
    if (cnt = 50000) then
        slow_clk <= slow_clk + 1;
        cnt <= X"00000000";
    end if;
    
    if (slow_clk = "000") then
        AN_out <= "11111110";
        decode_digit <= num(3 downto 0);
        DP <= not point(0);
    elsif (slow_clk = "001") then
        AN_out <= "11111101";
        decode_digit <= num(7 downto 4);
        DP <= not point(1);
    elsif (slow_clk = "010") then
        AN_out <= "11111011";
        decode_digit <= num(11 downto 8);
        DP <= not point(2);
    elsif (slow_clk = "011") then
        AN_out <= "11110111";
        decode_digit <= num(15 downto 12);
        DP <= not point(3);
    elsif (slow_clk = "100") then
        AN_out <= "11101111";
        decode_digit <= num(19 downto 16);
        DP <= not point(4);
    elsif (slow_clk = "101") then
        AN_out <= "11011111";
        decode_digit <= num(23 downto 20);
        DP <= not point(5);
    elsif (slow_clk = "110") then
        AN_out <= "10111111";
        decode_digit <= num(27 downto 24);
        DP <= not point(6);
    elsif (slow_clk = "111") then
        AN_out <= "01111111";
        decode_digit <= num(31 downto 28);
        DP <= not point(3);
    end if;
end if;
end process;


end Behavioral;
