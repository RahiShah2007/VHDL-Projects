----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 19:52:15
-- Design Name: 
-- Module Name: SR_ff - Behavioral
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

entity SR_ff is
  Port (S: in STD_LOGIC;
        R: in STD_LOGIC;
        clk: in STD_LOGIC;
        Q: out STD_LOGIC;
        Qc: out STD_LOGIC );
end SR_ff;

architecture Behavioral of SR_ff is
signal Qi: STD_LOGIC:='0';
begin
    process(clk)
    begin
        if rising_edge(clk)then
            if S='1' and R='0' then
                Qi<='1';
            elsif S='0' and R='1' then
                Qi<='0';
            elsif S='1' and R='1' then
                Qi<='X';
            end if;
        end if;
    end process;
Q<=Qi;
Qc<=not Qi;


end Behavioral;
