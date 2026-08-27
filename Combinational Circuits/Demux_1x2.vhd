----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 03:30:52
-- Design Name: 
-- Module Name: Demux_1x2 - Behavioral
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

entity Demux_1x2 is
  Port (D:in STD_LOGIC;
        S: in STD_LOGIC;
        Y0: out STD_LOGIC;
        Y1:out STD_LOGIC );
end Demux_1x2;

architecture Behavioral of Demux_1x2 is

begin
    process(D,S)
    begin
        Y0<='0';
        Y1<='0';
        if S='0' then
            Y0<=D;
        else
            Y1<=D;
        end if;
    end process;

end Behavioral;
