----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.09.2026 23:32:39
-- Design Name: 
-- Module Name: floating_alu_4bit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity floating_alu_4bit is

    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        OP   : in  STD_LOGIC_VECTOR(2 downto 0);
        EN   : in  STD_LOGIC;
        Y    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end floating_alu_4bit;

architecture Behavioral of floating_alu_4bit is
begin

    process(A, B, OP, EN)
    begin
        if EN = '0' then
            Y <= (others => 'Z');

        else
            case OP is

                when "000" =>              -- ADD
                    Y <= std_logic_vector(unsigned(A) + unsigned(B));

                when "001" =>              -- SUBTRACT
                    Y <= std_logic_vector(unsigned(A) - unsigned(B));

                when "010" =>              -- AND
                    Y <= A AND B;

                when "011" =>              -- OR
                    Y <= A OR B;

                when "100" =>              -- XOR
                    Y <= A XOR B;

                when "101" =>              -- NAND
                    Y <= A NAND B;

                when "110" =>              -- NOR
                    Y <= A NOR B;

                when "111" =>              -- XNOR
                    Y <= A XNOR B;

                when others =>
                    Y <= (others => 'Z');

            end case;
        end if;
    end process;

end Behavioral;