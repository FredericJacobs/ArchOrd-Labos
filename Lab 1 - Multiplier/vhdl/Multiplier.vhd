library ieee;
use ieee.std_logic_1164.all;

entity multiplier is
    port(
        clk         : in  std_logic;
        load        : in  std_logic;
        shift_right : in  std_logic;
        datain      : in  std_logic_vector(7 downto 0);
        dataout     : out std_logic
    );
end multiplier;

architecture synth of multiplier is
	signal a : std_logic_vector(7 downto 0);
begin

process(clk, load, shift_right)
begin
	
	if(rising_edge(clk)) then
		if(load = '1') then
			a <= datain;
		elsif(shift_right = '1') then
			a <= '0' & a(7 downto 1);
		end if;
	end if;

end process;

dataout <= a(0);

end synth;
