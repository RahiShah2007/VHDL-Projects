----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 02:53:52
-- Design Name: 
-- Module Name: Mux_4x1 - Behavioral
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

entity Mux_4x1 is
    Port (
        I0 : in  STD_LOGIC;
        I1 : in  STD_LOGIC;
        I2 : in  STD_LOGIC;
        I3 : in  STD_LOGIC;
        S  : in  STD_LOGIC_VECTOR(1 downto 0);
        Y  : out STD_LOGIC
    );
end Mux_4x1;

architecture Dataflow of Mux_4x1 is
begin
    with S select
        Y <= I0 when "00",
             I1 when "01",
             I2 when "10",
             I3 when "11",
             '0' when others;
end Dataflow;
