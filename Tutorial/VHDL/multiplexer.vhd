library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplexer is
	port (
		I0       : in   std_logic_vector(7 downto 0);
		I1       : in   std_logic_vector(7 downto 0);
		I2       : in   std_logic_vector(7 downto 0);
		I3       : in   std_logic_vector(7 downto 0);
		sel      : in   std_logic_vector(1 downto 0);
		Z        : out  std_logic_vector(7 downto 0)
	);
end multiplexer;

architecture synth of multiplexer is
begin
	process (I0, I1, I2, I3, sel)
	begin
		case sel is
			when "00" => Z <= I0;
			when "01" => Z <= I1;
			when "10" => Z <= I2;
			when "11" => Z <= I3;
			when others =>
		end case;
	end process;
end synth;

