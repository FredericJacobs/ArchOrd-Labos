library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity tb_register_file is end;

architecture bench of tb_register_file is

    -- declaration of register_file interface
    component register_file is
        port(
            clk : in std_logic;
            aa : in std_logic_vector(4 downto 0);
            ab : in std_logic_vector(4 downto 0);
            aw : in std_logic_vector(4 downto 0);
            wren : in std_logic;
            wrdata : in std_logic_vector(31 downto 0);
            a : out std_logic_vector(31 downto 0);
            b : out std_logic_vector(31 downto 0)
        );
    end component;

    signal aa,ab,aw     : std_logic_vector(4 downto 0);
    signal a, b, wrdata : std_logic_vector(31 downto 0);
    signal wren         : std_logic := '0';
    -- clk initialization
    signal clk, stop    : std_logic := '0';
    -- clk period definition
    constant CLK_PERIOD : time := 40 ns;

begin

    -- register_file instance
    register_file_0: register_file port map(
        clk => clk,
        aa => aa,
        ab => ab,
        aw => aw,
        wren => wren,
        wrdata => wrdata,
        a => a,
        b => b
    );

    clock_gen: process
    begin
        -- it only works if clk has been initialized
        if stop = '0' then
            clk <= not clk;
            wait for (CLK_PERIOD / 2);
        else
        wait;
        end if;
    end process;

    process
    begin
        -- init
        wren <= '0';
        aa <= "00000";
        ab <= "00001";
        aw <= "00000";
        wrdata <= (others => '0');
        wait for 5 ns;

        -- write in the register file
        wren <= '1';
        for i in 0 to 31 loop
            -- conv_std_logic_vector(number, bitwidth)
            aw <= conv_std_logic_vector(i, 5);
            wrdata <= conv_std_logic_vector(i + 1, 32);
            wait for CLK_PERIOD;
        end loop;

        -- read in the register file
        for i in 0 to 31 loop
            aa <= conv_std_logic_vector(i, 5);
            assert a(31 downto 0) = conv_std_logic_vector(i + 1, 32);
                report "a != expected" severity warning;
            wait for CLK_PERIOD;
        end loop;

        stop <= '1';
        wait;
    end process;
end bench;
