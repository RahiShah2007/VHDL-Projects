----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 01:40:29
-- Design Name: 
-- Module Name: FS - Behavioral
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

entity FS is
  Port (A: in STD_LOGIC;
        B: in STD_LOGIC;
        Bin: in STD_LOGIC;
        D: out STD_LOGIC;
        Bout: out STD_LOGIC );
end FS;

architecture Behavioral of FS is
begin
    D<=A xor B xor Bin;
    Bout<= ((not A) and B) or (not((A xor B))and Bin);

end Behavioral;
