library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity combinational_multcell is
    port(
        An         : in  std_logic;
        B          : in  std_logic_vector(7 downto 0);
        Z          : in  std_logic_vector(7 downto 0);
        Rm         : out std_logic_vector(7 downto 0);
        R0         : out std_logic
    );
end combinational_multcell;

architecture combinational of combinational_multcell is

component and1x8
    port(a : in std_logic;
         b : in std_logic_vector(7 downto 0);
         s : out std_logic_vector(7 downto 0)
    );
end component;

component add
    port(a : in std_logic_vector(7 downto 0);
         b : in std_logic_vector(7 downto 0);
         s : out std_logic_vector(8 downto 0)
    );
end component;

signal add_out :  std_logic_vector(8 downto 0);
signal and_out :  std_logic_vector(7 downto 0);

begin

b2v_add_0 : add
port map(a => Z,
         b => and_out,
         s => add_out);


b2v_and_0 : and1x8
port map(a => An,
         b => B,
         s => and_out);

R0 <= add_out(0);
Rm <= add_out(8 downto 1);

end combinational;
