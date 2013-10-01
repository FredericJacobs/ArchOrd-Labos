library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity combinational_multiplier is
    port(
        A          : in  std_logic_vector(7 downto 0);
        B          : in  std_logic_vector(7 downto 0);
        overflow   : out std_logic;
        P          : out std_logic_vector(7 downto 0)
    );
end combinational_multiplier;

architecture combinational of combinational_multiplier is

    component combinational_multcell
        port(
            An         : in  std_logic;
            B          : in  std_logic_vector(7 downto 0);
            Z          : in  std_logic_vector(7 downto 0);
            Rm         : out std_logic_vector(7 downto 0);
            R0         : out std_logic
        );
    end component;

begin

--  multcell: combinational_multcell port map (
--      An => ...,
--      B => ...,
--      Z => ...,
--      R0 => ...,
--      Rm => ...
--   );

end combinational;
