----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 04:33:59
-- Design Name: 
-- Module Name: Even_Parity_Checker - Behavioral
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

entity Even_Parity_Checker is
    Port (D: in STD_LOGIC_VECTOR(3 downto 0);
          even_error: out STD_LOGIC;
          odd_error: out STD_LOGIC );
end Even_Parity_Checker;

architecture Behavioral of Even_Parity_Checker is
signal P: STD_LOGIC;
begin
    P<=D(3)xor D(2)xor D(1) xor D(0);
    even_error<=P;
    odd_error<= not P;
    
end Behavioral;
