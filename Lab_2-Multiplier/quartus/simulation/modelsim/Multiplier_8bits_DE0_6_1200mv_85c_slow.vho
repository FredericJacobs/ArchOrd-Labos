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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/02/2013 08:47:40"

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

ENTITY 	Multiplier_8bits_DE0 IS
    PORT (
	LED_Reset : OUT std_logic;
	CLOCK : IN std_logic;
	KEY_n : IN std_logic_vector(0 DOWNTO 0);
	Button_n3 : IN std_logic;
	Button_n0 : IN std_logic;
	Sw_LedA : IN std_logic_vector(7 DOWNTO 0);
	Sw_LEDB : IN std_logic_vector(7 DOWNTO 0);
	LED_Sel_B : OUT std_logic_vector(0 TO 7);
	LED_Sel_G : OUT std_logic_vector(0 TO 7);
	LED_Sel_R : OUT std_logic_vector(0 TO 7);
	LED_SelC_n : OUT std_logic_vector(0 TO 11);
	LedButton : OUT std_logic_vector(3 DOWNTO 0)
	);
END Multiplier_8bits_DE0;

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
-- LedButton[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LedButton[2]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LedButton[1]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LedButton[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- CLOCK	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- KEY_n[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Button_n0	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Button_n3	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[2]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[3]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[4]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[5]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[6]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LEDB[7]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[5]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[6]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Sw_LedA[7]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF Multiplier_8bits_DE0 IS
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
SIGNAL ww_KEY_n : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Button_n3 : std_logic;
SIGNAL ww_Button_n0 : std_logic;
SIGNAL ww_Sw_LedA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sw_LEDB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Sel_B : std_logic_vector(0 TO 7);
SIGNAL ww_LED_Sel_G : std_logic_vector(0 TO 7);
SIGNAL ww_LED_Sel_R : std_logic_vector(0 TO 7);
SIGNAL ww_LED_SelC_n : std_logic_vector(0 TO 11);
SIGNAL ww_LedButton : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|clk_divider_0|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Button_n3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clk_divider_0|Add0~0_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~4_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~24_combout\ : std_logic;
SIGNAL \inst4|Selector0~2_combout\ : std_logic;
SIGNAL \inst4|Equal1~3_combout\ : std_logic;
SIGNAL \inst4|Equal1~4_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres[14]~0_combout\ : std_logic;
SIGNAL \inst4|reg_col_cnt~1_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~5_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~9_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~13_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Equal0~0_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~6_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~10_combout\ : std_logic;
SIGNAL \inst|controller_0|Selector9~0_combout\ : std_logic;
SIGNAL \inst|multiplier_0|a~6_combout\ : std_logic;
SIGNAL \inst|multiplier_0|a~7_combout\ : std_logic;
SIGNAL \inst|multiplier_0|a~8_combout\ : std_logic;
SIGNAL \Sw_LEDB[1]~input_o\ : std_logic;
SIGNAL \Sw_LEDB[2]~input_o\ : std_logic;
SIGNAL \Sw_LEDB[4]~input_o\ : std_logic;
SIGNAL \Sw_LEDB[5]~input_o\ : std_logic;
SIGNAL \Sw_LedA[5]~input_o\ : std_logic;
SIGNAL \Sw_LedA[6]~input_o\ : std_logic;
SIGNAL \Sw_LedA[7]~input_o\ : std_logic;
SIGNAL \inst4|reg_pwm_thres[26]~feeder_combout\ : std_logic;
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
SIGNAL \LedButton[3]~output_o\ : std_logic;
SIGNAL \LedButton[2]~output_o\ : std_logic;
SIGNAL \LedButton[1]~output_o\ : std_logic;
SIGNAL \LedButton[0]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|state.DISPLAY~0_combout\ : std_logic;
SIGNAL \KEY_n[0]~input_o\ : std_logic;
SIGNAL \inst4|state.DISPLAY~q\ : std_logic;
SIGNAL \inst4|reg_period_cnt[0]~15_combout\ : std_logic;
SIGNAL \inst4|state.TRANS1~q\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|state.TRANS2~q\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[0]~16\ : std_logic;
SIGNAL \inst4|reg_period_cnt[1]~17_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[1]~18\ : std_logic;
SIGNAL \inst4|reg_period_cnt[2]~19_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[2]~20\ : std_logic;
SIGNAL \inst4|reg_period_cnt[3]~21_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[3]~22\ : std_logic;
SIGNAL \inst4|reg_period_cnt[4]~23_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[4]~24\ : std_logic;
SIGNAL \inst4|reg_period_cnt[5]~26\ : std_logic;
SIGNAL \inst4|reg_period_cnt[6]~27_combout\ : std_logic;
SIGNAL \inst4|Selector0~1_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[6]~28\ : std_logic;
SIGNAL \inst4|reg_period_cnt[7]~29_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[7]~30\ : std_logic;
SIGNAL \inst4|reg_period_cnt[8]~31_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[8]~32\ : std_logic;
SIGNAL \inst4|reg_period_cnt[9]~33_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[9]~34\ : std_logic;
SIGNAL \inst4|reg_period_cnt[10]~35_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[10]~36\ : std_logic;
SIGNAL \inst4|reg_period_cnt[11]~38\ : std_logic;
SIGNAL \inst4|reg_period_cnt[12]~39_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[12]~40\ : std_logic;
SIGNAL \inst4|reg_period_cnt[13]~42\ : std_logic;
SIGNAL \inst4|reg_period_cnt[14]~43_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[11]~37_combout\ : std_logic;
SIGNAL \inst4|Selector0~3_combout\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|Selector0~4_combout\ : std_logic;
SIGNAL \inst4|Selector1~1_combout\ : std_logic;
SIGNAL \inst4|Selector1~2_combout\ : std_logic;
SIGNAL \inst4|state.RST~q\ : std_logic;
SIGNAL \Button_n3~input_o\ : std_logic;
SIGNAL \Button_n3~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|controller_0|state.S0~q\ : std_logic;
SIGNAL \Button_n0~input_o\ : std_logic;
SIGNAL \inst|controller_0|state.S2~q\ : std_logic;
SIGNAL \inst|controller_0|Selector1~0_combout\ : std_logic;
SIGNAL \inst|controller_0|Selector1~1_combout\ : std_logic;
SIGNAL \inst|controller_0|state.S1~q\ : std_logic;
SIGNAL \inst|controller_0|Selector11~0_combout\ : std_logic;
SIGNAL \inst|controller_0|count[0]~1_combout\ : std_logic;
SIGNAL \inst|controller_0|Selector10~0_combout\ : std_logic;
SIGNAL \inst|controller_0|Selector3~0_combout\ : std_logic;
SIGNAL \inst|controller_0|state.S3~q\ : std_logic;
SIGNAL \inst|controller_0|count[0]~0_combout\ : std_logic;
SIGNAL \inst|controller_0|Selector5~0_combout\ : std_logic;
SIGNAL \inst|controller_0|load_product~q\ : std_logic;
SIGNAL \Sw_LEDB[0]~input_o\ : std_logic;
SIGNAL \inst|controller_0|load_multiplicand~0_combout\ : std_logic;
SIGNAL \inst|controller_0|load_multiplicand~q\ : std_logic;
SIGNAL \Sw_LedA[0]~input_o\ : std_logic;
SIGNAL \Sw_LedA[1]~input_o\ : std_logic;
SIGNAL \Sw_LedA[2]~input_o\ : std_logic;
SIGNAL \inst|controller_0|load_multiplier~0_combout\ : std_logic;
SIGNAL \inst|controller_0|Selector7~0_combout\ : std_logic;
SIGNAL \inst|controller_0|load_multiplier~q\ : std_logic;
SIGNAL \Sw_LedA[4]~input_o\ : std_logic;
SIGNAL \inst|multiplier_0|a~5_combout\ : std_logic;
SIGNAL \inst|controller_0|shift_multiplier~q\ : std_logic;
SIGNAL \inst|multiplier_0|a~1_combout\ : std_logic;
SIGNAL \Sw_LedA[3]~input_o\ : std_logic;
SIGNAL \inst|multiplier_0|a~4_combout\ : std_logic;
SIGNAL \inst|multiplier_0|a~3_combout\ : std_logic;
SIGNAL \inst|multiplier_0|a~2_combout\ : std_logic;
SIGNAL \inst|multiplier_0|a~0_combout\ : std_logic;
SIGNAL \inst|add_0|s[0]~0_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~0_combout\ : std_logic;
SIGNAL \inst|product_0|a[0]~0_combout\ : std_logic;
SIGNAL \inst4|reg_col_cnt[0]~3_combout\ : std_logic;
SIGNAL \inst4|reg_col_cnt[1]~2_combout\ : std_logic;
SIGNAL \inst4|reg_col_cnt~0_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[0]~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|Equal1~2_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres[14]~1_combout\ : std_logic;
SIGNAL \inst4|s_gamma_addr[0]~0_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~3_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres[14]~2_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[13]~41_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~6_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~8_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~11_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~12_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~14_combout\ : std_logic;
SIGNAL \inst4|LessThan2~1_cout\ : std_logic;
SIGNAL \inst4|LessThan2~3_cout\ : std_logic;
SIGNAL \inst4|LessThan2~5_cout\ : std_logic;
SIGNAL \inst4|LessThan2~7_cout\ : std_logic;
SIGNAL \inst4|LessThan2~9_cout\ : std_logic;
SIGNAL \inst4|LessThan2~11_cout\ : std_logic;
SIGNAL \inst4|LessThan2~13_cout\ : std_logic;
SIGNAL \inst4|LessThan2~15_cout\ : std_logic;
SIGNAL \inst4|LessThan2~17_cout\ : std_logic;
SIGNAL \inst4|LessThan2~19_cout\ : std_logic;
SIGNAL \inst4|LessThan2~21_cout\ : std_logic;
SIGNAL \inst4|LessThan2~23_cout\ : std_logic;
SIGNAL \inst4|LessThan2~25_cout\ : std_logic;
SIGNAL \inst4|LessThan2~27_cout\ : std_logic;
SIGNAL \inst4|LessThan2~28_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[0]~1_combout\ : std_logic;
SIGNAL \inst|product_0|a~8_combout\ : std_logic;
SIGNAL \inst|product_0|a~7_combout\ : std_logic;
SIGNAL \inst|product_0|a~6_combout\ : std_logic;
SIGNAL \inst|product_0|a~5_combout\ : std_logic;
SIGNAL \inst|product_0|a~4_combout\ : std_logic;
SIGNAL \inst|product_0|a~3_combout\ : std_logic;
SIGNAL \inst|product_0|a~2_combout\ : std_logic;
SIGNAL \inst|product_0|a~1_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[0]~2_combout\ : std_logic;
SIGNAL \inst|add_0|s[0]~1\ : std_logic;
SIGNAL \inst|add_0|s[1]~3\ : std_logic;
SIGNAL \inst|add_0|s[2]~4_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~2_combout\ : std_logic;
SIGNAL \inst|add_0|s[1]~2_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~1_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[1]~3_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[2]~4_combout\ : std_logic;
SIGNAL \Sw_LEDB[3]~input_o\ : std_logic;
SIGNAL \inst|add_0|s[2]~5\ : std_logic;
SIGNAL \inst|add_0|s[3]~7\ : std_logic;
SIGNAL \inst|add_0|s[4]~9\ : std_logic;
SIGNAL \inst|add_0|s[5]~10_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~5_combout\ : std_logic;
SIGNAL \inst|add_0|s[4]~8_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~4_combout\ : std_logic;
SIGNAL \inst|add_0|s[3]~6_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~3_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[3]~5_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[4]~6_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[5]~7_combout\ : std_logic;
SIGNAL \Sw_LEDB[7]~input_o\ : std_logic;
SIGNAL \Sw_LEDB[6]~input_o\ : std_logic;
SIGNAL \inst|add_0|s[5]~11\ : std_logic;
SIGNAL \inst|add_0|s[6]~13\ : std_logic;
SIGNAL \inst|add_0|s[7]~15\ : std_logic;
SIGNAL \inst|add_0|s[8]~16_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~8_combout\ : std_logic;
SIGNAL \inst|add_0|s[7]~14_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~7_combout\ : std_logic;
SIGNAL \inst|add_0|s[6]~12_combout\ : std_logic;
SIGNAL \inst|add_0|Add0~6_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[6]~8_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_B[7]~9_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~4_combout\ : std_logic;
SIGNAL \inst4|reg_period_cnt[5]~25_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~15_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~16_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~17_combout\ : std_logic;
SIGNAL \inst4|LessThan1~1_cout\ : std_logic;
SIGNAL \inst4|LessThan1~3_cout\ : std_logic;
SIGNAL \inst4|LessThan1~5_cout\ : std_logic;
SIGNAL \inst4|LessThan1~7_cout\ : std_logic;
SIGNAL \inst4|LessThan1~9_cout\ : std_logic;
SIGNAL \inst4|LessThan1~11_cout\ : std_logic;
SIGNAL \inst4|LessThan1~13_cout\ : std_logic;
SIGNAL \inst4|LessThan1~15_cout\ : std_logic;
SIGNAL \inst4|LessThan1~17_cout\ : std_logic;
SIGNAL \inst4|LessThan1~19_cout\ : std_logic;
SIGNAL \inst4|LessThan1~21_cout\ : std_logic;
SIGNAL \inst4|LessThan1~23_cout\ : std_logic;
SIGNAL \inst4|LessThan1~25_cout\ : std_logic;
SIGNAL \inst4|LessThan1~27_cout\ : std_logic;
SIGNAL \inst4|LessThan1~28_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[0]~0_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[0]~1_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[1]~2_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[2]~3_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[3]~4_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[4]~5_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[5]~6_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[6]~7_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_G[7]~8_combout\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~7_combout\ : std_logic;
SIGNAL \inst4|gamma_table_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst4|reg_pwm_thres~10_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_cout\ : std_logic;
SIGNAL \inst4|LessThan0~3_cout\ : std_logic;
SIGNAL \inst4|LessThan0~5_cout\ : std_logic;
SIGNAL \inst4|LessThan0~7_cout\ : std_logic;
SIGNAL \inst4|LessThan0~9_cout\ : std_logic;
SIGNAL \inst4|LessThan0~11_cout\ : std_logic;
SIGNAL \inst4|LessThan0~13_cout\ : std_logic;
SIGNAL \inst4|LessThan0~15_cout\ : std_logic;
SIGNAL \inst4|LessThan0~17_cout\ : std_logic;
SIGNAL \inst4|LessThan0~19_cout\ : std_logic;
SIGNAL \inst4|LessThan0~21_cout\ : std_logic;
SIGNAL \inst4|LessThan0~23_cout\ : std_logic;
SIGNAL \inst4|LessThan0~25_cout\ : std_logic;
SIGNAL \inst4|LessThan0~27_cout\ : std_logic;
SIGNAL \inst4|LessThan0~28_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[0]~0_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[0]~1_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[1]~2_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[2]~3_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[3]~4_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[4]~5_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[5]~6_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[6]~7_combout\ : std_logic;
SIGNAL \inst4|LED_Sel_R[7]~8_combout\ : std_logic;
SIGNAL \inst4|reg_sel_col[1]~1_combout\ : std_logic;
SIGNAL \inst4|reg_sel_col[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|reg_sel_col[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|reg_sel_col[0]~0_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[0]~1_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[1]~2_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[2]~3_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[3]~4_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[4]~5_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[5]~6_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[6]~7_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[7]~8_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[8]~9_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[9]~10_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[10]~11_combout\ : std_logic;
SIGNAL \inst4|LED_SelC_n[11]~12_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~1\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~3\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~5\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~6_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~7\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~8_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~9\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~10_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~11\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~12_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~13\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~15\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~16_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~7_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~17\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~18_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~8_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~19\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~20_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~21\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~22_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~9_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~23\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~25\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~26_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~27\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~28_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~29\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~30_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Equal0~3_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Equal0~2_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~2_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~14_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Equal0~1_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Equal0~4_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~31\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~32_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~11_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~33\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~35\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~36_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~13_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~37\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~38_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~39\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~40_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~14_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~41\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~43\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~44_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~45\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~46_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~16_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~42_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~15_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Equal0~6_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Add0~34_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|count~12_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|Equal0~5_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|tmp~0_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|tmp~feeder_combout\ : std_logic;
SIGNAL \inst|clk_divider_0|tmp~q\ : std_logic;
SIGNAL \inst|clk_divider_0|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \inst|controller_0|Selector4~0_combout\ : std_logic;
SIGNAL \inst|controller_0|Selector4~1_combout\ : std_logic;
SIGNAL \inst|controller_0|done~q\ : std_logic;
SIGNAL \inst4|reg_sel_col\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst4|reg_pwm_thres\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \inst4|reg_period_cnt\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst4|reg_col_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|controller_0|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|clk_divider_0|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|product_0|a\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|and_0|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|multiplier_0|a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|multiplicand_0|a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_state.TRANS1~q\ : std_logic;

BEGIN

LED_Reset <= ww_LED_Reset;
ww_CLOCK <= CLOCK;
ww_KEY_n <= KEY_n;
ww_Button_n3 <= Button_n3;
ww_Button_n0 <= Button_n0;
ww_Sw_LedA <= Sw_LedA;
ww_Sw_LEDB <= Sw_LEDB;
LED_Sel_B <= ww_LED_Sel_B;
LED_Sel_G <= ww_LED_Sel_G;
LED_Sel_R <= ww_LED_Sel_R;
LED_SelC_n <= ww_LED_SelC_n;
LedButton <= ww_LedButton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|s_gamma_addr[0]~0_combout\ & \inst4|s_gamma_addr[0]~0_combout\ & \inst4|s_gamma_addr[0]~0_combout\ & \inst4|s_gamma_addr[0]~0_combout\ & \inst4|s_gamma_addr[0]~0_combout\ & 
\inst4|s_gamma_addr[0]~0_combout\ & \inst4|s_gamma_addr[0]~0_combout\ & \inst4|s_gamma_addr[0]~0_combout\);

\inst4|gamma_table_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a1\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a2\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a3\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a4\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a5\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a6\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a7\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a8\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a9\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a10\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a11\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a12\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a13\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a14\ <= \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);

\inst|clk_divider_0|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_divider_0|tmp~q\);

\Button_n3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Button_n3~input_o\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\ <= NOT \inst|clk_divider_0|tmp~clkctrl_outclk\;
\inst4|ALT_INV_state.TRANS1~q\ <= NOT \inst4|state.TRANS1~q\;

-- Location: LCCOMB_X40_Y7_N8
\inst|clk_divider_0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~0_combout\ = \inst|clk_divider_0|count\(0) $ (VCC)
-- \inst|clk_divider_0|Add0~1\ = CARRY(\inst|clk_divider_0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(0),
	datad => VCC,
	combout => \inst|clk_divider_0|Add0~0_combout\,
	cout => \inst|clk_divider_0|Add0~1\);

-- Location: LCCOMB_X40_Y7_N12
\inst|clk_divider_0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~4_combout\ = (\inst|clk_divider_0|count\(2) & (\inst|clk_divider_0|Add0~3\ $ (GND))) # (!\inst|clk_divider_0|count\(2) & (!\inst|clk_divider_0|Add0~3\ & VCC))
-- \inst|clk_divider_0|Add0~5\ = CARRY((\inst|clk_divider_0|count\(2) & !\inst|clk_divider_0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(2),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~3\,
	combout => \inst|clk_divider_0|Add0~4_combout\,
	cout => \inst|clk_divider_0|Add0~5\);

-- Location: LCCOMB_X40_Y6_N0
\inst|clk_divider_0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~24_combout\ = (\inst|clk_divider_0|count\(12) & (\inst|clk_divider_0|Add0~23\ $ (GND))) # (!\inst|clk_divider_0|count\(12) & (!\inst|clk_divider_0|Add0~23\ & VCC))
-- \inst|clk_divider_0|Add0~25\ = CARRY((\inst|clk_divider_0|count\(12) & !\inst|clk_divider_0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(12),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~23\,
	combout => \inst|clk_divider_0|Add0~24_combout\,
	cout => \inst|clk_divider_0|Add0~25\);

-- Location: FF_X35_Y17_N11
\inst4|reg_pwm_thres[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(29),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(13));

-- Location: FF_X35_Y17_N13
\inst4|reg_pwm_thres[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(28),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(12));

-- Location: FF_X35_Y17_N17
\inst4|reg_pwm_thres[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(26),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(10));

-- Location: FF_X36_Y17_N19
\inst4|reg_pwm_thres[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(24),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(8));

-- Location: FF_X36_Y17_N13
\inst4|reg_pwm_thres[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(23),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(7));

-- Location: FF_X36_Y17_N11
\inst4|reg_pwm_thres[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(20),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(4));

-- Location: FF_X36_Y17_N27
\inst4|reg_pwm_thres[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(18),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(2));

-- Location: FF_X35_Y17_N3
\inst4|reg_pwm_thres[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(17),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(1));

-- Location: FF_X36_Y16_N11
\inst4|reg_pwm_thres[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(16),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(0));

-- Location: FF_X36_Y8_N11
\inst4|reg_col_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_col_cnt~1_combout\,
	clrn => \KEY_n[0]~input_o\,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_col_cnt\(2));

-- Location: FF_X35_Y17_N29
\inst4|reg_pwm_thres[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(44),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(28));

-- Location: FF_X35_Y17_N1
\inst4|reg_pwm_thres[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres[26]~feeder_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(26));

-- Location: FF_X35_Y17_N19
\inst4|reg_pwm_thres[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(40),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(24));

-- Location: FF_X35_Y17_N9
\inst4|reg_pwm_thres[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(39),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(23));

-- Location: FF_X36_Y17_N25
\inst4|reg_pwm_thres[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(36),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(20));

-- Location: FF_X34_Y17_N21
\inst4|reg_pwm_thres[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~5_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(44));

-- Location: FF_X34_Y17_N17
\inst4|reg_pwm_thres[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~9_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(40));

-- Location: FF_X34_Y17_N9
\inst4|reg_pwm_thres[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~13_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(36));

-- Location: LCCOMB_X35_Y16_N30
\inst4|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~2_combout\ = (\inst4|reg_period_cnt\(7) & (\inst4|reg_period_cnt\(9) & (\inst4|reg_period_cnt\(8) & \inst4|reg_period_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(7),
	datab => \inst4|reg_period_cnt\(9),
	datac => \inst4|reg_period_cnt\(8),
	datad => \inst4|reg_period_cnt\(10),
	combout => \inst4|Selector0~2_combout\);

-- Location: LCCOMB_X35_Y16_N20
\inst4|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~3_combout\ = (\inst4|reg_period_cnt\(4) & (\inst4|reg_period_cnt\(5) & (\inst4|reg_period_cnt\(0) & !\inst4|reg_period_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(4),
	datab => \inst4|reg_period_cnt\(5),
	datac => \inst4|reg_period_cnt\(0),
	datad => \inst4|reg_period_cnt\(1),
	combout => \inst4|Equal1~3_combout\);

-- Location: LCCOMB_X35_Y16_N22
\inst4|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~4_combout\ = (\inst4|Equal1~3_combout\ & (\inst4|Equal1~0_combout\ & (\inst4|Equal1~1_combout\ & \inst4|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~3_combout\,
	datab => \inst4|Equal1~0_combout\,
	datac => \inst4|Equal1~1_combout\,
	datad => \inst4|Equal1~2_combout\,
	combout => \inst4|Equal1~4_combout\);

-- Location: LCCOMB_X35_Y16_N26
\inst4|reg_pwm_thres[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres[14]~0_combout\ = (!\inst4|reg_period_cnt\(5) & (\inst4|state.RST~q\ & !\inst4|reg_period_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(5),
	datac => \inst4|state.RST~q\,
	datad => \inst4|reg_period_cnt\(4),
	combout => \inst4|reg_pwm_thres[14]~0_combout\);

-- Location: LCCOMB_X36_Y8_N10
\inst4|reg_col_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_col_cnt~1_combout\ = (\inst4|reg_col_cnt\(1) & ((\inst4|reg_col_cnt\(2) & ((!\inst4|reg_col_cnt\(0)))) # (!\inst4|reg_col_cnt\(2) & (!\inst4|reg_col_cnt\(3) & \inst4|reg_col_cnt\(0))))) # (!\inst4|reg_col_cnt\(1) & (((\inst4|reg_col_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_col_cnt\(3),
	datab => \inst4|reg_col_cnt\(1),
	datac => \inst4|reg_col_cnt\(2),
	datad => \inst4|reg_col_cnt\(0),
	combout => \inst4|reg_col_cnt~1_combout\);

-- Location: FF_X40_Y8_N5
\inst|multiplicand_0|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[1]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(1));

-- Location: LCCOMB_X40_Y8_N4
\inst|and_0|s[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(1) = (\inst|multiplicand_0|a\(1) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(1),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(1));

-- Location: FF_X40_Y8_N3
\inst|multiplicand_0|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[2]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(2));

-- Location: LCCOMB_X40_Y8_N2
\inst|and_0|s[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(2) = (\inst|multiplicand_0|a\(2) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(2),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(2));

-- Location: FF_X40_Y8_N31
\inst|multiplicand_0|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[4]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(4));

-- Location: LCCOMB_X40_Y8_N30
\inst|and_0|s[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(4) = (\inst|multiplicand_0|a\(4) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(4),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(4));

-- Location: FF_X40_Y8_N21
\inst|multiplicand_0|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[5]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(5));

-- Location: LCCOMB_X40_Y8_N20
\inst|and_0|s[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(5) = (\inst|multiplicand_0|a\(5) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(5),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(5));

-- Location: LCCOMB_X34_Y17_N20
\inst4|reg_pwm_thres~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~5_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a12\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a12\,
	datac => \inst4|reg_period_cnt\(1),
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a11\,
	combout => \inst4|reg_pwm_thres~5_combout\);

-- Location: LCCOMB_X34_Y17_N16
\inst4|reg_pwm_thres~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~9_combout\ = (\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a8\))) # (!\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a7\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a8\,
	combout => \inst4|reg_pwm_thres~9_combout\);

-- Location: LCCOMB_X34_Y17_N8
\inst4|reg_pwm_thres~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~13_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a4\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a4\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a3\,
	combout => \inst4|reg_pwm_thres~13_combout\);

-- Location: FF_X40_Y7_N13
\inst|clk_divider_0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(2));

-- Location: LCCOMB_X40_Y7_N4
\inst|clk_divider_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Equal0~0_combout\ = (!\inst|clk_divider_0|count\(2) & (!\inst|clk_divider_0|count\(4) & (!\inst|clk_divider_0|count\(3) & !\inst|clk_divider_0|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(2),
	datab => \inst|clk_divider_0|count\(4),
	datac => \inst|clk_divider_0|count\(3),
	datad => \inst|clk_divider_0|count\(5),
	combout => \inst|clk_divider_0|Equal0~0_combout\);

-- Location: FF_X40_Y7_N7
\inst|clk_divider_0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(0));

-- Location: FF_X39_Y6_N27
\inst|clk_divider_0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(12));

-- Location: FF_X38_Y11_N15
\inst|controller_0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|Selector9~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	ena => \inst|controller_0|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|count\(2));

-- Location: LCCOMB_X40_Y7_N6
\inst|clk_divider_0|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~6_combout\ = (\inst|clk_divider_0|Add0~0_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~5_combout\)) # (!\inst|clk_divider_0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~6_combout\,
	datab => \inst|clk_divider_0|Add0~0_combout\,
	datac => \inst|clk_divider_0|Equal0~5_combout\,
	datad => \inst|clk_divider_0|Equal0~4_combout\,
	combout => \inst|clk_divider_0|count~6_combout\);

-- Location: LCCOMB_X39_Y6_N26
\inst|clk_divider_0|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~10_combout\ = (\inst|clk_divider_0|Add0~24_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~5_combout\)) # (!\inst|clk_divider_0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~6_combout\,
	datab => \inst|clk_divider_0|Equal0~5_combout\,
	datac => \inst|clk_divider_0|Add0~24_combout\,
	datad => \inst|clk_divider_0|Equal0~4_combout\,
	combout => \inst|clk_divider_0|count~10_combout\);

-- Location: LCCOMB_X38_Y11_N14
\inst|controller_0|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector9~0_combout\ = (\inst|controller_0|state.S1~q\ & (\inst|controller_0|count\(2) $ (((\inst|controller_0|count\(0) & \inst|controller_0|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|count\(0),
	datab => \inst|controller_0|count\(1),
	datac => \inst|controller_0|count\(2),
	datad => \inst|controller_0|state.S1~q\,
	combout => \inst|controller_0|Selector9~0_combout\);

-- Location: FF_X40_Y11_N13
\inst|multiplier_0|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~6_combout\,
	ena => \inst|multiplier_0|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(5));

-- Location: FF_X40_Y11_N11
\inst|multiplier_0|a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~7_combout\,
	ena => \inst|multiplier_0|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(6));

-- Location: LCCOMB_X40_Y11_N12
\inst|multiplier_0|a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~6_combout\ = (\inst|controller_0|load_multiplier~q\ & (\Sw_LedA[5]~input_o\)) # (!\inst|controller_0|load_multiplier~q\ & ((\inst|multiplier_0|a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_multiplier~q\,
	datac => \Sw_LedA[5]~input_o\,
	datad => \inst|multiplier_0|a\(6),
	combout => \inst|multiplier_0|a~6_combout\);

-- Location: FF_X39_Y11_N15
\inst|multiplier_0|a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(7));

-- Location: LCCOMB_X40_Y11_N10
\inst|multiplier_0|a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~7_combout\ = (\inst|controller_0|load_multiplier~q\ & ((\Sw_LedA[6]~input_o\))) # (!\inst|controller_0|load_multiplier~q\ & (\inst|multiplier_0|a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier_0|a\(7),
	datac => \inst|controller_0|load_multiplier~q\,
	datad => \Sw_LedA[6]~input_o\,
	combout => \inst|multiplier_0|a~7_combout\);

