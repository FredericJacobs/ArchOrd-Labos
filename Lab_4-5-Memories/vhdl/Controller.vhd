library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
    port(
        clk     : in  std_logic;
        reset_n : in  std_logic;
        read    : out std_logic;
        write   : out std_logic;
        address : out std_logic_vector(15 downto 0);
        rddata  : in  std_logic_vector(31 downto 0);
        wrdata  : out std_logic_vector(31 downto 0)
    );
end controller;

architecture synth of controller is
    type ControllerState is (S0, S1, S2, S3, S4, S5);
    signal state, nextState : ControllerState;
    signal ROMaddr, nextROMaddr : std_logic_vector(15 downto 0);
    signal length, nextLength : std_logic_vector(15 downto 0);
    signal rdaddr, nextRdaddr : std_logic_vector(15 downto 0);
    signal wraddr, nextWraddr : std_logic_vector(15 downto 0);
begin
-- we need to make the reset and clock process the same because state can't be assigned in 2 separate processes.
	process(clk, reset_n)
		begin 
			if(reset_n='1')then
				state <= S0;
				ROMaddr <= (others =>'0');
			elsif(rising_edge(clk))then
			state <= nextState;
			ROMaddr <= nextROMaddr;
			rdaddr <= nextRdaddr;
			wraddr <= nextWraddr;
			length <= nextlength;
		end if;
	end process;
	
	process(state, rdaddr, wraddr, ROMaddr)
	begin 
		-- let's write default values otherwise we'll have to fill all these values in each case.
		read <= '0';
		write <= '0';
		address <= ROMaddr;
		wrdata <= rddata;
	
		nextState <= state;
		nextROMaddr <= ROMaddr;
		nextLength <= length;
		nextRdaddr <= rdaddr;
		nextWraddr <= wraddr;
		
		case state is
			when S0 =>
				read <= '1';
            	address <= ROMaddr;
				nextROMaddr <= std_logic_vector(unsigned(ROMaddr) + 4);
            	nextState <= S1;
				
			when S1 =>
				read <= '1';
        address <= ROMaddr;
                
				if(rddata = (31 downto 0 => '0')) then
     	    nextState <= S5;
        else
       	  nextState<= S2;
          nextROMaddr <= std_logic_vector(unsigned(ROMaddr) + 4);
          nextLength <= rddata(15 downto 0);
        end if;
					
				when S2 =>
          nextState <= S3;
          nextRdaddr <= rddata(31 downto 16);
          nextWraddr <= rddata(15 downto 0);
					address <= (others => '0');
        
        when S3 =>
          read <= '1';
          address <= rdaddr;
          if(length = (15 downto 0 => '0')) then
            nextState <= S0;
          else
            nextState <= S4;
            nextRdaddr <= std_logic_vector(unsigned(rdaddr) + 4);
            length <= std_logic_vector(unsigned(length) - 1);
          end if;
          
          when S4 =>
            write <= '1';
            address <= wraddr;
            nextState <= S3;
            nextWraddr <= std_logic_vector(unsigned(wraddr) + 4);
          
           when S5 =>
            nextState <= S5;
            read <= '0';
            write <= '0';
					  address <= (others => '0');
            
           when others => null;
            end case;
    end process;

end synth;
