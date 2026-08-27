----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 21:56:13
-- Design Name: 
-- Module Name: PISO - Behavioral
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

entity PISO is
  Port (D   : in  STD_LOGIC_VECTOR(3 downto 0);
        clk : in  STD_LOGIC;
        LD  : in  STD_LOGIC;
        SO  : out STD_LOGIC );
end PISO;

architecture Behavioral of PISO is
signal R : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
process(clk)
    begin
        if rising_edge(clk) then
            if LD = '1' then
                R <= D;
            else
                R <= R(2 downto 0) & '0';
            end if;
        end if;
    end process;

    SO <= R(3);

end Behavioral;
