----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 01:29:52
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity FA is
    Port (A: in STD_LOGIC;
          B: in STD_LOGIC;
          Cin: in STD_LOGIC;
          Sum: out STD_LOGIC;
          Cout: out STD_LOGIC);
end FA;

architecture Behavioral of FA is

begin
    Sum<=A xor B xor Cin;
    Cout<= (A and B) or ((A xor B)and Cin);
end Behavioral;
