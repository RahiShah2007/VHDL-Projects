----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 02:56:18
-- Design Name: 
-- Module Name: Mux_4x1_from_2x1 - Behavioral
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

entity mux_4to1_using_2to1 is
    Port (
        I0 : in  STD_LOGIC;
        I1 : in  STD_LOGIC;
        I2 : in  STD_LOGIC;
        I3 : in  STD_LOGIC;
        S  : in  STD_LOGIC_VECTOR(1 downto 0);
        Y  : out STD_LOGIC
    );
end mux_4to1_using_2to1;

architecture Structural of mux_4to1_using_2to1 is
    signal X1, X2 : STD_LOGIC;
begin

    M1 : entity work.mux_2x1
        port map(
            I0 => I0,
            I1 => I1,
            S  => S(0),
            Y  => X1
        );

    M2 : entity work.mux_2x1
        port map(
            I0 => I2,
            I1 => I3,
            S  => S(0),
            Y  => X2
        );

    M3 : entity work.mux_2x1
        port map(
            I0 => X1,
            I1 => X2,
            S  => S(1),
            Y  => Y
        );

end Structural;
