library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity add_sub is
    port(
        a        : in  std_logic_vector(31 downto 0);
        b        : in  std_logic_vector(31 downto 0);
        sub_mode : in  std_logic;
        carry    : out std_logic;
        zero     : out std_logic;
        r        : out std_logic_vector(31 downto 0)
    );
end add_sub;

architecture synth of add_sub is
begin

process(a, b, sub_mode)
variable add_r  : std_logic_vector(32 downto 0) := (others => '0');
variable temp_a : std_logic_vector(32 downto 0) := (others => '0');
variable temp_b : std_logic_vector(32 downto 0) := (others => '0');
begin 
	temp_a := '0' & a;
	
	if(sub_mode = '1') then
		temp_b := '0' & not b;
	else
		temp_b := '0' & b;
	end if;
	
	add_r := temp_a + temp_b + sub_mode;
	
	r <= add_r(31 downto 0);
	carry <= add_r(32);
	
	if(add_r = (32 downto 0 => '0')) then
		zero <= '1';
	else
		zero <= '0';
	end if;

end process;

end synth;
