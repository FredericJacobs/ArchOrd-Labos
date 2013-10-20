library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Add is
    port(
        a : in  std_logic_vector(7 downto 0);
        b : in  std_logic_vector(7 downto 0);
        s : out std_logic_vector(8 downto 0)
    );
end Add;

architecture synth of Add is

begin

s <= ('0' & a) + ('0' & b);

end synth;
