	library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity controller is
	port(
		clk        : in  std_logic;
		reset_n    : in  std_logic;
		-- instruction opcode
		op         : in  std_logic_vector(5 downto 0);
		opx        : in  std_logic_vector(5 downto 0);
		-- activates branch condition
		branch_op  : out std_logic;
		-- immediate value sign extention
		imm_signed : out std_logic;
		-- instruction register enable
		ir_en      : out std_logic;
		-- PC control signals
		pc_add_imm : out std_logic;
		pc_en      : out std_logic;
		pc_sel_a   : out std_logic;
		pc_sel_imm : out std_logic;
		-- register file enable
		rf_wren    : out std_logic;
		-- multiplexers selections
		sel_addr   : out std_logic;
		sel_b      : out std_logic;
		sel_mem    : out std_logic;
		sel_pc     : out std_logic;
		sel_ra     : out std_logic;
		sel_rC     : out std_logic;
		-- write memory output
		read       : out std_logic;
		write      : out std_logic;
		-- alu op
		op_alu     : out std_logic_vector(5 downto 0)
	);
end controller;

architecture synth of controller is
	type State is (FETCH1, FETCH2, DECODE, R_OP, STORE, BREAK, LOAD1, LOAD2, I_OP, BRANCH);
	signal currentState, nextState : State;
