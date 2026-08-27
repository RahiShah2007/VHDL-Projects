----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 04:10:21
-- Design Name: 
-- Module Name: Encoder_4to2 - Behavioral
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

entity Encoder_4to2 is
 Port (I: in STD_LOGIC_VECTOR(3 downto 0);
       Y: out STD_LOGIC_VECTOR(1 downto 0) 
 );
end Encoder_4to2;

architecture Behavioral of Encoder_4to2 is

begin
process(I)
begin
    case I is
    when "0001"=> Y<="00";
    when "0010"=> Y<="01";
    when "0100"=> Y<="10";
    when "1000"=> Y<="11";
end case;
  end process;



end Behavioral;
