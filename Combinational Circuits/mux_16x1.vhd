----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 02:57:57
-- Design Name: 
-- Module Name: mux_16x1 - Behavioral
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

entity mux_16x1 is
    Port (
        I : in  STD_LOGIC_VECTOR(15 downto 0);
        S : in  STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC
    );
end mux_16x1;

architecture Dataflow of mux_16x1 is
begin

    with S select
        Y <= I(0)  when "0000",
             I(1)  when "0001",
             I(2)  when "0010",
             I(3)  when "0011",
             I(4)  when "0100",
             I(5)  when "0101",
             I(6)  when "0110",
             I(7)  when "0111",
             I(8)  when "1000",
             I(9)  when "1001",
             I(10) when "1010",
             I(11) when "1011",
             I(12) when "1100",
             I(13) when "1101",
             I(14) when "1110",
             I(15) when "1111",
             '0'   when others;

end Dataflow;