-- Location: LCCOMB_X39_Y11_N14
\inst|multiplier_0|a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~8_combout\ = (\inst|controller_0|load_multiplier~q\ & (\Sw_LedA[7]~input_o\)) # (!\inst|controller_0|load_multiplier~q\ & (((\inst|multiplier_0|a\(7) & !\inst|controller_0|shift_multiplier~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sw_LedA[7]~input_o\,
	datab => \inst|controller_0|load_multiplier~q\,
	datac => \inst|multiplier_0|a\(7),
	datad => \inst|controller_0|shift_multiplier~q\,
	combout => \inst|multiplier_0|a~8_combout\);

-- Location: IOIBUF_X31_Y34_N1
\Sw_LEDB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(1),
	o => \Sw_LEDB[1]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\Sw_LEDB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(2),
	o => \Sw_LEDB[2]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\Sw_LEDB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(4),
	o => \Sw_LEDB[4]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\Sw_LEDB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(5),
	o => \Sw_LEDB[5]~input_o\);

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

-- Location: LCCOMB_X35_Y17_N0
\inst4|reg_pwm_thres[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres[26]~feeder_combout\ = \inst4|reg_pwm_thres\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|reg_pwm_thres\(42),
	combout => \inst4|reg_pwm_thres[26]~feeder_combout\);

-- Location: IOOBUF_X7_Y34_N2
\LED_Reset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|state.RST~q\,
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
	i => \inst4|LED_Sel_B[0]~2_combout\,
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
	i => \inst4|LED_Sel_B[1]~3_combout\,
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
	i => \inst4|LED_Sel_B[2]~4_combout\,
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
	i => \inst4|LED_Sel_B[3]~5_combout\,
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
	i => \inst4|LED_Sel_B[4]~6_combout\,
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
	i => \inst4|LED_Sel_B[5]~7_combout\,
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
	i => \inst4|LED_Sel_B[6]~8_combout\,
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
	i => \inst4|LED_Sel_B[7]~9_combout\,
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
	i => \inst4|LED_Sel_G[0]~1_combout\,
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
	i => \inst4|LED_Sel_G[1]~2_combout\,
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
	i => \inst4|LED_Sel_G[2]~3_combout\,
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
	i => \inst4|LED_Sel_G[3]~4_combout\,
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
	i => \inst4|LED_Sel_G[4]~5_combout\,
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
	i => \inst4|LED_Sel_G[5]~6_combout\,
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
	i => \inst4|LED_Sel_G[6]~7_combout\,
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
	i => \inst4|LED_Sel_G[7]~8_combout\,
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
	i => \inst4|LED_Sel_R[0]~1_combout\,
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
	i => \inst4|LED_Sel_R[1]~2_combout\,
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
	i => \inst4|LED_Sel_R[2]~3_combout\,
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
	i => \inst4|LED_Sel_R[3]~4_combout\,
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
	i => \inst4|LED_Sel_R[4]~5_combout\,
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
	i => \inst4|LED_Sel_R[5]~6_combout\,
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
	i => \inst4|LED_Sel_R[6]~7_combout\,
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
	i => \inst4|LED_Sel_R[7]~8_combout\,
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
	i => \inst4|LED_SelC_n[0]~1_combout\,
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
	i => \inst4|LED_SelC_n[1]~2_combout\,
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
	i => \inst4|LED_SelC_n[2]~3_combout\,
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
	i => \inst4|LED_SelC_n[3]~4_combout\,
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
	i => \inst4|LED_SelC_n[4]~5_combout\,
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
	i => \inst4|LED_SelC_n[5]~6_combout\,
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
	i => \inst4|LED_SelC_n[6]~7_combout\,
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
	i => \inst4|LED_SelC_n[7]~8_combout\,
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
	i => \inst4|LED_SelC_n[8]~9_combout\,
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
	i => \inst4|LED_SelC_n[9]~10_combout\,
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
	i => \inst4|LED_SelC_n[10]~11_combout\,
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
	i => \inst4|LED_SelC_n[11]~12_combout\,
	devoe => ww_devoe,
	o => \LED_SelC_n[11]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\LedButton[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LedButton[3]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\LedButton[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LedButton[2]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\LedButton[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LedButton[1]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\LedButton[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|controller_0|done~q\,
	devoe => ww_devoe,
	o => \LedButton[0]~output_o\);

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

-- Location: LCCOMB_X35_Y16_N18
\inst4|state.DISPLAY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state.DISPLAY~0_combout\ = (\inst4|state.TRANS2~q\) # ((\inst4|state.DISPLAY~q\ & !\inst4|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.TRANS2~q\,
	datac => \inst4|state.DISPLAY~q\,
	datad => \inst4|Selector1~1_combout\,
	combout => \inst4|state.DISPLAY~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY_n[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_n(0),
	o => \KEY_n[0]~input_o\);

-- Location: FF_X35_Y16_N19
\inst4|state.DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|state.DISPLAY~0_combout\,
	clrn => \KEY_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.DISPLAY~q\);

-- Location: LCCOMB_X34_Y16_N0
\inst4|reg_period_cnt[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[0]~15_combout\ = \inst4|reg_period_cnt\(0) $ (VCC)
-- \inst4|reg_period_cnt[0]~16\ = CARRY(\inst4|reg_period_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(0),
	datad => VCC,
	combout => \inst4|reg_period_cnt[0]~15_combout\,
	cout => \inst4|reg_period_cnt[0]~16\);

-- Location: FF_X35_Y16_N3
\inst4|state.TRANS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|Selector0~4_combout\,
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.TRANS1~q\);

-- Location: LCCOMB_X35_Y16_N12
\inst4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = (\inst4|Equal1~4_combout\ & \inst4|state.RST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~4_combout\,
	datac => \inst4|state.RST~q\,
	combout => \inst4|Selector2~0_combout\);

-- Location: FF_X35_Y16_N13
\inst4|state.TRANS2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|Selector2~0_combout\,
	clrn => \KEY_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.TRANS2~q\);

-- Location: LCCOMB_X35_Y16_N2
\inst4|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (\inst4|state.TRANS2~q\) # (!\inst4|state.TRANS1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|state.TRANS1~q\,
	datad => \inst4|state.TRANS2~q\,
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X34_Y16_N1
\inst4|reg_period_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[0]~15_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(0));

