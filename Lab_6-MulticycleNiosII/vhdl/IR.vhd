library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity IR is
    port(
        clk     : in std_logic;
        enable  : in std_logic;
        D       : in  std_logic_vector(31 downto 0);
        Q       : out std_logic_vector(31 downto 0)
    );
end IR;

architecture synth of IR is

begin
    process(clk, enable)
    begin
        if(rising_edge(clk) and enable = '1') then
            Q <= D;
        end if;
    end process;
end synth;
