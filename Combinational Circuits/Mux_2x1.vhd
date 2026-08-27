----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 02:52:01
-- Design Name: 
-- Module Name: Mux_2x1 - Behavioral
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
entity Mux_2x1 is
    Port (
        I0 : in  STD_LOGIC;
        I1 : in  STD_LOGIC;
        S  : in  STD_LOGIC;
        Y  : out STD_LOGIC
    );
end Mux_2x1;

architecture Dataflow of Mux_2x1 is
begin
    Y <= I0 when S = '0' else I1;
end Dataflow;
