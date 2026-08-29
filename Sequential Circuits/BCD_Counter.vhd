----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2026 15:41:30
-- Design Name: 
-- Module Name: BCD_Counter - Behavioral
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

entity BCD_Counter is
 Port (clk: in STD_LOGIC;
       rst: in STD_LOGIC;
       Q: out STD_LOGIC_VECTOR(3 downto 0) );
end BCD_Counter;

architecture Behavioral of BCD_Counter is
signal count: unsigned (3 downto 0):="0000";
begin
process(clk,rst)
begin
        if rst='1' then
            count<=(others=>'0');
        elsif rising_edge(clk) then
            if count=9 then
                count<=(others=>'0');
            else
                count<=count+1;
            end if;
        end if;
end process;
Q<=STD_LOGIC_VECTOR(count);

end Behavioral;
