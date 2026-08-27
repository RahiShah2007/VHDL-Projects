----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 22:54:10
-- Design Name: 
-- Module Name: USR - Behavioral
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

entity USR is
 Port (D: in STD_LOGIC_VECTOR(3 downto 0);
       Shift_L: in STD_LOGIC;
       Shift_R: in STD_LOGIC;
       S: in STD_LOGIC_VECTOR(1 downto 0);
       clk: in STD_LOGIC;
       Q: out STD_LOGIC_VECTOR(3 downto 0) );
end USR;

architecture Behavioral of USR is
signal R: STD_LOGIC_VECTOR(3 downto 0):= (others=>'0');
begin
process(clk)
begin
    if rising_edge(clk)then
    case S is
        when "00"=>
            R<=R;
        when "01"=>
            R<=Shift_R & R(3 downto 0);
        when "10"=>
            R<=R(2 downto 0) & Shift_L;
        when "11"=>
            R<=D;
        when others=>
            null;
    end case;
    end if;
end process;


end Behavioral;