begin
  
  
	process(clk, reset_n)
		begin
			if(reset_n = '0') then
				currentState <= FETCH1;
			elsif(rising_edge(clk))then
				currentState <= nextState;
			end if;
	end process;

	process(currentState, op, opx)
	begin
		branch_op   <= '0';
		imm_signed  <= '0';
		ir_en       <= '0';
		pc_add_imm  <= '0';
		pc_en       <= '0';
		pc_sel_a    <= '0';
		pc_sel_imm  <= '0';
		rf_wren     <= '0';
		sel_addr    <= '0';
		sel_b       <= '0';
		sel_mem     <= '0';
		sel_pc      <= '0';
		sel_ra      <= '0';
		sel_rC      <= '0';
		read        <= '0';
		write       <= '0';

		case(currentState) is

			-- During this ﬁrst state of the execution, the address of the next instruction and
			-- the signal read are set to start a new read process.
			-- The instruction word will be available during the next cycle.
			when FETCH1 =>

				-- Read input from rddata
				read <= '1';
				
				branch_op <= '0';

				nextState <= FETCH2;

			-- During this state, the instruction word is read from the
			-- input rddata, and saved in a register.
			when FETCH2 =>

				-- Enable the instruction register to load and
				-- save its input at the next rising edge of the clock
				ir_en <= '1';

				-- Enable the PC to increment the current address by 4
				pc_en <= '1';

				nextState <= DECODE;

			-- During this state, the Controller reads the opcode of the instruction
			-- to identify the current instruction, and determines the next state.
			when DECODE =>

				case("00" & op) is

					when x"3A" =>

						case("00" & opx) is

							when x"34" =>
								nextState <= BREAK;

							when others =>
								nextState <= R_OP;

						end case;

					-- addi rB, rA, imm
					-- rB <= rA + (signed)imm
					when x"04" =>
						nextState <= I_OP;

					-- ldw rB, imm(rA)
					-- rB <= Mem[rA + (signed)imm]
					when x"17" =>
						nextState <= LOAD1;

					-- stw rB, imm(rA)
					-- Mem[rA + (signed)imm] <= rB
					when x"15" =>
						nextState <= STORE;
						
					when x"06" => nextState <= BRANCH;
					when x"0E" => nextState <= BRANCH;
					when x"16" => nextState <= BRANCH;
					when x"1E" => nextState <= BRANCH;
					when x"26" => nextState <= BRANCH;
					when x"2E" => nextState <= BRANCH;
					when x"36" => nextState <= BRANCH;
					
					when others =>
						nextState <= BREAK;
				end case;

			-- This state executes operations between a register and an immediate value
			-- that is embedded in the instruction word, and saves the result in a second register.
			when I_OP =>

				-- Use signed immediate value
				imm_signed <= '1';

				-- Enable writes on the register file
				-- to save the result of the ALU
				rf_wren <= '1';

				-- Go back to the initial state.
				nextState <= FETCH1;

			-- This state executes operations between two registers,
			-- and saves the result in a third register.
			when R_OP =>

				-- Select registers A, B and C
				sel_b <= '1';
				sel_rC <= '1';
				
				-- Enable writes on the register file
				-- to save the result of the ALU
				rf_wren <= '1';

				-- Go back to the initial state.
				nextState <= FETCH1;
			
			-- During the state LOAD1, the address to read is computed by the ALU
			-- (adding the signed immediate value to a) and the signal read is set to
			-- start a read process. The read value will be available during LOAD2.
			when LOAD1 =>

				-- Select the memory address from either the PC address or the result of the ALU.
				sel_addr <= '1';

				sel_b <= '0';
				
				imm_signed <= '1';	

				-- Read from the memory at the previously computed address
				read <= '1';

				-- Then go to LOAD2 at the next clock cycle where the read value will be available.
				nextState <= LOAD2;

			-- During the state LOAD2, the memory data is written to
			-- the Register File at the address speciﬁed by B
			when LOAD2 =>

				-- Enable writes on the Register File
				rf_wren <= '1';

				sel_rC <= '0';

				-- Select the data to write to the Register File from
				-- either the result of the ALU or the rddata input.
				sel_mem <= '1';

				-- Go back to the initial state.
				nextState <= FETCH1;

			-- During this state, the ALU computes the memory address as for a ldw instruction,
			-- and the Controller activates the write output signal to start a write process.
			-- The data to write is held in register B.
			when STORE =>

				-- Select the memory address from either the PC address or the result of the ALU.
				sel_addr <= '1';

				sel_b <= '0';
				
				imm_signed <= '1';

				-- Start a write process to the memory.
				write <= '1';

				-- Go back to the initial state.
				nextState <= FETCH1;

			-- This instruction will be used to stop the CPU execution.
			when BREAK =>
				nextState <= BREAK;
				
			when BRANCH =>
				
				nextState <= FETCH1;
				
				branch_op <= '1';
				sel_b <= '1';
				
				-- Tell the PC to add IMM to the current PC
				-- which it will do only if either pc_en = '1'
				-- or if (branch_op & alu_res(0)) = '1'1 
				pc_add_imm <= '1';
				
				case ("00" & op) is
					-- br label (no condition)
					when x"06" =>
						-- unconditional jump, enable the PC
						-- to jump to the given address.
						pc_en <= '1';
						
					-- conditional jumps
					-- let the ALU do the corresponding operations
					-- and if the rightmost bit of alu_res is '1'
					-- then the PC will be enabled.
					when others =>
				end case;

			when others =>
		end case;
	end process;
	
	process(op, opx)
	begin
		case("00" & op) is
		
			-- R_OP
			when x"3A" =>
				case("00" & opx) is
				
					-- and rC, rA, rB
					-- rC <= rA & rB
					when x"0E" =>
						op_alu <= "100001";

					-- srl rC, rA, rB
					-- rC <= (unsigned)rA >> rB[4..0]
					when x"1B" =>
						op_alu <= "110011";
						
					when others =>
						-- Default to addition
						op_alu <= "000000";
						
				end case;
			
			-- I_OP
			when x"04" =>
				op_alu <= "000000";
			
			-- rA >= rB
			when x"0E" =>
				op_alu <= "011001";
			
			-- rA < rB
			when x"16" =>
				op_alu <= "011010";
				
			-- rA != rB
			when x"1E" =>
				op_alu <= "011011";
				
			-- ra == rB
			when x"26" =>
				op_alu <= "011100";
				
			-- (unsigned)rA >= (unsigned)rB
			when x"2E" =>
				op_alu <= "011101";
				
			-- (unsigned)rA < (unsigned)rB
			when x"36" =>
				op_alu <= "011110";
			
			when others => 
				-- Default to rA + rB
				op_alu <= "000000";
		end case;
	end process;
end synth;
