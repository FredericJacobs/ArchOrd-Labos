library ieee;
use ieee.std_logic_1164.all;

entity and1x8 is
    port(
        a : in  std_logic;
        b : in  std_logic_vector(7 downto 0);
        s : out std_logic_vector(7 downto 0)
    );
end and1x8;

architecture synth of and1x8 is

begin

s <= (7 downto 0 => a) and b;

end synth;
