----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 03:36:35
-- Design Name: 
-- Module Name: Demux_1x4 - Behavioral
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

entity Demux_1x4 is
Port (D:in STD_LOGIC;
      S: in STD_LOGIC_VECTOR(1 downto 0);
      Y0: out STD_LOGIC;
      Y1:out STD_LOGIC;
      Y2: out STD_LOGIC;
      Y3:out STD_LOGIC );
end Demux_1x4;

architecture Behavioral of Demux_1x4 is

begin
process(D,S)
begin
    Y0<='0';
    Y1<='0';
    Y2<='0';
    Y3<='0';
    case S is
        when "00"=>
            Y0<=D;
        when "01"=>
            Y1<=D;
        when "10"=>
            Y2<=D;
        when "11"=>
            Y3<=D;
    end case;
end process;


end Behavioral;
