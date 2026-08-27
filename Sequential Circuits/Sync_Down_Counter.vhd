----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 23:39:28
-- Design Name: 
-- Module Name: Sync_Down_Counter - Behavioral
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

entity Sync_Down_Counter is
 Port (clk:in STD_LOGIC;
       rst: in STD_LOGIC;
       en: in STD_LOGIC;
       Q: out STD_LOGIC_VECTOR(3 downto 0) );
end Sync_Down_Counter;

architecture Behavioral of Sync_Down_Counter is
signal count: unsigned(3 downto 0):=(others=>'0');
begin
process(clk)
begin
    if rising_edge(clk) then
        if rst='1' then
            count<=(others =>'0');
        elsif en='1' then
            count<=count - 1;
        end if;
    end if;
end process;

Q<= STD_LOGIC_VECTOR(count);
end Behavioral;
