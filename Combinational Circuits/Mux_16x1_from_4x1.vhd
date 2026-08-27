----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 03:01:35
-- Design Name: 
-- Module Name: Mux_16x1_from_4x1 - Behavioral
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

entity mux_16x1_from_4x1 is
    Port (
        I : in  STD_LOGIC_VECTOR(15 downto 0);
        S : in  STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC
    );
end mux_16x1_from_4x1;

architecture Structural of mux_16x1_from_4x1 is
    signal X : STD_LOGIC_VECTOR(3 downto 0);
begin

    M0 : entity work.mux_4x1
        port map(
            I0 => I(0),
            I1 => I(1),
            I2 => I(2),
            I3 => I(3),
            S  => S(1 downto 0),
            Y  => X(0)
        );

    M1 : entity work.mux_4x1
        port map(
            I0 => I(4),
            I1 => I(5),
            I2 => I(6),
            I3 => I(7),
            S  => S(1 downto 0),
            Y  => X(1)
        );

    M2 : entity work.mux_4x1
        port map(
            I0 => I(8),
            I1 => I(9),
            I2 => I(10),
            I3 => I(11),
            S  => S(1 downto 0),
            Y  => X(2)
        );

    M3 : entity work.mux_4x1
        port map(
            I0 => I(12),
            I1 => I(13),
            I2 => I(14),
            I3 => I(15),
            S  => S(1 downto 0),
            Y  => X(3)
        );

    M4 : entity work.mux_4x1
        port map(
            I0 => X(0),
            I1 => X(1),
            I2 => X(2),
            I3 => X(3),
            S  => S(3 downto 2),
            Y  => Y
        );

end Structural;