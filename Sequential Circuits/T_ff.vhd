----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 20:16:26
-- Design Name: 
-- Module Name: T_ff - Behavioral
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

entity T_ff is
 Port (T: in STD_LOGIC;
       clk: in STD_LOGIC;
       Q: out STD_LOGIC;
       Qc: out STD_LOGIC );
end T_ff;

architecture Behavioral of T_ff is
signal Qi:STD_LOGIC:='0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if T='1' then
                Qi<= not Qi;
            end if;
        end if;
    end process;
Q<=Qi;
Qc<= not Qi;

end Behavioral;
