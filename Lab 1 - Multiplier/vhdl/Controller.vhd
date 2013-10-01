library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity controller is
    port(
        -- External signals
        clk   : in  std_logic;
        reset : in  std_logic;
        start : in  std_logic;
        done  : out std_logic;

        -- Control signals
        load_multiplier   : out std_logic;
        shift_multiplier  : out std_logic;
        load_multiplicand : out std_logic;
        reset_product     : out std_logic;
        load_product      : out std_logic;
        shift_product     : out std_logic
    );
end controller;

architecture synth of controller is
	type ControllerState is (S0, S1, S2, S3);
	signal state : ControllerState;
	signal count : unsigned(2 downto 0);
begin	

	process(clk, reset, start)
	begin

		if(reset = '1') then
			state <= S0;
				done <= '0';
            load_product <= '0';
            shift_product <= '0';
				reset_product <= '0';
            load_multiplicand <= '0';
            load_multiplier <= '0';
            shift_multiplier <= '0';
            count <= "000";
		elsif(rising_edge(clk)) then
			case state is
				when S0 =>
					if(start = '1') then
						state <= S1;
						done <= '0';
						load_product <= '0';
						shift_product <= '0';
						reset_product <= '1';
						load_multiplicand <= '1';
						load_multiplier <= '1';
						shift_multiplier <= '0';
						count <= "000";
					end if;

				when S1 =>
					state <= S2;
					load_product <= '1';
					count <= count + 1;

				when S2 =>
					if(count = 0) then
						state <= S3;
					else
						state <= S1;
					end if;
					load_multiplier <= '0';
					shift_multiplier <= '1';
					load_product <= '0';
					shift_product <= '1';

				when S3 =>
					state <= S0;
					done <= '1';
			end case;
		end if;

	end process;

end synth;
