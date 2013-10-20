-- Copyright (C) 1991-2012 Altera Corporation
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
-- VERSION		"Version 12.0 Build 178 05/31/2012 SJ Full Version"
-- CREATED		"Wed Sep 25 11:34:09 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Multiplier_8bits IS 
	PORT
	(
		reset_n :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		start_n :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		done :  OUT  STD_LOGIC;
		P :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END Multiplier_8bits;

ARCHITECTURE bdf_type OF Multiplier_8bits IS 

COMPONENT add
	PORT(a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT and1x8
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT clk_divider
	PORT(clk : IN STD_LOGIC;
		 clk_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT controller
	PORT(clk : IN STD_LOGIC;
		 start : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 done : OUT STD_LOGIC;
		 load_multiplier : OUT STD_LOGIC;
		 shift_multiplier : OUT STD_LOGIC;
		 load_multiplicand : OUT STD_LOGIC;
		 reset_product : OUT STD_LOGIC;
		 load_product : OUT STD_LOGIC;
		 shift_product : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT multiplicand
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 datain : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 dataout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT multiplier
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 shift_right : IN STD_LOGIC;
		 datain : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 dataout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT product
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 shift_right : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 datain : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 dataout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	add_out :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	and_out :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	load_multiplicand :  STD_LOGIC;
SIGNAL	load_multiplier :  STD_LOGIC;
SIGNAL	load_product :  STD_LOGIC;
SIGNAL	multiplicand_out :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	multiplier_out :  STD_LOGIC;
SIGNAL	product_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	reset :  STD_LOGIC;
SIGNAL	reset_product :  STD_LOGIC;
SIGNAL	shift_multiplier :  STD_LOGIC;
SIGNAL	shift_product :  STD_LOGIC;
SIGNAL	start :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



b2v_add_0 : add
PORT MAP(a => product_out(15 DOWNTO 8),
		 b => and_out,
		 s => add_out);


b2v_and_0 : and1x8
PORT MAP(a => multiplier_out,
		 b => multiplicand_out,
		 s => and_out);


b2v_clk_divider_0 : clk_divider
PORT MAP(clk => clk,
		 clk_out => SYNTHESIZED_WIRE_4);


b2v_controller_0 : controller
PORT MAP(clk => SYNTHESIZED_WIRE_4,
		 start => start,
		 reset => reset,
		 done => done,
		 load_multiplier => load_multiplier,
		 shift_multiplier => shift_multiplier,
		 load_multiplicand => load_multiplicand,
		 reset_product => reset_product,
		 load_product => load_product,
		 shift_product => shift_product);


b2v_multiplicand_0 : multiplicand
PORT MAP(clk => SYNTHESIZED_WIRE_4,
		 load => load_multiplicand,
		 datain => B,
		 dataout => multiplicand_out);


b2v_multiplier_0 : multiplier
PORT MAP(clk => SYNTHESIZED_WIRE_4,
		 load => load_multiplier,
		 shift_right => shift_multiplier,
		 datain => A,
		 dataout => multiplier_out);


reset <= NOT(reset_n);



start <= NOT(start_n);



b2v_product_0 : product
PORT MAP(clk => SYNTHESIZED_WIRE_4,
		 load => load_product,
		 shift_right => shift_product,
		 reset => reset_product,
		 datain => add_out,
		 dataout => product_out);

P <= product_out;

END bdf_type;