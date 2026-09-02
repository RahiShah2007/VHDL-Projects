----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.09.2026 11:25:05
-- Design Name: 
-- Module Name: one_bit_tristate_buffer - Behavioral
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

entity one_bit_tristate_buffer is
  Port (A: in STD_LOGIC;
        EN: in STD_LOGIC;
        B: out STD_LOGIC );
end one_bit_tristate_buffer;

architecture Behavioral of one_bit_tristate_buffer is

begin
process(A,EN)
begin
    if(EN='1') then 
        B<=A;
    else
        B<='Z';
    end if;
end process;


end Behavioral;
