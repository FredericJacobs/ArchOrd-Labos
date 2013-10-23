library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_FPGA4U is end;

architecture testbench of tb_FPGA4U is

    constant CLK_PERIOD : time := 40 ns;

    signal clk            : std_logic := '0';
    signal reset_n        : std_logic := '0';
    signal in_buttons     : std_logic_vector(3 downto 0);

begin

    fpga4u_0: ENTITY work.fpga4u(bdf_type) port map(
        clk => clk,
        reset_n => reset_n,
        out_LEDs => open,
        in_buttons => in_buttons
    );

    in_buttons  <= (others => '0');

    process
    begin
        clk <= not clk;
        wait for CLK_PERIOD/2;
    end process;

    process
    begin
        reset_n <= '0';
        wait for CLK_PERIOD/2;
        reset_n <= '1';
        wait;
    end process;

end testbench;
