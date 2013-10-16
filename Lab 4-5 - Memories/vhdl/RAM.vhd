library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RAM is
    port(
        clk     : in  std_logic;
        cs      : in  std_logic;
        read    : in  std_logic;
        write   : in  std_logic;
        address : in  std_logic_vector(9 downto 0);
        wrdata  : in  std_logic_vector(31 downto 0);
        rddata  : out std_logic_vector(31 downto 0));
end RAM;

architecture synth of RAM is
    signal reg_read  : std_logic;
begin
    process(clk, read, cs)
    begin
        if (rising_edge(clk)) then
            reg_read <= read and cs;
        end if;
    end process;

    process(reg_read)
    begin
        rddata <= (others => 'Z');

        if (reg_read = '1') then
            rddata <= (others => '1'); -- TODO: Implement the RAM array
        end if;
    end process;


end synth;