-- Location: LCCOMB_X34_Y16_N2
\inst4|reg_period_cnt[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[1]~17_combout\ = (\inst4|reg_period_cnt\(1) & (!\inst4|reg_period_cnt[0]~16\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|reg_period_cnt[0]~16\) # (GND)))
-- \inst4|reg_period_cnt[1]~18\ = CARRY((!\inst4|reg_period_cnt[0]~16\) # (!\inst4|reg_period_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(1),
	datad => VCC,
	cin => \inst4|reg_period_cnt[0]~16\,
	combout => \inst4|reg_period_cnt[1]~17_combout\,
	cout => \inst4|reg_period_cnt[1]~18\);

-- Location: FF_X34_Y16_N3
\inst4|reg_period_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[1]~17_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(1));

-- Location: LCCOMB_X34_Y16_N4
\inst4|reg_period_cnt[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[2]~19_combout\ = (\inst4|reg_period_cnt\(2) & (\inst4|reg_period_cnt[1]~18\ $ (GND))) # (!\inst4|reg_period_cnt\(2) & (!\inst4|reg_period_cnt[1]~18\ & VCC))
-- \inst4|reg_period_cnt[2]~20\ = CARRY((\inst4|reg_period_cnt\(2) & !\inst4|reg_period_cnt[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(2),
	datad => VCC,
	cin => \inst4|reg_period_cnt[1]~18\,
	combout => \inst4|reg_period_cnt[2]~19_combout\,
	cout => \inst4|reg_period_cnt[2]~20\);

-- Location: FF_X34_Y16_N5
\inst4|reg_period_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[2]~19_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(2));

-- Location: LCCOMB_X34_Y16_N6
\inst4|reg_period_cnt[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[3]~21_combout\ = (\inst4|reg_period_cnt\(3) & (!\inst4|reg_period_cnt[2]~20\)) # (!\inst4|reg_period_cnt\(3) & ((\inst4|reg_period_cnt[2]~20\) # (GND)))
-- \inst4|reg_period_cnt[3]~22\ = CARRY((!\inst4|reg_period_cnt[2]~20\) # (!\inst4|reg_period_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(3),
	datad => VCC,
	cin => \inst4|reg_period_cnt[2]~20\,
	combout => \inst4|reg_period_cnt[3]~21_combout\,
	cout => \inst4|reg_period_cnt[3]~22\);

-- Location: FF_X34_Y16_N7
\inst4|reg_period_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[3]~21_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(3));

-- Location: LCCOMB_X34_Y16_N8
\inst4|reg_period_cnt[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[4]~23_combout\ = (\inst4|reg_period_cnt\(4) & (\inst4|reg_period_cnt[3]~22\ $ (GND))) # (!\inst4|reg_period_cnt\(4) & (!\inst4|reg_period_cnt[3]~22\ & VCC))
-- \inst4|reg_period_cnt[4]~24\ = CARRY((\inst4|reg_period_cnt\(4) & !\inst4|reg_period_cnt[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(4),
	datad => VCC,
	cin => \inst4|reg_period_cnt[3]~22\,
	combout => \inst4|reg_period_cnt[4]~23_combout\,
	cout => \inst4|reg_period_cnt[4]~24\);

-- Location: FF_X34_Y16_N9
\inst4|reg_period_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[4]~23_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(4));

-- Location: LCCOMB_X34_Y16_N10
\inst4|reg_period_cnt[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[5]~25_combout\ = (\inst4|reg_period_cnt\(5) & (!\inst4|reg_period_cnt[4]~24\)) # (!\inst4|reg_period_cnt\(5) & ((\inst4|reg_period_cnt[4]~24\) # (GND)))
-- \inst4|reg_period_cnt[5]~26\ = CARRY((!\inst4|reg_period_cnt[4]~24\) # (!\inst4|reg_period_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(5),
	datad => VCC,
	cin => \inst4|reg_period_cnt[4]~24\,
	combout => \inst4|reg_period_cnt[5]~25_combout\,
	cout => \inst4|reg_period_cnt[5]~26\);

-- Location: LCCOMB_X34_Y16_N12
\inst4|reg_period_cnt[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[6]~27_combout\ = (\inst4|reg_period_cnt\(6) & (\inst4|reg_period_cnt[5]~26\ $ (GND))) # (!\inst4|reg_period_cnt\(6) & (!\inst4|reg_period_cnt[5]~26\ & VCC))
-- \inst4|reg_period_cnt[6]~28\ = CARRY((\inst4|reg_period_cnt\(6) & !\inst4|reg_period_cnt[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(6),
	datad => VCC,
	cin => \inst4|reg_period_cnt[5]~26\,
	combout => \inst4|reg_period_cnt[6]~27_combout\,
	cout => \inst4|reg_period_cnt[6]~28\);

-- Location: FF_X34_Y16_N13
\inst4|reg_period_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[6]~27_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(6));

-- Location: LCCOMB_X35_Y16_N24
\inst4|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~1_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|reg_period_cnt\(3) & (\inst4|reg_period_cnt\(2) & \inst4|reg_period_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datab => \inst4|reg_period_cnt\(3),
	datac => \inst4|reg_period_cnt\(2),
	datad => \inst4|reg_period_cnt\(6),
	combout => \inst4|Selector0~1_combout\);

-- Location: LCCOMB_X34_Y16_N14
\inst4|reg_period_cnt[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[7]~29_combout\ = (\inst4|reg_period_cnt\(7) & (!\inst4|reg_period_cnt[6]~28\)) # (!\inst4|reg_period_cnt\(7) & ((\inst4|reg_period_cnt[6]~28\) # (GND)))
-- \inst4|reg_period_cnt[7]~30\ = CARRY((!\inst4|reg_period_cnt[6]~28\) # (!\inst4|reg_period_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(7),
	datad => VCC,
	cin => \inst4|reg_period_cnt[6]~28\,
	combout => \inst4|reg_period_cnt[7]~29_combout\,
	cout => \inst4|reg_period_cnt[7]~30\);

-- Location: FF_X34_Y16_N15
\inst4|reg_period_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[7]~29_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(7));

-- Location: LCCOMB_X34_Y16_N16
\inst4|reg_period_cnt[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[8]~31_combout\ = (\inst4|reg_period_cnt\(8) & (\inst4|reg_period_cnt[7]~30\ $ (GND))) # (!\inst4|reg_period_cnt\(8) & (!\inst4|reg_period_cnt[7]~30\ & VCC))
-- \inst4|reg_period_cnt[8]~32\ = CARRY((\inst4|reg_period_cnt\(8) & !\inst4|reg_period_cnt[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(8),
	datad => VCC,
	cin => \inst4|reg_period_cnt[7]~30\,
	combout => \inst4|reg_period_cnt[8]~31_combout\,
	cout => \inst4|reg_period_cnt[8]~32\);

-- Location: FF_X34_Y16_N17
\inst4|reg_period_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[8]~31_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(8));

-- Location: LCCOMB_X34_Y16_N18
\inst4|reg_period_cnt[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[9]~33_combout\ = (\inst4|reg_period_cnt\(9) & (!\inst4|reg_period_cnt[8]~32\)) # (!\inst4|reg_period_cnt\(9) & ((\inst4|reg_period_cnt[8]~32\) # (GND)))
-- \inst4|reg_period_cnt[9]~34\ = CARRY((!\inst4|reg_period_cnt[8]~32\) # (!\inst4|reg_period_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(9),
	datad => VCC,
	cin => \inst4|reg_period_cnt[8]~32\,
	combout => \inst4|reg_period_cnt[9]~33_combout\,
	cout => \inst4|reg_period_cnt[9]~34\);

-- Location: FF_X34_Y16_N19
\inst4|reg_period_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[9]~33_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(9));

-- Location: LCCOMB_X34_Y16_N20
\inst4|reg_period_cnt[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[10]~35_combout\ = (\inst4|reg_period_cnt\(10) & (\inst4|reg_period_cnt[9]~34\ $ (GND))) # (!\inst4|reg_period_cnt\(10) & (!\inst4|reg_period_cnt[9]~34\ & VCC))
-- \inst4|reg_period_cnt[10]~36\ = CARRY((\inst4|reg_period_cnt\(10) & !\inst4|reg_period_cnt[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(10),
	datad => VCC,
	cin => \inst4|reg_period_cnt[9]~34\,
	combout => \inst4|reg_period_cnt[10]~35_combout\,
	cout => \inst4|reg_period_cnt[10]~36\);

-- Location: FF_X34_Y16_N21
\inst4|reg_period_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[10]~35_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(10));

-- Location: LCCOMB_X34_Y16_N22
\inst4|reg_period_cnt[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[11]~37_combout\ = (\inst4|reg_period_cnt\(11) & (!\inst4|reg_period_cnt[10]~36\)) # (!\inst4|reg_period_cnt\(11) & ((\inst4|reg_period_cnt[10]~36\) # (GND)))
-- \inst4|reg_period_cnt[11]~38\ = CARRY((!\inst4|reg_period_cnt[10]~36\) # (!\inst4|reg_period_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(11),
	datad => VCC,
	cin => \inst4|reg_period_cnt[10]~36\,
	combout => \inst4|reg_period_cnt[11]~37_combout\,
	cout => \inst4|reg_period_cnt[11]~38\);

-- Location: LCCOMB_X34_Y16_N24
\inst4|reg_period_cnt[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[12]~39_combout\ = (\inst4|reg_period_cnt\(12) & (\inst4|reg_period_cnt[11]~38\ $ (GND))) # (!\inst4|reg_period_cnt\(12) & (!\inst4|reg_period_cnt[11]~38\ & VCC))
-- \inst4|reg_period_cnt[12]~40\ = CARRY((\inst4|reg_period_cnt\(12) & !\inst4|reg_period_cnt[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(12),
	datad => VCC,
	cin => \inst4|reg_period_cnt[11]~38\,
	combout => \inst4|reg_period_cnt[12]~39_combout\,
	cout => \inst4|reg_period_cnt[12]~40\);

-- Location: FF_X34_Y16_N25
\inst4|reg_period_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[12]~39_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(12));

-- Location: LCCOMB_X34_Y16_N26
\inst4|reg_period_cnt[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[13]~41_combout\ = (\inst4|reg_period_cnt\(13) & (!\inst4|reg_period_cnt[12]~40\)) # (!\inst4|reg_period_cnt\(13) & ((\inst4|reg_period_cnt[12]~40\) # (GND)))
-- \inst4|reg_period_cnt[13]~42\ = CARRY((!\inst4|reg_period_cnt[12]~40\) # (!\inst4|reg_period_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(13),
	datad => VCC,
	cin => \inst4|reg_period_cnt[12]~40\,
	combout => \inst4|reg_period_cnt[13]~41_combout\,
	cout => \inst4|reg_period_cnt[13]~42\);

-- Location: LCCOMB_X34_Y16_N28
\inst4|reg_period_cnt[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_period_cnt[14]~43_combout\ = \inst4|reg_period_cnt[13]~42\ $ (!\inst4|reg_period_cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|reg_period_cnt\(14),
	cin => \inst4|reg_period_cnt[13]~42\,
	combout => \inst4|reg_period_cnt[14]~43_combout\);

-- Location: FF_X34_Y16_N29
\inst4|reg_period_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[14]~43_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(14));

-- Location: FF_X34_Y16_N23
\inst4|reg_period_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[11]~37_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(11));

-- Location: LCCOMB_X36_Y16_N0
\inst4|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~3_combout\ = (\inst4|reg_period_cnt\(13) & (\inst4|reg_period_cnt\(12) & (\inst4|reg_period_cnt\(14) & \inst4|reg_period_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(13),
	datab => \inst4|reg_period_cnt\(12),
	datac => \inst4|reg_period_cnt\(14),
	datad => \inst4|reg_period_cnt\(11),
	combout => \inst4|Selector0~3_combout\);

-- Location: LCCOMB_X35_Y16_N14
\inst4|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = (\inst4|reg_period_cnt\(5) & (\inst4|state.DISPLAY~q\ & (\inst4|reg_period_cnt\(0) & \inst4|reg_period_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(5),
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_period_cnt\(0),
	datad => \inst4|reg_period_cnt\(4),
	combout => \inst4|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y16_N4
\inst4|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~4_combout\ = (((!\inst4|Selector0~0_combout\) # (!\inst4|Selector0~3_combout\)) # (!\inst4|Selector0~1_combout\)) # (!\inst4|Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector0~2_combout\,
	datab => \inst4|Selector0~1_combout\,
	datac => \inst4|Selector0~3_combout\,
	datad => \inst4|Selector0~0_combout\,
	combout => \inst4|Selector0~4_combout\);

-- Location: LCCOMB_X35_Y16_N28
\inst4|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~1_combout\ = ((\inst4|Selector1~0_combout\) # ((\inst4|Equal1~4_combout\ & !\inst4|state.DISPLAY~q\))) # (!\inst4|Selector0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~4_combout\,
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|Selector0~4_combout\,
	datad => \inst4|Selector1~0_combout\,
	combout => \inst4|Selector1~1_combout\);

-- Location: LCCOMB_X35_Y16_N8
\inst4|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~2_combout\ = (\inst4|state.TRANS1~q\ & (!\inst4|Selector1~1_combout\ & (\inst4|state.RST~q\))) # (!\inst4|state.TRANS1~q\ & (((!\inst4|Selector1~1_combout\ & \inst4|state.RST~q\)) # (!\inst4|state.TRANS2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.TRANS1~q\,
	datab => \inst4|Selector1~1_combout\,
	datac => \inst4|state.RST~q\,
	datad => \inst4|state.TRANS2~q\,
	combout => \inst4|Selector1~2_combout\);

-- Location: FF_X35_Y16_N9
\inst4|state.RST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|Selector1~2_combout\,
	clrn => \KEY_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.RST~q\);

-- Location: IOIBUF_X3_Y34_N1
\Button_n3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button_n3,
	o => \Button_n3~input_o\);

-- Location: CLKCTRL_G2
\Button_n3~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Button_n3~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Button_n3~inputclkctrl_outclk\);

-- Location: FF_X39_Y11_N23
\inst|controller_0|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|count[0]~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|state.S0~q\);

-- Location: IOIBUF_X25_Y34_N15
\Button_n0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button_n0,
	o => \Button_n0~input_o\);

-- Location: FF_X39_Y11_N13
\inst|controller_0|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \inst|controller_0|state.S1~q\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|state.S2~q\);

-- Location: LCCOMB_X39_Y11_N10
\inst|controller_0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector1~0_combout\ = (\inst|controller_0|state.S2~q\ & ((\inst|controller_0|count\(2)) # ((\inst|controller_0|count\(1)) # (\inst|controller_0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|count\(2),
	datab => \inst|controller_0|count\(1),
	datac => \inst|controller_0|count\(0),
	datad => \inst|controller_0|state.S2~q\,
	combout => \inst|controller_0|Selector1~0_combout\);

-- Location: LCCOMB_X39_Y11_N26
\inst|controller_0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector1~1_combout\ = (\inst|controller_0|Selector1~0_combout\) # ((!\inst|controller_0|state.S0~q\ & !\Button_n0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|state.S0~q\,
	datac => \Button_n0~input_o\,
	datad => \inst|controller_0|Selector1~0_combout\,
	combout => \inst|controller_0|Selector1~1_combout\);

-- Location: FF_X39_Y11_N27
\inst|controller_0|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|Selector1~1_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|state.S1~q\);

-- Location: LCCOMB_X38_Y11_N4
\inst|controller_0|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector11~0_combout\ = (!\inst|controller_0|count\(0) & \inst|controller_0|state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|controller_0|count\(0),
	datad => \inst|controller_0|state.S1~q\,
	combout => \inst|controller_0|Selector11~0_combout\);

-- Location: LCCOMB_X39_Y11_N28
\inst|controller_0|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|count[0]~1_combout\ = (!\inst|controller_0|state.S3~q\ & (!\inst|controller_0|state.S2~q\ & ((\inst|controller_0|state.S0~q\) # (!\Button_n0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n0~input_o\,
	datab => \inst|controller_0|state.S3~q\,
	datac => \inst|controller_0|state.S0~q\,
	datad => \inst|controller_0|state.S2~q\,
	combout => \inst|controller_0|count[0]~1_combout\);

-- Location: FF_X38_Y11_N5
\inst|controller_0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|Selector11~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	ena => \inst|controller_0|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|count\(0));

-- Location: LCCOMB_X38_Y11_N24
\inst|controller_0|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector10~0_combout\ = (\inst|controller_0|state.S1~q\ & (\inst|controller_0|count\(0) $ (\inst|controller_0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|controller_0|count\(0),
	datac => \inst|controller_0|count\(1),
	datad => \inst|controller_0|state.S1~q\,
	combout => \inst|controller_0|Selector10~0_combout\);

-- Location: FF_X38_Y11_N25
\inst|controller_0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|Selector10~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	ena => \inst|controller_0|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|count\(1));

-- Location: LCCOMB_X39_Y11_N20
\inst|controller_0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector3~0_combout\ = (!\inst|controller_0|count\(2) & (!\inst|controller_0|count\(1) & (!\inst|controller_0|count\(0) & \inst|controller_0|state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|count\(2),
	datab => \inst|controller_0|count\(1),
	datac => \inst|controller_0|count\(0),
	datad => \inst|controller_0|state.S2~q\,
	combout => \inst|controller_0|Selector3~0_combout\);

-- Location: FF_X39_Y11_N21
\inst|controller_0|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|Selector3~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|state.S3~q\);

-- Location: LCCOMB_X39_Y11_N22
\inst|controller_0|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|count[0]~0_combout\ = (!\inst|controller_0|state.S3~q\ & ((\inst|controller_0|state.S0~q\) # (!\Button_n0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button_n0~input_o\,
	datac => \inst|controller_0|state.S0~q\,
	datad => \inst|controller_0|state.S3~q\,
	combout => \inst|controller_0|count[0]~0_combout\);

-- Location: LCCOMB_X39_Y11_N2
\inst|controller_0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector5~0_combout\ = (\inst|controller_0|state.S1~q\) # ((\inst|controller_0|load_product~q\ & !\inst|controller_0|count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|state.S1~q\,
	datac => \inst|controller_0|load_product~q\,
	datad => \inst|controller_0|count[0]~0_combout\,
	combout => \inst|controller_0|Selector5~0_combout\);

-- Location: FF_X39_Y11_N3
\inst|controller_0|load_product\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|Selector5~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|load_product~q\);

-- Location: IOIBUF_X31_Y34_N8
\Sw_LEDB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(0),
	o => \Sw_LEDB[0]~input_o\);

-- Location: LCCOMB_X39_Y11_N8
\inst|controller_0|load_multiplicand~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|load_multiplicand~0_combout\ = (\inst|controller_0|load_multiplicand~q\) # ((!\inst|controller_0|state.S0~q\ & !\Button_n0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|state.S0~q\,
	datab => \Button_n0~input_o\,
	datac => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|controller_0|load_multiplicand~0_combout\);

-- Location: FF_X39_Y11_N9
\inst|controller_0|load_multiplicand\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|load_multiplicand~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|load_multiplicand~q\);

-- Location: FF_X40_Y8_N11
\inst|multiplicand_0|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[0]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(0));

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

-- Location: LCCOMB_X39_Y11_N0
\inst|controller_0|load_multiplier~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|load_multiplier~0_combout\ = !\inst|controller_0|state.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|controller_0|state.S0~q\,
	combout => \inst|controller_0|load_multiplier~0_combout\);

-- Location: LCCOMB_X39_Y11_N30
\inst|controller_0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector7~0_combout\ = (\inst|controller_0|state.S0~q\ & (!\inst|controller_0|state.S1~q\ & ((!\inst|controller_0|state.S3~q\)))) # (!\inst|controller_0|state.S0~q\ & (((!\Button_n0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|state.S1~q\,
	datab => \Button_n0~input_o\,
	datac => \inst|controller_0|state.S0~q\,
	datad => \inst|controller_0|state.S3~q\,
	combout => \inst|controller_0|Selector7~0_combout\);

-- Location: FF_X39_Y11_N1
\inst|controller_0|load_multiplier\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|load_multiplier~0_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	ena => \inst|controller_0|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|load_multiplier~q\);

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

-- Location: LCCOMB_X40_Y11_N22
\inst|multiplier_0|a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~5_combout\ = (\inst|controller_0|load_multiplier~q\ & ((\Sw_LedA[4]~input_o\))) # (!\inst|controller_0|load_multiplier~q\ & (\inst|multiplier_0|a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplier_0|a\(5),
	datac => \inst|controller_0|load_multiplier~q\,
	datad => \Sw_LedA[4]~input_o\,
	combout => \inst|multiplier_0|a~5_combout\);

-- Location: FF_X39_Y11_N31
\inst|controller_0|shift_multiplier\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \inst|controller_0|state.S0~q\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|controller_0|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|shift_multiplier~q\);

-- Location: LCCOMB_X39_Y11_N18
\inst|multiplier_0|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~1_combout\ = (\inst|controller_0|shift_multiplier~q\) # (\inst|controller_0|load_multiplier~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|controller_0|shift_multiplier~q\,
	datad => \inst|controller_0|load_multiplier~q\,
	combout => \inst|multiplier_0|a~1_combout\);

-- Location: FF_X40_Y11_N23
\inst|multiplier_0|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~5_combout\,
	ena => \inst|multiplier_0|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(4));

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

-- Location: LCCOMB_X40_Y11_N0
\inst|multiplier_0|a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~4_combout\ = (\inst|controller_0|load_multiplier~q\ & ((\Sw_LedA[3]~input_o\))) # (!\inst|controller_0|load_multiplier~q\ & (\inst|multiplier_0|a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_multiplier~q\,
	datac => \inst|multiplier_0|a\(4),
	datad => \Sw_LedA[3]~input_o\,
	combout => \inst|multiplier_0|a~4_combout\);

-- Location: FF_X40_Y11_N1
\inst|multiplier_0|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~4_combout\,
	ena => \inst|multiplier_0|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(3));

-- Location: LCCOMB_X40_Y11_N2
\inst|multiplier_0|a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~3_combout\ = (\inst|controller_0|load_multiplier~q\ & (\Sw_LedA[2]~input_o\)) # (!\inst|controller_0|load_multiplier~q\ & ((\inst|multiplier_0|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_multiplier~q\,
	datac => \Sw_LedA[2]~input_o\,
	datad => \inst|multiplier_0|a\(3),
	combout => \inst|multiplier_0|a~3_combout\);

-- Location: FF_X40_Y11_N3
\inst|multiplier_0|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~3_combout\,
	ena => \inst|multiplier_0|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(2));

