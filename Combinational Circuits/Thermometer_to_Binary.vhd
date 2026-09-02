----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.09.2026 10:43:48
-- Design Name: 
-- Module Name: Thermometer_to_Binary - Behavioral
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Thermometer_to_Binary is
  Port (x: in STD_LOGIC_VECTOR(6 downto 0);
        y: out STD_LOGIC_VECTOR(3 downto 0) );
end Thermometer_to_Binary;

architecture Behavioral of Thermometer_to_Binary is

begin
process(x)
begin
    case(x) is
        when "0000000" => y(2 downto 0) <="000";
        when "0000001" => y(2 downto 0) <="001";
        when "0000011" => y(2 downto 0) <="010";
        when "0000111" => y(2 downto 0) <="011";
        when "0001111" => y(2 downto 0) <="100";
        when "0011111" => y(2 downto 0) <="101";
        when "0111111" => y(2 downto 0) <="110";
        when "1111111" => y(2 downto 0) <="111";
        
        when others => y(2 downto 0) <="000";
    end case;
end process;



end Behavioral;
