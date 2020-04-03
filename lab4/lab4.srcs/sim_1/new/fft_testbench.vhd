----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2020 04:36:34 PM
-- Design Name: 
-- Module Name: fft_testbench - Behavioral
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

entity fft_testbench is
--  Port ( );
end fft_testbench;

architecture Behavioral of fft_testbench is

component fft_8point is
    Port ( num : in STD_LOGIC_VECTOR (2 downto 0);
           part_fft : in STD_LOGIC;
           clk : in STD_LOGIC;
           dp_fft : out STD_LOGIC;
           valueR : out STD_LOGIC_VECTOR(31 downto 0);
           valueI : out STD_LOGIC_VECTOR(31 downto 0);
           an_fft : out STD_LOGIC_VECTOR (7 downto 0);
           c_fft : out STD_LOGIC_VECTOR (6 downto 0));
end component;

COMPONENT clk_gen_sim_0
  PORT (
    axi_clk_in_0 : IN STD_LOGIC;
    axi_rst_in_0_n : IN STD_LOGIC;
    axi_clk_0 : OUT STD_LOGIC;
    axi_rst_0_n : OUT STD_LOGIC
  );
END COMPONENT;

signal clk_test : STD_LOGIC;
signal dp_test : STD_LOGIC;
signal valueR_test : STD_LOGIC_VECTOR(31 downto 0);
signal valueI_test : STD_LOGIC_VECTOR(31 downto 0);
signal an_test : STD_LOGIC_VECTOR(7 downto 0);
signal c_test : STD_LOGIC_VECTOR(6 downto 0);

begin

dut_clk : clk_gen_sim_0
  PORT MAP (
    axi_clk_in_0 => '1',
    axi_rst_in_0_n => '0',
    axi_clk_0 => clk_test
  );

dut : fft_8point port map(num => "000",
                          part_fft => '0',
                          dp_fft => dp_test,
                          clk => clk_test,
                          valueR => valueR_test,
                          valueI => valueI_test,
                          an_fft => an_test,
                          c_fft => c_test);
                          
end Behavioral;