-- Location: LCCOMB_X40_Y11_N16
\inst|multiplier_0|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~2_combout\ = (\inst|controller_0|load_multiplier~q\ & (\Sw_LedA[1]~input_o\)) # (!\inst|controller_0|load_multiplier~q\ & ((\inst|multiplier_0|a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_multiplier~q\,
	datac => \Sw_LedA[1]~input_o\,
	datad => \inst|multiplier_0|a\(2),
	combout => \inst|multiplier_0|a~2_combout\);

-- Location: FF_X40_Y11_N17
\inst|multiplier_0|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~2_combout\,
	ena => \inst|multiplier_0|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(1));

-- Location: LCCOMB_X40_Y8_N24
\inst|multiplier_0|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplier_0|a~0_combout\ = (\inst|controller_0|load_multiplier~q\ & (\Sw_LedA[0]~input_o\)) # (!\inst|controller_0|load_multiplier~q\ & ((\inst|multiplier_0|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_multiplier~q\,
	datac => \Sw_LedA[0]~input_o\,
	datad => \inst|multiplier_0|a\(1),
	combout => \inst|multiplier_0|a~0_combout\);

-- Location: FF_X40_Y8_N25
\inst|multiplier_0|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|multiplier_0|a~0_combout\,
	ena => \inst|multiplier_0|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplier_0|a\(0));

-- Location: LCCOMB_X40_Y8_N10
\inst|and_0|s[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(0) = (\inst|multiplicand_0|a\(0) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(0),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(0));

-- Location: LCCOMB_X39_Y8_N4
\inst|add_0|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[0]~0_combout\ = (\inst|product_0|a\(8) & (\inst|and_0|s\(0) $ (VCC))) # (!\inst|product_0|a\(8) & (\inst|and_0|s\(0) & VCC))
-- \inst|add_0|s[0]~1\ = CARRY((\inst|product_0|a\(8) & \inst|and_0|s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(8),
	datab => \inst|and_0|s\(0),
	datad => VCC,
	combout => \inst|add_0|s[0]~0_combout\,
	cout => \inst|add_0|s[0]~1\);

-- Location: LCCOMB_X38_Y8_N16
\inst|add_0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~0_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[0]~0_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(9),
	datac => \inst|controller_0|load_product~q\,
	datad => \inst|add_0|s[0]~0_combout\,
	combout => \inst|add_0|Add0~0_combout\);

-- Location: LCCOMB_X39_Y11_N16
\inst|product_0|a[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a[0]~0_combout\ = (\inst|controller_0|shift_multiplier~q\) # ((\inst|controller_0|load_multiplicand~q\) # (\inst|controller_0|load_product~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|controller_0|shift_multiplier~q\,
	datac => \inst|controller_0|load_multiplicand~q\,
	datad => \inst|controller_0|load_product~q\,
	combout => \inst|product_0|a[0]~0_combout\);

-- Location: FF_X38_Y8_N17
\inst|product_0|a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~0_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(8));

-- Location: LCCOMB_X36_Y8_N18
\inst4|reg_col_cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_col_cnt[0]~3_combout\ = !\inst4|reg_col_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|reg_col_cnt\(0),
	combout => \inst4|reg_col_cnt[0]~3_combout\);

-- Location: FF_X36_Y8_N19
\inst4|reg_col_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_col_cnt[0]~3_combout\,
	clrn => \KEY_n[0]~input_o\,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_col_cnt\(0));

