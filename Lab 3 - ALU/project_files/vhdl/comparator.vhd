library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity comparator is
    port (
        a_31    : in  std_logic;
        b_31    : in  std_logic;
        diff_31 : in  std_logic;
        carry   : in  std_logic;
        zero    : in  std_logic;
        op      : in  std_logic_vector(2 downto 0);
        r       : out std_logic
    );
end comparator;

architecture synth of comparator is

begin

process(a_31, b_31, diff_31, carry, zero, op)
begin

	case op is
		when "001" => r <= ((not a_31) and      b_31)  or ((not diff_31) and ((not a_31 xor b_31)));
		when "010" => r <= (     a_31  and (not b_31)) or (     diff_31  and ((not a_31 xor b_31)));
		when "011" => r <= not zero;
		when "100" => r <= zero;
		when "101" => r <= carry;
		when "110" => r <= not carry;
		when others => r <= zero;
		end case;

end process;

end synth;
