library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ALU is
	port (
		A       : in  std_logic_vector(7 downto 0);
		B       : in  std_logic_vector(7 downto 0);
		add_op  : out std_logic_vector(7 downto 0);
		and_op  : out std_logic_vector(7 downto 0);
		or_op   : out std_logic_vector(7 downto 0);
		xor_op  : out std_logic_vector(7 downto 0)
	);
end ALU;

architecture synth of ALU is
begin

	add_op <= A + B;
	and_op <= A and B;
	or_op  <= A or B;
	xor_op <= A xor B;
		
end synth;

