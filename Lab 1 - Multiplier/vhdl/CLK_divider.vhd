library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CLK_divider is
    port(
        clk     : in  std_logic;
        clk_out : out std_logic
    );
end CLK_divider;

architecture synth of CLK_divider is
	signal count : unsigned(23 downto 0) := (others => '0');
	signal tmp : std_logic := '1';
begin

process(clk)
begin
	if (rising_edge(clk)) then
		count <= count + 1;
		if(count = 12000000) then
			tmp <= not tmp;
			count <= (others => '0');
		end if;
	end if;

	clk_out <= tmp;

	end process;
end synth;
