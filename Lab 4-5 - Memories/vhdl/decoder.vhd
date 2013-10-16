library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_unsigned.all;
-- use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity decoder is
    port(
        address    : in  std_logic_vector(15 downto 0);
        cs_LEDS    : out std_logic;
        cs_RAM     : out std_logic;
        cs_ROM     : out std_logic
    );
end decoder;

architecture synth of decoder is
	constant END_ADDR : std_logic_vector(15 downto 0) := "0010000000010000";
begin
    process(address)
    begin
        if (address(15 downto 12) = "0000") then
            cs_LEDS <= '0';
            cs_RAM  <= '0';
            cs_ROM  <= '1';
        elsif (address(15 downto 12) = "0001") then
            cs_LEDS <= '0';
            cs_RAM  <= '1';
            cs_ROM  <= '0';

			-- "0010000000010000" == 0x2010
        elsif (unsigned(address) < unsigned(END_ADDR)) then
            cs_LEDS <= '1';
            cs_ROM  <= '0';
            cs_RAM  <= '0';
			else
				cs_LEDS <= '0';
            cs_ROM  <= '0';
            cs_RAM  <= '0';
        end if;
    end process;
end synth;
