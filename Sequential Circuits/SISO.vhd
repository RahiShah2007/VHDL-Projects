----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 21:49:31
-- Design Name: 
-- Module Name: SISO - Behavioral
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

entity SISO is
Port (Serial_in:in STD_LOGIC;
      clk: in STD_LOGIC;
      Q: out STD_LOGIC );
end SISO;

architecture Behavioral of SISO is
signal R: STD_LOGIC_VECTOR(3 downto 0):=(others=>'0');
begin
process(clk)
    begin
        if rising_edge(clk) then
            R <= R(2 downto 0) & Serial_in;
        end if;
    end process;

    Q <= R(3);
end Behavioral;
