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
        
        type ram_array is array(0 to 1023) of std_logic_vector(31 downto 0);
end RAM;

architecture synth of RAM is
    signal reg_read  : std_logic;
    signal memory    : ram_array;
	signal reg_address : std_logic_vector(9 downto 0);
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            reg_read <= read and cs;
			reg_address <= address;
        end if;
    end process;

    process(reg_read, reg_address)
    begin
        rddata <= (others => 'Z');
        if (reg_read = '1') then
            rddata <= memory(to_integer(unsigned(reg_address)));
        end if;
    end process;

    process(clk, reg_address)
    begin
        if (rising_edge(clk) and write = '1' and cs = '1') then
            memory(to_integer(unsigned(address))) <= wrdata;
        end if;
    end process;

end synth;

