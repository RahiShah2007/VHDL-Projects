----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 21:41:30
-- Design Name: 
-- Module Name: PIPO - Behavioral
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

entity PIPO is
Port (D: in STD_LOGIC_VECTOR(3 downto 0);
      clk: in STD_LOGIC;
      Q: out STD_LOGIC_VECTOR(3 downto 0));
end PIPO;

architecture Behavioral of PIPO is

begin
process(clk)
begin
    if rising_edge(clk)then
        Q<=D;
    end if;
end process;
end Behavioral;
