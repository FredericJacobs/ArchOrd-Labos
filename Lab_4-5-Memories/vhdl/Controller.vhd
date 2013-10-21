library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_arith.all;
use ieee.numeric_std.all;


entity controller is
    port(
        clk     : in  std_logic;
        reset_n : in  std_logic;
        read    : out std_logic;
        write   : out std_logic;
        address : out std_logic_vector(15 downto 0);
        rddata  : in  std_logic_vector(31 downto 0);
        wrdata  : out std_logic_vector(31 downto 0)
    );
end controller;

architecture synth of controller is
    type ControllerState is (S0, S1, S2, S3, S4, S5);
    signal state : ControllerState;
    signal ROMaddr : std_logic_vector(15 downto 0);
    signal length : std_logic_vector(15 downto 0);
    signal rdaddr : std_logic_vector(15 downto 0);
    signal wraddr : std_logic_vector(15 downto 0);
begin

    process(clk, reset_n)
	 begin

        if(reset_n = '1') then
            state <= S0;
            ROMaddr <= (others => '0');
				read <= '0';
				write <= '0';
				address <= (others => '0');
                length <= (others => '0');
                rdaddr <= (others => '0');
                wraddr <= (others => '0');
        elsif(rising_edge(clk)) then
            case state is

                when S0 =>
                    read <= '1';
				    write <= '0';
                    address <= ROMaddr;

                    ROMaddr <= std_logic_vector(unsigned(ROMaddr) + 4);
                    state <= S1;

                when S1 =>
                    read <= '1';
						  write <= '0';
                    address <= ROMaddr;

                    if(rddata = (31 downto 0 => '0')) then
                        state <= S5;
                    else
                        state <= S2;
                        ROMaddr <= std_logic_vector(unsigned(ROMaddr) + 4);
                        length <= rddata(15 downto 0);
                    end if;

                when S2 =>
                    state <= S3;
                    rdaddr <= rddata(31 downto 16);
                    wraddr <= (others => '0') & rddata(15 downto 0);
					address <= (others => '0');

                when S3 =>
                    read <= '1';
					write <= '0';
                    address <= rdaddr;

                    if(length = (15 downto 0 => '0')) then
                        state <= S0;
                    else
                        state <= S4;
                        rdaddr <= std_logic_vector(unsigned(rdaddr) + 4);
                        length <= std_logic_vector(unsigned(length) - 1);
                    end if;

                when S4 =>
					read <= '0';
                    write <= '1';
                    wrdata <= rddata;
                    address <= wraddr;

                    state <= S3;
                    wraddr <= std_logic_vector(unsigned(wraddr) + 4);

                when S5 =>
                    state <= S5;
					read <= '0';
					write <= '0';
					address <= (others => '0');

                when others => null;

            end case;
        end if;
    end process;

end synth;
