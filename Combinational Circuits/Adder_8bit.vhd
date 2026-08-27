----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 02:32:05
-- Design Name: 
-- Module Name: Adder_8bit - Behavioral
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

entity Adder_8bit is
  Port ( A    : in  STD_LOGIC_VECTOR(7 downto 0);
         B    : in  STD_LOGIC_VECTOR(7 downto 0);
         Cin  : in  STD_LOGIC;
         SUM  : out STD_LOGIC_VECTOR(7 downto 0);
         Cout : out STD_LOGIC );
end Adder_8bit;

architecture Behavioral of Adder_8bit is
signal C : STD_LOGIC_VECTOR(8 downto 0);
begin
C(0)<=Cin;
   FA0 : entity work.FA
       port map(A => A(0), B => B(0), Cin => C(0), SUM => SUM(0), Cout => C(1));

   FA1 : entity work.FA
       port map(A => A(1), B => B(1), Cin => C(1), SUM => SUM(1), Cout => C(2));

   FA2 : entity work.FA
       port map(A => A(2), B => B(2), Cin => C(2), SUM => SUM(2), Cout => C(3));

   FA3 : entity work.FA
       port map(A => A(3), B => B(3), Cin => C(3), SUM => SUM(3), Cout => C(4));

   FA4 : entity work.FA
       port map(A => A(4), B => B(4), Cin => C(4), SUM => SUM(4), Cout => C(5));

   FA5 : entity work.FA
       port map(A => A(5), B => B(5), Cin => C(5), SUM => SUM(5), Cout => C(6));

   FA6 : entity work.FA
       port map(A => A(6), B => B(6), Cin => C(6), SUM => SUM(6), Cout => C(7));

   FA7 : entity work.FA
       port map(A => A(7), B => B(7), Cin => C(7), SUM => SUM(7), Cout => C(8));

Cout<=C(8);


end Behavioral;
