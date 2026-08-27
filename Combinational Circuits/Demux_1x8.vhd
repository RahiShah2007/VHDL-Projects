----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 03:43:25
-- Design Name: 
-- Module Name: Demux_1x8 - Behavioral
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

entity Demux_1x8 is
 Port (D:in STD_LOGIC;
       S: in STD_LOGIC_VECTOR(2 downto 0);
       Y0: out STD_LOGIC;
       Y1: out STD_LOGIC;
       Y2: out STD_LOGIC;
       Y3: out STD_LOGIC;
       Y4: out STD_LOGIC;
       Y5: out STD_LOGIC;
       Y6: out STD_LOGIC;
       Y7: out STD_LOGIC );
end Demux_1x8;

architecture Behavioral of Demux_1x8 is

begin
process(D,S)
begin
    Y0<='0';
    Y1<='0';
    Y2<='0';
    Y3<='0';
    Y4<='0';
    Y5<='0';
    Y6<='0';
    Y7<='0';
    case S is
        when "000"=>
            Y0<=D;
        when "001"=>
            Y1<=D;
        when "010"=>
            Y2<=D;
        when "011"=>
            Y3<=D;
        when "100"=>
            Y4<=D;
        when "101"=>
            Y5<=D;
        when "110"=>
            Y6<=D;
        when "111"=>
            Y7<=D;
        when others=>
            null;
    end case;
end process;


end Behavioral;
