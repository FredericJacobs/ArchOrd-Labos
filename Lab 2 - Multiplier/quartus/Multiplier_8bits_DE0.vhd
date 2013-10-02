-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Tue Oct 01 19:43:38 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Multiplier_8bits_DE0 IS 
	PORT
	(
		CLOCK :  IN  STD_LOGIC;
		Button_n0 :  IN  STD_LOGIC;
		Button_n3 :  IN  STD_LOGIC;
		KEY_n :  IN  STD_LOGIC_VECTOR(0 TO 0);
		Sw_LedA :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Sw_LEDB :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		LED_Reset :  OUT  STD_LOGIC;
		LED_Sel_B :  OUT  STD_LOGIC_VECTOR(0 TO 7);
		LED_Sel_G :  OUT  STD_LOGIC_VECTOR(0 TO 7);
		LED_Sel_R :  OUT  STD_LOGIC_VECTOR(0 TO 7);
		LED_SelC_n :  OUT  STD_LOGIC_VECTOR(0 TO 11);
		LedButton :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Multiplier_8bits_DE0;

ARCHITECTURE bdf_type OF Multiplier_8bits_DE0 IS 

COMPONENT multiplier_8bits
	PORT(clk : IN STD_LOGIC;
		 reset_n : IN STD_LOGIC;
		 start_n : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 done : OUT STD_LOGIC;
		 P : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant0
	PORT(		 result : OUT STD_LOGIC_VECTOR(79 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rgb_led96
GENERIC (DEFAULT_COLOR : STD_LOGIC_VECTOR(23 DOWNTO 0)
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 color : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 LEDs : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
		 LED_Reset : OUT STD_LOGIC;
		 LED_SEL_B : OUT STD_LOGIC_VECTOR(0 TO 7);
		 LED_SEL_G : OUT STD_LOGIC_VECTOR(0 TO 7);
		 LED_SEL_R : OUT STD_LOGIC_VECTOR(0 TO 7);
		 LED_SELC_n : OUT STD_LOGIC_VECTOR(0 TO 11)
	);
END COMPONENT;

SIGNAL	clk :  STD_LOGIC;
SIGNAL	GND :  STD_LOGIC;
SIGNAL	product_out :  STD_LOGIC_VECTOR(0 TO 15);
SIGNAL	reset :  STD_LOGIC;
SIGNAL	reset_n :  STD_LOGIC;
SIGNAL	VCC :  STD_LOGIC;
SIGNAL	zero :  STD_LOGIC_VECTOR(0 TO 79);

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(95 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (zero(0 TO 79) & product_out(0 TO 15));



b2v_inst : multiplier_8bits
PORT MAP(clk => clk,
		 reset_n => Button_n3,
		 start_n => Button_n0,
		 A => Sw_LedA,
		 B => Sw_LEDB,
		 done => LedButton(0),
		 P => product_out);


b2v_inst1 : lpm_constant0
PORT MAP(		 result => zero);


reset <= NOT(reset_n);



b2v_inst4 : rgb_led96
GENERIC MAP(DEFAULT_COLOR => "000000001111111111111111"
			)
PORT MAP(clk => clk,
		 reset => reset,
		 LEDs => GDFX_TEMP_SIGNAL_0,
		 LED_Reset => LED_Reset,
		 LED_SEL_B => LED_Sel_B,
		 LED_SEL_G => LED_Sel_G,
		 LED_SEL_R => LED_Sel_R,
		 LED_SELC_n => LED_SelC_n);


clk <= CLOCK;
reset_n <= KEY_n(0);
LedButton(3 DOWNTO 1) <= zero[2..0](0 TO 2);

GND <= '0';
VCC <= '1';
END bdf_type;