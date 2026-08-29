----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2026 16:20:31
-- Design Name: 
-- Module Name: Johnson_Counter - Behavioral
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

entity Johnson_Counter is
 Port (clk: in STD_LOGIC;
       rst: in STD_LOGIC;
       Q: out STD_LOGIC_VECTOR(3 downto 0) );
end Johnson_Counter;
architecture Behavioral of Johnson_Counter is
signal count: STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
process(clk,rst)
begin
    if rst='1' then
        count<="0000";
    elsif rising_edge(clk) then
        count(1)<=count(0);
        count(2)<=count(1);
        count(3)<=count(2);
        count(0)<=not count(3);
    end if;
end process;
Q<=count;
end Behavioral;
