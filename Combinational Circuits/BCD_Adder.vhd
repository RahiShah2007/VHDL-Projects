----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 02:44:47
-- Design Name: 
-- Module Name: BCD_Adder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_Adder is
Port ( A    : in  STD_LOGIC_VECTOR(3 downto 0);
       B    : in  STD_LOGIC_VECTOR(3 downto 0);
       SUM  : out STD_LOGIC_VECTOR(3 downto 0);
       Cout : out STD_LOGIC );
end BCD_Adder;

architecture Behavioral of BCD_Adder is
 signal temp :unsigned(4 downto 0);
 signal correct :unsigned(4 downto 0);
begin
     temp <= ('0' & unsigned(A)) + ('0' & unsigned(B));
     process(temp)
         begin
             if temp > 9 then
                 correct <= temp + 6;
             else
                 correct <= temp;
             end if;
         end process;
     
         SUM  <= std_logic_vector(correct(3 downto 0));
         Cout <= correct(4);
end Behavioral;
