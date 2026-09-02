----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.09.2026 12:27:17
-- Design Name: 
-- Module Name: UART_rx - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_rx is
    Port (rx: in STD_LOGIC;
          clk: in STD_LOGIC;
          rst: in STD_LOGIC;
          data_rx: out STD_LOGIC_VECTOR(7 downto 0);
          dr: out STD_LOGIC );
end UART_rx;

architecture Behavioral of UART_rx is
signal count: STD_LOGIC_VECTOR(7 downto 0);
signal data_in: STD_LOGIC_VECTOR(7 downto 0);
begin
process(clk,rst)
begin
    if(rst='0') then
        count<="00000000";
    elsif(clk' event and clk='1')then
        if (rx='1' and (count="00000000" or count="10101011")) then
            count<="00000000";
        else
            count <= count + 1;
        end if;
    end if;

end process;

process(clk,rst,count)
begin
    if(rst='0') then
        data_in(7 downto 0)<="00000000";
        data_rx(7 downto 0)<="00000000";
        dr<='0';
    elsif(clk' event and clk='1')then
if (count="00000000") then
dr<='0';
end if;

if (count="00000001") then
dr<='0';
end if;

if (count="00011000") then
data_in(0)<=rx;
end if;

if (count="00101000") then
data_in(1)<=rx;
end if;

if (count="00111000") then
data_in(2)<=rx;
end if;

if (count="01001000") then
data_in(3)<=rx;
end if;

if (count="01011000") then
data_in(4)<=rx;
end if;

if (count="01101000") then
data_in(5)<=rx;
end if;

if (count="01111000") then
data_in(6)<=rx;
end if;

if (count="10001000") then
data_in(7)<=rx;
end if;

if (count="10011000") then
data_rx(7 downto 0)<=data_in(7 downto 0);
end if;

if (count="10101000") then
dr<='1';
end if;

if (count="10101010") then
dr<='0';
end if;

    end if;
end process;
end Behavioral;
