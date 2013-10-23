library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PC is
    port(
        clk     : in  std_logic;
        reset_n : in  std_logic;
        en      : in  std_logic;
        sel_a   : in  std_logic;
        sel_imm : in  std_logic;
        add_imm : in  std_logic;
        imm     : in  std_logic_vector(15 downto 0);
        a       : in  std_logic_vector(15 downto 0);
        addr    : out std_logic_vector(31 downto 0)
    );
end PC;

architecture synth of PC is

begin
    process(clk, reset_n, en)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0') then
                addr <= (others => '0');
            elsif(en = '1') then
                addr <= addr + 4;
            end if;
        end if;
    end process;
end synth;
