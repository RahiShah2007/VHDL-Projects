----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2026 01:16:36
-- Design Name: 
-- Module Name: HA - Behavioral
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
-- Data Flow Modelling
entity HA is
  Port (A: in STD_LOGIC;
        B: in STD_LOGIC;
        Sum: out STD_LOGIC;
        Cout: out STD_LOGIC );
end HA;

architecture Behavioral of HA is

begin
    Sum<= A xor B;
    Cout<= A and B;
end Behavioral;



-- Behavioral Modelling
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--entity HA is
  --Port (A: in STD_LOGIC;
        --B: in STD_LOGIC;
        --Sum: out STD_LOGIC;
        --Cout: out STD_LOGIC );
--end HA;

--architecture Behavioral of HA is

--begin
    -- process(A,B)
    --begin
        --Sum<= A xor B;
        --Cout<= A and B;
    --end process
--end Behavioral;

-- Structural Modelling
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--entity HA is
  --Port (A: in STD_LOGIC;
        --B: in STD_LOGIC;
        --Sum: out STD_LOGIC;
        --Cout: out STD_LOGIC );
--end HA;
--architecture Behavioral of HA is

-- component XOR_gate
    --Port(A: in  STD_LOGIC;
--         B : in  STD_LOGIC;
--         Y : out STD_LOGIC
 --       );
 --   end component;

--    component and_gate
--        Port (
--            A : in  STD_LOGIC;
--            B : in  STD_LOGIC;
--            Y : out STD_LOGIC
--        );
--    end component;

--begin

--    X1 : XOR_gate
--        port map (
--            A => A,
--            B => B,
--            Y => SUM
--        );

--   A1 : AND_gate
--        port map (
--            A => A,
--            B => B,
--            Y => CARRY
--        );

--end Structural;