-- Location: LCCOMB_X36_Y8_N16
\inst4|reg_col_cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_col_cnt[1]~2_combout\ = \inst4|reg_col_cnt\(1) $ (((!\inst4|state.TRANS1~q\ & \inst4|reg_col_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.TRANS1~q\,
	datac => \inst4|reg_col_cnt\(1),
	datad => \inst4|reg_col_cnt\(0),
	combout => \inst4|reg_col_cnt[1]~2_combout\);

-- Location: FF_X36_Y8_N17
\inst4|reg_col_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_col_cnt[1]~2_combout\,
	clrn => \KEY_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_col_cnt\(1));

-- Location: LCCOMB_X36_Y8_N12
\inst4|reg_col_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_col_cnt~0_combout\ = (\inst4|reg_col_cnt\(1) & ((\inst4|reg_col_cnt\(3) & ((!\inst4|reg_col_cnt\(0)))) # (!\inst4|reg_col_cnt\(3) & (\inst4|reg_col_cnt\(2) & \inst4|reg_col_cnt\(0))))) # (!\inst4|reg_col_cnt\(1) & (((\inst4|reg_col_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_col_cnt\(2),
	datab => \inst4|reg_col_cnt\(1),
	datac => \inst4|reg_col_cnt\(3),
	datad => \inst4|reg_col_cnt\(0),
	combout => \inst4|reg_col_cnt~0_combout\);

-- Location: FF_X36_Y8_N13
\inst4|reg_col_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_col_cnt~0_combout\,
	clrn => \KEY_n[0]~input_o\,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_col_cnt\(3));

-- Location: LCCOMB_X36_Y8_N26
\inst4|LED_Sel_B[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[0]~0_combout\ = (!\inst4|reg_col_cnt\(2) & (!\inst4|reg_col_cnt\(1) & (\inst4|state.DISPLAY~q\ & !\inst4|reg_col_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_col_cnt\(2),
	datab => \inst4|reg_col_cnt\(1),
	datac => \inst4|state.DISPLAY~q\,
	datad => \inst4|reg_col_cnt\(3),
	combout => \inst4|LED_Sel_B[0]~0_combout\);

-- Location: LCCOMB_X34_Y16_N30
\inst4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (!\inst4|reg_period_cnt\(3) & (!\inst4|reg_period_cnt\(2) & (!\inst4|reg_period_cnt\(7) & !\inst4|reg_period_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(3),
	datab => \inst4|reg_period_cnt\(2),
	datac => \inst4|reg_period_cnt\(7),
	datad => \inst4|reg_period_cnt\(6),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X35_Y16_N6
\inst4|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = (!\inst4|reg_period_cnt\(8) & (!\inst4|reg_period_cnt\(10) & (!\inst4|reg_period_cnt\(11) & !\inst4|reg_period_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(8),
	datab => \inst4|reg_period_cnt\(10),
	datac => \inst4|reg_period_cnt\(11),
	datad => \inst4|reg_period_cnt\(9),
	combout => \inst4|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y16_N16
\inst4|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~2_combout\ = (!\inst4|reg_period_cnt\(13) & (!\inst4|reg_period_cnt\(14) & !\inst4|reg_period_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(13),
	datab => \inst4|reg_period_cnt\(14),
	datad => \inst4|reg_period_cnt\(12),
	combout => \inst4|Equal1~2_combout\);

-- Location: LCCOMB_X35_Y16_N0
\inst4|reg_pwm_thres[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres[14]~1_combout\ = (\inst4|reg_pwm_thres[14]~0_combout\ & (\inst4|Equal1~0_combout\ & (\inst4|Equal1~1_combout\ & \inst4|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres[14]~0_combout\,
	datab => \inst4|Equal1~0_combout\,
	datac => \inst4|Equal1~1_combout\,
	datad => \inst4|Equal1~2_combout\,
	combout => \inst4|reg_pwm_thres[14]~1_combout\);

-- Location: LCCOMB_X34_Y17_N14
\inst4|s_gamma_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_gamma_addr[0]~0_combout\ = (\inst4|reg_period_cnt\(1)) # ((!\inst4|reg_pwm_thres[14]~1_combout\) # (!\inst4|reg_period_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|reg_period_cnt\(0),
	datad => \inst4|reg_pwm_thres[14]~1_combout\,
	combout => \inst4|s_gamma_addr[0]~0_combout\);

-- Location: M9K_X33_Y17_N0
\inst4|gamma_table_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"040000FDD03EE80F9703DD00F5103CBC0F0D03BAC0EC903A9C0E85039900E43038880E01037800DBF0367C0D7E035780D3E0347C0CFF0337C0CC0032840C8203",
	mem_init1 => X"18C0C45030980C0802FA80BCC02EB80B9002DCC0B5502CE00B1B02BF80AE102B140AA802A300A70029500A38028740A010279809CB026C00995025EC096002518092C0244808F80237808C5022AC0892021E408600211C082F0205807FE01F9807CE01ED8079E01E1C077001D60074101CA8071401BF406E701B4406BA01A90068F019E4066401938063901890060F017E805E60174405BD016A4059501604056D015680547014CC05200143404FB013A004D60130C04B10127C048D011EC046A011600447010D8042501050040300FCC03E200F4803C200EC803A200E4C038300DD0036500D54034600CE0032900C6C030C00BF802F000B8802D400B1802B90",
	mem_init0 => X"0AB0029E00A440284009DC026B009780252009180239008B4022200858020A007FC01F4007A401DD0074C01C8006F401B3006A0019E00650018A006040177005B401640056C0152005240140004DC012E00498011E00454010D0041400FE003D800EE0039C00E00036000D10032800C4002F400B6002C000AA00290009E00260009200230008700204007C001DC0072001B400680018C005F00168005600148004D00124004600108003E000EC0037000D00031000B8002B000A0002500088002000074001B0006400180005C00160005400140004C00120004400100003C000E00034000C0002C000A0002400080001C00060001400040000C0002000040000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Multiplier_8bits_DE0.ram0_rgb_led96_6e55db65.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rgb_led96:inst4|altsyncram:gamma_table_rtl_0|altsyncram_ha81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK~inputclkctrl_outclk\,
	portaaddr => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y17_N0
\inst4|reg_pwm_thres~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~3_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a14\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a14\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a13\,
	combout => \inst4|reg_pwm_thres~3_combout\);

-- Location: LCCOMB_X35_Y16_N10
\inst4|reg_pwm_thres[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres[14]~2_combout\ = (\inst4|reg_pwm_thres[14]~1_combout\ & ((!\inst4|reg_period_cnt\(0)) # (!\inst4|reg_period_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|reg_period_cnt\(0),
	datad => \inst4|reg_pwm_thres[14]~1_combout\,
	combout => \inst4|reg_pwm_thres[14]~2_combout\);

-- Location: FF_X34_Y17_N1
\inst4|reg_pwm_thres[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~3_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(46));

-- Location: FF_X35_Y17_N25
\inst4|reg_pwm_thres[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(46),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(30));

-- Location: FF_X36_Y17_N7
\inst4|reg_pwm_thres[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(30),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(14));

-- Location: FF_X34_Y16_N27
\inst4|reg_period_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[13]~41_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(13));

-- Location: LCCOMB_X34_Y17_N30
\inst4|reg_pwm_thres~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~6_combout\ = (\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a11\))) # (!\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a10\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a11\,
	combout => \inst4|reg_pwm_thres~6_combout\);

-- Location: FF_X34_Y17_N31
\inst4|reg_pwm_thres[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~6_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(43));

-- Location: FF_X35_Y16_N17
\inst4|reg_pwm_thres[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(43),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(27));

-- Location: FF_X36_Y16_N5
\inst4|reg_pwm_thres[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(27),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(11));

-- Location: LCCOMB_X34_Y17_N26
\inst4|reg_pwm_thres~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~8_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a9\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a9\,
	datac => \inst4|reg_period_cnt\(1),
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a8\,
	combout => \inst4|reg_pwm_thres~8_combout\);

-- Location: FF_X34_Y17_N27
\inst4|reg_pwm_thres[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~8_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(41));

-- Location: FF_X35_Y17_N27
\inst4|reg_pwm_thres[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(41),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(25));

-- Location: FF_X36_Y17_N15
\inst4|reg_pwm_thres[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(25),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(9));

-- Location: LCCOMB_X34_Y17_N28
\inst4|reg_pwm_thres~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~11_combout\ = (\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a6\))) # (!\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a5\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst4|reg_pwm_thres~11_combout\);

-- Location: FF_X34_Y17_N29
\inst4|reg_pwm_thres[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~11_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(38));

-- Location: FF_X36_Y17_N5
\inst4|reg_pwm_thres[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(38),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(22));

-- Location: FF_X36_Y17_N3
\inst4|reg_pwm_thres[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(22),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(6));

-- Location: LCCOMB_X34_Y17_N18
\inst4|reg_pwm_thres~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~12_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a5\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a5\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst4|reg_pwm_thres~12_combout\);

-- Location: FF_X34_Y17_N19
\inst4|reg_pwm_thres[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~12_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(37));

-- Location: FF_X35_Y17_N5
\inst4|reg_pwm_thres[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(37),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(21));

-- Location: FF_X36_Y17_N17
\inst4|reg_pwm_thres[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(21),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(5));

-- Location: LCCOMB_X34_Y17_N10
\inst4|reg_pwm_thres~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~14_combout\ = (\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a3\))) # (!\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a3\,
	combout => \inst4|reg_pwm_thres~14_combout\);

-- Location: FF_X34_Y17_N11
\inst4|reg_pwm_thres[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~14_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(35));

-- Location: FF_X35_Y17_N23
\inst4|reg_pwm_thres[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(35),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(19));

-- Location: FF_X36_Y17_N9
\inst4|reg_pwm_thres[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(19),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(3));

-- Location: LCCOMB_X36_Y17_N2
\inst4|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~1_cout\ = CARRY((\inst4|reg_pwm_thres\(0) & !\inst4|reg_period_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(0),
	datab => \inst4|reg_period_cnt\(0),
	datad => VCC,
	cout => \inst4|LessThan2~1_cout\);

-- Location: LCCOMB_X36_Y17_N4
\inst4|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~3_cout\ = CARRY((\inst4|reg_pwm_thres\(1) & (\inst4|reg_period_cnt\(1) & !\inst4|LessThan2~1_cout\)) # (!\inst4|reg_pwm_thres\(1) & ((\inst4|reg_period_cnt\(1)) # (!\inst4|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(1),
	datab => \inst4|reg_period_cnt\(1),
	datad => VCC,
	cin => \inst4|LessThan2~1_cout\,
	cout => \inst4|LessThan2~3_cout\);

-- Location: LCCOMB_X36_Y17_N6
\inst4|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~5_cout\ = CARRY((\inst4|reg_pwm_thres\(2) & ((!\inst4|LessThan2~3_cout\) # (!\inst4|reg_period_cnt\(2)))) # (!\inst4|reg_pwm_thres\(2) & (!\inst4|reg_period_cnt\(2) & !\inst4|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(2),
	datab => \inst4|reg_period_cnt\(2),
	datad => VCC,
	cin => \inst4|LessThan2~3_cout\,
	cout => \inst4|LessThan2~5_cout\);

-- Location: LCCOMB_X36_Y17_N8
\inst4|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~7_cout\ = CARRY((\inst4|reg_period_cnt\(3) & ((!\inst4|LessThan2~5_cout\) # (!\inst4|reg_pwm_thres\(3)))) # (!\inst4|reg_period_cnt\(3) & (!\inst4|reg_pwm_thres\(3) & !\inst4|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(3),
	datab => \inst4|reg_pwm_thres\(3),
	datad => VCC,
	cin => \inst4|LessThan2~5_cout\,
	cout => \inst4|LessThan2~7_cout\);

-- Location: LCCOMB_X36_Y17_N10
\inst4|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~9_cout\ = CARRY((\inst4|reg_pwm_thres\(4) & ((!\inst4|LessThan2~7_cout\) # (!\inst4|reg_period_cnt\(4)))) # (!\inst4|reg_pwm_thres\(4) & (!\inst4|reg_period_cnt\(4) & !\inst4|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(4),
	datab => \inst4|reg_period_cnt\(4),
	datad => VCC,
	cin => \inst4|LessThan2~7_cout\,
	cout => \inst4|LessThan2~9_cout\);

-- Location: LCCOMB_X36_Y17_N12
\inst4|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~11_cout\ = CARRY((\inst4|reg_period_cnt\(5) & ((!\inst4|LessThan2~9_cout\) # (!\inst4|reg_pwm_thres\(5)))) # (!\inst4|reg_period_cnt\(5) & (!\inst4|reg_pwm_thres\(5) & !\inst4|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(5),
	datab => \inst4|reg_pwm_thres\(5),
	datad => VCC,
	cin => \inst4|LessThan2~9_cout\,
	cout => \inst4|LessThan2~11_cout\);

-- Location: LCCOMB_X36_Y17_N14
\inst4|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~13_cout\ = CARRY((\inst4|reg_period_cnt\(6) & (\inst4|reg_pwm_thres\(6) & !\inst4|LessThan2~11_cout\)) # (!\inst4|reg_period_cnt\(6) & ((\inst4|reg_pwm_thres\(6)) # (!\inst4|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(6),
	datab => \inst4|reg_pwm_thres\(6),
	datad => VCC,
	cin => \inst4|LessThan2~11_cout\,
	cout => \inst4|LessThan2~13_cout\);

-- Location: LCCOMB_X36_Y17_N16
\inst4|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~15_cout\ = CARRY((\inst4|reg_pwm_thres\(7) & (\inst4|reg_period_cnt\(7) & !\inst4|LessThan2~13_cout\)) # (!\inst4|reg_pwm_thres\(7) & ((\inst4|reg_period_cnt\(7)) # (!\inst4|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(7),
	datab => \inst4|reg_period_cnt\(7),
	datad => VCC,
	cin => \inst4|LessThan2~13_cout\,
	cout => \inst4|LessThan2~15_cout\);

-- Location: LCCOMB_X36_Y17_N18
\inst4|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~17_cout\ = CARRY((\inst4|reg_pwm_thres\(8) & ((!\inst4|LessThan2~15_cout\) # (!\inst4|reg_period_cnt\(8)))) # (!\inst4|reg_pwm_thres\(8) & (!\inst4|reg_period_cnt\(8) & !\inst4|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(8),
	datab => \inst4|reg_period_cnt\(8),
	datad => VCC,
	cin => \inst4|LessThan2~15_cout\,
	cout => \inst4|LessThan2~17_cout\);

-- Location: LCCOMB_X36_Y17_N20
\inst4|LessThan2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~19_cout\ = CARRY((\inst4|reg_period_cnt\(9) & ((!\inst4|LessThan2~17_cout\) # (!\inst4|reg_pwm_thres\(9)))) # (!\inst4|reg_period_cnt\(9) & (!\inst4|reg_pwm_thres\(9) & !\inst4|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(9),
	datab => \inst4|reg_pwm_thres\(9),
	datad => VCC,
	cin => \inst4|LessThan2~17_cout\,
	cout => \inst4|LessThan2~19_cout\);

-- Location: LCCOMB_X36_Y17_N22
\inst4|LessThan2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~21_cout\ = CARRY((\inst4|reg_pwm_thres\(10) & ((!\inst4|LessThan2~19_cout\) # (!\inst4|reg_period_cnt\(10)))) # (!\inst4|reg_pwm_thres\(10) & (!\inst4|reg_period_cnt\(10) & !\inst4|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(10),
	datab => \inst4|reg_period_cnt\(10),
	datad => VCC,
	cin => \inst4|LessThan2~19_cout\,
	cout => \inst4|LessThan2~21_cout\);

-- Location: LCCOMB_X36_Y17_N24
\inst4|LessThan2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~23_cout\ = CARRY((\inst4|reg_period_cnt\(11) & ((!\inst4|LessThan2~21_cout\) # (!\inst4|reg_pwm_thres\(11)))) # (!\inst4|reg_period_cnt\(11) & (!\inst4|reg_pwm_thres\(11) & !\inst4|LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(11),
	datab => \inst4|reg_pwm_thres\(11),
	datad => VCC,
	cin => \inst4|LessThan2~21_cout\,
	cout => \inst4|LessThan2~23_cout\);

-- Location: LCCOMB_X36_Y17_N26
\inst4|LessThan2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~25_cout\ = CARRY((\inst4|reg_pwm_thres\(12) & ((!\inst4|LessThan2~23_cout\) # (!\inst4|reg_period_cnt\(12)))) # (!\inst4|reg_pwm_thres\(12) & (!\inst4|reg_period_cnt\(12) & !\inst4|LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(12),
	datab => \inst4|reg_period_cnt\(12),
	datad => VCC,
	cin => \inst4|LessThan2~23_cout\,
	cout => \inst4|LessThan2~25_cout\);

-- Location: LCCOMB_X36_Y17_N28
\inst4|LessThan2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~27_cout\ = CARRY((\inst4|reg_pwm_thres\(13) & (\inst4|reg_period_cnt\(13) & !\inst4|LessThan2~25_cout\)) # (!\inst4|reg_pwm_thres\(13) & ((\inst4|reg_period_cnt\(13)) # (!\inst4|LessThan2~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(13),
	datab => \inst4|reg_period_cnt\(13),
	datad => VCC,
	cin => \inst4|LessThan2~25_cout\,
	cout => \inst4|LessThan2~27_cout\);

-- Location: LCCOMB_X36_Y17_N30
\inst4|LessThan2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~28_combout\ = (\inst4|reg_period_cnt\(14) & (!\inst4|LessThan2~27_cout\ & \inst4|reg_pwm_thres\(14))) # (!\inst4|reg_period_cnt\(14) & ((\inst4|reg_pwm_thres\(14)) # (!\inst4|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_period_cnt\(14),
	datad => \inst4|reg_pwm_thres\(14),
	cin => \inst4|LessThan2~27_cout\,
	combout => \inst4|LessThan2~28_combout\);

-- Location: LCCOMB_X36_Y8_N0
\inst4|LED_Sel_B[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[0]~1_combout\ = (\inst4|LED_Sel_B[0]~0_combout\ & \inst4|LessThan2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LED_Sel_B[0]~0_combout\,
	datad => \inst4|LessThan2~28_combout\,
	combout => \inst4|LED_Sel_B[0]~1_combout\);

-- Location: LCCOMB_X38_Y8_N14
\inst|product_0|a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~8_combout\ = (\inst|product_0|a\(8) & (!\inst|controller_0|load_product~q\ & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|product_0|a\(8),
	datac => \inst|controller_0|load_product~q\,
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~8_combout\);

-- Location: FF_X38_Y8_N15
\inst|product_0|a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~8_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(7));

-- Location: LCCOMB_X38_Y8_N8
\inst|product_0|a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~7_combout\ = (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(7) & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|controller_0|load_product~q\,
	datac => \inst|product_0|a\(7),
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~7_combout\);

-- Location: FF_X38_Y8_N9
\inst|product_0|a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~7_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(6));

-- Location: LCCOMB_X38_Y8_N30
\inst|product_0|a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~6_combout\ = (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(6) & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|controller_0|load_product~q\,
	datac => \inst|product_0|a\(6),
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~6_combout\);

-- Location: FF_X38_Y8_N31
\inst|product_0|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~6_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(5));

-- Location: LCCOMB_X38_Y8_N0
\inst|product_0|a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~5_combout\ = (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(5) & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|controller_0|load_product~q\,
	datac => \inst|product_0|a\(5),
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~5_combout\);

-- Location: FF_X38_Y8_N1
\inst|product_0|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~5_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(4));

-- Location: LCCOMB_X38_Y8_N18
\inst|product_0|a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~4_combout\ = (\inst|product_0|a\(4) & (!\inst|controller_0|load_product~q\ & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|product_0|a\(4),
	datac => \inst|controller_0|load_product~q\,
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~4_combout\);

-- Location: FF_X38_Y8_N19
\inst|product_0|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~4_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(3));

-- Location: LCCOMB_X38_Y8_N22
\inst|product_0|a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~3_combout\ = (\inst|product_0|a\(3) & (!\inst|controller_0|load_product~q\ & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|product_0|a\(3),
	datac => \inst|controller_0|load_product~q\,
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~3_combout\);

-- Location: FF_X38_Y8_N23
\inst|product_0|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~3_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(2));

-- Location: LCCOMB_X38_Y8_N2
\inst|product_0|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~2_combout\ = (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(2) & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|controller_0|load_product~q\,
	datac => \inst|product_0|a\(2),
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~2_combout\);

-- Location: FF_X38_Y8_N3
\inst|product_0|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~2_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(1));

-- Location: LCCOMB_X38_Y8_N12
\inst|product_0|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|product_0|a~1_combout\ = (\inst|product_0|a\(1) & (!\inst|controller_0|load_product~q\ & !\inst|controller_0|load_multiplicand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|product_0|a\(1),
	datac => \inst|controller_0|load_product~q\,
	datad => \inst|controller_0|load_multiplicand~q\,
	combout => \inst|product_0|a~1_combout\);

-- Location: FF_X38_Y8_N13
\inst|product_0|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|product_0|a~1_combout\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(0));

-- Location: LCCOMB_X36_Y8_N20
\inst4|LED_Sel_B[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[0]~2_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(8))) # (!\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(8),
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst4|LED_Sel_B[0]~1_combout\,
	datad => \inst|product_0|a\(0),
	combout => \inst4|LED_Sel_B[0]~2_combout\);

-- Location: LCCOMB_X39_Y8_N6
\inst|add_0|s[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[1]~2_combout\ = (\inst|and_0|s\(1) & ((\inst|product_0|a\(9) & (\inst|add_0|s[0]~1\ & VCC)) # (!\inst|product_0|a\(9) & (!\inst|add_0|s[0]~1\)))) # (!\inst|and_0|s\(1) & ((\inst|product_0|a\(9) & (!\inst|add_0|s[0]~1\)) # 
-- (!\inst|product_0|a\(9) & ((\inst|add_0|s[0]~1\) # (GND)))))
-- \inst|add_0|s[1]~3\ = CARRY((\inst|and_0|s\(1) & (!\inst|product_0|a\(9) & !\inst|add_0|s[0]~1\)) # (!\inst|and_0|s\(1) & ((!\inst|add_0|s[0]~1\) # (!\inst|product_0|a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|and_0|s\(1),
	datab => \inst|product_0|a\(9),
	datad => VCC,
	cin => \inst|add_0|s[0]~1\,
	combout => \inst|add_0|s[1]~2_combout\,
	cout => \inst|add_0|s[1]~3\);

-- Location: LCCOMB_X39_Y8_N8
\inst|add_0|s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[2]~4_combout\ = ((\inst|and_0|s\(2) $ (\inst|product_0|a\(10) $ (!\inst|add_0|s[1]~3\)))) # (GND)
-- \inst|add_0|s[2]~5\ = CARRY((\inst|and_0|s\(2) & ((\inst|product_0|a\(10)) # (!\inst|add_0|s[1]~3\))) # (!\inst|and_0|s\(2) & (\inst|product_0|a\(10) & !\inst|add_0|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|and_0|s\(2),
	datab => \inst|product_0|a\(10),
	datad => VCC,
	cin => \inst|add_0|s[1]~3\,
	combout => \inst|add_0|s[2]~4_combout\,
	cout => \inst|add_0|s[2]~5\);

-- Location: LCCOMB_X39_Y8_N28
\inst|add_0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~2_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[2]~4_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(11),
	datac => \inst|add_0|s[2]~4_combout\,
	datad => \inst|controller_0|load_product~q\,
	combout => \inst|add_0|Add0~2_combout\);

-- Location: FF_X39_Y8_N29
\inst|product_0|a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~2_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(10));

-- Location: LCCOMB_X38_Y8_N6
\inst|add_0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~1_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[1]~2_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|product_0|a\(10),
	datac => \inst|controller_0|load_product~q\,
	datad => \inst|add_0|s[1]~2_combout\,
	combout => \inst|add_0|Add0~1_combout\);

-- Location: FF_X38_Y8_N7
\inst|product_0|a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~1_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(9));

-- Location: LCCOMB_X38_Y8_N20
\inst4|LED_Sel_B[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[1]~3_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(9))) # (!\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(9),
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst4|LED_Sel_B[0]~1_combout\,
	datad => \inst|product_0|a\(1),
	combout => \inst4|LED_Sel_B[1]~3_combout\);

-- Location: LCCOMB_X38_Y8_N4
\inst4|LED_Sel_B[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[2]~4_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(10)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(2),
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst4|LED_Sel_B[0]~1_combout\,
	datad => \inst|product_0|a\(10),
	combout => \inst4|LED_Sel_B[2]~4_combout\);

-- Location: IOIBUF_X34_Y34_N1
\Sw_LEDB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(3),
	o => \Sw_LEDB[3]~input_o\);

-- Location: FF_X40_Y8_N29
\inst|multiplicand_0|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[3]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(3));

-- Location: LCCOMB_X40_Y8_N28
\inst|and_0|s[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(3) = (\inst|multiplicand_0|a\(3) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(3),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(3));

-- Location: LCCOMB_X39_Y8_N10
\inst|add_0|s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[3]~6_combout\ = (\inst|product_0|a\(11) & ((\inst|and_0|s\(3) & (\inst|add_0|s[2]~5\ & VCC)) # (!\inst|and_0|s\(3) & (!\inst|add_0|s[2]~5\)))) # (!\inst|product_0|a\(11) & ((\inst|and_0|s\(3) & (!\inst|add_0|s[2]~5\)) # (!\inst|and_0|s\(3) & 
-- ((\inst|add_0|s[2]~5\) # (GND)))))
-- \inst|add_0|s[3]~7\ = CARRY((\inst|product_0|a\(11) & (!\inst|and_0|s\(3) & !\inst|add_0|s[2]~5\)) # (!\inst|product_0|a\(11) & ((!\inst|add_0|s[2]~5\) # (!\inst|and_0|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(11),
	datab => \inst|and_0|s\(3),
	datad => VCC,
	cin => \inst|add_0|s[2]~5\,
	combout => \inst|add_0|s[3]~6_combout\,
	cout => \inst|add_0|s[3]~7\);

-- Location: LCCOMB_X39_Y8_N12
\inst|add_0|s[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[4]~8_combout\ = ((\inst|and_0|s\(4) $ (\inst|product_0|a\(12) $ (!\inst|add_0|s[3]~7\)))) # (GND)
-- \inst|add_0|s[4]~9\ = CARRY((\inst|and_0|s\(4) & ((\inst|product_0|a\(12)) # (!\inst|add_0|s[3]~7\))) # (!\inst|and_0|s\(4) & (\inst|product_0|a\(12) & !\inst|add_0|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|and_0|s\(4),
	datab => \inst|product_0|a\(12),
	datad => VCC,
	cin => \inst|add_0|s[3]~7\,
	combout => \inst|add_0|s[4]~8_combout\,
	cout => \inst|add_0|s[4]~9\);

-- Location: LCCOMB_X39_Y8_N14
\inst|add_0|s[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[5]~10_combout\ = (\inst|and_0|s\(5) & ((\inst|product_0|a\(13) & (\inst|add_0|s[4]~9\ & VCC)) # (!\inst|product_0|a\(13) & (!\inst|add_0|s[4]~9\)))) # (!\inst|and_0|s\(5) & ((\inst|product_0|a\(13) & (!\inst|add_0|s[4]~9\)) # 
-- (!\inst|product_0|a\(13) & ((\inst|add_0|s[4]~9\) # (GND)))))
-- \inst|add_0|s[5]~11\ = CARRY((\inst|and_0|s\(5) & (!\inst|product_0|a\(13) & !\inst|add_0|s[4]~9\)) # (!\inst|and_0|s\(5) & ((!\inst|add_0|s[4]~9\) # (!\inst|product_0|a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|and_0|s\(5),
	datab => \inst|product_0|a\(13),
	datad => VCC,
	cin => \inst|add_0|s[4]~9\,
	combout => \inst|add_0|s[5]~10_combout\,
	cout => \inst|add_0|s[5]~11\);

-- Location: LCCOMB_X39_Y8_N24
\inst|add_0|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~5_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[5]~10_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(14),
	datac => \inst|add_0|s[5]~10_combout\,
	datad => \inst|controller_0|load_product~q\,
	combout => \inst|add_0|Add0~5_combout\);

-- Location: FF_X39_Y8_N25
\inst|product_0|a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~5_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(13));

-- Location: LCCOMB_X39_Y8_N2
\inst|add_0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~4_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[4]~8_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_product~q\,
	datab => \inst|product_0|a\(13),
	datad => \inst|add_0|s[4]~8_combout\,
	combout => \inst|add_0|Add0~4_combout\);

-- Location: FF_X39_Y8_N3
\inst|product_0|a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~4_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(12));

-- Location: LCCOMB_X39_Y8_N22
\inst|add_0|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~3_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[3]~6_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_product~q\,
	datab => \inst|product_0|a\(12),
	datad => \inst|add_0|s[3]~6_combout\,
	combout => \inst|add_0|Add0~3_combout\);

-- Location: FF_X39_Y8_N23
\inst|product_0|a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~3_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(11));

-- Location: LCCOMB_X43_Y8_N28
\inst4|LED_Sel_B[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[3]~5_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(11)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(3),
	datab => \inst|product_0|a\(11),
	datac => \inst4|LED_Sel_B[0]~1_combout\,
	datad => \inst4|reg_col_cnt\(0),
	combout => \inst4|LED_Sel_B[3]~5_combout\);

-- Location: LCCOMB_X43_Y8_N2
\inst4|LED_Sel_B[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[4]~6_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(12))) # (!\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_col_cnt\(0),
	datab => \inst|product_0|a\(12),
	datac => \inst|product_0|a\(4),
	datad => \inst4|LED_Sel_B[0]~1_combout\,
	combout => \inst4|LED_Sel_B[4]~6_combout\);

-- Location: LCCOMB_X43_Y8_N4
\inst4|LED_Sel_B[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[5]~7_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(13)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_col_cnt\(0),
	datab => \inst|product_0|a\(5),
	datac => \inst4|LED_Sel_B[0]~1_combout\,
	datad => \inst|product_0|a\(13),
	combout => \inst4|LED_Sel_B[5]~7_combout\);

-- Location: IOIBUF_X16_Y34_N15
\Sw_LEDB[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(7),
	o => \Sw_LEDB[7]~input_o\);

-- Location: FF_X40_Y8_N13
\inst|multiplicand_0|a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[7]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(7));

-- Location: LCCOMB_X40_Y8_N12
\inst|and_0|s[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(7) = (\inst|multiplicand_0|a\(7) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(7),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(7));

-- Location: IOIBUF_X23_Y34_N22
\Sw_LEDB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw_LEDB(6),
	o => \Sw_LEDB[6]~input_o\);

-- Location: FF_X40_Y8_N23
\inst|multiplicand_0|a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	asdata => \Sw_LEDB[6]~input_o\,
	sload => VCC,
	ena => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|multiplicand_0|a\(6));

-- Location: LCCOMB_X40_Y8_N22
\inst|and_0|s[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and_0|s\(6) = (\inst|multiplicand_0|a\(6) & \inst|multiplier_0|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|multiplicand_0|a\(6),
	datad => \inst|multiplier_0|a\(0),
	combout => \inst|and_0|s\(6));

-- Location: LCCOMB_X39_Y8_N16
\inst|add_0|s[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[6]~12_combout\ = ((\inst|product_0|a\(14) $ (\inst|and_0|s\(6) $ (!\inst|add_0|s[5]~11\)))) # (GND)
-- \inst|add_0|s[6]~13\ = CARRY((\inst|product_0|a\(14) & ((\inst|and_0|s\(6)) # (!\inst|add_0|s[5]~11\))) # (!\inst|product_0|a\(14) & (\inst|and_0|s\(6) & !\inst|add_0|s[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(14),
	datab => \inst|and_0|s\(6),
	datad => VCC,
	cin => \inst|add_0|s[5]~11\,
	combout => \inst|add_0|s[6]~12_combout\,
	cout => \inst|add_0|s[6]~13\);

-- Location: LCCOMB_X39_Y8_N18
\inst|add_0|s[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[7]~14_combout\ = (\inst|product_0|a\(15) & ((\inst|and_0|s\(7) & (\inst|add_0|s[6]~13\ & VCC)) # (!\inst|and_0|s\(7) & (!\inst|add_0|s[6]~13\)))) # (!\inst|product_0|a\(15) & ((\inst|and_0|s\(7) & (!\inst|add_0|s[6]~13\)) # 
-- (!\inst|and_0|s\(7) & ((\inst|add_0|s[6]~13\) # (GND)))))
-- \inst|add_0|s[7]~15\ = CARRY((\inst|product_0|a\(15) & (!\inst|and_0|s\(7) & !\inst|add_0|s[6]~13\)) # (!\inst|product_0|a\(15) & ((!\inst|add_0|s[6]~13\) # (!\inst|and_0|s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(15),
	datab => \inst|and_0|s\(7),
	datad => VCC,
	cin => \inst|add_0|s[6]~13\,
	combout => \inst|add_0|s[7]~14_combout\,
	cout => \inst|add_0|s[7]~15\);

-- Location: LCCOMB_X39_Y8_N20
\inst|add_0|s[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|s[8]~16_combout\ = !\inst|add_0|s[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|add_0|s[7]~15\,
	combout => \inst|add_0|s[8]~16_combout\);

-- Location: LCCOMB_X39_Y8_N26
\inst|add_0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~8_combout\ = (\inst|controller_0|load_product~q\ & (((\inst|add_0|s[8]~16_combout\)))) # (!\inst|controller_0|load_product~q\ & (!\inst|controller_0|shift_multiplier~q\ & (\inst|product_0|a\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_product~q\,
	datab => \inst|controller_0|shift_multiplier~q\,
	datac => \inst|product_0|a\(16),
	datad => \inst|add_0|s[8]~16_combout\,
	combout => \inst|add_0|Add0~8_combout\);

-- Location: FF_X39_Y8_N27
\inst|product_0|a[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~8_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(16));

-- Location: LCCOMB_X39_Y8_N0
\inst|add_0|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~7_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[7]~14_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_product~q\,
	datac => \inst|product_0|a\(16),
	datad => \inst|add_0|s[7]~14_combout\,
	combout => \inst|add_0|Add0~7_combout\);

-- Location: FF_X39_Y8_N1
\inst|product_0|a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~7_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(15));

-- Location: LCCOMB_X39_Y8_N30
\inst|add_0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_0|Add0~6_combout\ = (\inst|controller_0|load_product~q\ & ((\inst|add_0|s[6]~12_combout\))) # (!\inst|controller_0|load_product~q\ & (\inst|product_0|a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|load_product~q\,
	datab => \inst|product_0|a\(15),
	datad => \inst|add_0|s[6]~12_combout\,
	combout => \inst|add_0|Add0~6_combout\);

-- Location: FF_X39_Y8_N31
\inst|product_0|a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|add_0|Add0~6_combout\,
	sclr => \inst|controller_0|load_multiplicand~q\,
	ena => \inst|product_0|a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|product_0|a\(14));

-- Location: LCCOMB_X43_Y8_N10
\inst4|LED_Sel_B[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[6]~8_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(14)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_col_cnt\(0),
	datab => \inst|product_0|a\(6),
	datac => \inst4|LED_Sel_B[0]~1_combout\,
	datad => \inst|product_0|a\(14),
	combout => \inst4|LED_Sel_B[6]~8_combout\);

-- Location: LCCOMB_X43_Y8_N20
\inst4|LED_Sel_B[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_B[7]~9_combout\ = (\inst4|LED_Sel_B[0]~1_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(15)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(7),
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst4|LED_Sel_B[0]~1_combout\,
	datad => \inst|product_0|a\(15),
	combout => \inst4|LED_Sel_B[7]~9_combout\);

-- Location: LCCOMB_X34_Y17_N6
\inst4|reg_pwm_thres~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~4_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a13\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a13\,
	datac => \inst4|reg_period_cnt\(1),
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a12\,
	combout => \inst4|reg_pwm_thres~4_combout\);

-- Location: FF_X34_Y17_N7
\inst4|reg_pwm_thres[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~4_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(45));

-- Location: FF_X35_Y17_N7
\inst4|reg_pwm_thres[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(45),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(29));

-- Location: FF_X34_Y16_N11
\inst4|reg_period_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_period_cnt[5]~25_combout\,
	clrn => \KEY_n[0]~input_o\,
	sclr => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_period_cnt\(5));

-- Location: LCCOMB_X34_Y17_N12
\inst4|reg_pwm_thres~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~15_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a2\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst4|reg_pwm_thres~15_combout\);

-- Location: FF_X34_Y17_N13
\inst4|reg_pwm_thres[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~15_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(34));

-- Location: FF_X35_Y17_N21
\inst4|reg_pwm_thres[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(34),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(18));

-- Location: LCCOMB_X34_Y17_N22
\inst4|reg_pwm_thres~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~16_combout\ = (\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a1\))) # (!\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst4|reg_pwm_thres~16_combout\);

-- Location: FF_X34_Y17_N23
\inst4|reg_pwm_thres[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~16_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(33));

-- Location: FF_X35_Y17_N31
\inst4|reg_pwm_thres[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(33),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(17));

-- Location: LCCOMB_X34_Y17_N4
\inst4|reg_pwm_thres~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~17_combout\ = (\inst4|reg_period_cnt\(1) & \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|reg_period_cnt\(1),
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \inst4|reg_pwm_thres~17_combout\);

-- Location: FF_X34_Y17_N5
\inst4|reg_pwm_thres[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~17_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(32));

-- Location: FF_X35_Y17_N15
\inst4|reg_pwm_thres[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_pwm_thres\(32),
	sload => VCC,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(16));

-- Location: LCCOMB_X36_Y16_N2
\inst4|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~1_cout\ = CARRY((!\inst4|reg_period_cnt\(0) & \inst4|reg_pwm_thres\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(0),
	datab => \inst4|reg_pwm_thres\(16),
	datad => VCC,
	cout => \inst4|LessThan1~1_cout\);

-- Location: LCCOMB_X36_Y16_N4
\inst4|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~3_cout\ = CARRY((\inst4|reg_period_cnt\(1) & ((!\inst4|LessThan1~1_cout\) # (!\inst4|reg_pwm_thres\(17)))) # (!\inst4|reg_period_cnt\(1) & (!\inst4|reg_pwm_thres\(17) & !\inst4|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datab => \inst4|reg_pwm_thres\(17),
	datad => VCC,
	cin => \inst4|LessThan1~1_cout\,
	cout => \inst4|LessThan1~3_cout\);

-- Location: LCCOMB_X36_Y16_N6
\inst4|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~5_cout\ = CARRY((\inst4|reg_period_cnt\(2) & (\inst4|reg_pwm_thres\(18) & !\inst4|LessThan1~3_cout\)) # (!\inst4|reg_period_cnt\(2) & ((\inst4|reg_pwm_thres\(18)) # (!\inst4|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(2),
	datab => \inst4|reg_pwm_thres\(18),
	datad => VCC,
	cin => \inst4|LessThan1~3_cout\,
	cout => \inst4|LessThan1~5_cout\);

-- Location: LCCOMB_X36_Y16_N8
\inst4|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~7_cout\ = CARRY((\inst4|reg_period_cnt\(3) & ((!\inst4|LessThan1~5_cout\) # (!\inst4|reg_pwm_thres\(19)))) # (!\inst4|reg_period_cnt\(3) & (!\inst4|reg_pwm_thres\(19) & !\inst4|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(3),
	datab => \inst4|reg_pwm_thres\(19),
	datad => VCC,
	cin => \inst4|LessThan1~5_cout\,
	cout => \inst4|LessThan1~7_cout\);

-- Location: LCCOMB_X36_Y16_N10
\inst4|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~9_cout\ = CARRY((\inst4|reg_pwm_thres\(20) & ((!\inst4|LessThan1~7_cout\) # (!\inst4|reg_period_cnt\(4)))) # (!\inst4|reg_pwm_thres\(20) & (!\inst4|reg_period_cnt\(4) & !\inst4|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(20),
	datab => \inst4|reg_period_cnt\(4),
	datad => VCC,
	cin => \inst4|LessThan1~7_cout\,
	cout => \inst4|LessThan1~9_cout\);

-- Location: LCCOMB_X36_Y16_N12
\inst4|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~11_cout\ = CARRY((\inst4|reg_pwm_thres\(21) & (\inst4|reg_period_cnt\(5) & !\inst4|LessThan1~9_cout\)) # (!\inst4|reg_pwm_thres\(21) & ((\inst4|reg_period_cnt\(5)) # (!\inst4|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(21),
	datab => \inst4|reg_period_cnt\(5),
	datad => VCC,
	cin => \inst4|LessThan1~9_cout\,
	cout => \inst4|LessThan1~11_cout\);

-- Location: LCCOMB_X36_Y16_N14
\inst4|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~13_cout\ = CARRY((\inst4|reg_period_cnt\(6) & (\inst4|reg_pwm_thres\(22) & !\inst4|LessThan1~11_cout\)) # (!\inst4|reg_period_cnt\(6) & ((\inst4|reg_pwm_thres\(22)) # (!\inst4|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(6),
	datab => \inst4|reg_pwm_thres\(22),
	datad => VCC,
	cin => \inst4|LessThan1~11_cout\,
	cout => \inst4|LessThan1~13_cout\);

-- Location: LCCOMB_X36_Y16_N16
\inst4|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~15_cout\ = CARRY((\inst4|reg_pwm_thres\(23) & (\inst4|reg_period_cnt\(7) & !\inst4|LessThan1~13_cout\)) # (!\inst4|reg_pwm_thres\(23) & ((\inst4|reg_period_cnt\(7)) # (!\inst4|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(23),
	datab => \inst4|reg_period_cnt\(7),
	datad => VCC,
	cin => \inst4|LessThan1~13_cout\,
	cout => \inst4|LessThan1~15_cout\);

-- Location: LCCOMB_X36_Y16_N18
\inst4|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~17_cout\ = CARRY((\inst4|reg_pwm_thres\(24) & ((!\inst4|LessThan1~15_cout\) # (!\inst4|reg_period_cnt\(8)))) # (!\inst4|reg_pwm_thres\(24) & (!\inst4|reg_period_cnt\(8) & !\inst4|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(24),
	datab => \inst4|reg_period_cnt\(8),
	datad => VCC,
	cin => \inst4|LessThan1~15_cout\,
	cout => \inst4|LessThan1~17_cout\);

-- Location: LCCOMB_X36_Y16_N20
\inst4|LessThan1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~19_cout\ = CARRY((\inst4|reg_pwm_thres\(25) & (\inst4|reg_period_cnt\(9) & !\inst4|LessThan1~17_cout\)) # (!\inst4|reg_pwm_thres\(25) & ((\inst4|reg_period_cnt\(9)) # (!\inst4|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(25),
	datab => \inst4|reg_period_cnt\(9),
	datad => VCC,
	cin => \inst4|LessThan1~17_cout\,
	cout => \inst4|LessThan1~19_cout\);

-- Location: LCCOMB_X36_Y16_N22
\inst4|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~21_cout\ = CARRY((\inst4|reg_pwm_thres\(26) & ((!\inst4|LessThan1~19_cout\) # (!\inst4|reg_period_cnt\(10)))) # (!\inst4|reg_pwm_thres\(26) & (!\inst4|reg_period_cnt\(10) & !\inst4|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(26),
	datab => \inst4|reg_period_cnt\(10),
	datad => VCC,
	cin => \inst4|LessThan1~19_cout\,
	cout => \inst4|LessThan1~21_cout\);

-- Location: LCCOMB_X36_Y16_N24
\inst4|LessThan1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~23_cout\ = CARRY((\inst4|reg_pwm_thres\(27) & (\inst4|reg_period_cnt\(11) & !\inst4|LessThan1~21_cout\)) # (!\inst4|reg_pwm_thres\(27) & ((\inst4|reg_period_cnt\(11)) # (!\inst4|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(27),
	datab => \inst4|reg_period_cnt\(11),
	datad => VCC,
	cin => \inst4|LessThan1~21_cout\,
	cout => \inst4|LessThan1~23_cout\);

-- Location: LCCOMB_X36_Y16_N26
\inst4|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~25_cout\ = CARRY((\inst4|reg_pwm_thres\(28) & ((!\inst4|LessThan1~23_cout\) # (!\inst4|reg_period_cnt\(12)))) # (!\inst4|reg_pwm_thres\(28) & (!\inst4|reg_period_cnt\(12) & !\inst4|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(28),
	datab => \inst4|reg_period_cnt\(12),
	datad => VCC,
	cin => \inst4|LessThan1~23_cout\,
	cout => \inst4|LessThan1~25_cout\);

-- Location: LCCOMB_X36_Y16_N28
\inst4|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~27_cout\ = CARRY((\inst4|reg_period_cnt\(13) & ((!\inst4|LessThan1~25_cout\) # (!\inst4|reg_pwm_thres\(29)))) # (!\inst4|reg_period_cnt\(13) & (!\inst4|reg_pwm_thres\(29) & !\inst4|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(13),
	datab => \inst4|reg_pwm_thres\(29),
	datad => VCC,
	cin => \inst4|LessThan1~25_cout\,
	cout => \inst4|LessThan1~27_cout\);

-- Location: LCCOMB_X36_Y16_N30
\inst4|LessThan1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~28_combout\ = (\inst4|reg_period_cnt\(14) & (!\inst4|LessThan1~27_cout\ & \inst4|reg_pwm_thres\(30))) # (!\inst4|reg_period_cnt\(14) & ((\inst4|reg_pwm_thres\(30)) # (!\inst4|LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(14),
	datad => \inst4|reg_pwm_thres\(30),
	cin => \inst4|LessThan1~27_cout\,
	combout => \inst4|LessThan1~28_combout\);

-- Location: LCCOMB_X36_Y8_N6
\inst4|LED_Sel_G[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[0]~0_combout\ = (\inst4|LED_Sel_B[0]~0_combout\ & \inst4|LessThan1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LED_Sel_B[0]~0_combout\,
	datad => \inst4|LessThan1~28_combout\,
	combout => \inst4|LED_Sel_G[0]~0_combout\);

-- Location: LCCOMB_X36_Y8_N28
\inst4|LED_Sel_G[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[0]~1_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(8)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_G[0]~0_combout\,
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst|product_0|a\(0),
	datad => \inst|product_0|a\(8),
	combout => \inst4|LED_Sel_G[0]~1_combout\);

-- Location: LCCOMB_X38_Y8_N28
\inst4|LED_Sel_G[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[1]~2_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(9)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_G[0]~0_combout\,
	datab => \inst|product_0|a\(1),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(9),
	combout => \inst4|LED_Sel_G[1]~2_combout\);

-- Location: LCCOMB_X38_Y8_N26
\inst4|LED_Sel_G[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[2]~3_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(10)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(2),
	datab => \inst|product_0|a\(10),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst4|LED_Sel_G[0]~0_combout\,
	combout => \inst4|LED_Sel_G[2]~3_combout\);

-- Location: LCCOMB_X43_Y8_N22
\inst4|LED_Sel_G[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[3]~4_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(11))) # (!\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_G[0]~0_combout\,
	datab => \inst|product_0|a\(11),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(3),
	combout => \inst4|LED_Sel_G[3]~4_combout\);

-- Location: LCCOMB_X43_Y8_N12
\inst4|LED_Sel_G[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[4]~5_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(12)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_G[0]~0_combout\,
	datab => \inst|product_0|a\(4),
	datac => \inst|product_0|a\(12),
	datad => \inst4|reg_col_cnt\(0),
	combout => \inst4|LED_Sel_G[4]~5_combout\);

-- Location: LCCOMB_X43_Y8_N30
\inst4|LED_Sel_G[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[5]~6_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(13)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_G[0]~0_combout\,
	datab => \inst|product_0|a\(5),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(13),
	combout => \inst4|LED_Sel_G[5]~6_combout\);

-- Location: LCCOMB_X43_Y8_N0
\inst4|LED_Sel_G[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[6]~7_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(14)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_G[0]~0_combout\,
	datab => \inst|product_0|a\(6),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(14),
	combout => \inst4|LED_Sel_G[6]~7_combout\);

-- Location: LCCOMB_X43_Y8_N26
\inst4|LED_Sel_G[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_G[7]~8_combout\ = (\inst4|LED_Sel_G[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(15)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(7),
	datab => \inst4|LED_Sel_G[0]~0_combout\,
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(15),
	combout => \inst4|LED_Sel_G[7]~8_combout\);

-- Location: LCCOMB_X34_Y17_N24
\inst4|reg_pwm_thres~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~7_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a10\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a10\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a9\,
	combout => \inst4|reg_pwm_thres~7_combout\);

-- Location: FF_X34_Y17_N25
\inst4|reg_pwm_thres[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~7_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(42));

-- Location: LCCOMB_X34_Y17_N2
\inst4|reg_pwm_thres~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_pwm_thres~10_combout\ = (\inst4|reg_period_cnt\(1) & (\inst4|gamma_table_rtl_0|auto_generated|ram_block1a7\)) # (!\inst4|reg_period_cnt\(1) & ((\inst4|gamma_table_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(1),
	datac => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a7\,
	datad => \inst4|gamma_table_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst4|reg_pwm_thres~10_combout\);

-- Location: FF_X34_Y17_N3
\inst4|reg_pwm_thres[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_pwm_thres~10_combout\,
	ena => \inst4|reg_pwm_thres[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_pwm_thres\(39));

-- Location: LCCOMB_X35_Y17_N2
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_cout\ = CARRY((!\inst4|reg_period_cnt\(0) & \inst4|reg_pwm_thres\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(0),
	datab => \inst4|reg_pwm_thres\(32),
	datad => VCC,
	cout => \inst4|LessThan0~1_cout\);

-- Location: LCCOMB_X35_Y17_N4
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_cout\ = CARRY((\inst4|reg_pwm_thres\(33) & (\inst4|reg_period_cnt\(1) & !\inst4|LessThan0~1_cout\)) # (!\inst4|reg_pwm_thres\(33) & ((\inst4|reg_period_cnt\(1)) # (!\inst4|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(33),
	datab => \inst4|reg_period_cnt\(1),
	datad => VCC,
	cin => \inst4|LessThan0~1_cout\,
	cout => \inst4|LessThan0~3_cout\);

-- Location: LCCOMB_X35_Y17_N6
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_cout\ = CARRY((\inst4|reg_period_cnt\(2) & (\inst4|reg_pwm_thres\(34) & !\inst4|LessThan0~3_cout\)) # (!\inst4|reg_period_cnt\(2) & ((\inst4|reg_pwm_thres\(34)) # (!\inst4|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(2),
	datab => \inst4|reg_pwm_thres\(34),
	datad => VCC,
	cin => \inst4|LessThan0~3_cout\,
	cout => \inst4|LessThan0~5_cout\);

-- Location: LCCOMB_X35_Y17_N8
\inst4|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_cout\ = CARRY((\inst4|reg_pwm_thres\(35) & (\inst4|reg_period_cnt\(3) & !\inst4|LessThan0~5_cout\)) # (!\inst4|reg_pwm_thres\(35) & ((\inst4|reg_period_cnt\(3)) # (!\inst4|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(35),
	datab => \inst4|reg_period_cnt\(3),
	datad => VCC,
	cin => \inst4|LessThan0~5_cout\,
	cout => \inst4|LessThan0~7_cout\);

-- Location: LCCOMB_X35_Y17_N10
\inst4|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~9_cout\ = CARRY((\inst4|reg_pwm_thres\(36) & ((!\inst4|LessThan0~7_cout\) # (!\inst4|reg_period_cnt\(4)))) # (!\inst4|reg_pwm_thres\(36) & (!\inst4|reg_period_cnt\(4) & !\inst4|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(36),
	datab => \inst4|reg_period_cnt\(4),
	datad => VCC,
	cin => \inst4|LessThan0~7_cout\,
	cout => \inst4|LessThan0~9_cout\);

-- Location: LCCOMB_X35_Y17_N12
\inst4|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~11_cout\ = CARRY((\inst4|reg_period_cnt\(5) & ((!\inst4|LessThan0~9_cout\) # (!\inst4|reg_pwm_thres\(37)))) # (!\inst4|reg_period_cnt\(5) & (!\inst4|reg_pwm_thres\(37) & !\inst4|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(5),
	datab => \inst4|reg_pwm_thres\(37),
	datad => VCC,
	cin => \inst4|LessThan0~9_cout\,
	cout => \inst4|LessThan0~11_cout\);

-- Location: LCCOMB_X35_Y17_N14
\inst4|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~13_cout\ = CARRY((\inst4|reg_period_cnt\(6) & (\inst4|reg_pwm_thres\(38) & !\inst4|LessThan0~11_cout\)) # (!\inst4|reg_period_cnt\(6) & ((\inst4|reg_pwm_thres\(38)) # (!\inst4|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(6),
	datab => \inst4|reg_pwm_thres\(38),
	datad => VCC,
	cin => \inst4|LessThan0~11_cout\,
	cout => \inst4|LessThan0~13_cout\);

-- Location: LCCOMB_X35_Y17_N16
\inst4|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~15_cout\ = CARRY((\inst4|reg_period_cnt\(7) & ((!\inst4|LessThan0~13_cout\) # (!\inst4|reg_pwm_thres\(39)))) # (!\inst4|reg_period_cnt\(7) & (!\inst4|reg_pwm_thres\(39) & !\inst4|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(7),
	datab => \inst4|reg_pwm_thres\(39),
	datad => VCC,
	cin => \inst4|LessThan0~13_cout\,
	cout => \inst4|LessThan0~15_cout\);

-- Location: LCCOMB_X35_Y17_N18
\inst4|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~17_cout\ = CARRY((\inst4|reg_pwm_thres\(40) & ((!\inst4|LessThan0~15_cout\) # (!\inst4|reg_period_cnt\(8)))) # (!\inst4|reg_pwm_thres\(40) & (!\inst4|reg_period_cnt\(8) & !\inst4|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(40),
	datab => \inst4|reg_period_cnt\(8),
	datad => VCC,
	cin => \inst4|LessThan0~15_cout\,
	cout => \inst4|LessThan0~17_cout\);

-- Location: LCCOMB_X35_Y17_N20
\inst4|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~19_cout\ = CARRY((\inst4|reg_pwm_thres\(41) & (\inst4|reg_period_cnt\(9) & !\inst4|LessThan0~17_cout\)) # (!\inst4|reg_pwm_thres\(41) & ((\inst4|reg_period_cnt\(9)) # (!\inst4|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(41),
	datab => \inst4|reg_period_cnt\(9),
	datad => VCC,
	cin => \inst4|LessThan0~17_cout\,
	cout => \inst4|LessThan0~19_cout\);

-- Location: LCCOMB_X35_Y17_N22
\inst4|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~21_cout\ = CARRY((\inst4|reg_period_cnt\(10) & (\inst4|reg_pwm_thres\(42) & !\inst4|LessThan0~19_cout\)) # (!\inst4|reg_period_cnt\(10) & ((\inst4|reg_pwm_thres\(42)) # (!\inst4|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(10),
	datab => \inst4|reg_pwm_thres\(42),
	datad => VCC,
	cin => \inst4|LessThan0~19_cout\,
	cout => \inst4|LessThan0~21_cout\);

-- Location: LCCOMB_X35_Y17_N24
\inst4|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~23_cout\ = CARRY((\inst4|reg_period_cnt\(11) & ((!\inst4|LessThan0~21_cout\) # (!\inst4|reg_pwm_thres\(43)))) # (!\inst4|reg_period_cnt\(11) & (!\inst4|reg_pwm_thres\(43) & !\inst4|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(11),
	datab => \inst4|reg_pwm_thres\(43),
	datad => VCC,
	cin => \inst4|LessThan0~21_cout\,
	cout => \inst4|LessThan0~23_cout\);

-- Location: LCCOMB_X35_Y17_N26
\inst4|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~25_cout\ = CARRY((\inst4|reg_pwm_thres\(44) & ((!\inst4|LessThan0~23_cout\) # (!\inst4|reg_period_cnt\(12)))) # (!\inst4|reg_pwm_thres\(44) & (!\inst4|reg_period_cnt\(12) & !\inst4|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_pwm_thres\(44),
	datab => \inst4|reg_period_cnt\(12),
	datad => VCC,
	cin => \inst4|LessThan0~23_cout\,
	cout => \inst4|LessThan0~25_cout\);

-- Location: LCCOMB_X35_Y17_N28
\inst4|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~27_cout\ = CARRY((\inst4|reg_period_cnt\(13) & ((!\inst4|LessThan0~25_cout\) # (!\inst4|reg_pwm_thres\(45)))) # (!\inst4|reg_period_cnt\(13) & (!\inst4|reg_pwm_thres\(45) & !\inst4|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|reg_period_cnt\(13),
	datab => \inst4|reg_pwm_thres\(45),
	datad => VCC,
	cin => \inst4|LessThan0~25_cout\,
	cout => \inst4|LessThan0~27_cout\);

-- Location: LCCOMB_X35_Y17_N30
\inst4|LessThan0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~28_combout\ = (\inst4|reg_pwm_thres\(46) & ((!\inst4|reg_period_cnt\(14)) # (!\inst4|LessThan0~27_cout\))) # (!\inst4|reg_pwm_thres\(46) & (!\inst4|LessThan0~27_cout\ & !\inst4|reg_period_cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_pwm_thres\(46),
	datad => \inst4|reg_period_cnt\(14),
	cin => \inst4|LessThan0~27_cout\,
	combout => \inst4|LessThan0~28_combout\);

-- Location: LCCOMB_X36_Y8_N22
\inst4|LED_Sel_R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[0]~0_combout\ = (\inst4|LED_Sel_B[0]~0_combout\ & \inst4|LessThan0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_B[0]~0_combout\,
	datac => \inst4|LessThan0~28_combout\,
	combout => \inst4|LED_Sel_R[0]~0_combout\);

-- Location: LCCOMB_X36_Y8_N24
\inst4|LED_Sel_R[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[0]~1_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(8))) # (!\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(8),
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst4|LED_Sel_R[0]~0_combout\,
	datad => \inst|product_0|a\(0),
	combout => \inst4|LED_Sel_R[0]~1_combout\);

-- Location: LCCOMB_X38_Y8_N24
\inst4|LED_Sel_R[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[1]~2_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(9))) # (!\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(9),
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst4|LED_Sel_R[0]~0_combout\,
	datad => \inst|product_0|a\(1),
	combout => \inst4|LED_Sel_R[1]~2_combout\);

-- Location: LCCOMB_X38_Y8_N10
\inst4|LED_Sel_R[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[2]~3_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(10)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_R[0]~0_combout\,
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst|product_0|a\(2),
	datad => \inst|product_0|a\(10),
	combout => \inst4|LED_Sel_R[2]~3_combout\);

-- Location: LCCOMB_X43_Y8_N8
\inst4|LED_Sel_R[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[3]~4_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(11))) # (!\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_R[0]~0_combout\,
	datab => \inst|product_0|a\(11),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(3),
	combout => \inst4|LED_Sel_R[3]~4_combout\);

-- Location: LCCOMB_X43_Y8_N6
\inst4|LED_Sel_R[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[4]~5_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(12)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_R[0]~0_combout\,
	datab => \inst|product_0|a\(4),
	datac => \inst|product_0|a\(12),
	datad => \inst4|reg_col_cnt\(0),
	combout => \inst4|LED_Sel_R[4]~5_combout\);

-- Location: LCCOMB_X43_Y8_N24
\inst4|LED_Sel_R[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[5]~6_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(13)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_R[0]~0_combout\,
	datab => \inst|product_0|a\(5),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(13),
	combout => \inst4|LED_Sel_R[5]~6_combout\);

-- Location: LCCOMB_X43_Y8_N18
\inst4|LED_Sel_R[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[6]~7_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(14)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LED_Sel_R[0]~0_combout\,
	datab => \inst|product_0|a\(6),
	datac => \inst4|reg_col_cnt\(0),
	datad => \inst|product_0|a\(14),
	combout => \inst4|LED_Sel_R[6]~7_combout\);

-- Location: LCCOMB_X43_Y8_N16
\inst4|LED_Sel_R[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_Sel_R[7]~8_combout\ = (\inst4|LED_Sel_R[0]~0_combout\ & ((\inst4|reg_col_cnt\(0) & ((\inst|product_0|a\(15)))) # (!\inst4|reg_col_cnt\(0) & (\inst|product_0|a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|product_0|a\(7),
	datab => \inst4|reg_col_cnt\(0),
	datac => \inst4|LED_Sel_R[0]~0_combout\,
	datad => \inst|product_0|a\(15),
	combout => \inst4|LED_Sel_R[7]~8_combout\);

-- Location: LCCOMB_X17_Y33_N2
\inst4|reg_sel_col[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_sel_col[1]~1_combout\ = !\inst4|reg_sel_col\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|reg_sel_col\(0),
	combout => \inst4|reg_sel_col[1]~1_combout\);

-- Location: FF_X17_Y33_N3
\inst4|reg_sel_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_sel_col[1]~1_combout\,
	clrn => \KEY_n[0]~input_o\,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(1));

-- Location: LCCOMB_X17_Y33_N18
\inst4|reg_sel_col[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_sel_col[2]~feeder_combout\ = \inst4|reg_sel_col\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|reg_sel_col\(1),
	combout => \inst4|reg_sel_col[2]~feeder_combout\);

-- Location: FF_X17_Y33_N19
\inst4|reg_sel_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_sel_col[2]~feeder_combout\,
	clrn => \KEY_n[0]~input_o\,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(2));

-- Location: LCCOMB_X17_Y33_N8
\inst4|reg_sel_col[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_sel_col[3]~feeder_combout\ = \inst4|reg_sel_col\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|reg_sel_col\(2),
	combout => \inst4|reg_sel_col[3]~feeder_combout\);

-- Location: FF_X17_Y33_N9
\inst4|reg_sel_col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_sel_col[3]~feeder_combout\,
	clrn => \KEY_n[0]~input_o\,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(3));

-- Location: FF_X17_Y33_N23
\inst4|reg_sel_col[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(3),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(4));

-- Location: FF_X17_Y33_N5
\inst4|reg_sel_col[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(4),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(5));

-- Location: FF_X17_Y33_N15
\inst4|reg_sel_col[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(5),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(6));

-- Location: FF_X17_Y33_N27
\inst4|reg_sel_col[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(6),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(7));

-- Location: FF_X17_Y33_N11
\inst4|reg_sel_col[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(7),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(8));

-- Location: FF_X17_Y33_N29
\inst4|reg_sel_col[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(8),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(9));

-- Location: FF_X17_Y33_N31
\inst4|reg_sel_col[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(9),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(10));

-- Location: FF_X17_Y33_N7
\inst4|reg_sel_col[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \inst4|reg_sel_col\(10),
	clrn => \KEY_n[0]~input_o\,
	sload => VCC,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(11));

-- Location: LCCOMB_X17_Y33_N20
\inst4|reg_sel_col[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|reg_sel_col[0]~0_combout\ = !\inst4|reg_sel_col\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|reg_sel_col\(11),
	combout => \inst4|reg_sel_col[0]~0_combout\);

-- Location: FF_X17_Y33_N21
\inst4|reg_sel_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4|reg_sel_col[0]~0_combout\,
	clrn => \KEY_n[0]~input_o\,
	ena => \inst4|ALT_INV_state.TRANS1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|reg_sel_col\(0));

-- Location: LCCOMB_X17_Y33_N12
\inst4|LED_SelC_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[0]~1_combout\ = (\inst4|reg_sel_col\(0)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_sel_col\(0),
	datac => \inst4|state.DISPLAY~q\,
	combout => \inst4|LED_SelC_n[0]~1_combout\);

-- Location: LCCOMB_X17_Y33_N0
\inst4|LED_SelC_n[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[1]~2_combout\ = (!\inst4|state.DISPLAY~q\) # (!\inst4|reg_sel_col\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_sel_col\(1),
	datac => \inst4|state.DISPLAY~q\,
	combout => \inst4|LED_SelC_n[1]~2_combout\);

-- Location: LCCOMB_X17_Y33_N24
\inst4|LED_SelC_n[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[2]~3_combout\ = (!\inst4|state.DISPLAY~q\) # (!\inst4|reg_sel_col\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|reg_sel_col\(2),
	datac => \inst4|state.DISPLAY~q\,
	combout => \inst4|LED_SelC_n[2]~3_combout\);

-- Location: LCCOMB_X17_Y33_N16
\inst4|LED_SelC_n[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[3]~4_combout\ = (!\inst4|reg_sel_col\(3)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(3),
	combout => \inst4|LED_SelC_n[3]~4_combout\);

-- Location: LCCOMB_X17_Y33_N22
\inst4|LED_SelC_n[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[4]~5_combout\ = (!\inst4|reg_sel_col\(4)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(4),
	combout => \inst4|LED_SelC_n[4]~5_combout\);

-- Location: LCCOMB_X17_Y33_N4
\inst4|LED_SelC_n[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[5]~6_combout\ = (!\inst4|reg_sel_col\(5)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(5),
	combout => \inst4|LED_SelC_n[5]~6_combout\);

-- Location: LCCOMB_X17_Y33_N14
\inst4|LED_SelC_n[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[6]~7_combout\ = (!\inst4|reg_sel_col\(6)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(6),
	combout => \inst4|LED_SelC_n[6]~7_combout\);

-- Location: LCCOMB_X17_Y33_N26
\inst4|LED_SelC_n[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[7]~8_combout\ = (!\inst4|reg_sel_col\(7)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(7),
	combout => \inst4|LED_SelC_n[7]~8_combout\);

-- Location: LCCOMB_X17_Y33_N10
\inst4|LED_SelC_n[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[8]~9_combout\ = (!\inst4|reg_sel_col\(8)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(8),
	combout => \inst4|LED_SelC_n[8]~9_combout\);

-- Location: LCCOMB_X17_Y33_N28
\inst4|LED_SelC_n[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[9]~10_combout\ = (!\inst4|reg_sel_col\(9)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(9),
	combout => \inst4|LED_SelC_n[9]~10_combout\);

-- Location: LCCOMB_X17_Y33_N30
\inst4|LED_SelC_n[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[10]~11_combout\ = (!\inst4|reg_sel_col\(10)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(10),
	combout => \inst4|LED_SelC_n[10]~11_combout\);

-- Location: LCCOMB_X17_Y33_N6
\inst4|LED_SelC_n[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LED_SelC_n[11]~12_combout\ = (!\inst4|reg_sel_col\(11)) # (!\inst4|state.DISPLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.DISPLAY~q\,
	datac => \inst4|reg_sel_col\(11),
	combout => \inst4|LED_SelC_n[11]~12_combout\);

-- Location: LCCOMB_X40_Y7_N10
\inst|clk_divider_0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~2_combout\ = (\inst|clk_divider_0|count\(1) & (!\inst|clk_divider_0|Add0~1\)) # (!\inst|clk_divider_0|count\(1) & ((\inst|clk_divider_0|Add0~1\) # (GND)))
-- \inst|clk_divider_0|Add0~3\ = CARRY((!\inst|clk_divider_0|Add0~1\) # (!\inst|clk_divider_0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(1),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~1\,
	combout => \inst|clk_divider_0|Add0~2_combout\,
	cout => \inst|clk_divider_0|Add0~3\);

-- Location: LCCOMB_X40_Y7_N14
\inst|clk_divider_0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~6_combout\ = (\inst|clk_divider_0|count\(3) & (!\inst|clk_divider_0|Add0~5\)) # (!\inst|clk_divider_0|count\(3) & ((\inst|clk_divider_0|Add0~5\) # (GND)))
-- \inst|clk_divider_0|Add0~7\ = CARRY((!\inst|clk_divider_0|Add0~5\) # (!\inst|clk_divider_0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(3),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~5\,
	combout => \inst|clk_divider_0|Add0~6_combout\,
	cout => \inst|clk_divider_0|Add0~7\);

-- Location: FF_X40_Y7_N15
\inst|clk_divider_0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(3));

-- Location: LCCOMB_X40_Y7_N16
\inst|clk_divider_0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~8_combout\ = (\inst|clk_divider_0|count\(4) & (\inst|clk_divider_0|Add0~7\ $ (GND))) # (!\inst|clk_divider_0|count\(4) & (!\inst|clk_divider_0|Add0~7\ & VCC))
-- \inst|clk_divider_0|Add0~9\ = CARRY((\inst|clk_divider_0|count\(4) & !\inst|clk_divider_0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(4),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~7\,
	combout => \inst|clk_divider_0|Add0~8_combout\,
	cout => \inst|clk_divider_0|Add0~9\);

-- Location: FF_X40_Y7_N17
\inst|clk_divider_0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(4));

-- Location: LCCOMB_X40_Y7_N18
\inst|clk_divider_0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~10_combout\ = (\inst|clk_divider_0|count\(5) & (!\inst|clk_divider_0|Add0~9\)) # (!\inst|clk_divider_0|count\(5) & ((\inst|clk_divider_0|Add0~9\) # (GND)))
-- \inst|clk_divider_0|Add0~11\ = CARRY((!\inst|clk_divider_0|Add0~9\) # (!\inst|clk_divider_0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(5),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~9\,
	combout => \inst|clk_divider_0|Add0~10_combout\,
	cout => \inst|clk_divider_0|Add0~11\);

-- Location: FF_X40_Y7_N19
\inst|clk_divider_0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(5));

-- Location: LCCOMB_X40_Y7_N20
\inst|clk_divider_0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~12_combout\ = (\inst|clk_divider_0|count\(6) & (\inst|clk_divider_0|Add0~11\ $ (GND))) # (!\inst|clk_divider_0|count\(6) & (!\inst|clk_divider_0|Add0~11\ & VCC))
-- \inst|clk_divider_0|Add0~13\ = CARRY((\inst|clk_divider_0|count\(6) & !\inst|clk_divider_0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(6),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~11\,
	combout => \inst|clk_divider_0|Add0~12_combout\,
	cout => \inst|clk_divider_0|Add0~13\);

-- Location: FF_X40_Y7_N21
\inst|clk_divider_0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(6));

-- Location: LCCOMB_X40_Y7_N22
\inst|clk_divider_0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~14_combout\ = (\inst|clk_divider_0|count\(7) & (!\inst|clk_divider_0|Add0~13\)) # (!\inst|clk_divider_0|count\(7) & ((\inst|clk_divider_0|Add0~13\) # (GND)))
-- \inst|clk_divider_0|Add0~15\ = CARRY((!\inst|clk_divider_0|Add0~13\) # (!\inst|clk_divider_0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(7),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~13\,
	combout => \inst|clk_divider_0|Add0~14_combout\,
	cout => \inst|clk_divider_0|Add0~15\);

-- Location: LCCOMB_X40_Y7_N24
\inst|clk_divider_0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~16_combout\ = (\inst|clk_divider_0|count\(8) & (\inst|clk_divider_0|Add0~15\ $ (GND))) # (!\inst|clk_divider_0|count\(8) & (!\inst|clk_divider_0|Add0~15\ & VCC))
-- \inst|clk_divider_0|Add0~17\ = CARRY((\inst|clk_divider_0|count\(8) & !\inst|clk_divider_0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(8),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~15\,
	combout => \inst|clk_divider_0|Add0~16_combout\,
	cout => \inst|clk_divider_0|Add0~17\);

-- Location: LCCOMB_X39_Y6_N10
\inst|clk_divider_0|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~7_combout\ = (\inst|clk_divider_0|Add0~16_combout\ & (((!\inst|clk_divider_0|Equal0~6_combout\) # (!\inst|clk_divider_0|Equal0~4_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~4_combout\,
	datac => \inst|clk_divider_0|Equal0~6_combout\,
	datad => \inst|clk_divider_0|Add0~16_combout\,
	combout => \inst|clk_divider_0|count~7_combout\);

-- Location: FF_X39_Y6_N11
\inst|clk_divider_0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(8));

-- Location: LCCOMB_X40_Y7_N26
\inst|clk_divider_0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~18_combout\ = (\inst|clk_divider_0|count\(9) & (!\inst|clk_divider_0|Add0~17\)) # (!\inst|clk_divider_0|count\(9) & ((\inst|clk_divider_0|Add0~17\) # (GND)))
-- \inst|clk_divider_0|Add0~19\ = CARRY((!\inst|clk_divider_0|Add0~17\) # (!\inst|clk_divider_0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(9),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~17\,
	combout => \inst|clk_divider_0|Add0~18_combout\,
	cout => \inst|clk_divider_0|Add0~19\);

-- Location: LCCOMB_X40_Y7_N0
\inst|clk_divider_0|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~8_combout\ = (\inst|clk_divider_0|Add0~18_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~6_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~6_combout\,
	datac => \inst|clk_divider_0|Add0~18_combout\,
	datad => \inst|clk_divider_0|Equal0~4_combout\,
	combout => \inst|clk_divider_0|count~8_combout\);

-- Location: FF_X40_Y7_N1
\inst|clk_divider_0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(9));

-- Location: LCCOMB_X40_Y7_N28
\inst|clk_divider_0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~20_combout\ = (\inst|clk_divider_0|count\(10) & (\inst|clk_divider_0|Add0~19\ $ (GND))) # (!\inst|clk_divider_0|count\(10) & (!\inst|clk_divider_0|Add0~19\ & VCC))
-- \inst|clk_divider_0|Add0~21\ = CARRY((\inst|clk_divider_0|count\(10) & !\inst|clk_divider_0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(10),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~19\,
	combout => \inst|clk_divider_0|Add0~20_combout\,
	cout => \inst|clk_divider_0|Add0~21\);

-- Location: FF_X40_Y7_N29
\inst|clk_divider_0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(10));

-- Location: LCCOMB_X40_Y7_N30
\inst|clk_divider_0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~22_combout\ = (\inst|clk_divider_0|count\(11) & (!\inst|clk_divider_0|Add0~21\)) # (!\inst|clk_divider_0|count\(11) & ((\inst|clk_divider_0|Add0~21\) # (GND)))
-- \inst|clk_divider_0|Add0~23\ = CARRY((!\inst|clk_divider_0|Add0~21\) # (!\inst|clk_divider_0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(11),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~21\,
	combout => \inst|clk_divider_0|Add0~22_combout\,
	cout => \inst|clk_divider_0|Add0~23\);

-- Location: LCCOMB_X40_Y7_N2
\inst|clk_divider_0|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~9_combout\ = (\inst|clk_divider_0|Add0~22_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~6_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~6_combout\,
	datac => \inst|clk_divider_0|Add0~22_combout\,
	datad => \inst|clk_divider_0|Equal0~4_combout\,
	combout => \inst|clk_divider_0|count~9_combout\);

-- Location: FF_X40_Y7_N3
\inst|clk_divider_0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(11));

-- Location: LCCOMB_X40_Y6_N2
\inst|clk_divider_0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~26_combout\ = (\inst|clk_divider_0|count\(13) & (!\inst|clk_divider_0|Add0~25\)) # (!\inst|clk_divider_0|count\(13) & ((\inst|clk_divider_0|Add0~25\) # (GND)))
-- \inst|clk_divider_0|Add0~27\ = CARRY((!\inst|clk_divider_0|Add0~25\) # (!\inst|clk_divider_0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(13),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~25\,
	combout => \inst|clk_divider_0|Add0~26_combout\,
	cout => \inst|clk_divider_0|Add0~27\);

-- Location: FF_X40_Y6_N3
\inst|clk_divider_0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(13));

-- Location: LCCOMB_X40_Y6_N4
\inst|clk_divider_0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~28_combout\ = (\inst|clk_divider_0|count\(14) & (\inst|clk_divider_0|Add0~27\ $ (GND))) # (!\inst|clk_divider_0|count\(14) & (!\inst|clk_divider_0|Add0~27\ & VCC))
-- \inst|clk_divider_0|Add0~29\ = CARRY((\inst|clk_divider_0|count\(14) & !\inst|clk_divider_0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(14),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~27\,
	combout => \inst|clk_divider_0|Add0~28_combout\,
	cout => \inst|clk_divider_0|Add0~29\);

-- Location: FF_X40_Y6_N5
\inst|clk_divider_0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(14));

-- Location: LCCOMB_X40_Y6_N6
\inst|clk_divider_0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~30_combout\ = (\inst|clk_divider_0|count\(15) & (!\inst|clk_divider_0|Add0~29\)) # (!\inst|clk_divider_0|count\(15) & ((\inst|clk_divider_0|Add0~29\) # (GND)))
-- \inst|clk_divider_0|Add0~31\ = CARRY((!\inst|clk_divider_0|Add0~29\) # (!\inst|clk_divider_0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(15),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~29\,
	combout => \inst|clk_divider_0|Add0~30_combout\,
	cout => \inst|clk_divider_0|Add0~31\);

-- Location: FF_X40_Y6_N7
\inst|clk_divider_0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(15));

-- Location: LCCOMB_X39_Y6_N4
\inst|clk_divider_0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Equal0~3_combout\ = (\inst|clk_divider_0|count\(12) & (!\inst|clk_divider_0|count\(13) & (!\inst|clk_divider_0|count\(15) & !\inst|clk_divider_0|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(12),
	datab => \inst|clk_divider_0|count\(13),
	datac => \inst|clk_divider_0|count\(15),
	datad => \inst|clk_divider_0|count\(14),
	combout => \inst|clk_divider_0|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y6_N8
\inst|clk_divider_0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Equal0~2_combout\ = (\inst|clk_divider_0|count\(8) & (!\inst|clk_divider_0|count\(10) & (\inst|clk_divider_0|count\(9) & \inst|clk_divider_0|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(8),
	datab => \inst|clk_divider_0|count\(10),
	datac => \inst|clk_divider_0|count\(9),
	datad => \inst|clk_divider_0|count\(11),
	combout => \inst|clk_divider_0|Equal0~2_combout\);

-- Location: FF_X40_Y7_N11
\inst|clk_divider_0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(1));

-- Location: FF_X40_Y7_N23
\inst|clk_divider_0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(7));

-- Location: LCCOMB_X39_Y7_N8
\inst|clk_divider_0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Equal0~1_combout\ = (!\inst|clk_divider_0|count\(0) & (!\inst|clk_divider_0|count\(1) & (!\inst|clk_divider_0|count\(6) & !\inst|clk_divider_0|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(0),
	datab => \inst|clk_divider_0|count\(1),
	datac => \inst|clk_divider_0|count\(6),
	datad => \inst|clk_divider_0|count\(7),
	combout => \inst|clk_divider_0|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y6_N16
\inst|clk_divider_0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Equal0~4_combout\ = (\inst|clk_divider_0|Equal0~0_combout\ & (\inst|clk_divider_0|Equal0~3_combout\ & (\inst|clk_divider_0|Equal0~2_combout\ & \inst|clk_divider_0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~0_combout\,
	datab => \inst|clk_divider_0|Equal0~3_combout\,
	datac => \inst|clk_divider_0|Equal0~2_combout\,
	datad => \inst|clk_divider_0|Equal0~1_combout\,
	combout => \inst|clk_divider_0|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y6_N8
\inst|clk_divider_0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~32_combout\ = (\inst|clk_divider_0|count\(16) & (\inst|clk_divider_0|Add0~31\ $ (GND))) # (!\inst|clk_divider_0|count\(16) & (!\inst|clk_divider_0|Add0~31\ & VCC))
-- \inst|clk_divider_0|Add0~33\ = CARRY((\inst|clk_divider_0|count\(16) & !\inst|clk_divider_0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(16),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~31\,
	combout => \inst|clk_divider_0|Add0~32_combout\,
	cout => \inst|clk_divider_0|Add0~33\);

-- Location: LCCOMB_X40_Y6_N28
\inst|clk_divider_0|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~11_combout\ = (\inst|clk_divider_0|Add0~32_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~6_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~6_combout\,
	datac => \inst|clk_divider_0|Equal0~4_combout\,
	datad => \inst|clk_divider_0|Add0~32_combout\,
	combout => \inst|clk_divider_0|count~11_combout\);

-- Location: FF_X40_Y6_N29
\inst|clk_divider_0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(16));

-- Location: LCCOMB_X40_Y6_N10
\inst|clk_divider_0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~34_combout\ = (\inst|clk_divider_0|count\(17) & (!\inst|clk_divider_0|Add0~33\)) # (!\inst|clk_divider_0|count\(17) & ((\inst|clk_divider_0|Add0~33\) # (GND)))
-- \inst|clk_divider_0|Add0~35\ = CARRY((!\inst|clk_divider_0|Add0~33\) # (!\inst|clk_divider_0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(17),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~33\,
	combout => \inst|clk_divider_0|Add0~34_combout\,
	cout => \inst|clk_divider_0|Add0~35\);

-- Location: LCCOMB_X40_Y6_N12
\inst|clk_divider_0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~36_combout\ = (\inst|clk_divider_0|count\(18) & (\inst|clk_divider_0|Add0~35\ $ (GND))) # (!\inst|clk_divider_0|count\(18) & (!\inst|clk_divider_0|Add0~35\ & VCC))
-- \inst|clk_divider_0|Add0~37\ = CARRY((\inst|clk_divider_0|count\(18) & !\inst|clk_divider_0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(18),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~35\,
	combout => \inst|clk_divider_0|Add0~36_combout\,
	cout => \inst|clk_divider_0|Add0~37\);

-- Location: LCCOMB_X40_Y6_N24
\inst|clk_divider_0|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~13_combout\ = (\inst|clk_divider_0|Add0~36_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~6_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~6_combout\,
	datac => \inst|clk_divider_0|Equal0~4_combout\,
	datad => \inst|clk_divider_0|Add0~36_combout\,
	combout => \inst|clk_divider_0|count~13_combout\);

-- Location: FF_X40_Y6_N25
\inst|clk_divider_0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(18));

-- Location: LCCOMB_X40_Y6_N14
\inst|clk_divider_0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~38_combout\ = (\inst|clk_divider_0|count\(19) & (!\inst|clk_divider_0|Add0~37\)) # (!\inst|clk_divider_0|count\(19) & ((\inst|clk_divider_0|Add0~37\) # (GND)))
-- \inst|clk_divider_0|Add0~39\ = CARRY((!\inst|clk_divider_0|Add0~37\) # (!\inst|clk_divider_0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(19),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~37\,
	combout => \inst|clk_divider_0|Add0~38_combout\,
	cout => \inst|clk_divider_0|Add0~39\);

-- Location: FF_X40_Y6_N15
\inst|clk_divider_0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(19));

-- Location: LCCOMB_X40_Y6_N16
\inst|clk_divider_0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~40_combout\ = (\inst|clk_divider_0|count\(20) & (\inst|clk_divider_0|Add0~39\ $ (GND))) # (!\inst|clk_divider_0|count\(20) & (!\inst|clk_divider_0|Add0~39\ & VCC))
-- \inst|clk_divider_0|Add0~41\ = CARRY((\inst|clk_divider_0|count\(20) & !\inst|clk_divider_0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(20),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~39\,
	combout => \inst|clk_divider_0|Add0~40_combout\,
	cout => \inst|clk_divider_0|Add0~41\);

-- Location: LCCOMB_X39_Y6_N6
\inst|clk_divider_0|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~14_combout\ = (\inst|clk_divider_0|Add0~40_combout\ & (((!\inst|clk_divider_0|Equal0~6_combout\) # (!\inst|clk_divider_0|Equal0~4_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~4_combout\,
	datac => \inst|clk_divider_0|Equal0~6_combout\,
	datad => \inst|clk_divider_0|Add0~40_combout\,
	combout => \inst|clk_divider_0|count~14_combout\);

-- Location: FF_X39_Y6_N7
\inst|clk_divider_0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(20));

-- Location: LCCOMB_X40_Y6_N18
\inst|clk_divider_0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~42_combout\ = (\inst|clk_divider_0|count\(21) & (!\inst|clk_divider_0|Add0~41\)) # (!\inst|clk_divider_0|count\(21) & ((\inst|clk_divider_0|Add0~41\) # (GND)))
-- \inst|clk_divider_0|Add0~43\ = CARRY((!\inst|clk_divider_0|Add0~41\) # (!\inst|clk_divider_0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(21),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~41\,
	combout => \inst|clk_divider_0|Add0~42_combout\,
	cout => \inst|clk_divider_0|Add0~43\);

-- Location: LCCOMB_X40_Y6_N20
\inst|clk_divider_0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~44_combout\ = (\inst|clk_divider_0|count\(22) & (\inst|clk_divider_0|Add0~43\ $ (GND))) # (!\inst|clk_divider_0|count\(22) & (!\inst|clk_divider_0|Add0~43\ & VCC))
-- \inst|clk_divider_0|Add0~45\ = CARRY((\inst|clk_divider_0|count\(22) & !\inst|clk_divider_0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|count\(22),
	datad => VCC,
	cin => \inst|clk_divider_0|Add0~43\,
	combout => \inst|clk_divider_0|Add0~44_combout\,
	cout => \inst|clk_divider_0|Add0~45\);

-- Location: FF_X40_Y6_N21
\inst|clk_divider_0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(22));

-- Location: LCCOMB_X40_Y6_N22
\inst|clk_divider_0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Add0~46_combout\ = \inst|clk_divider_0|Add0~45\ $ (\inst|clk_divider_0|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|clk_divider_0|count\(23),
	cin => \inst|clk_divider_0|Add0~45\,
	combout => \inst|clk_divider_0|Add0~46_combout\);

-- Location: LCCOMB_X39_Y6_N12
\inst|clk_divider_0|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~16_combout\ = (\inst|clk_divider_0|Add0~46_combout\ & (((!\inst|clk_divider_0|Equal0~6_combout\) # (!\inst|clk_divider_0|Equal0~4_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~4_combout\,
	datac => \inst|clk_divider_0|Equal0~6_combout\,
	datad => \inst|clk_divider_0|Add0~46_combout\,
	combout => \inst|clk_divider_0|count~16_combout\);

-- Location: FF_X39_Y6_N13
\inst|clk_divider_0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(23));

-- Location: LCCOMB_X40_Y6_N30
\inst|clk_divider_0|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~15_combout\ = (\inst|clk_divider_0|Add0~42_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~6_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~6_combout\,
	datac => \inst|clk_divider_0|Equal0~4_combout\,
	datad => \inst|clk_divider_0|Add0~42_combout\,
	combout => \inst|clk_divider_0|count~15_combout\);

-- Location: FF_X40_Y6_N31
\inst|clk_divider_0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(21));

-- Location: LCCOMB_X39_Y6_N22
\inst|clk_divider_0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Equal0~6_combout\ = (!\inst|clk_divider_0|count\(22) & (\inst|clk_divider_0|count\(23) & (\inst|clk_divider_0|count\(21) & \inst|clk_divider_0|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(22),
	datab => \inst|clk_divider_0|count\(23),
	datac => \inst|clk_divider_0|count\(21),
	datad => \inst|clk_divider_0|count\(20),
	combout => \inst|clk_divider_0|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y6_N26
\inst|clk_divider_0|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|count~12_combout\ = (\inst|clk_divider_0|Add0~34_combout\ & (((!\inst|clk_divider_0|Equal0~4_combout\) # (!\inst|clk_divider_0|Equal0~6_combout\)) # (!\inst|clk_divider_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|Equal0~5_combout\,
	datab => \inst|clk_divider_0|Equal0~6_combout\,
	datac => \inst|clk_divider_0|Equal0~4_combout\,
	datad => \inst|clk_divider_0|Add0~34_combout\,
	combout => \inst|clk_divider_0|count~12_combout\);

-- Location: FF_X40_Y6_N27
\inst|clk_divider_0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|count\(17));

-- Location: LCCOMB_X39_Y6_N0
\inst|clk_divider_0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|Equal0~5_combout\ = (\inst|clk_divider_0|count\(18) & (\inst|clk_divider_0|count\(17) & (!\inst|clk_divider_0|count\(19) & \inst|clk_divider_0|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|count\(18),
	datab => \inst|clk_divider_0|count\(17),
	datac => \inst|clk_divider_0|count\(19),
	datad => \inst|clk_divider_0|count\(16),
	combout => \inst|clk_divider_0|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y6_N28
\inst|clk_divider_0|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|tmp~0_combout\ = \inst|clk_divider_0|tmp~q\ $ (((\inst|clk_divider_0|Equal0~5_combout\ & (\inst|clk_divider_0|Equal0~6_combout\ & \inst|clk_divider_0|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_divider_0|tmp~q\,
	datab => \inst|clk_divider_0|Equal0~5_combout\,
	datac => \inst|clk_divider_0|Equal0~6_combout\,
	datad => \inst|clk_divider_0|Equal0~4_combout\,
	combout => \inst|clk_divider_0|tmp~0_combout\);

-- Location: LCCOMB_X39_Y6_N30
\inst|clk_divider_0|tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_divider_0|tmp~feeder_combout\ = \inst|clk_divider_0|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_divider_0|tmp~0_combout\,
	combout => \inst|clk_divider_0|tmp~feeder_combout\);

-- Location: FF_X39_Y6_N31
\inst|clk_divider_0|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|clk_divider_0|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_divider_0|tmp~q\);

-- Location: CLKCTRL_G17
\inst|clk_divider_0|tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_divider_0|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_divider_0|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y11_N12
\inst|controller_0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector4~0_combout\ = (\inst|controller_0|done~q\ & ((\inst|controller_0|state.S0~q\) # (\Button_n0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|state.S0~q\,
	datab => \Button_n0~input_o\,
	datad => \inst|controller_0|done~q\,
	combout => \inst|controller_0|Selector4~0_combout\);

-- Location: LCCOMB_X39_Y11_N24
\inst|controller_0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|controller_0|Selector4~1_combout\ = (\inst|controller_0|Selector4~0_combout\) # ((!\inst|controller_0|state.S1~q\ & (\inst|controller_0|state.S0~q\ & !\inst|controller_0|state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|controller_0|state.S1~q\,
	datab => \inst|controller_0|Selector4~0_combout\,
	datac => \inst|controller_0|state.S0~q\,
	datad => \inst|controller_0|state.S2~q\,
	combout => \inst|controller_0|Selector4~1_combout\);

-- Location: FF_X39_Y11_N25
\inst|controller_0|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_divider_0|ALT_INV_tmp~clkctrl_outclk\,
	d => \inst|controller_0|Selector4~1_combout\,
	clrn => \Button_n3~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|controller_0|done~q\);

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

ww_LedButton(3) <= \LedButton[3]~output_o\;

ww_LedButton(2) <= \LedButton[2]~output_o\;

ww_LedButton(1) <= \LedButton[1]~output_o\;

ww_LedButton(0) <= \LedButton[0]~output_o\;
END structure;


