----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 21:04:33
-- Design Name: 
-- Module Name: JK_ff - Behavioral
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

entity JK_ff is
  Port (J   : in  STD_LOGIC;
        K   : in  STD_LOGIC;
        clk : in  STD_LOGIC;
        Q   : out STD_LOGIC;
        Qc  : out STD_LOGIC );
end JK_ff;

architecture Behavioral of JK_ff is
 signal Qi : STD_LOGIC := '0';
begin
process(clk)
    begin
        if rising_edge(clk) then
            if J = '0' and K = '0' then
                Qi <= Qi;
            elsif J = '0' and K = '1' then
                Qi <= '0';
            elsif J = '1' and K = '0' then
                Qi <= '1';
            elsif J = '1' and K = '1' then
                Qi <= NOT Qi;
            end if;
        end if;
    end process;

    Q  <= Qi;
    Qc <= NOT Qi;

end Behavioral;
