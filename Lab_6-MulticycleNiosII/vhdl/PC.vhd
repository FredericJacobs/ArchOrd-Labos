library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

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
	signal reg_addr : std_logic_vector(31 downto 0);
begin
    process(clk, reset_n, en)
    begin
			if(reset_n = '0') then
				reg_addr <= (others => '0');
        elsif(rising_edge(clk) and en = '1') then  
				if(add_imm = '1') then
					-- PC <- PC + IMM
					reg_addr <= std_logic_vector(signed(reg_addr) + signed(imm));
				elsif(sel_imm = '1') then
					-- PC <- IMM << 2
					reg_addr <= (15 downto 0 => '0') & std_logic_vector(signed(imm) sll 2);
				elsif(sel_a = '1') then
					-- PC <- A
					reg_addr <= (31 downto 16 => '0') & a;
				else
					-- PC <- PC + 4
					reg_addr <= std_logic_vector(unsigned(reg_addr) + 4);
				end if;
        end if;
    end process;
	 
	 addr <= reg_addr;
	 
end synth;
