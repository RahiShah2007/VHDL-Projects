----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 03:57:09
-- Design Name: 
-- Module Name: Encoder_8to3 - Behavioral
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

entity Encoder_8to3 is
     Port (I: in STD_LOGIC_VECTOR(7 downto 0);
           Y: out STD_LOGIC_VECTOR(2 downto 0) 
     );
end Encoder_8to3;

architecture Behavioral of Encoder_8to3 is

begin
process(I)
begin
    case I is
    when "00000001"=> Y<="000";
    when "00000010"=> Y<="001";
    when "00000100"=> Y<="010";
    when "00001000"=> Y<="011";
    when "00010000"=> Y<="100";
    when "00100000"=> Y<="101";
    when "01000000"=> Y<="110";
    when "10000000"=> Y<="111";
    end case;
end process;


end Behavioral;
