----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 20:05:43
-- Design Name: 
-- Module Name: D_ff - Behavioral
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

entity D_ff is
Port (D: in STD_LOGIC;
      clk: in STD_LOGIC;
      Q: out STD_LOGIC;
      Qc: out STD_LOGIC );
end D_ff;

architecture Behavioral of D_ff is
signal Qi: STD_LOGIC:='0';
begin
process(clk)
begin
    if rising_edge(clk) then
        Qi<=D; 
    end if;
end process;

Q<=Qi;
Qc<=not Qi;


end Behavioral;
