library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter is
	port (
		clk     : in std_logic;
		reset_n : in std_logic;
		clk_en  : in std_logic;
		value   : out std_logic_vector(31 downto 0)
	);
end counter;

architecture synth of counter is
	signal count : std_logic_vector(31 downto 0);
begin
	value <= count;
	process(clk, reset_n)
	begin
		if (reset_n = '0') then
			count <= (others => '0');
		elsif (rising_edge(clk)) then
			if(clk_en = '1') then
				count <= count + 1;
			end if;
		end if;
	end process;
end synth;

