----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2026 15:55:50
-- Design Name: 
-- Module Name: Ring_Counter - Behavioral
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

entity Ring_Counter is
  Port (clk: in STD_LOGIC;
        rst: in STD_LOGIC;
        Q: out STD_LOGIC_VECTOR(3 downto 0) );
end Ring_Counter;

architecture Behavioral of Ring_Counter is
signal count: STD_LOGIC_VECTOR(3 downto 0):="0001";
begin
process(clk,rst)
begin
        if rst='1' then
            count<="0001";
        elsif rising_edge(clk) then
            count<= count(2 downto 0)& count(3);
        end if;
end process;
Q<=count;

end Behavioral;
