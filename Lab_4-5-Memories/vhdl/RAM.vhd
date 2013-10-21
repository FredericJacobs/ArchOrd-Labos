library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
    port(
        clk     : in  std_logic;
        cs      : in  std_logic;
        read    : in  std_logic;
        write   : in  std_logic;
        address : in  std_logic_vector(9 downto 0);
        wrdata  : in  std_logic_vector(31 downto 0);
        rddata  : out std_logic_vector(31 downto 0));

        subtype memory_word is std_logic_vector(31 downto 0);
        constant words_num : integer := 2 ** 7;
        type ram_array is array(0 to words_num - 1) of memory_word;
end RAM;

architecture synth of RAM is
    signal reg_read  : std_logic;
    signal memory    : ram_array;
begin
    process(clk, read, cs)
    begin
        if (rising_edge(clk)) then
            reg_read <= read and cs;
        end if;
    end process;

    process(reg_read, address)
    begin
        rddata <= (others => 'Z');
        if (reg_read = '1') then
            rddata <= memory(to_integer(unsigned(address(9 downto 2))));
        end if;
    end process;

    process(write, wrdata, address)
    begin
        if (rising_edge(clk) and write = '1')
            memory(to_integer(unsigned(address(9 downto 2)))) <= wrdata;
        end if;
    end process;

end synth;
