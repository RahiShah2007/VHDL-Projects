----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.09.2026 12:03:05
-- Design Name: 
-- Module Name: Sequence_Detector_1001 - Behavioral
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

entity Sequence_Detector_1001 is
  Port (data_in: in STD_LOGIC;
        clk: in STD_LOGIC;
        rst: in STD_LOGIC;
        Q2: out STD_LOGIC;
        Q1: out STD_LOGIC;
        Q0: out STD_LOGIC;
        High: out STD_LOGIC);
end Sequence_Detector_1001;

architecture Behavioral of Sequence_Detector_1001 is
type state_type is(S0,S1,S2,S3,S4); -- Moore FSM as statess are bits+1
signal present_state,next_state: state_type;
begin
    process(clk)
    begin
        if(rst='0') then 
            present_state<=S0;
        elsif(clk' event and clk='1') then
            present_state<=next_state;
        end if;
    end process;

process(present_state,data_in)
begin
    case present_state is
        when S0=> high<='0';Q2<='0'; Q1<='0';Q0<='0';
        if (data_in='0') then
            next_state<=S0;
        else 
            next_state<=S1;
        end if;
        
        
        when S1=> high<='0';Q2<='0'; Q1<='0';Q0<='1';
        if (data_in='0') then
            next_state<=S2;
        else 
            next_state<=S1;
        end if;
        
        when S2=> high<='0';Q2<='0'; Q1<='1';Q0<='0';
        if (data_in='0') then
            next_state<=S3;
        else 
            next_state<=S1;
        end if;
        
        when S3=> high<='0';Q2<='0'; Q1<='1';Q0<='1';
        if (data_in='0') then
            next_state<=S0;
        else 
            next_state<=S4;
        end if;
        
        
        when S4=> high<='1';Q2<='1'; Q1<='0';Q0<='0';
        if (data_in='0') then
            next_state<=S0;
        else 
            next_state<=S1;
        end if;
    end case;
end process;
end Behavioral;
