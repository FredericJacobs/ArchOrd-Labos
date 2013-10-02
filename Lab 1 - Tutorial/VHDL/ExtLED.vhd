-- Extension Module for access to the DE0 board with Extension module LED RGB, switch and jyostick
-- EPFL/LAP
-- R.Beuchat
--
-- 2012/08/20	0.0	Initial version
--

-- First variant: Emulate the FPGA4U board

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
--USE IEEE.numeric_std.all;
  
entity ExtLED is
generic ( NbLED : natural := 96 ) ;
port(
	Clk : in			std_logic;					-- The input Clock, timing must be adapted from this freq.				
	Reset : in			std_logic;					-- Active High global Reset
	LED	: in			std_logic_vector(0 to NbLED-1);	-- This 96s bit LED array
	LED_COLOR: in		std_logic_vector(2 downto 0);	-- The RGB color, R: bit0, G: bit1, B: bit 2
	LED_SELC_n : out	std_logic_vector(0 to 11);		-- Output to select one Column at a time, 0..11 (active LOW)
	LED_SEL_R : out 	std_logic_vector(0 to 7);		-- The Red row selection 0..7
	LED_SEL_G : out 	std_logic_vector(0 to 7);		-- The Green row selection 0..7
	LED_SEL_B : out 	std_logic_vector(0 to 7);		-- The Blue row selection 0..7
	LED_Reset : out		std_logic						-- To short-circuit the Anode of all LEDs
														-- NOT to be activated with LED_SELC_n !!!
);
end entity ExtLED;

architecture bhv of ExtLED is
	type tSM is (stIdle, stSELC, stRzLED, stGap1, stGap2, stGap3, stEnCol);
	subtype tCntTime is natural range 0 to 100*1000*25; -- time max counter
	constant NbMaxCol  : natural := 12;
	constant Time1us  : tCntTime := 4;		-- 20	-- Nb Clk / us ---> TO BE ADAPTED
	constant TimeMaxLED : tCntTime := 5*Time1us;		-- 80-- Nb de 1us
	constant TimeRz  : tCntTime := 1*Time1us;			-- Nb de 1us

	signal iCntCol : natural range 0 to NbMaxCol-1;
	signal iCntTime : tCntTime ;
	signal PresentSt, NextSt: tSM;
	signal EnCntus : std_logic;
	signal RzCntus : std_logic;
	signal ENextCol : std_logic;
	
	-- Process to syncronized the present state output
begin
pST:
	process(Clk, Reset)
	begin
	if Reset = '1' then
		PresentSt <= stIdle;
	elsif rising_edge(Clk) then
		PresentSt <= NextSt;
	end if;
end process pST;

	-- Process counter of column
	-- Loop for all the column, incremented by the state machine once per coloumn time illumination
	
pCountCol:
	process(Clk, Reset)
	begin
	if Reset = '1' then
		iCntCol <= 0;
	elsif rising_edge(Clk) then
		if ENextCol = '1' then
			if iCntCol >= NbMaxCol-1 then
				iCntCol <= 0;
			else
				iCntCol <= iCntCol+1;
			end if;
		end if;
	end if;
end process pCountCol;

	-- Process counter of time
	-- Can be resetted and enabled
	-- Used and controlled by state machine for delay
	
pCountTime:
	process(Clk, Reset)
	begin
	if Reset = '1' then
		iCntTime <= 0;
	elsif rising_edge(Clk) then
		if RzCntus = '1'  then
			iCntTime <= 0;
		elsif EnCntus = '1' then
			iCntTime <= iCntTime+1;
		end if;
	end if;
end process pCountTime;

	-- process for controlling the LED Output
	-- A state machine
	-- Activate a Reset on Anode LEDS for ~1us
	-- Activate one column at a time, and during this time all the alighted LEDs on this colonne, depending on the
	-- selected color on LED_COLOR input. Now 1 bit per RGB, could be enhanced with a PWM for light modulation
	-- Loop continuously for ever
	
pLED:
	process(PresentSt, iCntTime, iCntCol, LED_COLOR, LED)
	begin	
	RzCntus <= '0';					-- Disable by default
	EnCntus <= '0';					-- Disable by default
	ENextCol <= '0';				-- Disable by default
	LED_Reset <= '0';				-- Disable by default
	LED_SELC_n <= (others => '1');	-- Disable by default
	LED_SEL_R <= (others => '0');	-- Disable by default
	LED_SEL_G <= (others => '0');	-- Disable by default
	LED_SEL_B <= (others => '0');	-- Disable by default
	
	case PresentSt is
		when stIdle => 
						RzCntus <= '1';
						NextSt <= stGap1;
		when stGap1 => 
						RzCntus <= '1';
						NextSt <= stRzLED;
						ENextCol <= '1';				-- Next Column
		when stRzLED =>
						EnCntus <= '1' ;
						LED_Reset <= '1';
						if iCntTime >= (TimeRz-1) then
							NextSt <= stGap2;
							RzCntus <= '1';
						else 
							NextSt <= stRzLED;			-- stay here
						end if;

		when stGap2 => 
						-- LED_SELC_n(iCntCol) <= '0';	-- activate column
						NextSt <= stEnCol;
		when stEnCol =>			
						EnCntus <= '1' ;
						LED_SELC_n(iCntCol) <= '0';	-- activate column
						for i in  0 to 7 loop
							LED_SEL_R(i) <= LED_COLOR(0) AND LED(i + 8 * iCntCol);
							LED_SEL_G(i) <= LED_COLOR(1) AND LED(i + 8 * iCntCol);
							LED_SEL_B(i) <= LED_COLOR(2) AND LED(i + 8 * iCntCol);
						end loop;
						if iCntTime = TimeMaxLED then
							NextSt <= stGap1;
							RzCntus <= '1';
						else 
							NextSt <= stEnCol;			-- stay here
						end if;
		when others =>
						NextSt <= stIdle;
	end case;
	
end process pLED;
	
		
end architecture bhv;