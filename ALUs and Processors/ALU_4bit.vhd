----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.09.2026 22:24:41
-- Design Name: 
-- Module Name: ALU_4bit - Behavioral
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

entity ALU_4bit is
  Port (a: in signed(3 downto 0);
        b: in signed(3 downto 0);
        S: in STD_LOGIC_VECTOR(2 downto 0);
        out_alu: out signed(3 downto 0) );
end ALU_4bit;

architecture Behavioral of ALU_4bit is

begin
process(a,b,S)
begin
    case S is
        when "000"=>
            out_alu<= a+b;
        when "001"=>
            out_alu<=a-b;
        when "010"=>
            out_alu<=a+1;
        when "011"=>
            out_alu<=a/b;
        when "100"=>
            out_alu<= a and b;
        when "101"=>
            out_alu<= a or b;
        when "110"=>
            out_alu<= a xor b;
        when "111"=>
            out_alu<=a-1;
        when others=>
            NULL;       
    end case;
end process;

end Behavioral;
