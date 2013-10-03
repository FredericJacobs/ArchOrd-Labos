library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity shift_unit is
    port(
        a  : in  std_logic_vector(31 downto 0);
        b  : in  std_logic_vector( 4 downto 0);
        op : in  std_logic_vector( 2 downto 0);
        r  : out std_logic_vector(31 downto 0)
    );
end shift_unit;

architecture synth of shift_unit is

begin

process(a,b,op)
	begin
		if(op = "000") then		-- A rol B
			r <= a nor b;
		elsif(op = "001") then		-- A ror B
			r <= a and b;
		elsif(op = "010") then		-- A sll B
			r <= a or b;
		elsif(op = "011") then		-- A srl B
			r <= a xor b;
		elsif(op = "111") then		-- A sra B
			r <= a xor b;
		end if;
	end process;
end synth;
