----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 22:46:27
-- Design Name: 
-- Module Name: SIPO - Behavioral
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

entity SIPO is
 Port ( SI  : in  STD_LOGIC;
        clk : in  STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR(3 downto 0) );
end SIPO;

architecture Behavioral of SIPO is
signal R : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
process(clk)
    begin
        if rising_edge(clk) then
            R <= R(2 downto 0) & SI;
        end if;
    end process;

    Q <= R;

end Behavioral;
