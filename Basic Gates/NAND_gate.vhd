----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 00:46:44
-- Design Name: 
-- Module Name: NAND_gate - Behavioral
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

entity NAND_gate is
 Port (A: in STD_LOGIC;
        B: in STD_LOGIC;
        Y: out STD_LOGIC );
end NAND_gate;

architecture Behavioral of NAND_gate is

begin
    process(A,B)
    begin
        Y<=A nand B;
    end process;


end Behavioral;
