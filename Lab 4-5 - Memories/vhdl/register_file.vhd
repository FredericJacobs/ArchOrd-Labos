library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity register_file is
    port(
        clk : in std_logic;
        aa : in std_logic_vector(4 downto 0);
        ab : in std_logic_vector(4 downto 0);
        aw : in std_logic_vector(4 downto 0);
        wren : in std_logic;
        wrdata : in std_logic_vector(31 downto 0);
        a : out std_logic_vector(31 downto 0);
        b : out std_logic_vector(31 downto 0)
    );
end register_file;

architecture synth of register_file is
    type reg_type is array(0 to 31) of std_logic_vector(31 downto 0);
    signal reg: reg_type := (others =>(others=>'0'));
begin

    process(aa)
    begin
        if(aa = "00000") then
            a <= (others => '0');
        else
            a <= reg((conv_integer(aa)));
        end if;
    end process;

    process(ab)
    begin
        if(ab = "00000") then
            b <= (others => '0');
        else
            b <= reg((conv_integer(ab)));
        end if;
    end process;

    process(clk, aw, wren, wrdata)
    begin
        if(clk'event and clk = '1' and wren = '1') then
            if(not (aw = "00000")) then
                reg(conv_integer(aw)) <= wrdata;
            end if;
        end if;
    end process;

end synth;
