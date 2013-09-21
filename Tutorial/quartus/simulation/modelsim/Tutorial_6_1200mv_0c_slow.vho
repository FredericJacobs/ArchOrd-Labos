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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Full Version"

-- DATE "09/18/2013 10:57:16"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Tutorial IS
    PORT (
	LED_Reset : OUT std_logic;
	CLOCK : IN std_logic;
	Button_n : IN std_logic_vector(0 TO 3);
	Sw_LedA : IN std_logic_vector(7 DOWNTO 0);
	Sw_LedB : IN std_logic_vector(7 DOWNTO 0);
	LED_Sel_B : OUT std_logic_vector(0 TO 7);
	LED_Sel_G : OUT std_logic_vector(0 TO 7);
	LED_Sel_R : OUT std_logic_vector(0 TO 7);
	LED_SelC_n : OUT std_logic_vector(0 TO 11)
	);
END Tutorial;

-- Design Ports Information
-- LED_Reset	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[0]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[1]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[2]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[3]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[4]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[5]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[6]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_B[7]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[0]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[1]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[2]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[3]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[4]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[5]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[6]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_G[7]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[0]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[1]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[2]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[3]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[4]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[5]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[6]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_Sel_R[7]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[0]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[2]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[3]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[4]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[5]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[6]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[7]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[8]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[9]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[10]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LED_SelC_n[11]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Sw_LedB[7]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[7]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Button_n[3]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Button_n[2]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedB[6]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[6]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedB[5]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[5]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedB[4]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedB[3]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedB[2]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedB[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedB[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Button_n[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Button_n[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF Tutorial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED_Reset : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_Button_n : std_logic_vector(0 TO 3);
SIGNAL ww_Sw_LedA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sw_LedB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Sel_B : std_logic_vector(0 TO 7);
SIGNAL ww_LED_Sel_G : std_logic_vector(0 TO 7);
SIGNAL ww_LED_Sel_R : std_logic_vector(0 TO 7);
SIGNAL ww_LED_SelC_n : std_logic_vector(0 TO 11);
SIGNAL \Button_n[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|add_op[2]~4_combout\ : std_logic;
SIGNAL \inst|add_op[6]~13\ : std_logic;
SIGNAL \inst|add_op[7]~14_combout\ : std_logic;
SIGNAL \inst2|count[6]~41_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|Add1~20_combout\ : std_logic;
SIGNAL \inst1|Add1~24_combout\ : std_logic;
SIGNAL \inst1|Add1~26_combout\ : std_logic;
SIGNAL \inst1|Add1~28_combout\ : std_logic;
SIGNAL \inst1|Add1~30_combout\ : std_logic;
SIGNAL \inst1|Add1~32_combout\ : std_logic;
SIGNAL \inst1|Add1~38_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|PresentSt.stGap2~q\ : std_logic;
SIGNAL \inst1|iCntTime[4]~5_combout\ : std_logic;
SIGNAL \inst1|iCntTime[19]~11_combout\ : std_logic;
SIGNAL \inst1|iCntTime[14]~16_combout\ : std_logic;
SIGNAL \inst1|iCntTime[12]~18_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[3]~34_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[2]~36_combout\ : std_logic;
SIGNAL \Sw_LedA[5]~input_o\ : std_logic;
SIGNAL \Sw_LedA[4]~input_o\ : std_logic;
SIGNAL \LED_Reset~output_o\ : std_logic;
SIGNAL \LED_Sel_B[0]~output_o\ : std_logic;
SIGNAL \LED_Sel_B[1]~output_o\ : std_logic;
SIGNAL \LED_Sel_B[2]~output_o\ : std_logic;
SIGNAL \LED_Sel_B[3]~output_o\ : std_logic;
SIGNAL \LED_Sel_B[4]~output_o\ : std_logic;
SIGNAL \LED_Sel_B[5]~output_o\ : std_logic;
SIGNAL \LED_Sel_B[6]~output_o\ : std_logic;
SIGNAL \LED_Sel_B[7]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[0]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[1]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[2]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[3]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[4]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[5]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[6]~output_o\ : std_logic;
SIGNAL \LED_Sel_G[7]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[0]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[1]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[2]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[3]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[4]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[5]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[6]~output_o\ : std_logic;
SIGNAL \LED_Sel_R[7]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[0]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[1]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[2]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[3]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[4]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[5]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[6]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[7]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[8]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[9]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[10]~output_o\ : std_logic;
SIGNAL \LED_SelC_n[11]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|PresentSt.stIdle~feeder_combout\ : std_logic;
SIGNAL \Button_n[1]~input_o\ : std_logic;
SIGNAL \Button_n[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|PresentSt.stIdle~q\ : std_logic;
SIGNAL \inst1|iCntTime[20]~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|PresentSt.stEnCol~q\ : std_logic;
SIGNAL \inst1|iCntTime[21]~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|iCntTime[16]~14_combout\ : std_logic;
SIGNAL \inst1|iCntTime[15]~15_combout\ : std_logic;
SIGNAL \inst1|iCntTime[8]~22_combout\ : std_logic;
SIGNAL \inst1|iCntTime[5]~3_combout\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|iCntTime[9]~21_combout\ : std_logic;
SIGNAL \inst1|Add1~19\ : std_logic;
SIGNAL \inst1|Add1~21\ : std_logic;
SIGNAL \inst1|Add1~22_combout\ : std_logic;
SIGNAL \inst1|iCntTime[11]~19_combout\ : std_logic;
SIGNAL \inst1|Add1~23\ : std_logic;
SIGNAL \inst1|Add1~25\ : std_logic;
SIGNAL \inst1|Add1~27\ : std_logic;
SIGNAL \inst1|Add1~29\ : std_logic;
SIGNAL \inst1|Add1~31\ : std_logic;
SIGNAL \inst1|Add1~33\ : std_logic;
SIGNAL \inst1|Add1~34_combout\ : std_logic;
SIGNAL \inst1|iCntTime[17]~13_combout\ : std_logic;
SIGNAL \inst1|Add1~35\ : std_logic;
SIGNAL \inst1|Add1~36_combout\ : std_logic;
SIGNAL \inst1|iCntTime[18]~12_combout\ : std_logic;
SIGNAL \inst1|Add1~37\ : std_logic;
SIGNAL \inst1|Add1~39\ : std_logic;
SIGNAL \inst1|Add1~40_combout\ : std_logic;
SIGNAL \inst1|iCntTime[20]~10_combout\ : std_logic;
SIGNAL \inst1|Add1~41\ : std_logic;
SIGNAL \inst1|Add1~42_combout\ : std_logic;
SIGNAL \inst1|iCntTime[21]~9_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|iCntTime[6]~24_combout\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|iCntTime[7]~23_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|iCntTime[13]~17_combout\ : std_logic;
SIGNAL \inst1|iCntTime[10]~20_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|iCntTime[21]~2_combout\ : std_logic;
SIGNAL \inst1|iCntTime[1]~7_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|iCntTime[2]~6_combout\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|iCntTime[3]~4_combout\ : std_logic;
SIGNAL \inst1|iCntTime[0]~8_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|PresentSt.stGap1~q\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|PresentSt.stRzLED~q\ : std_logic;
SIGNAL \inst1|iCntCol~1_combout\ : std_logic;
SIGNAL \inst1|iCntCol~3_combout\ : std_logic;
SIGNAL \inst1|iCntCol~0_combout\ : std_logic;
SIGNAL \inst1|iCntCol~2_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[0]~6_combout\ : std_logic;
SIGNAL \inst2|count[1]~31_combout\ : std_logic;
SIGNAL \Button_n[0]~input_o\ : std_logic;
SIGNAL \inst2|count[1]~32\ : std_logic;
SIGNAL \inst2|count[2]~33_combout\ : std_logic;
SIGNAL \inst2|count[2]~34\ : std_logic;
SIGNAL \inst2|count[3]~36\ : std_logic;
SIGNAL \inst2|count[4]~37_combout\ : std_logic;
SIGNAL \inst2|count[4]~38\ : std_logic;
SIGNAL \inst2|count[5]~40\ : std_logic;
SIGNAL \inst2|count[6]~42\ : std_logic;
SIGNAL \inst2|count[7]~43_combout\ : std_logic;
SIGNAL \inst2|count[7]~44\ : std_logic;
SIGNAL \inst2|count[8]~45_combout\ : std_logic;
SIGNAL \inst2|count[8]~46\ : std_logic;
SIGNAL \inst2|count[9]~47_combout\ : std_logic;
SIGNAL \inst2|count[9]~48\ : std_logic;
SIGNAL \inst2|count[10]~49_combout\ : std_logic;
SIGNAL \inst2|count[10]~50\ : std_logic;
SIGNAL \inst2|count[11]~52\ : std_logic;
SIGNAL \inst2|count[12]~53_combout\ : std_logic;
SIGNAL \inst2|count[12]~54\ : std_logic;
SIGNAL \inst2|count[13]~56\ : std_logic;
SIGNAL \inst2|count[14]~57_combout\ : std_logic;
SIGNAL \inst2|count[14]~58\ : std_logic;
SIGNAL \inst2|count[15]~59_combout\ : std_logic;
SIGNAL \inst2|count[15]~60\ : std_logic;
SIGNAL \inst2|count[16]~61_combout\ : std_logic;
SIGNAL \inst2|count[16]~62\ : std_logic;
SIGNAL \inst2|count[17]~63_combout\ : std_logic;
SIGNAL \inst2|count[17]~64\ : std_logic;
SIGNAL \inst2|count[18]~65_combout\ : std_logic;
SIGNAL \inst2|count[18]~66\ : std_logic;
SIGNAL \inst2|count[19]~68\ : std_logic;
SIGNAL \inst2|count[20]~69_combout\ : std_logic;
SIGNAL \inst2|count[20]~70\ : std_logic;
SIGNAL \inst2|count[21]~72\ : std_logic;
SIGNAL \inst2|count[22]~74\ : std_logic;
SIGNAL \inst2|count[23]~75_combout\ : std_logic;
SIGNAL \inst2|count[23]~76\ : std_logic;
SIGNAL \inst2|count[24]~77_combout\ : std_logic;
SIGNAL \inst2|count[24]~78\ : std_logic;
SIGNAL \inst2|count[25]~79_combout\ : std_logic;
SIGNAL \inst2|count[25]~80\ : std_logic;
SIGNAL \inst2|count[26]~81_combout\ : std_logic;
SIGNAL \inst2|count[26]~82\ : std_logic;
SIGNAL \inst2|count[27]~84\ : std_logic;
SIGNAL \inst2|count[28]~85_combout\ : std_logic;
SIGNAL \inst2|count[28]~86\ : std_logic;
SIGNAL \inst2|count[29]~88\ : std_logic;
SIGNAL \inst2|count[30]~89_combout\ : std_logic;
SIGNAL \inst2|count[30]~90\ : std_logic;
SIGNAL \inst2|count[31]~91_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[0]~2_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[0]~3_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[7]~4_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[7]~5_combout\ : std_logic;
SIGNAL \Button_n[2]~input_o\ : std_logic;
SIGNAL \Sw_LedB[7]~input_o\ : std_logic;
SIGNAL \Sw_LedA[7]~input_o\ : std_logic;
SIGNAL \inst1|LED_SEL_G[0]~40_combout\ : std_logic;
SIGNAL \Button_n[3]~input_o\ : std_logic;
SIGNAL \inst1|LED_SEL_G[0]~41_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[0]~7_combout\ : std_logic;
SIGNAL \inst2|count[22]~73_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[1]~8_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[1]~9_combout\ : std_logic;
SIGNAL \Sw_LedB[6]~input_o\ : std_logic;
SIGNAL \Sw_LedA[6]~input_o\ : std_logic;
SIGNAL \inst1|LED_SEL_G[1]~38_combout\ : std_logic;
SIGNAL \Sw_LedB[5]~input_o\ : std_logic;
SIGNAL \Sw_LedB[4]~input_o\ : std_logic;
SIGNAL \Sw_LedA[3]~input_o\ : std_logic;
SIGNAL \Sw_LedB[2]~input_o\ : std_logic;
SIGNAL \Sw_LedB[1]~input_o\ : std_logic;
SIGNAL \Sw_LedB[0]~input_o\ : std_logic;
SIGNAL \inst|add_op[0]~1\ : std_logic;
SIGNAL \inst|add_op[1]~3\ : std_logic;
SIGNAL \inst|add_op[2]~5\ : std_logic;
SIGNAL \inst|add_op[3]~7\ : std_logic;
SIGNAL \inst|add_op[4]~9\ : std_logic;
SIGNAL \inst|add_op[5]~11\ : std_logic;
SIGNAL \inst|add_op[6]~12_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[1]~39_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[1]~10_combout\ : std_logic;
SIGNAL \inst|add_op[5]~10_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[2]~37_combout\ : std_logic;
SIGNAL \inst2|count[21]~71_combout\ : std_logic;
SIGNAL \inst2|count[13]~55_combout\ : std_logic;
SIGNAL \inst2|count[29]~87_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[2]~11_combout\ : std_logic;
SIGNAL \inst2|count[5]~39_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[2]~12_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[2]~13_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[3]~14_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[3]~15_combout\ : std_logic;
SIGNAL \inst|add_op[4]~8_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[3]~35_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[3]~16_combout\ : std_logic;
SIGNAL \inst2|count[19]~67_combout\ : std_logic;
SIGNAL \inst2|count[3]~35_combout\ : std_logic;
SIGNAL \inst2|count[27]~83_combout\ : std_logic;
SIGNAL \inst2|count[11]~51_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[4]~17_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[4]~18_combout\ : std_logic;
SIGNAL \Sw_LedB[3]~input_o\ : std_logic;
SIGNAL \inst1|LED_SEL_G[4]~32_combout\ : std_logic;
SIGNAL \inst|add_op[3]~6_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[4]~33_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[4]~19_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[5]~20_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[5]~21_combout\ : std_logic;
SIGNAL \Sw_LedA[2]~input_o\ : std_logic;
SIGNAL \inst1|LED_SEL_G[5]~30_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[5]~31_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[5]~22_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[6]~23_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[6]~24_combout\ : std_logic;
SIGNAL \inst|add_op[1]~2_combout\ : std_logic;
SIGNAL \Sw_LedA[1]~input_o\ : std_logic;
SIGNAL \inst1|LED_SEL_G[6]~28_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[6]~29_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[6]~25_combout\ : std_logic;
SIGNAL \inst|add_op[0]~0_combout\ : std_logic;
SIGNAL \Sw_LedA[0]~input_o\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|count[0]~93_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[7]~26_combout\ : std_logic;
SIGNAL \inst1|LED_SEL_G[7]~27_combout\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[0]~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[1]~1_combout\ : std_logic;
SIGNAL \inst1|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[2]~2_combout\ : std_logic;
SIGNAL \inst1|Decoder0~3_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[3]~3_combout\ : std_logic;
SIGNAL \inst1|Decoder0~4_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[4]~4_combout\ : std_logic;
SIGNAL \inst1|Decoder0~5_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[5]~5_combout\ : std_logic;
SIGNAL \inst1|Decoder0~6_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[6]~6_combout\ : std_logic;
SIGNAL \inst1|Decoder0~7_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[7]~7_combout\ : std_logic;
SIGNAL \inst1|Decoder0~8_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[8]~8_combout\ : std_logic;
SIGNAL \inst1|Decoder0~9_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[9]~9_combout\ : std_logic;
SIGNAL \inst1|Decoder0~10_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[10]~10_combout\ : std_logic;
SIGNAL \inst1|Decoder0~11_combout\ : std_logic;
SIGNAL \inst1|LED_SELC_n[11]~11_combout\ : std_logic;
SIGNAL \inst1|iCntTime\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \inst1|iCntCol\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(31 DOWNTO 0);

BEGIN

LED_Reset <= ww_LED_Reset;
ww_CLOCK <= CLOCK;
ww_Button_n <= Button_n;
ww_Sw_LedA <= Sw_LedA;
ww_Sw_LedB <= Sw_LedB;
LED_Sel_B <= ww_LED_Sel_B;
LED_Sel_G <= ww_LED_Sel_G;
LED_Sel_R <= ww_LED_Sel_R;
LED_SelC_n <= ww_LED_SelC_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Button_n[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Button_n[1]~input_o\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

-- Location: LCCOMB_X28_Y33_N20
\inst|add_op[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[2]~4_combout\ = ((\Sw_LedA[2]~input_o\ $ (\Sw_LedB[2]~input_o\ $ (!\inst|add_op[1]~3\)))) # (GND)
-- \inst|add_op[2]~5\ = CARRY((\Sw_LedA[2]~input_o\ & ((\Sw_LedB[2]~input_o\) # (!\inst|add_op[1]~3\))) # (!\Sw_LedA[2]~input_o\ & (\Sw_LedB[2]~input_o\ & !\inst|add_op[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedA[2]~input_o\,
	datab => \Sw_LedB[2]~input_o\,
	datad => VCC,
	cin => \inst|add_op[1]~3\,
	combout => \inst|add_op[2]~4_combout\,
	cout => \inst|add_op[2]~5\);

-- Location: LCCOMB_X28_Y33_N28
\inst|add_op[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[6]~12_combout\ = ((\Sw_LedA[6]~input_o\ $ (\Sw_LedB[6]~input_o\ $ (!\inst|add_op[5]~11\)))) # (GND)
-- \inst|add_op[6]~13\ = CARRY((\Sw_LedA[6]~input_o\ & ((\Sw_LedB[6]~input_o\) # (!\inst|add_op[5]~11\))) # (!\Sw_LedA[6]~input_o\ & (\Sw_LedB[6]~input_o\ & !\inst|add_op[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedA[6]~input_o\,
	datab => \Sw_LedB[6]~input_o\,
	datad => VCC,
	cin => \inst|add_op[5]~11\,
	combout => \inst|add_op[6]~12_combout\,
	cout => \inst|add_op[6]~13\);

-- Location: LCCOMB_X28_Y33_N30
\inst|add_op[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[7]~14_combout\ = \Sw_LedB[7]~input_o\ $ (\inst|add_op[6]~13\ $ (\Sw_LedA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Sw_LedB[7]~input_o\,
	datad => \Sw_LedA[7]~input_o\,
	cin => \inst|add_op[6]~13\,
	combout => \inst|add_op[7]~14_combout\);

-- Location: FF_X25_Y33_N13
\inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[6]~41_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(6));

-- Location: LCCOMB_X25_Y33_N12
\inst2|count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[6]~41_combout\ = (\inst2|count\(6) & (!\inst2|count[5]~40\)) # (!\inst2|count\(6) & ((\inst2|count[5]~40\) # (GND)))
-- \inst2|count[6]~42\ = CARRY((!\inst2|count[5]~40\) # (!\inst2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datad => VCC,
	cin => \inst2|count[5]~40\,
	combout => \inst2|count[6]~41_combout\,
	cout => \inst2|count[6]~42\);

-- Location: LCCOMB_X24_Y31_N10
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|iCntTime\(0) $ (VCC)
-- \inst1|Add1~1\ = CARRY(\inst1|iCntTime\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X24_Y31_N12
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|iCntTime\(1) & (!\inst1|Add1~1\)) # (!\inst1|iCntTime\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|iCntTime\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X24_Y31_N18
\inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|iCntTime\(4) & (\inst1|Add1~7\ $ (GND))) # (!\inst1|iCntTime\(4) & (!\inst1|Add1~7\ & VCC))
-- \inst1|Add1~9\ = CARRY((\inst1|iCntTime\(4) & !\inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(4),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X24_Y31_N20
\inst1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|iCntTime\(5) & (!\inst1|Add1~9\)) # (!\inst1|iCntTime\(5) & ((\inst1|Add1~9\) # (GND)))
-- \inst1|Add1~11\ = CARRY((!\inst1|Add1~9\) # (!\inst1|iCntTime\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(5),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X24_Y31_N26
\inst1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|iCntTime\(8) & (\inst1|Add1~15\ $ (GND))) # (!\inst1|iCntTime\(8) & (!\inst1|Add1~15\ & VCC))
-- \inst1|Add1~17\ = CARRY((\inst1|iCntTime\(8) & !\inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(8),
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: LCCOMB_X24_Y31_N30
\inst1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~20_combout\ = (\inst1|iCntTime\(10) & (\inst1|Add1~19\ $ (GND))) # (!\inst1|iCntTime\(10) & (!\inst1|Add1~19\ & VCC))
-- \inst1|Add1~21\ = CARRY((\inst1|iCntTime\(10) & !\inst1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(10),
	datad => VCC,
	cin => \inst1|Add1~19\,
	combout => \inst1|Add1~20_combout\,
	cout => \inst1|Add1~21\);

-- Location: LCCOMB_X24_Y30_N2
\inst1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~24_combout\ = (\inst1|iCntTime\(12) & (\inst1|Add1~23\ $ (GND))) # (!\inst1|iCntTime\(12) & (!\inst1|Add1~23\ & VCC))
-- \inst1|Add1~25\ = CARRY((\inst1|iCntTime\(12) & !\inst1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(12),
	datad => VCC,
	cin => \inst1|Add1~23\,
	combout => \inst1|Add1~24_combout\,
	cout => \inst1|Add1~25\);

-- Location: LCCOMB_X24_Y30_N4
\inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~26_combout\ = (\inst1|iCntTime\(13) & (!\inst1|Add1~25\)) # (!\inst1|iCntTime\(13) & ((\inst1|Add1~25\) # (GND)))
-- \inst1|Add1~27\ = CARRY((!\inst1|Add1~25\) # (!\inst1|iCntTime\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(13),
	datad => VCC,
	cin => \inst1|Add1~25\,
	combout => \inst1|Add1~26_combout\,
	cout => \inst1|Add1~27\);

-- Location: LCCOMB_X24_Y30_N6
\inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~28_combout\ = (\inst1|iCntTime\(14) & (\inst1|Add1~27\ $ (GND))) # (!\inst1|iCntTime\(14) & (!\inst1|Add1~27\ & VCC))
-- \inst1|Add1~29\ = CARRY((\inst1|iCntTime\(14) & !\inst1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(14),
	datad => VCC,
	cin => \inst1|Add1~27\,
	combout => \inst1|Add1~28_combout\,
	cout => \inst1|Add1~29\);

-- Location: LCCOMB_X24_Y30_N8
\inst1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~30_combout\ = (\inst1|iCntTime\(15) & (!\inst1|Add1~29\)) # (!\inst1|iCntTime\(15) & ((\inst1|Add1~29\) # (GND)))
-- \inst1|Add1~31\ = CARRY((!\inst1|Add1~29\) # (!\inst1|iCntTime\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(15),
	datad => VCC,
	cin => \inst1|Add1~29\,
	combout => \inst1|Add1~30_combout\,
	cout => \inst1|Add1~31\);

-- Location: LCCOMB_X24_Y30_N10
\inst1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~32_combout\ = (\inst1|iCntTime\(16) & (\inst1|Add1~31\ $ (GND))) # (!\inst1|iCntTime\(16) & (!\inst1|Add1~31\ & VCC))
-- \inst1|Add1~33\ = CARRY((\inst1|iCntTime\(16) & !\inst1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(16),
	datad => VCC,
	cin => \inst1|Add1~31\,
	combout => \inst1|Add1~32_combout\,
	cout => \inst1|Add1~33\);

-- Location: LCCOMB_X24_Y30_N16
\inst1|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~38_combout\ = (\inst1|iCntTime\(19) & (!\inst1|Add1~37\)) # (!\inst1|iCntTime\(19) & ((\inst1|Add1~37\) # (GND)))
-- \inst1|Add1~39\ = CARRY((!\inst1|Add1~37\) # (!\inst1|iCntTime\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(19),
	datad => VCC,
	cin => \inst1|Add1~37\,
	combout => \inst1|Add1~38_combout\,
	cout => \inst1|Add1~39\);

-- Location: FF_X23_Y31_N13
\inst1|iCntTime[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[4]~5_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(4));

-- Location: FF_X24_Y30_N31
\inst1|iCntTime[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[19]~11_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(19));

-- Location: FF_X23_Y30_N9
\inst1|iCntTime[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[14]~16_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(14));

-- Location: LCCOMB_X23_Y30_N22
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|iCntTime\(17) & (!\inst1|iCntTime\(14) & (!\inst1|iCntTime\(16) & !\inst1|iCntTime\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(17),
	datab => \inst1|iCntTime\(14),
	datac => \inst1|iCntTime\(16),
	datad => \inst1|iCntTime\(15),
	combout => \inst1|Equal0~1_combout\);

-- Location: FF_X23_Y30_N27
\inst1|iCntTime[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[12]~18_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(12));

-- Location: FF_X23_Y30_N31
\inst1|PresentSt.stGap2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PresentSt.stGap2~q\);

-- Location: LCCOMB_X23_Y31_N12
\inst1|iCntTime[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[4]~5_combout\ = (\inst1|Add1~8_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(4))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~8_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~8_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(4),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[4]~5_combout\);

-- Location: LCCOMB_X24_Y30_N30
\inst1|iCntTime[19]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[19]~11_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(19)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~38_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(19),
	datad => \inst1|Add1~38_combout\,
	combout => \inst1|iCntTime[19]~11_combout\);

-- Location: LCCOMB_X23_Y30_N8
\inst1|iCntTime[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[14]~16_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(14)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~28_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(14),
	datad => \inst1|Add1~28_combout\,
	combout => \inst1|iCntTime[14]~16_combout\);

-- Location: LCCOMB_X23_Y30_N26
\inst1|iCntTime[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[12]~18_combout\ = (\inst1|Add1~24_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(12))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~24_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~24_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(12),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[12]~18_combout\);

-- Location: LCCOMB_X28_Y33_N6
\inst1|LED_SEL_G[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[3]~34_combout\ = (\Sw_LedA[4]~input_o\ & ((\Button_n[2]~input_o\ $ (\Sw_LedB[4]~input_o\)) # (!\Button_n[3]~input_o\))) # (!\Sw_LedA[4]~input_o\ & ((\Button_n[2]~input_o\ & ((\Sw_LedB[4]~input_o\))) # (!\Button_n[2]~input_o\ & 
-- (!\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Button_n[2]~input_o\,
	datac => \Sw_LedA[4]~input_o\,
	datad => \Sw_LedB[4]~input_o\,
	combout => \inst1|LED_SEL_G[3]~34_combout\);

-- Location: LCCOMB_X28_Y33_N4
\inst1|LED_SEL_G[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[2]~36_combout\ = (\Sw_LedA[5]~input_o\ & ((\Button_n[2]~input_o\ $ (\Sw_LedB[5]~input_o\)) # (!\Button_n[3]~input_o\))) # (!\Sw_LedA[5]~input_o\ & ((\Button_n[2]~input_o\ & ((\Sw_LedB[5]~input_o\))) # (!\Button_n[2]~input_o\ & 
-- (!\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Button_n[2]~input_o\,
	datac => \Sw_LedA[5]~input_o\,
	datad => \Sw_LedB[5]~input_o\,
	combout => \inst1|LED_SEL_G[2]~36_combout\);

-- Location: IOIBUF_X38_Y34_N1
\Sw_LedA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(5),
	o => \Sw_LedA[5]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\Sw_LedA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(4),
	o => \Sw_LedA[4]~input_o\);

-- Location: IOOBUF_X7_Y34_N2
\LED_Reset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|PresentSt.stRzLED~q\,
	devoe => ww_devoe,
	o => \LED_Reset~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\LED_Sel_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\LED_Sel_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\LED_Sel_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[2]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\LED_Sel_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\LED_Sel_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\LED_Sel_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\LED_Sel_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\LED_Sel_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Sel_B[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\LED_Sel_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[0]~7_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\LED_Sel_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[1]~10_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\LED_Sel_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[2]~13_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[2]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\LED_Sel_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[3]~16_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\LED_Sel_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[4]~19_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[4]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\LED_Sel_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[5]~22_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\LED_Sel_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[6]~25_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[6]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\LED_Sel_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[7]~27_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_G[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\LED_Sel_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[0]~7_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\LED_Sel_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[1]~10_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\LED_Sel_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[2]~13_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\LED_Sel_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[3]~16_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[3]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\LED_Sel_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[4]~19_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[4]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\LED_Sel_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[5]~22_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\LED_Sel_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[6]~25_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\LED_Sel_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SEL_G[7]~27_combout\,
	devoe => ww_devoe,
	o => \LED_Sel_R[7]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\LED_SelC_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[0]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\LED_SelC_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[1]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\LED_SelC_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\LED_SelC_n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\LED_SelC_n[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\LED_SelC_n[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[5]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\LED_SelC_n[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[6]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\LED_SelC_n[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[7]~7_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\LED_SelC_n[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[8]~8_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[8]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\LED_SelC_n[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[9]~9_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[9]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\LED_SelC_n[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[10]~10_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[10]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\LED_SelC_n[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_SELC_n[11]~11_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[11]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G18
\CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y31_N22
\inst1|PresentSt.stIdle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PresentSt.stIdle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|PresentSt.stIdle~feeder_combout\);

-- Location: IOIBUF_X25_Y34_N22
\Button_n[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button_n(1),
	o => \Button_n[1]~input_o\);

-- Location: CLKCTRL_G13
\Button_n[1]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Button_n[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Button_n[1]~inputclkctrl_outclk\);

-- Location: FF_X23_Y31_N23
\inst1|PresentSt.stIdle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|PresentSt.stIdle~feeder_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PresentSt.stIdle~q\);

-- Location: LCCOMB_X23_Y31_N4
\inst1|iCntTime[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[20]~0_combout\ = (\inst1|PresentSt.stEnCol~q\) # ((\inst1|PresentSt.stRzLED~q\) # ((\inst1|PresentSt.stGap1~q\) # (!\inst1|PresentSt.stIdle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PresentSt.stEnCol~q\,
	datab => \inst1|PresentSt.stRzLED~q\,
	datac => \inst1|PresentSt.stIdle~q\,
	datad => \inst1|PresentSt.stGap1~q\,
	combout => \inst1|iCntTime[20]~0_combout\);

-- Location: LCCOMB_X23_Y31_N26
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|PresentSt.stGap2~q\) # ((\inst1|PresentSt.stEnCol~q\ & !\inst1|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PresentSt.stGap2~q\,
	datac => \inst1|PresentSt.stEnCol~q\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X23_Y31_N27
\inst1|PresentSt.stEnCol\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PresentSt.stEnCol~q\);

-- Location: LCCOMB_X23_Y31_N24
\inst1|iCntTime[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[21]~1_combout\ = ((\inst1|PresentSt.stGap1~q\) # ((!\inst1|PresentSt.stRzLED~q\ & !\inst1|PresentSt.stEnCol~q\))) # (!\inst1|PresentSt.stIdle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PresentSt.stIdle~q\,
	datab => \inst1|PresentSt.stRzLED~q\,
	datac => \inst1|PresentSt.stEnCol~q\,
	datad => \inst1|PresentSt.stGap1~q\,
	combout => \inst1|iCntTime[21]~1_combout\);

-- Location: LCCOMB_X23_Y31_N14
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|iCntTime\(5) & !\inst1|iCntTime\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(5),
	datad => \inst1|iCntTime\(3),
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y30_N22
\inst1|iCntTime[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[16]~14_combout\ = (\inst1|Add1~32_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(16))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~32_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~32_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(16),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[16]~14_combout\);

-- Location: FF_X24_Y30_N23
\inst1|iCntTime[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[16]~14_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(16));

-- Location: LCCOMB_X25_Y30_N16
\inst1|iCntTime[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[15]~15_combout\ = (\inst1|Add1~30_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(15))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~30_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~30_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(15),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[15]~15_combout\);

-- Location: FF_X25_Y30_N17
\inst1|iCntTime[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[15]~15_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(15));

-- Location: LCCOMB_X24_Y31_N8
\inst1|iCntTime[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[8]~22_combout\ = (\inst1|Add1~16_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(8))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~16_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~16_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(8),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[8]~22_combout\);

-- Location: FF_X24_Y31_N9
\inst1|iCntTime[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[8]~22_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(8));

-- Location: LCCOMB_X23_Y31_N6
\inst1|iCntTime[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[5]~3_combout\ = (\inst1|Add1~10_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(5))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~10_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~10_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(5),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[5]~3_combout\);

-- Location: FF_X23_Y31_N7
\inst1|iCntTime[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[5]~3_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(5));

-- Location: LCCOMB_X24_Y31_N16
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|iCntTime\(3) & (!\inst1|Add1~5\)) # (!\inst1|iCntTime\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~7\ = CARRY((!\inst1|Add1~5\) # (!\inst1|iCntTime\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X24_Y31_N22
\inst1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|iCntTime\(6) & (\inst1|Add1~11\ $ (GND))) # (!\inst1|iCntTime\(6) & (!\inst1|Add1~11\ & VCC))
-- \inst1|Add1~13\ = CARRY((\inst1|iCntTime\(6) & !\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X24_Y31_N24
\inst1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst1|iCntTime\(7) & (!\inst1|Add1~13\)) # (!\inst1|iCntTime\(7) & ((\inst1|Add1~13\) # (GND)))
-- \inst1|Add1~15\ = CARRY((!\inst1|Add1~13\) # (!\inst1|iCntTime\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(7),
	datad => VCC,
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\,
	cout => \inst1|Add1~15\);

-- Location: LCCOMB_X24_Y31_N28
\inst1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = (\inst1|iCntTime\(9) & (!\inst1|Add1~17\)) # (!\inst1|iCntTime\(9) & ((\inst1|Add1~17\) # (GND)))
-- \inst1|Add1~19\ = CARRY((!\inst1|Add1~17\) # (!\inst1|iCntTime\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(9),
	datad => VCC,
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\,
	cout => \inst1|Add1~19\);

-- Location: LCCOMB_X23_Y30_N12
\inst1|iCntTime[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[9]~21_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(9)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~18_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(9),
	datad => \inst1|Add1~18_combout\,
	combout => \inst1|iCntTime[9]~21_combout\);

-- Location: FF_X23_Y30_N13
\inst1|iCntTime[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[9]~21_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(9));

-- Location: LCCOMB_X24_Y30_N0
\inst1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~22_combout\ = (\inst1|iCntTime\(11) & (!\inst1|Add1~21\)) # (!\inst1|iCntTime\(11) & ((\inst1|Add1~21\) # (GND)))
-- \inst1|Add1~23\ = CARRY((!\inst1|Add1~21\) # (!\inst1|iCntTime\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(11),
	datad => VCC,
	cin => \inst1|Add1~21\,
	combout => \inst1|Add1~22_combout\,
	cout => \inst1|Add1~23\);

-- Location: LCCOMB_X23_Y30_N4
\inst1|iCntTime[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[11]~19_combout\ = (\inst1|iCntTime[20]~0_combout\ & (\inst1|Add1~22_combout\ & ((!\inst1|iCntTime[21]~2_combout\)))) # (!\inst1|iCntTime[20]~0_combout\ & ((\inst1|iCntTime\(11)) # ((\inst1|Add1~22_combout\ & 
-- !\inst1|iCntTime[21]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[20]~0_combout\,
	datab => \inst1|Add1~22_combout\,
	datac => \inst1|iCntTime\(11),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[11]~19_combout\);

-- Location: FF_X23_Y30_N5
\inst1|iCntTime[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[11]~19_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(11));

-- Location: LCCOMB_X24_Y30_N12
\inst1|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~34_combout\ = (\inst1|iCntTime\(17) & (!\inst1|Add1~33\)) # (!\inst1|iCntTime\(17) & ((\inst1|Add1~33\) # (GND)))
-- \inst1|Add1~35\ = CARRY((!\inst1|Add1~33\) # (!\inst1|iCntTime\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(17),
	datad => VCC,
	cin => \inst1|Add1~33\,
	combout => \inst1|Add1~34_combout\,
	cout => \inst1|Add1~35\);

-- Location: LCCOMB_X23_Y30_N18
\inst1|iCntTime[17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[17]~13_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(17)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~34_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(17),
	datad => \inst1|Add1~34_combout\,
	combout => \inst1|iCntTime[17]~13_combout\);

-- Location: FF_X23_Y30_N19
\inst1|iCntTime[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[17]~13_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(17));

-- Location: LCCOMB_X24_Y30_N14
\inst1|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~36_combout\ = (\inst1|iCntTime\(18) & (\inst1|Add1~35\ $ (GND))) # (!\inst1|iCntTime\(18) & (!\inst1|Add1~35\ & VCC))
-- \inst1|Add1~37\ = CARRY((\inst1|iCntTime\(18) & !\inst1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(18),
	datad => VCC,
	cin => \inst1|Add1~35\,
	combout => \inst1|Add1~36_combout\,
	cout => \inst1|Add1~37\);

-- Location: LCCOMB_X24_Y30_N28
\inst1|iCntTime[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[18]~12_combout\ = (\inst1|iCntTime[20]~0_combout\ & (\inst1|Add1~36_combout\ & ((!\inst1|iCntTime[21]~2_combout\)))) # (!\inst1|iCntTime[20]~0_combout\ & ((\inst1|iCntTime\(18)) # ((\inst1|Add1~36_combout\ & 
-- !\inst1|iCntTime[21]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[20]~0_combout\,
	datab => \inst1|Add1~36_combout\,
	datac => \inst1|iCntTime\(18),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[18]~12_combout\);

-- Location: FF_X24_Y30_N29
\inst1|iCntTime[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[18]~12_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(18));

-- Location: LCCOMB_X24_Y30_N18
\inst1|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~40_combout\ = (\inst1|iCntTime\(20) & (\inst1|Add1~39\ $ (GND))) # (!\inst1|iCntTime\(20) & (!\inst1|Add1~39\ & VCC))
-- \inst1|Add1~41\ = CARRY((\inst1|iCntTime\(20) & !\inst1|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(20),
	datad => VCC,
	cin => \inst1|Add1~39\,
	combout => \inst1|Add1~40_combout\,
	cout => \inst1|Add1~41\);

-- Location: LCCOMB_X24_Y30_N24
\inst1|iCntTime[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[20]~10_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(20)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~40_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(20),
	datad => \inst1|Add1~40_combout\,
	combout => \inst1|iCntTime[20]~10_combout\);

-- Location: FF_X24_Y30_N25
\inst1|iCntTime[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[20]~10_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(20));

-- Location: LCCOMB_X24_Y30_N20
\inst1|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~42_combout\ = \inst1|iCntTime\(21) $ (\inst1|Add1~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(21),
	cin => \inst1|Add1~41\,
	combout => \inst1|Add1~42_combout\);

-- Location: LCCOMB_X24_Y30_N26
\inst1|iCntTime[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[21]~9_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(21)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~42_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(21),
	datad => \inst1|Add1~42_combout\,
	combout => \inst1|iCntTime[21]~9_combout\);

-- Location: FF_X24_Y30_N27
\inst1|iCntTime[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[21]~9_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(21));

-- Location: LCCOMB_X23_Y30_N20
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|iCntTime\(19) & (!\inst1|iCntTime\(21) & (!\inst1|iCntTime\(20) & !\inst1|iCntTime\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(19),
	datab => \inst1|iCntTime\(21),
	datac => \inst1|iCntTime\(20),
	datad => \inst1|iCntTime\(18),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y30_N0
\inst1|iCntTime[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[6]~24_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(6)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~12_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(6),
	datad => \inst1|Add1~12_combout\,
	combout => \inst1|iCntTime[6]~24_combout\);

-- Location: FF_X23_Y30_N1
\inst1|iCntTime[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[6]~24_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(6));

-- Location: LCCOMB_X23_Y30_N2
\inst1|iCntTime[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[7]~23_combout\ = (\inst1|iCntTime[21]~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(7)))) # (!\inst1|iCntTime[21]~2_combout\ & ((\inst1|Add1~14_combout\) # ((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[21]~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(7),
	datad => \inst1|Add1~14_combout\,
	combout => \inst1|iCntTime[7]~23_combout\);

-- Location: FF_X23_Y30_N3
\inst1|iCntTime[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[7]~23_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(7));

-- Location: LCCOMB_X23_Y30_N14
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|iCntTime\(9) & (!\inst1|iCntTime\(6) & (!\inst1|iCntTime\(7) & !\inst1|iCntTime\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(9),
	datab => \inst1|iCntTime\(6),
	datac => \inst1|iCntTime\(7),
	datad => \inst1|iCntTime\(8),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y30_N16
\inst1|iCntTime[13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[13]~17_combout\ = (\inst1|Add1~26_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(13))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~26_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~26_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(13),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[13]~17_combout\);

-- Location: FF_X23_Y30_N17
\inst1|iCntTime[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[13]~17_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(13));

-- Location: LCCOMB_X23_Y31_N8
\inst1|iCntTime[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[10]~20_combout\ = (\inst1|Add1~20_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(10))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~20_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~20_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(10),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[10]~20_combout\);

-- Location: FF_X23_Y31_N9
\inst1|iCntTime[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[10]~20_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(10));

-- Location: LCCOMB_X23_Y30_N6
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|iCntTime\(12) & (!\inst1|iCntTime\(13) & (!\inst1|iCntTime\(11) & !\inst1|iCntTime\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(12),
	datab => \inst1|iCntTime\(13),
	datac => \inst1|iCntTime\(11),
	datad => \inst1|iCntTime\(10),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y30_N24
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~1_combout\ & (\inst1|Equal0~0_combout\ & (\inst1|Equal0~3_combout\ & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y30_N30
\inst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|PresentSt.stRzLED~q\ & ((\inst1|LessThan1~0_combout\) # ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|PresentSt.stRzLED~q\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: LCCOMB_X23_Y30_N10
\inst1|iCntTime[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[21]~2_combout\ = (\inst1|iCntTime[21]~1_combout\) # ((\inst1|Selector0~0_combout\) # ((\inst1|PresentSt.stEnCol~q\ & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PresentSt.stEnCol~q\,
	datab => \inst1|iCntTime[21]~1_combout\,
	datac => \inst1|Selector0~0_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|iCntTime[21]~2_combout\);

-- Location: LCCOMB_X24_Y31_N0
\inst1|iCntTime[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[1]~7_combout\ = (\inst1|Add1~2_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(1))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~2_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~2_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(1),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[1]~7_combout\);

-- Location: FF_X24_Y31_N1
\inst1|iCntTime[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[1]~7_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(1));

-- Location: LCCOMB_X24_Y31_N14
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|iCntTime\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|iCntTime\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|iCntTime\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|iCntTime\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X24_Y31_N2
\inst1|iCntTime[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[2]~6_combout\ = (\inst1|iCntTime[20]~0_combout\ & (\inst1|Add1~4_combout\ & ((!\inst1|iCntTime[21]~2_combout\)))) # (!\inst1|iCntTime[20]~0_combout\ & ((\inst1|iCntTime\(2)) # ((\inst1|Add1~4_combout\ & !\inst1|iCntTime[21]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[20]~0_combout\,
	datab => \inst1|Add1~4_combout\,
	datac => \inst1|iCntTime\(2),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[2]~6_combout\);

-- Location: FF_X24_Y31_N3
\inst1|iCntTime[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[2]~6_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(2));

-- Location: LCCOMB_X24_Y31_N4
\inst1|iCntTime[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[3]~4_combout\ = (\inst1|iCntTime[20]~0_combout\ & (\inst1|Add1~6_combout\ & ((!\inst1|iCntTime[21]~2_combout\)))) # (!\inst1|iCntTime[20]~0_combout\ & ((\inst1|iCntTime\(3)) # ((\inst1|Add1~6_combout\ & !\inst1|iCntTime[21]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime[20]~0_combout\,
	datab => \inst1|Add1~6_combout\,
	datac => \inst1|iCntTime\(3),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[3]~4_combout\);

-- Location: FF_X24_Y31_N5
\inst1|iCntTime[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[3]~4_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(3));

-- Location: LCCOMB_X24_Y31_N6
\inst1|iCntTime[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntTime[0]~8_combout\ = (\inst1|Add1~0_combout\ & (((!\inst1|iCntTime[20]~0_combout\ & \inst1|iCntTime\(0))) # (!\inst1|iCntTime[21]~2_combout\))) # (!\inst1|Add1~0_combout\ & (!\inst1|iCntTime[20]~0_combout\ & (\inst1|iCntTime\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~0_combout\,
	datab => \inst1|iCntTime[20]~0_combout\,
	datac => \inst1|iCntTime\(0),
	datad => \inst1|iCntTime[21]~2_combout\,
	combout => \inst1|iCntTime[0]~8_combout\);

-- Location: FF_X24_Y31_N7
\inst1|iCntTime[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntTime[0]~8_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntTime\(0));

-- Location: LCCOMB_X23_Y31_N28
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|iCntTime\(4) & (!\inst1|iCntTime\(1) & (!\inst1|iCntTime\(0) & \inst1|iCntTime\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(4),
	datab => \inst1|iCntTime\(1),
	datac => \inst1|iCntTime\(0),
	datad => \inst1|iCntTime\(2),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y30_N28
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (!\inst1|iCntTime\(5) & (!\inst1|iCntTime\(3) & (\inst1|Equal0~5_combout\ & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(5),
	datab => \inst1|iCntTime\(3),
	datac => \inst1|Equal0~5_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y31_N0
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = ((\inst1|PresentSt.stEnCol~q\ & \inst1|Equal0~6_combout\)) # (!\inst1|PresentSt.stIdle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PresentSt.stEnCol~q\,
	datac => \inst1|PresentSt.stIdle~q\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X23_Y31_N1
\inst1|PresentSt.stGap1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|Selector2~0_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PresentSt.stGap1~q\);

-- Location: LCCOMB_X23_Y31_N30
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (\inst1|iCntTime\(4)) # ((\inst1|iCntTime\(2)) # ((\inst1|iCntTime\(1) & \inst1|iCntTime\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(4),
	datab => \inst1|iCntTime\(1),
	datac => \inst1|iCntTime\(0),
	datad => \inst1|iCntTime\(2),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y31_N10
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (\inst1|iCntTime\(3)) # ((\inst1|iCntTime\(5)) # ((\inst1|LessThan1~0_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntTime\(3),
	datab => \inst1|iCntTime\(5),
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y31_N20
\inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|PresentSt.stGap1~q\) # ((\inst1|PresentSt.stRzLED~q\ & !\inst1|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PresentSt.stGap1~q\,
	datac => \inst1|PresentSt.stRzLED~q\,
	datad => \inst1|LessThan1~1_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X23_Y31_N21
\inst1|PresentSt.stRzLED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PresentSt.stRzLED~q\);

-- Location: LCCOMB_X24_Y33_N26
\inst1|iCntCol~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntCol~1_combout\ = (!\inst1|iCntCol\(0) & ((!\inst1|iCntCol\(3)) # (!\inst1|iCntCol\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(3),
	combout => \inst1|iCntCol~1_combout\);

-- Location: FF_X24_Y33_N27
\inst1|iCntCol[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntCol~1_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \inst1|PresentSt.stGap1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntCol\(0));

-- Location: LCCOMB_X24_Y33_N6
\inst1|iCntCol~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntCol~3_combout\ = (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(2) $ (((\inst1|iCntCol\(0) & \inst1|iCntCol\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst1|iCntCol\(3),
	datac => \inst1|iCntCol\(2),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|iCntCol~3_combout\);

-- Location: FF_X24_Y33_N7
\inst1|iCntCol[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntCol~3_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \inst1|PresentSt.stGap1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntCol\(2));

-- Location: LCCOMB_X24_Y33_N12
\inst1|iCntCol~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntCol~0_combout\ = (\inst1|iCntCol\(3) & (!\inst1|iCntCol\(2) & (\inst1|iCntCol\(0) $ (\inst1|iCntCol\(1))))) # (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(0) $ ((\inst1|iCntCol\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst1|iCntCol\(3),
	datac => \inst1|iCntCol\(1),
	datad => \inst1|iCntCol\(2),
	combout => \inst1|iCntCol~0_combout\);

-- Location: FF_X24_Y33_N13
\inst1|iCntCol[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntCol~0_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \inst1|PresentSt.stGap1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntCol\(1));

-- Location: LCCOMB_X24_Y33_N24
\inst1|iCntCol~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|iCntCol~2_combout\ = (\inst1|iCntCol\(2) & (\inst1|iCntCol\(0) & (!\inst1|iCntCol\(3) & \inst1|iCntCol\(1)))) # (!\inst1|iCntCol\(2) & (\inst1|iCntCol\(3) & ((!\inst1|iCntCol\(1)) # (!\inst1|iCntCol\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(2),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|iCntCol\(3),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|iCntCol~2_combout\);

-- Location: FF_X24_Y33_N25
\inst1|iCntCol[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|iCntCol~2_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \inst1|PresentSt.stGap1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iCntCol\(3));

-- Location: LCCOMB_X23_Y33_N24
\inst1|LED_SEL_G[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[0]~6_combout\ = (\inst1|PresentSt.stEnCol~q\ & \inst1|iCntCol\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PresentSt.stEnCol~q\,
	datad => \inst1|iCntCol\(3),
	combout => \inst1|LED_SEL_G[0]~6_combout\);

-- Location: LCCOMB_X25_Y33_N2
\inst2|count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[1]~31_combout\ = (\inst2|count\(0) & (\inst2|count\(1) $ (VCC))) # (!\inst2|count\(0) & (\inst2|count\(1) & VCC))
-- \inst2|count[1]~32\ = CARRY((\inst2|count\(0) & \inst2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(1),
	datad => VCC,
	combout => \inst2|count[1]~31_combout\,
	cout => \inst2|count[1]~32\);

-- Location: IOIBUF_X25_Y34_N15
\Button_n[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button_n(0),
	o => \Button_n[0]~input_o\);

-- Location: FF_X25_Y33_N3
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[1]~31_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X25_Y33_N4
\inst2|count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[2]~33_combout\ = (\inst2|count\(2) & (!\inst2|count[1]~32\)) # (!\inst2|count\(2) & ((\inst2|count[1]~32\) # (GND)))
-- \inst2|count[2]~34\ = CARRY((!\inst2|count[1]~32\) # (!\inst2|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(2),
	datad => VCC,
	cin => \inst2|count[1]~32\,
	combout => \inst2|count[2]~33_combout\,
	cout => \inst2|count[2]~34\);

-- Location: FF_X25_Y33_N5
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[2]~33_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X25_Y33_N6
\inst2|count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[3]~35_combout\ = (\inst2|count\(3) & (\inst2|count[2]~34\ $ (GND))) # (!\inst2|count\(3) & (!\inst2|count[2]~34\ & VCC))
-- \inst2|count[3]~36\ = CARRY((\inst2|count\(3) & !\inst2|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(3),
	datad => VCC,
	cin => \inst2|count[2]~34\,
	combout => \inst2|count[3]~35_combout\,
	cout => \inst2|count[3]~36\);

-- Location: LCCOMB_X25_Y33_N8
\inst2|count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[4]~37_combout\ = (\inst2|count\(4) & (!\inst2|count[3]~36\)) # (!\inst2|count\(4) & ((\inst2|count[3]~36\) # (GND)))
-- \inst2|count[4]~38\ = CARRY((!\inst2|count[3]~36\) # (!\inst2|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(4),
	datad => VCC,
	cin => \inst2|count[3]~36\,
	combout => \inst2|count[4]~37_combout\,
	cout => \inst2|count[4]~38\);

-- Location: FF_X25_Y33_N9
\inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[4]~37_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(4));

-- Location: LCCOMB_X25_Y33_N10
\inst2|count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[5]~39_combout\ = (\inst2|count\(5) & (\inst2|count[4]~38\ $ (GND))) # (!\inst2|count\(5) & (!\inst2|count[4]~38\ & VCC))
-- \inst2|count[5]~40\ = CARRY((\inst2|count\(5) & !\inst2|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|count[4]~38\,
	combout => \inst2|count[5]~39_combout\,
	cout => \inst2|count[5]~40\);

-- Location: LCCOMB_X25_Y33_N14
\inst2|count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[7]~43_combout\ = (\inst2|count\(7) & (\inst2|count[6]~42\ $ (GND))) # (!\inst2|count\(7) & (!\inst2|count[6]~42\ & VCC))
-- \inst2|count[7]~44\ = CARRY((\inst2|count\(7) & !\inst2|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(7),
	datad => VCC,
	cin => \inst2|count[6]~42\,
	combout => \inst2|count[7]~43_combout\,
	cout => \inst2|count[7]~44\);

-- Location: FF_X25_Y33_N15
\inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[7]~43_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(7));

-- Location: LCCOMB_X25_Y33_N16
\inst2|count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[8]~45_combout\ = (\inst2|count\(8) & (!\inst2|count[7]~44\)) # (!\inst2|count\(8) & ((\inst2|count[7]~44\) # (GND)))
-- \inst2|count[8]~46\ = CARRY((!\inst2|count[7]~44\) # (!\inst2|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(8),
	datad => VCC,
	cin => \inst2|count[7]~44\,
	combout => \inst2|count[8]~45_combout\,
	cout => \inst2|count[8]~46\);

-- Location: FF_X25_Y33_N17
\inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[8]~45_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(8));

-- Location: LCCOMB_X25_Y33_N18
\inst2|count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[9]~47_combout\ = (\inst2|count\(9) & (\inst2|count[8]~46\ $ (GND))) # (!\inst2|count\(9) & (!\inst2|count[8]~46\ & VCC))
-- \inst2|count[9]~48\ = CARRY((\inst2|count\(9) & !\inst2|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(9),
	datad => VCC,
	cin => \inst2|count[8]~46\,
	combout => \inst2|count[9]~47_combout\,
	cout => \inst2|count[9]~48\);

-- Location: FF_X25_Y33_N19
\inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[9]~47_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(9));

-- Location: LCCOMB_X25_Y33_N20
\inst2|count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[10]~49_combout\ = (\inst2|count\(10) & (!\inst2|count[9]~48\)) # (!\inst2|count\(10) & ((\inst2|count[9]~48\) # (GND)))
-- \inst2|count[10]~50\ = CARRY((!\inst2|count[9]~48\) # (!\inst2|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(10),
	datad => VCC,
	cin => \inst2|count[9]~48\,
	combout => \inst2|count[10]~49_combout\,
	cout => \inst2|count[10]~50\);

-- Location: FF_X25_Y33_N21
\inst2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[10]~49_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(10));

-- Location: LCCOMB_X25_Y33_N22
\inst2|count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[11]~51_combout\ = (\inst2|count\(11) & (\inst2|count[10]~50\ $ (GND))) # (!\inst2|count\(11) & (!\inst2|count[10]~50\ & VCC))
-- \inst2|count[11]~52\ = CARRY((\inst2|count\(11) & !\inst2|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(11),
	datad => VCC,
	cin => \inst2|count[10]~50\,
	combout => \inst2|count[11]~51_combout\,
	cout => \inst2|count[11]~52\);

-- Location: LCCOMB_X25_Y33_N24
\inst2|count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[12]~53_combout\ = (\inst2|count\(12) & (!\inst2|count[11]~52\)) # (!\inst2|count\(12) & ((\inst2|count[11]~52\) # (GND)))
-- \inst2|count[12]~54\ = CARRY((!\inst2|count[11]~52\) # (!\inst2|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(12),
	datad => VCC,
	cin => \inst2|count[11]~52\,
	combout => \inst2|count[12]~53_combout\,
	cout => \inst2|count[12]~54\);

-- Location: FF_X25_Y33_N25
\inst2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[12]~53_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(12));

-- Location: LCCOMB_X25_Y33_N26
\inst2|count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[13]~55_combout\ = (\inst2|count\(13) & (\inst2|count[12]~54\ $ (GND))) # (!\inst2|count\(13) & (!\inst2|count[12]~54\ & VCC))
-- \inst2|count[13]~56\ = CARRY((\inst2|count\(13) & !\inst2|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(13),
	datad => VCC,
	cin => \inst2|count[12]~54\,
	combout => \inst2|count[13]~55_combout\,
	cout => \inst2|count[13]~56\);

-- Location: LCCOMB_X25_Y33_N28
\inst2|count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[14]~57_combout\ = (\inst2|count\(14) & (!\inst2|count[13]~56\)) # (!\inst2|count\(14) & ((\inst2|count[13]~56\) # (GND)))
-- \inst2|count[14]~58\ = CARRY((!\inst2|count[13]~56\) # (!\inst2|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(14),
	datad => VCC,
	cin => \inst2|count[13]~56\,
	combout => \inst2|count[14]~57_combout\,
	cout => \inst2|count[14]~58\);

-- Location: FF_X25_Y33_N29
\inst2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[14]~57_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(14));

-- Location: LCCOMB_X25_Y33_N30
\inst2|count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[15]~59_combout\ = (\inst2|count\(15) & (\inst2|count[14]~58\ $ (GND))) # (!\inst2|count\(15) & (!\inst2|count[14]~58\ & VCC))
-- \inst2|count[15]~60\ = CARRY((\inst2|count\(15) & !\inst2|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(15),
	datad => VCC,
	cin => \inst2|count[14]~58\,
	combout => \inst2|count[15]~59_combout\,
	cout => \inst2|count[15]~60\);

-- Location: FF_X25_Y33_N31
\inst2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[15]~59_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(15));

-- Location: LCCOMB_X25_Y32_N0
\inst2|count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[16]~61_combout\ = (\inst2|count\(16) & (!\inst2|count[15]~60\)) # (!\inst2|count\(16) & ((\inst2|count[15]~60\) # (GND)))
-- \inst2|count[16]~62\ = CARRY((!\inst2|count[15]~60\) # (!\inst2|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(16),
	datad => VCC,
	cin => \inst2|count[15]~60\,
	combout => \inst2|count[16]~61_combout\,
	cout => \inst2|count[16]~62\);

-- Location: FF_X25_Y32_N1
\inst2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[16]~61_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(16));

-- Location: LCCOMB_X25_Y32_N2
\inst2|count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[17]~63_combout\ = (\inst2|count\(17) & (\inst2|count[16]~62\ $ (GND))) # (!\inst2|count\(17) & (!\inst2|count[16]~62\ & VCC))
-- \inst2|count[17]~64\ = CARRY((\inst2|count\(17) & !\inst2|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(17),
	datad => VCC,
	cin => \inst2|count[16]~62\,
	combout => \inst2|count[17]~63_combout\,
	cout => \inst2|count[17]~64\);

-- Location: FF_X25_Y32_N3
\inst2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[17]~63_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(17));

-- Location: LCCOMB_X25_Y32_N4
\inst2|count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[18]~65_combout\ = (\inst2|count\(18) & (!\inst2|count[17]~64\)) # (!\inst2|count\(18) & ((\inst2|count[17]~64\) # (GND)))
-- \inst2|count[18]~66\ = CARRY((!\inst2|count[17]~64\) # (!\inst2|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(18),
	datad => VCC,
	cin => \inst2|count[17]~64\,
	combout => \inst2|count[18]~65_combout\,
	cout => \inst2|count[18]~66\);

-- Location: FF_X25_Y32_N5
\inst2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[18]~65_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(18));

-- Location: LCCOMB_X25_Y32_N6
\inst2|count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[19]~67_combout\ = (\inst2|count\(19) & (\inst2|count[18]~66\ $ (GND))) # (!\inst2|count\(19) & (!\inst2|count[18]~66\ & VCC))
-- \inst2|count[19]~68\ = CARRY((\inst2|count\(19) & !\inst2|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(19),
	datad => VCC,
	cin => \inst2|count[18]~66\,
	combout => \inst2|count[19]~67_combout\,
	cout => \inst2|count[19]~68\);

-- Location: LCCOMB_X25_Y32_N8
\inst2|count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[20]~69_combout\ = (\inst2|count\(20) & (!\inst2|count[19]~68\)) # (!\inst2|count\(20) & ((\inst2|count[19]~68\) # (GND)))
-- \inst2|count[20]~70\ = CARRY((!\inst2|count[19]~68\) # (!\inst2|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(20),
	datad => VCC,
	cin => \inst2|count[19]~68\,
	combout => \inst2|count[20]~69_combout\,
	cout => \inst2|count[20]~70\);

-- Location: FF_X25_Y32_N9
\inst2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[20]~69_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(20));

-- Location: LCCOMB_X25_Y32_N10
\inst2|count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[21]~71_combout\ = (\inst2|count\(21) & (\inst2|count[20]~70\ $ (GND))) # (!\inst2|count\(21) & (!\inst2|count[20]~70\ & VCC))
-- \inst2|count[21]~72\ = CARRY((\inst2|count\(21) & !\inst2|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(21),
	datad => VCC,
	cin => \inst2|count[20]~70\,
	combout => \inst2|count[21]~71_combout\,
	cout => \inst2|count[21]~72\);

-- Location: LCCOMB_X25_Y32_N12
\inst2|count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[22]~73_combout\ = (\inst2|count\(22) & (!\inst2|count[21]~72\)) # (!\inst2|count\(22) & ((\inst2|count[21]~72\) # (GND)))
-- \inst2|count[22]~74\ = CARRY((!\inst2|count[21]~72\) # (!\inst2|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(22),
	datad => VCC,
	cin => \inst2|count[21]~72\,
	combout => \inst2|count[22]~73_combout\,
	cout => \inst2|count[22]~74\);

-- Location: LCCOMB_X25_Y32_N14
\inst2|count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[23]~75_combout\ = (\inst2|count\(23) & (\inst2|count[22]~74\ $ (GND))) # (!\inst2|count\(23) & (!\inst2|count[22]~74\ & VCC))
-- \inst2|count[23]~76\ = CARRY((\inst2|count\(23) & !\inst2|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(23),
	datad => VCC,
	cin => \inst2|count[22]~74\,
	combout => \inst2|count[23]~75_combout\,
	cout => \inst2|count[23]~76\);

-- Location: FF_X25_Y32_N15
\inst2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[23]~75_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(23));

-- Location: LCCOMB_X25_Y32_N16
\inst2|count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[24]~77_combout\ = (\inst2|count\(24) & (!\inst2|count[23]~76\)) # (!\inst2|count\(24) & ((\inst2|count[23]~76\) # (GND)))
-- \inst2|count[24]~78\ = CARRY((!\inst2|count[23]~76\) # (!\inst2|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(24),
	datad => VCC,
	cin => \inst2|count[23]~76\,
	combout => \inst2|count[24]~77_combout\,
	cout => \inst2|count[24]~78\);

-- Location: FF_X25_Y32_N17
\inst2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[24]~77_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(24));

-- Location: LCCOMB_X25_Y32_N18
\inst2|count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[25]~79_combout\ = (\inst2|count\(25) & (\inst2|count[24]~78\ $ (GND))) # (!\inst2|count\(25) & (!\inst2|count[24]~78\ & VCC))
-- \inst2|count[25]~80\ = CARRY((\inst2|count\(25) & !\inst2|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(25),
	datad => VCC,
	cin => \inst2|count[24]~78\,
	combout => \inst2|count[25]~79_combout\,
	cout => \inst2|count[25]~80\);

-- Location: FF_X25_Y32_N19
\inst2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[25]~79_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(25));

-- Location: LCCOMB_X25_Y32_N20
\inst2|count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[26]~81_combout\ = (\inst2|count\(26) & (!\inst2|count[25]~80\)) # (!\inst2|count\(26) & ((\inst2|count[25]~80\) # (GND)))
-- \inst2|count[26]~82\ = CARRY((!\inst2|count[25]~80\) # (!\inst2|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(26),
	datad => VCC,
	cin => \inst2|count[25]~80\,
	combout => \inst2|count[26]~81_combout\,
	cout => \inst2|count[26]~82\);

-- Location: FF_X25_Y32_N21
\inst2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[26]~81_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(26));

-- Location: LCCOMB_X25_Y32_N22
\inst2|count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[27]~83_combout\ = (\inst2|count\(27) & (\inst2|count[26]~82\ $ (GND))) # (!\inst2|count\(27) & (!\inst2|count[26]~82\ & VCC))
-- \inst2|count[27]~84\ = CARRY((\inst2|count\(27) & !\inst2|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(27),
	datad => VCC,
	cin => \inst2|count[26]~82\,
	combout => \inst2|count[27]~83_combout\,
	cout => \inst2|count[27]~84\);

-- Location: LCCOMB_X25_Y32_N24
\inst2|count[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[28]~85_combout\ = (\inst2|count\(28) & (!\inst2|count[27]~84\)) # (!\inst2|count\(28) & ((\inst2|count[27]~84\) # (GND)))
-- \inst2|count[28]~86\ = CARRY((!\inst2|count[27]~84\) # (!\inst2|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(28),
	datad => VCC,
	cin => \inst2|count[27]~84\,
	combout => \inst2|count[28]~85_combout\,
	cout => \inst2|count[28]~86\);

-- Location: FF_X25_Y32_N25
\inst2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[28]~85_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(28));

-- Location: LCCOMB_X25_Y32_N26
\inst2|count[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[29]~87_combout\ = (\inst2|count\(29) & (\inst2|count[28]~86\ $ (GND))) # (!\inst2|count\(29) & (!\inst2|count[28]~86\ & VCC))
-- \inst2|count[29]~88\ = CARRY((\inst2|count\(29) & !\inst2|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(29),
	datad => VCC,
	cin => \inst2|count[28]~86\,
	combout => \inst2|count[29]~87_combout\,
	cout => \inst2|count[29]~88\);

-- Location: LCCOMB_X25_Y32_N28
\inst2|count[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[30]~89_combout\ = (\inst2|count\(30) & (!\inst2|count[29]~88\)) # (!\inst2|count\(30) & ((\inst2|count[29]~88\) # (GND)))
-- \inst2|count[30]~90\ = CARRY((!\inst2|count[29]~88\) # (!\inst2|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(30),
	datad => VCC,
	cin => \inst2|count[29]~88\,
	combout => \inst2|count[30]~89_combout\,
	cout => \inst2|count[30]~90\);

-- Location: FF_X25_Y32_N29
\inst2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[30]~89_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(30));

-- Location: LCCOMB_X25_Y32_N30
\inst2|count[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[31]~91_combout\ = \inst2|count\(31) $ (!\inst2|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(31),
	cin => \inst2|count[30]~90\,
	combout => \inst2|count[31]~91_combout\);

-- Location: FF_X25_Y32_N31
\inst2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[31]~91_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(31));

-- Location: LCCOMB_X24_Y33_N20
\inst1|LED_SEL_G[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[0]~2_combout\ = (\inst1|iCntCol\(1) & (\inst1|iCntCol\(0))) # (!\inst1|iCntCol\(1) & ((\inst1|iCntCol\(0) & ((\inst2|count\(23)))) # (!\inst1|iCntCol\(0) & (\inst2|count\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(1),
	datab => \inst1|iCntCol\(0),
	datac => \inst2|count\(31),
	datad => \inst2|count\(23),
	combout => \inst1|LED_SEL_G[0]~2_combout\);

-- Location: LCCOMB_X24_Y33_N18
\inst1|LED_SEL_G[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[0]~3_combout\ = (\inst1|iCntCol\(1) & ((\inst1|LED_SEL_G[0]~2_combout\ & (\inst2|count\(7))) # (!\inst1|LED_SEL_G[0]~2_combout\ & ((\inst2|count\(15)))))) # (!\inst1|iCntCol\(1) & (((\inst1|LED_SEL_G[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(1),
	datab => \inst2|count\(7),
	datac => \inst2|count\(15),
	datad => \inst1|LED_SEL_G[0]~2_combout\,
	combout => \inst1|LED_SEL_G[0]~3_combout\);

-- Location: LCCOMB_X20_Y33_N24
\inst1|LED_SEL_G[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[7]~4_combout\ = (!\inst1|iCntCol\(3) & (!\inst1|iCntCol\(0) & (!\inst1|iCntCol\(2) & !\inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|iCntCol\(2),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|LED_SEL_G[7]~4_combout\);

-- Location: LCCOMB_X20_Y33_N14
\inst1|LED_SEL_G[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[7]~5_combout\ = (\inst1|LED_SEL_G[7]~4_combout\ & \inst1|PresentSt.stEnCol~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LED_SEL_G[7]~4_combout\,
	datac => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SEL_G[7]~5_combout\);

-- Location: IOIBUF_X7_Y34_N8
\Button_n[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button_n(2),
	o => \Button_n[2]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\Sw_LedB[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(7),
	o => \Sw_LedB[7]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\Sw_LedA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(7),
	o => \Sw_LedA[7]~input_o\);

-- Location: LCCOMB_X28_Y33_N10
\inst1|LED_SEL_G[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[0]~40_combout\ = (\Sw_LedB[7]~input_o\ & ((\Button_n[2]~input_o\ $ (\Sw_LedA[7]~input_o\)) # (!\Button_n[3]~input_o\))) # (!\Sw_LedB[7]~input_o\ & ((\Button_n[2]~input_o\ & ((\Sw_LedA[7]~input_o\))) # (!\Button_n[2]~input_o\ & 
-- (!\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Sw_LedB[7]~input_o\,
	datac => \Button_n[2]~input_o\,
	datad => \Sw_LedA[7]~input_o\,
	combout => \inst1|LED_SEL_G[0]~40_combout\);

-- Location: IOIBUF_X3_Y34_N1
\Button_n[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button_n(3),
	o => \Button_n[3]~input_o\);

-- Location: LCCOMB_X27_Y33_N16
\inst1|LED_SEL_G[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[0]~41_combout\ = (\inst1|LED_SEL_G[0]~40_combout\ & ((\inst|add_op[7]~14_combout\) # ((\Button_n[2]~input_o\) # (\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_op[7]~14_combout\,
	datab => \Button_n[2]~input_o\,
	datac => \inst1|LED_SEL_G[0]~40_combout\,
	datad => \Button_n[3]~input_o\,
	combout => \inst1|LED_SEL_G[0]~41_combout\);

-- Location: LCCOMB_X27_Y33_N20
\inst1|LED_SEL_G[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[0]~7_combout\ = (\inst1|LED_SEL_G[0]~6_combout\ & ((\inst1|LED_SEL_G[0]~3_combout\) # ((\inst1|LED_SEL_G[7]~5_combout\ & \inst1|LED_SEL_G[0]~41_combout\)))) # (!\inst1|LED_SEL_G[0]~6_combout\ & (((\inst1|LED_SEL_G[7]~5_combout\ & 
-- \inst1|LED_SEL_G[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[0]~6_combout\,
	datab => \inst1|LED_SEL_G[0]~3_combout\,
	datac => \inst1|LED_SEL_G[7]~5_combout\,
	datad => \inst1|LED_SEL_G[0]~41_combout\,
	combout => \inst1|LED_SEL_G[0]~7_combout\);

-- Location: FF_X25_Y32_N13
\inst2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[22]~73_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(22));

-- Location: LCCOMB_X26_Y33_N12
\inst1|LED_SEL_G[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[1]~8_combout\ = (\inst1|iCntCol\(0) & ((\inst1|iCntCol\(1)) # ((\inst2|count\(22))))) # (!\inst1|iCntCol\(0) & (!\inst1|iCntCol\(1) & ((\inst2|count\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst1|iCntCol\(1),
	datac => \inst2|count\(22),
	datad => \inst2|count\(30),
	combout => \inst1|LED_SEL_G[1]~8_combout\);

-- Location: LCCOMB_X26_Y33_N14
\inst1|LED_SEL_G[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[1]~9_combout\ = (\inst1|iCntCol\(1) & ((\inst1|LED_SEL_G[1]~8_combout\ & (\inst2|count\(6))) # (!\inst1|LED_SEL_G[1]~8_combout\ & ((\inst2|count\(14)))))) # (!\inst1|iCntCol\(1) & (((\inst1|LED_SEL_G[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datab => \inst2|count\(14),
	datac => \inst1|iCntCol\(1),
	datad => \inst1|LED_SEL_G[1]~8_combout\,
	combout => \inst1|LED_SEL_G[1]~9_combout\);

-- Location: IOIBUF_X23_Y34_N22
\Sw_LedB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(6),
	o => \Sw_LedB[6]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\Sw_LedA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(6),
	o => \Sw_LedA[6]~input_o\);

-- Location: LCCOMB_X27_Y33_N4
\inst1|LED_SEL_G[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[1]~38_combout\ = (\Sw_LedB[6]~input_o\ & ((\Button_n[2]~input_o\ $ (\Sw_LedA[6]~input_o\)) # (!\Button_n[3]~input_o\))) # (!\Sw_LedB[6]~input_o\ & ((\Button_n[2]~input_o\ & ((\Sw_LedA[6]~input_o\))) # (!\Button_n[2]~input_o\ & 
-- (!\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Button_n[2]~input_o\,
	datac => \Sw_LedB[6]~input_o\,
	datad => \Sw_LedA[6]~input_o\,
	combout => \inst1|LED_SEL_G[1]~38_combout\);

-- Location: IOIBUF_X20_Y34_N8
\Sw_LedB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(5),
	o => \Sw_LedB[5]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\Sw_LedB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(4),
	o => \Sw_LedB[4]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\Sw_LedA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(3),
	o => \Sw_LedA[3]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\Sw_LedB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(2),
	o => \Sw_LedB[2]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\Sw_LedB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(1),
	o => \Sw_LedB[1]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\Sw_LedB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(0),
	o => \Sw_LedB[0]~input_o\);

-- Location: LCCOMB_X28_Y33_N16
\inst|add_op[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[0]~0_combout\ = (\Sw_LedA[0]~input_o\ & (\Sw_LedB[0]~input_o\ $ (VCC))) # (!\Sw_LedA[0]~input_o\ & (\Sw_LedB[0]~input_o\ & VCC))
-- \inst|add_op[0]~1\ = CARRY((\Sw_LedA[0]~input_o\ & \Sw_LedB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedA[0]~input_o\,
	datab => \Sw_LedB[0]~input_o\,
	datad => VCC,
	combout => \inst|add_op[0]~0_combout\,
	cout => \inst|add_op[0]~1\);

-- Location: LCCOMB_X28_Y33_N18
\inst|add_op[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[1]~2_combout\ = (\Sw_LedA[1]~input_o\ & ((\Sw_LedB[1]~input_o\ & (\inst|add_op[0]~1\ & VCC)) # (!\Sw_LedB[1]~input_o\ & (!\inst|add_op[0]~1\)))) # (!\Sw_LedA[1]~input_o\ & ((\Sw_LedB[1]~input_o\ & (!\inst|add_op[0]~1\)) # 
-- (!\Sw_LedB[1]~input_o\ & ((\inst|add_op[0]~1\) # (GND)))))
-- \inst|add_op[1]~3\ = CARRY((\Sw_LedA[1]~input_o\ & (!\Sw_LedB[1]~input_o\ & !\inst|add_op[0]~1\)) # (!\Sw_LedA[1]~input_o\ & ((!\inst|add_op[0]~1\) # (!\Sw_LedB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedA[1]~input_o\,
	datab => \Sw_LedB[1]~input_o\,
	datad => VCC,
	cin => \inst|add_op[0]~1\,
	combout => \inst|add_op[1]~2_combout\,
	cout => \inst|add_op[1]~3\);

-- Location: LCCOMB_X28_Y33_N22
\inst|add_op[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[3]~6_combout\ = (\Sw_LedB[3]~input_o\ & ((\Sw_LedA[3]~input_o\ & (\inst|add_op[2]~5\ & VCC)) # (!\Sw_LedA[3]~input_o\ & (!\inst|add_op[2]~5\)))) # (!\Sw_LedB[3]~input_o\ & ((\Sw_LedA[3]~input_o\ & (!\inst|add_op[2]~5\)) # 
-- (!\Sw_LedA[3]~input_o\ & ((\inst|add_op[2]~5\) # (GND)))))
-- \inst|add_op[3]~7\ = CARRY((\Sw_LedB[3]~input_o\ & (!\Sw_LedA[3]~input_o\ & !\inst|add_op[2]~5\)) # (!\Sw_LedB[3]~input_o\ & ((!\inst|add_op[2]~5\) # (!\Sw_LedA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedB[3]~input_o\,
	datab => \Sw_LedA[3]~input_o\,
	datad => VCC,
	cin => \inst|add_op[2]~5\,
	combout => \inst|add_op[3]~6_combout\,
	cout => \inst|add_op[3]~7\);

-- Location: LCCOMB_X28_Y33_N24
\inst|add_op[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[4]~8_combout\ = ((\Sw_LedA[4]~input_o\ $ (\Sw_LedB[4]~input_o\ $ (!\inst|add_op[3]~7\)))) # (GND)
-- \inst|add_op[4]~9\ = CARRY((\Sw_LedA[4]~input_o\ & ((\Sw_LedB[4]~input_o\) # (!\inst|add_op[3]~7\))) # (!\Sw_LedA[4]~input_o\ & (\Sw_LedB[4]~input_o\ & !\inst|add_op[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedA[4]~input_o\,
	datab => \Sw_LedB[4]~input_o\,
	datad => VCC,
	cin => \inst|add_op[3]~7\,
	combout => \inst|add_op[4]~8_combout\,
	cout => \inst|add_op[4]~9\);

-- Location: LCCOMB_X28_Y33_N26
\inst|add_op[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_op[5]~10_combout\ = (\Sw_LedA[5]~input_o\ & ((\Sw_LedB[5]~input_o\ & (\inst|add_op[4]~9\ & VCC)) # (!\Sw_LedB[5]~input_o\ & (!\inst|add_op[4]~9\)))) # (!\Sw_LedA[5]~input_o\ & ((\Sw_LedB[5]~input_o\ & (!\inst|add_op[4]~9\)) # 
-- (!\Sw_LedB[5]~input_o\ & ((\inst|add_op[4]~9\) # (GND)))))
-- \inst|add_op[5]~11\ = CARRY((\Sw_LedA[5]~input_o\ & (!\Sw_LedB[5]~input_o\ & !\inst|add_op[4]~9\)) # (!\Sw_LedA[5]~input_o\ & ((!\inst|add_op[4]~9\) # (!\Sw_LedB[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedA[5]~input_o\,
	datab => \Sw_LedB[5]~input_o\,
	datad => VCC,
	cin => \inst|add_op[4]~9\,
	combout => \inst|add_op[5]~10_combout\,
	cout => \inst|add_op[5]~11\);

-- Location: LCCOMB_X27_Y33_N10
\inst1|LED_SEL_G[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[1]~39_combout\ = (\inst1|LED_SEL_G[1]~38_combout\ & ((\Button_n[3]~input_o\) # ((\Button_n[2]~input_o\) # (\inst|add_op[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Button_n[2]~input_o\,
	datac => \inst1|LED_SEL_G[1]~38_combout\,
	datad => \inst|add_op[6]~12_combout\,
	combout => \inst1|LED_SEL_G[1]~39_combout\);

-- Location: LCCOMB_X27_Y33_N6
\inst1|LED_SEL_G[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[1]~10_combout\ = (\inst1|LED_SEL_G[1]~9_combout\ & ((\inst1|LED_SEL_G[0]~6_combout\) # ((\inst1|LED_SEL_G[7]~5_combout\ & \inst1|LED_SEL_G[1]~39_combout\)))) # (!\inst1|LED_SEL_G[1]~9_combout\ & (\inst1|LED_SEL_G[7]~5_combout\ & 
-- ((\inst1|LED_SEL_G[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[1]~9_combout\,
	datab => \inst1|LED_SEL_G[7]~5_combout\,
	datac => \inst1|LED_SEL_G[0]~6_combout\,
	datad => \inst1|LED_SEL_G[1]~39_combout\,
	combout => \inst1|LED_SEL_G[1]~10_combout\);

-- Location: LCCOMB_X27_Y33_N14
\inst1|LED_SEL_G[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[2]~37_combout\ = (\inst1|LED_SEL_G[2]~36_combout\ & ((\inst|add_op[5]~10_combout\) # ((\Button_n[2]~input_o\) # (\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[2]~36_combout\,
	datab => \inst|add_op[5]~10_combout\,
	datac => \Button_n[2]~input_o\,
	datad => \Button_n[3]~input_o\,
	combout => \inst1|LED_SEL_G[2]~37_combout\);

-- Location: FF_X25_Y32_N11
\inst2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[21]~71_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(21));

-- Location: FF_X25_Y33_N27
\inst2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[13]~55_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(13));

-- Location: FF_X25_Y32_N27
\inst2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[29]~87_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(29));

-- Location: LCCOMB_X26_Y33_N8
\inst1|LED_SEL_G[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[2]~11_combout\ = (\inst1|iCntCol\(0) & (\inst1|iCntCol\(1))) # (!\inst1|iCntCol\(0) & ((\inst1|iCntCol\(1) & (\inst2|count\(13))) # (!\inst1|iCntCol\(1) & ((\inst2|count\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst1|iCntCol\(1),
	datac => \inst2|count\(13),
	datad => \inst2|count\(29),
	combout => \inst1|LED_SEL_G[2]~11_combout\);

-- Location: FF_X25_Y33_N11
\inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[5]~39_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(5));

-- Location: LCCOMB_X26_Y33_N10
\inst1|LED_SEL_G[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[2]~12_combout\ = (\inst1|iCntCol\(0) & ((\inst1|LED_SEL_G[2]~11_combout\ & ((\inst2|count\(5)))) # (!\inst1|LED_SEL_G[2]~11_combout\ & (\inst2|count\(21))))) # (!\inst1|iCntCol\(0) & (((\inst1|LED_SEL_G[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst2|count\(21),
	datac => \inst1|LED_SEL_G[2]~11_combout\,
	datad => \inst2|count\(5),
	combout => \inst1|LED_SEL_G[2]~12_combout\);

-- Location: LCCOMB_X27_Y33_N8
\inst1|LED_SEL_G[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[2]~13_combout\ = (\inst1|LED_SEL_G[0]~6_combout\ & ((\inst1|LED_SEL_G[2]~12_combout\) # ((\inst1|LED_SEL_G[2]~37_combout\ & \inst1|LED_SEL_G[7]~5_combout\)))) # (!\inst1|LED_SEL_G[0]~6_combout\ & (\inst1|LED_SEL_G[2]~37_combout\ & 
-- (\inst1|LED_SEL_G[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[0]~6_combout\,
	datab => \inst1|LED_SEL_G[2]~37_combout\,
	datac => \inst1|LED_SEL_G[7]~5_combout\,
	datad => \inst1|LED_SEL_G[2]~12_combout\,
	combout => \inst1|LED_SEL_G[2]~13_combout\);

-- Location: LCCOMB_X26_Y33_N4
\inst1|LED_SEL_G[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[3]~14_combout\ = (\inst1|iCntCol\(1) & (((\inst1|iCntCol\(0))))) # (!\inst1|iCntCol\(1) & ((\inst1|iCntCol\(0) & (\inst2|count\(20))) # (!\inst1|iCntCol\(0) & ((\inst2|count\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(20),
	datab => \inst1|iCntCol\(1),
	datac => \inst1|iCntCol\(0),
	datad => \inst2|count\(28),
	combout => \inst1|LED_SEL_G[3]~14_combout\);

-- Location: LCCOMB_X26_Y33_N18
\inst1|LED_SEL_G[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[3]~15_combout\ = (\inst1|iCntCol\(1) & ((\inst1|LED_SEL_G[3]~14_combout\ & (\inst2|count\(4))) # (!\inst1|LED_SEL_G[3]~14_combout\ & ((\inst2|count\(12)))))) # (!\inst1|iCntCol\(1) & (((\inst1|LED_SEL_G[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(4),
	datab => \inst1|iCntCol\(1),
	datac => \inst1|LED_SEL_G[3]~14_combout\,
	datad => \inst2|count\(12),
	combout => \inst1|LED_SEL_G[3]~15_combout\);

-- Location: LCCOMB_X27_Y33_N28
\inst1|LED_SEL_G[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[3]~35_combout\ = (\inst1|LED_SEL_G[3]~34_combout\ & ((\inst|add_op[4]~8_combout\) # ((\Button_n[2]~input_o\) # (\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[3]~34_combout\,
	datab => \inst|add_op[4]~8_combout\,
	datac => \Button_n[2]~input_o\,
	datad => \Button_n[3]~input_o\,
	combout => \inst1|LED_SEL_G[3]~35_combout\);

-- Location: LCCOMB_X27_Y33_N30
\inst1|LED_SEL_G[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[3]~16_combout\ = (\inst1|LED_SEL_G[0]~6_combout\ & ((\inst1|LED_SEL_G[3]~15_combout\) # ((\inst1|LED_SEL_G[7]~5_combout\ & \inst1|LED_SEL_G[3]~35_combout\)))) # (!\inst1|LED_SEL_G[0]~6_combout\ & (((\inst1|LED_SEL_G[7]~5_combout\ & 
-- \inst1|LED_SEL_G[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[0]~6_combout\,
	datab => \inst1|LED_SEL_G[3]~15_combout\,
	datac => \inst1|LED_SEL_G[7]~5_combout\,
	datad => \inst1|LED_SEL_G[3]~35_combout\,
	combout => \inst1|LED_SEL_G[3]~16_combout\);

-- Location: FF_X25_Y32_N7
\inst2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[19]~67_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(19));

-- Location: FF_X25_Y33_N7
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[3]~35_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: FF_X25_Y32_N23
\inst2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[27]~83_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(27));

-- Location: FF_X25_Y33_N23
\inst2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[11]~51_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	ena => \Button_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(11));

-- Location: LCCOMB_X26_Y33_N20
\inst1|LED_SEL_G[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[4]~17_combout\ = (\inst1|iCntCol\(0) & (\inst1|iCntCol\(1))) # (!\inst1|iCntCol\(0) & ((\inst1|iCntCol\(1) & ((\inst2|count\(11)))) # (!\inst1|iCntCol\(1) & (\inst2|count\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst1|iCntCol\(1),
	datac => \inst2|count\(27),
	datad => \inst2|count\(11),
	combout => \inst1|LED_SEL_G[4]~17_combout\);

-- Location: LCCOMB_X26_Y33_N22
\inst1|LED_SEL_G[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[4]~18_combout\ = (\inst1|iCntCol\(0) & ((\inst1|LED_SEL_G[4]~17_combout\ & ((\inst2|count\(3)))) # (!\inst1|LED_SEL_G[4]~17_combout\ & (\inst2|count\(19))))) # (!\inst1|iCntCol\(0) & (((\inst1|LED_SEL_G[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst2|count\(19),
	datac => \inst2|count\(3),
	datad => \inst1|LED_SEL_G[4]~17_combout\,
	combout => \inst1|LED_SEL_G[4]~18_combout\);

-- Location: IOIBUF_X34_Y34_N1
\Sw_LedB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedB(3),
	o => \Sw_LedB[3]~input_o\);

-- Location: LCCOMB_X28_Y33_N8
\inst1|LED_SEL_G[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[4]~32_combout\ = (\Sw_LedA[3]~input_o\ & ((\Button_n[2]~input_o\ $ (\Sw_LedB[3]~input_o\)) # (!\Button_n[3]~input_o\))) # (!\Sw_LedA[3]~input_o\ & ((\Button_n[2]~input_o\ & ((\Sw_LedB[3]~input_o\))) # (!\Button_n[2]~input_o\ & 
-- (!\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Button_n[2]~input_o\,
	datac => \Sw_LedA[3]~input_o\,
	datad => \Sw_LedB[3]~input_o\,
	combout => \inst1|LED_SEL_G[4]~32_combout\);

-- Location: LCCOMB_X27_Y33_N18
\inst1|LED_SEL_G[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[4]~33_combout\ = (\inst1|LED_SEL_G[4]~32_combout\ & ((\Button_n[3]~input_o\) # ((\Button_n[2]~input_o\) # (\inst|add_op[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Button_n[2]~input_o\,
	datac => \inst1|LED_SEL_G[4]~32_combout\,
	datad => \inst|add_op[3]~6_combout\,
	combout => \inst1|LED_SEL_G[4]~33_combout\);

-- Location: LCCOMB_X27_Y33_N0
\inst1|LED_SEL_G[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[4]~19_combout\ = (\inst1|LED_SEL_G[0]~6_combout\ & ((\inst1|LED_SEL_G[4]~18_combout\) # ((\inst1|LED_SEL_G[7]~5_combout\ & \inst1|LED_SEL_G[4]~33_combout\)))) # (!\inst1|LED_SEL_G[0]~6_combout\ & (((\inst1|LED_SEL_G[7]~5_combout\ & 
-- \inst1|LED_SEL_G[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[0]~6_combout\,
	datab => \inst1|LED_SEL_G[4]~18_combout\,
	datac => \inst1|LED_SEL_G[7]~5_combout\,
	datad => \inst1|LED_SEL_G[4]~33_combout\,
	combout => \inst1|LED_SEL_G[4]~19_combout\);

-- Location: LCCOMB_X26_Y33_N24
\inst1|LED_SEL_G[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[5]~20_combout\ = (\inst1|iCntCol\(0) & ((\inst1|iCntCol\(1)) # ((\inst2|count\(18))))) # (!\inst1|iCntCol\(0) & (!\inst1|iCntCol\(1) & (\inst2|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(0),
	datab => \inst1|iCntCol\(1),
	datac => \inst2|count\(26),
	datad => \inst2|count\(18),
	combout => \inst1|LED_SEL_G[5]~20_combout\);

-- Location: LCCOMB_X26_Y33_N26
\inst1|LED_SEL_G[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[5]~21_combout\ = (\inst1|iCntCol\(1) & ((\inst1|LED_SEL_G[5]~20_combout\ & ((\inst2|count\(2)))) # (!\inst1|LED_SEL_G[5]~20_combout\ & (\inst2|count\(10))))) # (!\inst1|iCntCol\(1) & (((\inst1|LED_SEL_G[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(10),
	datab => \inst2|count\(2),
	datac => \inst1|iCntCol\(1),
	datad => \inst1|LED_SEL_G[5]~20_combout\,
	combout => \inst1|LED_SEL_G[5]~21_combout\);

-- Location: IOIBUF_X51_Y34_N15
\Sw_LedA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(2),
	o => \Sw_LedA[2]~input_o\);

-- Location: LCCOMB_X27_Y33_N26
\inst1|LED_SEL_G[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[5]~30_combout\ = (\Sw_LedB[2]~input_o\ & ((\Button_n[2]~input_o\ $ (\Sw_LedA[2]~input_o\)) # (!\Button_n[3]~input_o\))) # (!\Sw_LedB[2]~input_o\ & ((\Button_n[2]~input_o\ & (\Sw_LedA[2]~input_o\)) # (!\Button_n[2]~input_o\ & 
-- ((!\Button_n[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[2]~input_o\,
	datab => \Sw_LedB[2]~input_o\,
	datac => \Sw_LedA[2]~input_o\,
	datad => \Button_n[3]~input_o\,
	combout => \inst1|LED_SEL_G[5]~30_combout\);

-- Location: LCCOMB_X27_Y33_N24
\inst1|LED_SEL_G[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[5]~31_combout\ = (\inst1|LED_SEL_G[5]~30_combout\ & ((\inst|add_op[2]~4_combout\) # ((\Button_n[2]~input_o\) # (\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_op[2]~4_combout\,
	datab => \Button_n[2]~input_o\,
	datac => \inst1|LED_SEL_G[5]~30_combout\,
	datad => \Button_n[3]~input_o\,
	combout => \inst1|LED_SEL_G[5]~31_combout\);

-- Location: LCCOMB_X27_Y33_N22
\inst1|LED_SEL_G[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[5]~22_combout\ = (\inst1|LED_SEL_G[0]~6_combout\ & ((\inst1|LED_SEL_G[5]~21_combout\) # ((\inst1|LED_SEL_G[7]~5_combout\ & \inst1|LED_SEL_G[5]~31_combout\)))) # (!\inst1|LED_SEL_G[0]~6_combout\ & (\inst1|LED_SEL_G[7]~5_combout\ & 
-- ((\inst1|LED_SEL_G[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[0]~6_combout\,
	datab => \inst1|LED_SEL_G[7]~5_combout\,
	datac => \inst1|LED_SEL_G[5]~21_combout\,
	datad => \inst1|LED_SEL_G[5]~31_combout\,
	combout => \inst1|LED_SEL_G[5]~22_combout\);

-- Location: LCCOMB_X24_Y33_N4
\inst1|LED_SEL_G[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[6]~23_combout\ = (\inst1|iCntCol\(1) & ((\inst2|count\(9)) # ((\inst1|iCntCol\(0))))) # (!\inst1|iCntCol\(1) & (((\inst2|count\(25) & !\inst1|iCntCol\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(1),
	datab => \inst2|count\(9),
	datac => \inst2|count\(25),
	datad => \inst1|iCntCol\(0),
	combout => \inst1|LED_SEL_G[6]~23_combout\);

-- Location: LCCOMB_X24_Y33_N22
\inst1|LED_SEL_G[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[6]~24_combout\ = (\inst1|iCntCol\(0) & ((\inst1|LED_SEL_G[6]~23_combout\ & (\inst2|count\(1))) # (!\inst1|LED_SEL_G[6]~23_combout\ & ((\inst2|count\(17)))))) # (!\inst1|iCntCol\(0) & (((\inst1|LED_SEL_G[6]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|LED_SEL_G[6]~23_combout\,
	datad => \inst2|count\(17),
	combout => \inst1|LED_SEL_G[6]~24_combout\);

-- Location: IOIBUF_X51_Y34_N22
\Sw_LedA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(1),
	o => \Sw_LedA[1]~input_o\);

-- Location: LCCOMB_X28_Y33_N12
\inst1|LED_SEL_G[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[6]~28_combout\ = (\Sw_LedB[1]~input_o\ & ((\Button_n[2]~input_o\ $ (\Sw_LedA[1]~input_o\)) # (!\Button_n[3]~input_o\))) # (!\Sw_LedB[1]~input_o\ & ((\Button_n[2]~input_o\ & ((\Sw_LedA[1]~input_o\))) # (!\Button_n[2]~input_o\ & 
-- (!\Button_n[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Sw_LedB[1]~input_o\,
	datac => \Button_n[2]~input_o\,
	datad => \Sw_LedA[1]~input_o\,
	combout => \inst1|LED_SEL_G[6]~28_combout\);

-- Location: LCCOMB_X28_Y33_N2
\inst1|LED_SEL_G[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[6]~29_combout\ = (\inst1|LED_SEL_G[6]~28_combout\ & ((\Button_n[3]~input_o\) # ((\inst|add_op[1]~2_combout\) # (\Button_n[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \inst|add_op[1]~2_combout\,
	datac => \Button_n[2]~input_o\,
	datad => \inst1|LED_SEL_G[6]~28_combout\,
	combout => \inst1|LED_SEL_G[6]~29_combout\);

-- Location: LCCOMB_X27_Y33_N12
\inst1|LED_SEL_G[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[6]~25_combout\ = (\inst1|LED_SEL_G[0]~6_combout\ & ((\inst1|LED_SEL_G[6]~24_combout\) # ((\inst1|LED_SEL_G[7]~5_combout\ & \inst1|LED_SEL_G[6]~29_combout\)))) # (!\inst1|LED_SEL_G[0]~6_combout\ & (((\inst1|LED_SEL_G[7]~5_combout\ & 
-- \inst1|LED_SEL_G[6]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LED_SEL_G[0]~6_combout\,
	datab => \inst1|LED_SEL_G[6]~24_combout\,
	datac => \inst1|LED_SEL_G[7]~5_combout\,
	datad => \inst1|LED_SEL_G[6]~29_combout\,
	combout => \inst1|LED_SEL_G[6]~25_combout\);

-- Location: IOIBUF_X43_Y34_N22
\Sw_LedA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LedA(0),
	o => \Sw_LedA[0]~input_o\);

-- Location: LCCOMB_X28_Y33_N0
\inst3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (\Button_n[3]~input_o\ & (!\Button_n[2]~input_o\ & (\Sw_LedB[0]~input_o\ & \Sw_LedA[0]~input_o\))) # (!\Button_n[3]~input_o\ & (\Button_n[2]~input_o\ & ((\Sw_LedB[0]~input_o\) # (\Sw_LedA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \Button_n[2]~input_o\,
	datac => \Sw_LedB[0]~input_o\,
	datad => \Sw_LedA[0]~input_o\,
	combout => \inst3|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y33_N14
\inst3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = (\inst3|Mux7~0_combout\) # ((\inst|add_op[0]~0_combout\ & (\Button_n[3]~input_o\ $ (!\Button_n[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n[3]~input_o\,
	datab => \inst|add_op[0]~0_combout\,
	datac => \Button_n[2]~input_o\,
	datad => \inst3|Mux7~0_combout\,
	combout => \inst3|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y33_N0
\inst2|count[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[0]~93_combout\ = \inst2|count\(0) $ (\Button_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(0),
	datad => \Button_n[0]~input_o\,
	combout => \inst2|count[0]~93_combout\);

-- Location: FF_X25_Y33_N1
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|count[0]~93_combout\,
	clrn => \Button_n[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X24_Y33_N8
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|iCntCol\(1) & (\inst1|iCntCol\(0))) # (!\inst1|iCntCol\(1) & ((\inst1|iCntCol\(0) & ((\inst2|count\(16)))) # (!\inst1|iCntCol\(0) & (\inst2|count\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(1),
	datab => \inst1|iCntCol\(0),
	datac => \inst2|count\(24),
	datad => \inst2|count\(16),
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y33_N10
\inst1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (\inst1|iCntCol\(1) & ((\inst1|Mux7~0_combout\ & (\inst2|count\(0))) # (!\inst1|Mux7~0_combout\ & ((\inst2|count\(8)))))) # (!\inst1|iCntCol\(1) & (((\inst1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(1),
	datab => \inst2|count\(0),
	datac => \inst1|Mux7~0_combout\,
	datad => \inst2|count\(8),
	combout => \inst1|Mux7~1_combout\);

-- Location: LCCOMB_X20_Y33_N20
\inst1|LED_SEL_G[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[7]~26_combout\ = (!\inst1|iCntCol\(2) & (\inst1|PresentSt.stEnCol~q\ & (\inst1|iCntCol\(3) & \inst1|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(2),
	datab => \inst1|PresentSt.stEnCol~q\,
	datac => \inst1|iCntCol\(3),
	datad => \inst1|Mux7~1_combout\,
	combout => \inst1|LED_SEL_G[7]~26_combout\);

-- Location: LCCOMB_X20_Y33_N2
\inst1|LED_SEL_G[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SEL_G[7]~27_combout\ = (\inst1|LED_SEL_G[7]~26_combout\) # ((\inst3|Mux7~1_combout\ & (\inst1|LED_SEL_G[7]~4_combout\ & \inst1|PresentSt.stEnCol~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux7~1_combout\,
	datab => \inst1|LED_SEL_G[7]~4_combout\,
	datac => \inst1|PresentSt.stEnCol~q\,
	datad => \inst1|LED_SEL_G[7]~26_combout\,
	combout => \inst1|LED_SEL_G[7]~27_combout\);

-- Location: LCCOMB_X19_Y33_N8
\inst1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (!\inst1|iCntCol\(3) & (!\inst1|iCntCol\(2) & (!\inst1|iCntCol\(0) & !\inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X19_Y33_N2
\inst1|LED_SELC_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[0]~0_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Decoder0~0_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[0]~0_combout\);

-- Location: LCCOMB_X20_Y33_N10
\inst1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~1_combout\ = (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(0) & (!\inst1|iCntCol\(2) & !\inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|iCntCol\(2),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X19_Y33_N28
\inst1|LED_SELC_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[1]~1_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Decoder0~1_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[1]~1_combout\);

-- Location: LCCOMB_X20_Y33_N28
\inst1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~2_combout\ = (!\inst1|iCntCol\(3) & (!\inst1|iCntCol\(0) & (!\inst1|iCntCol\(2) & \inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|iCntCol\(2),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~2_combout\);

-- Location: LCCOMB_X20_Y33_N22
\inst1|LED_SELC_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[2]~2_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~2_combout\,
	datac => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[2]~2_combout\);

-- Location: LCCOMB_X20_Y33_N12
\inst1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~3_combout\ = (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(0) & (!\inst1|iCntCol\(2) & \inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|iCntCol\(2),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~3_combout\);

-- Location: LCCOMB_X19_Y33_N26
\inst1|LED_SELC_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[3]~3_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Decoder0~3_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[3]~3_combout\);

-- Location: LCCOMB_X19_Y33_N12
\inst1|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~4_combout\ = (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(2) & (!\inst1|iCntCol\(0) & !\inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~4_combout\);

-- Location: LCCOMB_X19_Y33_N18
\inst1|LED_SELC_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[4]~4_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~4_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[4]~4_combout\);

-- Location: LCCOMB_X19_Y33_N0
\inst1|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~5_combout\ = (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(2) & (\inst1|iCntCol\(0) & !\inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~5_combout\);

-- Location: LCCOMB_X19_Y33_N14
\inst1|LED_SELC_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[5]~5_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~5_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[5]~5_combout\);

-- Location: LCCOMB_X19_Y33_N20
\inst1|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~6_combout\ = (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(2) & (!\inst1|iCntCol\(0) & \inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~6_combout\);

-- Location: LCCOMB_X19_Y33_N10
\inst1|LED_SELC_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[6]~6_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~6_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[6]~6_combout\);

-- Location: LCCOMB_X19_Y33_N24
\inst1|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~7_combout\ = (!\inst1|iCntCol\(3) & (\inst1|iCntCol\(2) & (\inst1|iCntCol\(0) & \inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~7_combout\);

-- Location: LCCOMB_X19_Y33_N30
\inst1|LED_SELC_n[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[7]~7_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~7_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[7]~7_combout\);

-- Location: LCCOMB_X19_Y33_N4
\inst1|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~8_combout\ = (\inst1|iCntCol\(3) & (!\inst1|iCntCol\(2) & (!\inst1|iCntCol\(0) & !\inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~8_combout\);

-- Location: LCCOMB_X19_Y33_N6
\inst1|LED_SELC_n[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[8]~8_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Decoder0~8_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[8]~8_combout\);

-- Location: LCCOMB_X20_Y33_N26
\inst1|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~9_combout\ = (\inst1|iCntCol\(3) & (\inst1|iCntCol\(0) & (!\inst1|iCntCol\(2) & !\inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|iCntCol\(2),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~9_combout\);

-- Location: LCCOMB_X20_Y33_N0
\inst1|LED_SELC_n[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[9]~9_combout\ = (!\inst1|Decoder0~9_combout\) # (!\inst1|PresentSt.stEnCol~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PresentSt.stEnCol~q\,
	datac => \inst1|Decoder0~9_combout\,
	combout => \inst1|LED_SELC_n[9]~9_combout\);

-- Location: LCCOMB_X19_Y33_N16
\inst1|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~10_combout\ = (\inst1|iCntCol\(3) & (!\inst1|iCntCol\(2) & (!\inst1|iCntCol\(0) & \inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(3),
	datab => \inst1|iCntCol\(2),
	datac => \inst1|iCntCol\(0),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~10_combout\);

-- Location: LCCOMB_X19_Y33_N22
\inst1|LED_SELC_n[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[10]~10_combout\ = (!\inst1|PresentSt.stEnCol~q\) # (!\inst1|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Decoder0~10_combout\,
	datad => \inst1|PresentSt.stEnCol~q\,
	combout => \inst1|LED_SELC_n[10]~10_combout\);

-- Location: LCCOMB_X24_Y33_N28
\inst1|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~11_combout\ = (!\inst1|iCntCol\(2) & (\inst1|iCntCol\(0) & (\inst1|iCntCol\(3) & \inst1|iCntCol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|iCntCol\(2),
	datab => \inst1|iCntCol\(0),
	datac => \inst1|iCntCol\(3),
	datad => \inst1|iCntCol\(1),
	combout => \inst1|Decoder0~11_combout\);

-- Location: LCCOMB_X23_Y33_N2
\inst1|LED_SELC_n[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LED_SELC_n[11]~11_combout\ = (!\inst1|Decoder0~11_combout\) # (!\inst1|PresentSt.stEnCol~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PresentSt.stEnCol~q\,
	datad => \inst1|Decoder0~11_combout\,
	combout => \inst1|LED_SELC_n[11]~11_combout\);

ww_LED_Reset <= \LED_Reset~output_o\;

ww_LED_Sel_B(0) <= \LED_Sel_B[0]~output_o\;

ww_LED_Sel_B(1) <= \LED_Sel_B[1]~output_o\;

ww_LED_Sel_B(2) <= \LED_Sel_B[2]~output_o\;

ww_LED_Sel_B(3) <= \LED_Sel_B[3]~output_o\;

ww_LED_Sel_B(4) <= \LED_Sel_B[4]~output_o\;

ww_LED_Sel_B(5) <= \LED_Sel_B[5]~output_o\;

ww_LED_Sel_B(6) <= \LED_Sel_B[6]~output_o\;

ww_LED_Sel_B(7) <= \LED_Sel_B[7]~output_o\;

ww_LED_Sel_G(0) <= \LED_Sel_G[0]~output_o\;

ww_LED_Sel_G(1) <= \LED_Sel_G[1]~output_o\;

ww_LED_Sel_G(2) <= \LED_Sel_G[2]~output_o\;

ww_LED_Sel_G(3) <= \LED_Sel_G[3]~output_o\;

ww_LED_Sel_G(4) <= \LED_Sel_G[4]~output_o\;

ww_LED_Sel_G(5) <= \LED_Sel_G[5]~output_o\;

ww_LED_Sel_G(6) <= \LED_Sel_G[6]~output_o\;

ww_LED_Sel_G(7) <= \LED_Sel_G[7]~output_o\;

ww_LED_Sel_R(0) <= \LED_Sel_R[0]~output_o\;

ww_LED_Sel_R(1) <= \LED_Sel_R[1]~output_o\;

ww_LED_Sel_R(2) <= \LED_Sel_R[2]~output_o\;

ww_LED_Sel_R(3) <= \LED_Sel_R[3]~output_o\;

ww_LED_Sel_R(4) <= \LED_Sel_R[4]~output_o\;

ww_LED_Sel_R(5) <= \LED_Sel_R[5]~output_o\;

ww_LED_Sel_R(6) <= \LED_Sel_R[6]~output_o\;

ww_LED_Sel_R(7) <= \LED_Sel_R[7]~output_o\;

ww_LED_SelC_n(0) <= \LED_SelC_n[0]~output_o\;

ww_LED_SelC_n(1) <= \LED_SelC_n[1]~output_o\;

ww_LED_SelC_n(2) <= \LED_SelC_n[2]~output_o\;

ww_LED_SelC_n(3) <= \LED_SelC_n[3]~output_o\;

ww_LED_SelC_n(4) <= \LED_SelC_n[4]~output_o\;

ww_LED_SelC_n(5) <= \LED_SelC_n[5]~output_o\;

ww_LED_SelC_n(6) <= \LED_SelC_n[6]~output_o\;

ww_LED_SelC_n(7) <= \LED_SelC_n[7]~output_o\;

ww_LED_SelC_n(8) <= \LED_SelC_n[8]~output_o\;

ww_LED_SelC_n(9) <= \LED_SelC_n[9]~output_o\;

ww_LED_SelC_n(10) <= \LED_SelC_n[10]~output_o\;

ww_LED_SelC_n(11) <= \LED_SelC_n[11]~output_o\;
END structure;


