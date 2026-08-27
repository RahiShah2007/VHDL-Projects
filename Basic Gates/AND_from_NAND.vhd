----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 01:10:09
-- Design Name: 
-- Module Name: AND_from_NAND - Behavioral
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

entity AND_from_NAND is
 Port (A: in STD_LOGIC;
        B: in STD_LOGIC;
        Y: out STD_LOGIC );
end AND_from_NAND;

architecture Behavioral of AND_from_NAND is
    signal X: STD_LOGIC;
begin
    X<= A and B;
    Y<= X nand X;
end Behavioral;
