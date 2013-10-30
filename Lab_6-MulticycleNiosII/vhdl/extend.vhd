library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity extend is
    port(
        imm16  : in  std_logic_vector(15 downto 0);
        signed : in  std_logic;
        imm32  : out std_logic_vector(31 downto 0)
    );
end extend;

architecture synth of extend is
begin
    process(imm16, signed)
    begin
        case(signed) is
            when '0' => imm32 <= (31 downto 16 => '0') & imm16;
            when '1' => imm32 <= (31 downto 16 => imm16(15)) & imm16;
				when others =>
        end case;
    end process;
end synth;
