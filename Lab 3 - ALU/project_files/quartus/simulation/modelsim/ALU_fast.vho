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

-- DATE "10/03/2013 14:56:11"

-- 
-- Device: Altera EP2C20F484C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	s : OUT std_logic_vector(31 DOWNTO 0);
	op : IN std_logic_vector(5 DOWNTO 0);
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- s[31]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[30]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[29]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[28]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[27]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[26]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[25]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[24]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[23]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[22]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[21]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[20]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[19]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[18]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[17]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[16]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[15]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[14]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[13]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[12]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[11]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[10]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[9]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[8]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[7]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[6]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[5]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[31]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[31]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[3]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[30]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[30]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[29]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[29]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[28]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[28]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[27]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[27]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[26]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[26]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[25]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[25]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[24]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[24]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[23]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[23]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[22]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[22]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[21]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[21]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[20]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[20]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[19]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[19]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[18]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[18]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[17]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[17]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[16]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[16]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[14]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[13]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[12]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[11]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[10]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[9]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[8]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[4]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL \add_sub_0|temp_b[29]~2_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[24]~7_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[23]~8_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[21]~10_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[20]~11_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[8]~23_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[7]~24_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[6]~25_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[4]~27_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[3]~28_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[2]~29_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[1]~30_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~4_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~5_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~6_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~7_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~8_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~9_combout\ : std_logic;
SIGNAL \comparator_0|Mux0~2_combout\ : std_logic;
SIGNAL \comparator_0|Mux0~4_combout\ : std_logic;
SIGNAL \comparator_0|Mux0~5_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[31]~0_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[30]~1_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[28]~3_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[27]~4_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[26]~5_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[25]~6_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[22]~9_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[19]~12_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[18]~13_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[17]~14_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[16]~15_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[15]~16_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[14]~17_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[13]~18_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[12]~19_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[11]~20_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[10]~21_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[9]~22_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[5]~26_combout\ : std_logic;
SIGNAL \add_sub_0|temp_b[0]~31_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~1_cout\ : std_logic;
SIGNAL \add_sub_0|Add0~3\ : std_logic;
SIGNAL \add_sub_0|Add0~5\ : std_logic;
SIGNAL \add_sub_0|Add0~7\ : std_logic;
SIGNAL \add_sub_0|Add0~9\ : std_logic;
SIGNAL \add_sub_0|Add0~11\ : std_logic;
SIGNAL \add_sub_0|Add0~13\ : std_logic;
SIGNAL \add_sub_0|Add0~15\ : std_logic;
SIGNAL \add_sub_0|Add0~17\ : std_logic;
SIGNAL \add_sub_0|Add0~19\ : std_logic;
SIGNAL \add_sub_0|Add0~21\ : std_logic;
SIGNAL \add_sub_0|Add0~23\ : std_logic;
SIGNAL \add_sub_0|Add0~25\ : std_logic;
SIGNAL \add_sub_0|Add0~27\ : std_logic;
SIGNAL \add_sub_0|Add0~29\ : std_logic;
SIGNAL \add_sub_0|Add0~31\ : std_logic;
SIGNAL \add_sub_0|Add0~33\ : std_logic;
SIGNAL \add_sub_0|Add0~35\ : std_logic;
SIGNAL \add_sub_0|Add0~37\ : std_logic;
SIGNAL \add_sub_0|Add0~39\ : std_logic;
SIGNAL \add_sub_0|Add0~41\ : std_logic;
SIGNAL \add_sub_0|Add0~43\ : std_logic;
SIGNAL \add_sub_0|Add0~45\ : std_logic;
SIGNAL \add_sub_0|Add0~47\ : std_logic;
SIGNAL \add_sub_0|Add0~49\ : std_logic;
SIGNAL \add_sub_0|Add0~51\ : std_logic;
SIGNAL \add_sub_0|Add0~53\ : std_logic;
SIGNAL \add_sub_0|Add0~55\ : std_logic;
SIGNAL \add_sub_0|Add0~57\ : std_logic;
SIGNAL \add_sub_0|Add0~59\ : std_logic;
SIGNAL \add_sub_0|Add0~61\ : std_logic;
SIGNAL \add_sub_0|Add0~63\ : std_logic;
SIGNAL \add_sub_0|Add0~64_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux0~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux0~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux1~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~62_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux1~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux2~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~60_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux2~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~58_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux3~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux3~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~56_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux4~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux4~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux5~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~54_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux5~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux6~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~52_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux6~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~50_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux7~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux7~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~48_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux8~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux8~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux9~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~46_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux9~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~44_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux10~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux10~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux11~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~42_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux11~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~40_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux12~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux12~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~38_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux13~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux13~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~36_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux14~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux14~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~34_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux15~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux15~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~32_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux16~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux16~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux17~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~30_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux17~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux18~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~28_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux18~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux19~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~26_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux19~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux20~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~24_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux20~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux21~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~22_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux21~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~20_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux22~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux22~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~18_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux23~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux23~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~16_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux24~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux24~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~14_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux25~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux25~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux26~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~12_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux26~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~10_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux27~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux27~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux28~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~8_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux28~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~6_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux29~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux29~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~4_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux30~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux30~1_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~10_combout\ : std_logic;
SIGNAL \comparator_0|Mux0~0_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~0_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~1_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~2_combout\ : std_logic;
SIGNAL \add_sub_0|Equal0~3_combout\ : std_logic;
SIGNAL \comparator_0|Mux0~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~2_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~65\ : std_logic;
SIGNAL \add_sub_0|Add0~66_combout\ : std_logic;
SIGNAL \comparator_0|Mux0~3_combout\ : std_logic;
SIGNAL \comparator_0|Mux0~6_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~2_combout\ : std_logic;
SIGNAL \op~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

s <= ww_s;
ww_op <= op;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X24_Y23_N30
\add_sub_0|temp_b[29]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[29]~2_combout\ = \b~combout\(29) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(29),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[29]~2_combout\);

-- Location: LCCOMB_X25_Y23_N28
\add_sub_0|temp_b[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[24]~7_combout\ = \op~combout\(3) $ (\b~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datad => \b~combout\(24),
	combout => \add_sub_0|temp_b[24]~7_combout\);

-- Location: LCCOMB_X27_Y24_N26
\add_sub_0|temp_b[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[23]~8_combout\ = \op~combout\(3) $ (\b~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~combout\(3),
	datad => \b~combout\(23),
	combout => \add_sub_0|temp_b[23]~8_combout\);

-- Location: LCCOMB_X27_Y24_N6
\add_sub_0|temp_b[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[21]~10_combout\ = \op~combout\(3) $ (\b~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~combout\(3),
	datad => \b~combout\(21),
	combout => \add_sub_0|temp_b[21]~10_combout\);

-- Location: LCCOMB_X27_Y24_N8
\add_sub_0|temp_b[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[20]~11_combout\ = \b~combout\(20) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(20),
	datac => \op~combout\(3),
	combout => \add_sub_0|temp_b[20]~11_combout\);

-- Location: LCCOMB_X26_Y26_N18
\add_sub_0|temp_b[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[8]~23_combout\ = \op~combout\(3) $ (\b~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datad => \b~combout\(8),
	combout => \add_sub_0|temp_b[8]~23_combout\);

-- Location: LCCOMB_X26_Y25_N2
\add_sub_0|temp_b[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[7]~24_combout\ = \op~combout\(3) $ (\b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datad => \b~combout\(7),
	combout => \add_sub_0|temp_b[7]~24_combout\);

-- Location: LCCOMB_X26_Y24_N4
\add_sub_0|temp_b[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[6]~25_combout\ = \op~combout\(3) $ (\b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datad => \b~combout\(6),
	combout => \add_sub_0|temp_b[6]~25_combout\);

-- Location: LCCOMB_X26_Y26_N20
\add_sub_0|temp_b[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[4]~27_combout\ = \b~combout\(4) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[4]~27_combout\);

-- Location: LCCOMB_X24_Y23_N0
\add_sub_0|temp_b[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[3]~28_combout\ = \b~combout\(3) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[3]~28_combout\);

-- Location: LCCOMB_X25_Y25_N10
\add_sub_0|temp_b[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[2]~29_combout\ = \b~combout\(2) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(2),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[2]~29_combout\);

-- Location: LCCOMB_X26_Y25_N20
\add_sub_0|temp_b[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[1]~30_combout\ = \b~combout\(1) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[1]~30_combout\);

-- Location: LCCOMB_X25_Y22_N14
\add_sub_0|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~4_combout\ = (!\add_sub_0|Add0~32_combout\ & (!\add_sub_0|Add0~30_combout\ & (!\add_sub_0|Add0~26_combout\ & !\add_sub_0|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~32_combout\,
	datab => \add_sub_0|Add0~30_combout\,
	datac => \add_sub_0|Add0~26_combout\,
	datad => \add_sub_0|Add0~28_combout\,
	combout => \add_sub_0|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y24_N22
\add_sub_0|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~5_combout\ = (!\add_sub_0|Add0~18_combout\ & (!\add_sub_0|Add0~24_combout\ & (!\add_sub_0|Add0~22_combout\ & !\add_sub_0|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~18_combout\,
	datab => \add_sub_0|Add0~24_combout\,
	datac => \add_sub_0|Add0~22_combout\,
	datad => \add_sub_0|Add0~20_combout\,
	combout => \add_sub_0|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y25_N0
\add_sub_0|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~6_combout\ = (!\add_sub_0|Add0~10_combout\ & !\add_sub_0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub_0|Add0~10_combout\,
	datad => \add_sub_0|Add0~12_combout\,
	combout => \add_sub_0|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y25_N2
\add_sub_0|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~7_combout\ = (!\add_sub_0|Add0~6_combout\ & (!\add_sub_0|Add0~8_combout\ & (!\add_sub_0|Add0~2_combout\ & !\add_sub_0|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~6_combout\,
	datab => \add_sub_0|Add0~8_combout\,
	datac => \add_sub_0|Add0~2_combout\,
	datad => \add_sub_0|Add0~4_combout\,
	combout => \add_sub_0|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y25_N4
\add_sub_0|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~8_combout\ = (!\add_sub_0|Add0~16_combout\ & (\add_sub_0|Equal0~6_combout\ & (\add_sub_0|Equal0~7_combout\ & !\add_sub_0|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~16_combout\,
	datab => \add_sub_0|Equal0~6_combout\,
	datac => \add_sub_0|Equal0~7_combout\,
	datad => \add_sub_0|Add0~14_combout\,
	combout => \add_sub_0|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y24_N8
\add_sub_0|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~9_combout\ = (\add_sub_0|Equal0~8_combout\ & (\add_sub_0|Equal0~4_combout\ & (!\add_sub_0|Add0~66_combout\ & \add_sub_0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Equal0~8_combout\,
	datab => \add_sub_0|Equal0~4_combout\,
	datac => \add_sub_0|Add0~66_combout\,
	datad => \add_sub_0|Equal0~5_combout\,
	combout => \add_sub_0|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y23_N6
\comparator_0|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comparator_0|Mux0~2_combout\ = (\add_sub_0|Add0~64_combout\ & (!\a~combout\(31) & \b~combout\(31))) # (!\add_sub_0|Add0~64_combout\ & ((\b~combout\(31)) # (!\a~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~64_combout\,
	datab => \a~combout\(31),
	datad => \b~combout\(31),
	combout => \comparator_0|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y24_N0
\comparator_0|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comparator_0|Mux0~4_combout\ = (\add_sub_0|Equal0~10_combout\ & (\add_sub_0|Equal0~0_combout\ & \add_sub_0|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Equal0~10_combout\,
	datac => \add_sub_0|Equal0~0_combout\,
	datad => \add_sub_0|Equal0~3_combout\,
	combout => \comparator_0|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y24_N10
\comparator_0|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comparator_0|Mux0~5_combout\ = (\op~combout\(2)) # ((\comparator_0|Mux0~4_combout\ & \add_sub_0|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comparator_0|Mux0~4_combout\,
	datac => \add_sub_0|Equal0~9_combout\,
	datad => \op~combout\(2),
	combout => \comparator_0|Mux0~5_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(20),
	combout => \b~combout\(20));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(19),
	combout => \a~combout\(19));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(18),
	combout => \a~combout\(18));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(31),
	combout => \b~combout\(31));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_op(3),
	combout => \op~combout\(3));

-- Location: LCCOMB_X24_Y23_N26
\add_sub_0|temp_b[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[31]~0_combout\ = \b~combout\(31) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(31),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[31]~0_combout\);

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(30),
	combout => \b~combout\(30));

-- Location: LCCOMB_X24_Y23_N4
\add_sub_0|temp_b[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[30]~1_combout\ = \b~combout\(30) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(30),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[30]~1_combout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(29),
	combout => \a~combout\(29));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(28),
	combout => \b~combout\(28));

-- Location: LCCOMB_X27_Y24_N16
\add_sub_0|temp_b[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[28]~3_combout\ = \op~combout\(3) $ (\b~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datac => \b~combout\(28),
	combout => \add_sub_0|temp_b[28]~3_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(27),
	combout => \b~combout\(27));

-- Location: LCCOMB_X25_Y23_N18
\add_sub_0|temp_b[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[27]~4_combout\ = \b~combout\(27) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(27),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[27]~4_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(26),
	combout => \b~combout\(26));

-- Location: LCCOMB_X25_Y22_N0
\add_sub_0|temp_b[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[26]~5_combout\ = \op~combout\(3) $ (\b~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~combout\(3),
	datad => \b~combout\(26),
	combout => \add_sub_0|temp_b[26]~5_combout\);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(25),
	combout => \b~combout\(25));

-- Location: LCCOMB_X24_Y24_N16
\add_sub_0|temp_b[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[25]~6_combout\ = \b~combout\(25) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(25),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[25]~6_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(24),
	combout => \a~combout\(24));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(23),
	combout => \a~combout\(23));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(22),
	combout => \b~combout\(22));

-- Location: LCCOMB_X27_Y24_N20
\add_sub_0|temp_b[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[22]~9_combout\ = \op~combout\(3) $ (\b~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op~combout\(3),
	datad => \b~combout\(22),
	combout => \add_sub_0|temp_b[22]~9_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(21),
	combout => \a~combout\(21));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(20),
	combout => \a~combout\(20));

-- Location: LCCOMB_X24_Y24_N18
\add_sub_0|temp_b[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[19]~12_combout\ = \b~combout\(19) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(19),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[19]~12_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(18),
	combout => \b~combout\(18));

-- Location: LCCOMB_X26_Y25_N16
\add_sub_0|temp_b[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[18]~13_combout\ = \op~combout\(3) $ (\b~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datac => \b~combout\(18),
	combout => \add_sub_0|temp_b[18]~13_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(17),
	combout => \b~combout\(17));

-- Location: LCCOMB_X24_Y24_N4
\add_sub_0|temp_b[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[17]~14_combout\ = \b~combout\(17) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(17),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[17]~14_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(16),
	combout => \b~combout\(16));

-- Location: LCCOMB_X24_Y24_N14
\add_sub_0|temp_b[16]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[16]~15_combout\ = \b~combout\(16) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(16),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[16]~15_combout\);

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LCCOMB_X25_Y22_N10
\add_sub_0|temp_b[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[15]~16_combout\ = \b~combout\(15) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(15),
	datac => \op~combout\(3),
	combout => \add_sub_0|temp_b[15]~16_combout\);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LCCOMB_X25_Y22_N4
\add_sub_0|temp_b[14]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[14]~17_combout\ = \op~combout\(3) $ (\b~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(3),
	datac => \b~combout\(14),
	combout => \add_sub_0|temp_b[14]~17_combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LCCOMB_X25_Y22_N22
\add_sub_0|temp_b[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[13]~18_combout\ = \op~combout\(3) $ (\b~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(3),
	datac => \b~combout\(13),
	combout => \add_sub_0|temp_b[13]~18_combout\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LCCOMB_X26_Y22_N0
\add_sub_0|temp_b[12]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[12]~19_combout\ = \op~combout\(3) $ (\b~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datac => \b~combout\(12),
	combout => \add_sub_0|temp_b[12]~19_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LCCOMB_X26_Y26_N24
\add_sub_0|temp_b[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[11]~20_combout\ = \b~combout\(11) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(11),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[11]~20_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LCCOMB_X26_Y24_N24
\add_sub_0|temp_b[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[10]~21_combout\ = \op~combout\(3) $ (\b~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datad => \b~combout\(10),
	combout => \add_sub_0|temp_b[10]~21_combout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LCCOMB_X26_Y24_N18
\add_sub_0|temp_b[9]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[9]~22_combout\ = \op~combout\(3) $ (\b~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datac => \b~combout\(9),
	combout => \add_sub_0|temp_b[9]~22_combout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X25_Y25_N8
\add_sub_0|temp_b[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[5]~26_combout\ = \b~combout\(5) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(5),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[5]~26_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X26_Y22_N10
\add_sub_0|temp_b[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|temp_b[0]~31_combout\ = \b~combout\(0) $ (\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \op~combout\(3),
	combout => \add_sub_0|temp_b[0]~31_combout\);

-- Location: LCCOMB_X25_Y25_N14
\add_sub_0|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~1_cout\ = CARRY(\op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~combout\(3),
	datad => VCC,
	cout => \add_sub_0|Add0~1_cout\);

-- Location: LCCOMB_X25_Y25_N16
\add_sub_0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~2_combout\ = (\a~combout\(0) & ((\add_sub_0|temp_b[0]~31_combout\ & (\add_sub_0|Add0~1_cout\ & VCC)) # (!\add_sub_0|temp_b[0]~31_combout\ & (!\add_sub_0|Add0~1_cout\)))) # (!\a~combout\(0) & ((\add_sub_0|temp_b[0]~31_combout\ & 
-- (!\add_sub_0|Add0~1_cout\)) # (!\add_sub_0|temp_b[0]~31_combout\ & ((\add_sub_0|Add0~1_cout\) # (GND)))))
-- \add_sub_0|Add0~3\ = CARRY((\a~combout\(0) & (!\add_sub_0|temp_b[0]~31_combout\ & !\add_sub_0|Add0~1_cout\)) # (!\a~combout\(0) & ((!\add_sub_0|Add0~1_cout\) # (!\add_sub_0|temp_b[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \add_sub_0|temp_b[0]~31_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~1_cout\,
	combout => \add_sub_0|Add0~2_combout\,
	cout => \add_sub_0|Add0~3\);

-- Location: LCCOMB_X25_Y25_N18
\add_sub_0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~4_combout\ = ((\add_sub_0|temp_b[1]~30_combout\ $ (\a~combout\(1) $ (!\add_sub_0|Add0~3\)))) # (GND)
-- \add_sub_0|Add0~5\ = CARRY((\add_sub_0|temp_b[1]~30_combout\ & ((\a~combout\(1)) # (!\add_sub_0|Add0~3\))) # (!\add_sub_0|temp_b[1]~30_combout\ & (\a~combout\(1) & !\add_sub_0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[1]~30_combout\,
	datab => \a~combout\(1),
	datad => VCC,
	cin => \add_sub_0|Add0~3\,
	combout => \add_sub_0|Add0~4_combout\,
	cout => \add_sub_0|Add0~5\);

-- Location: LCCOMB_X25_Y25_N20
\add_sub_0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~6_combout\ = (\add_sub_0|temp_b[2]~29_combout\ & ((\a~combout\(2) & (\add_sub_0|Add0~5\ & VCC)) # (!\a~combout\(2) & (!\add_sub_0|Add0~5\)))) # (!\add_sub_0|temp_b[2]~29_combout\ & ((\a~combout\(2) & (!\add_sub_0|Add0~5\)) # 
-- (!\a~combout\(2) & ((\add_sub_0|Add0~5\) # (GND)))))
-- \add_sub_0|Add0~7\ = CARRY((\add_sub_0|temp_b[2]~29_combout\ & (!\a~combout\(2) & !\add_sub_0|Add0~5\)) # (!\add_sub_0|temp_b[2]~29_combout\ & ((!\add_sub_0|Add0~5\) # (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[2]~29_combout\,
	datab => \a~combout\(2),
	datad => VCC,
	cin => \add_sub_0|Add0~5\,
	combout => \add_sub_0|Add0~6_combout\,
	cout => \add_sub_0|Add0~7\);

-- Location: LCCOMB_X25_Y25_N22
\add_sub_0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~8_combout\ = ((\add_sub_0|temp_b[3]~28_combout\ $ (\a~combout\(3) $ (!\add_sub_0|Add0~7\)))) # (GND)
-- \add_sub_0|Add0~9\ = CARRY((\add_sub_0|temp_b[3]~28_combout\ & ((\a~combout\(3)) # (!\add_sub_0|Add0~7\))) # (!\add_sub_0|temp_b[3]~28_combout\ & (\a~combout\(3) & !\add_sub_0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[3]~28_combout\,
	datab => \a~combout\(3),
	datad => VCC,
	cin => \add_sub_0|Add0~7\,
	combout => \add_sub_0|Add0~8_combout\,
	cout => \add_sub_0|Add0~9\);

-- Location: LCCOMB_X25_Y25_N24
\add_sub_0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~10_combout\ = (\add_sub_0|temp_b[4]~27_combout\ & ((\a~combout\(4) & (\add_sub_0|Add0~9\ & VCC)) # (!\a~combout\(4) & (!\add_sub_0|Add0~9\)))) # (!\add_sub_0|temp_b[4]~27_combout\ & ((\a~combout\(4) & (!\add_sub_0|Add0~9\)) # 
-- (!\a~combout\(4) & ((\add_sub_0|Add0~9\) # (GND)))))
-- \add_sub_0|Add0~11\ = CARRY((\add_sub_0|temp_b[4]~27_combout\ & (!\a~combout\(4) & !\add_sub_0|Add0~9\)) # (!\add_sub_0|temp_b[4]~27_combout\ & ((!\add_sub_0|Add0~9\) # (!\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[4]~27_combout\,
	datab => \a~combout\(4),
	datad => VCC,
	cin => \add_sub_0|Add0~9\,
	combout => \add_sub_0|Add0~10_combout\,
	cout => \add_sub_0|Add0~11\);

-- Location: LCCOMB_X25_Y25_N26
\add_sub_0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~12_combout\ = ((\a~combout\(5) $ (\add_sub_0|temp_b[5]~26_combout\ $ (!\add_sub_0|Add0~11\)))) # (GND)
-- \add_sub_0|Add0~13\ = CARRY((\a~combout\(5) & ((\add_sub_0|temp_b[5]~26_combout\) # (!\add_sub_0|Add0~11\))) # (!\a~combout\(5) & (\add_sub_0|temp_b[5]~26_combout\ & !\add_sub_0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \add_sub_0|temp_b[5]~26_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~11\,
	combout => \add_sub_0|Add0~12_combout\,
	cout => \add_sub_0|Add0~13\);

-- Location: LCCOMB_X25_Y25_N28
\add_sub_0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~14_combout\ = (\add_sub_0|temp_b[6]~25_combout\ & ((\a~combout\(6) & (\add_sub_0|Add0~13\ & VCC)) # (!\a~combout\(6) & (!\add_sub_0|Add0~13\)))) # (!\add_sub_0|temp_b[6]~25_combout\ & ((\a~combout\(6) & (!\add_sub_0|Add0~13\)) # 
-- (!\a~combout\(6) & ((\add_sub_0|Add0~13\) # (GND)))))
-- \add_sub_0|Add0~15\ = CARRY((\add_sub_0|temp_b[6]~25_combout\ & (!\a~combout\(6) & !\add_sub_0|Add0~13\)) # (!\add_sub_0|temp_b[6]~25_combout\ & ((!\add_sub_0|Add0~13\) # (!\a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[6]~25_combout\,
	datab => \a~combout\(6),
	datad => VCC,
	cin => \add_sub_0|Add0~13\,
	combout => \add_sub_0|Add0~14_combout\,
	cout => \add_sub_0|Add0~15\);

-- Location: LCCOMB_X25_Y25_N30
\add_sub_0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~16_combout\ = ((\add_sub_0|temp_b[7]~24_combout\ $ (\a~combout\(7) $ (!\add_sub_0|Add0~15\)))) # (GND)
-- \add_sub_0|Add0~17\ = CARRY((\add_sub_0|temp_b[7]~24_combout\ & ((\a~combout\(7)) # (!\add_sub_0|Add0~15\))) # (!\add_sub_0|temp_b[7]~24_combout\ & (\a~combout\(7) & !\add_sub_0|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[7]~24_combout\,
	datab => \a~combout\(7),
	datad => VCC,
	cin => \add_sub_0|Add0~15\,
	combout => \add_sub_0|Add0~16_combout\,
	cout => \add_sub_0|Add0~17\);

-- Location: LCCOMB_X25_Y24_N0
\add_sub_0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~18_combout\ = (\add_sub_0|temp_b[8]~23_combout\ & ((\a~combout\(8) & (\add_sub_0|Add0~17\ & VCC)) # (!\a~combout\(8) & (!\add_sub_0|Add0~17\)))) # (!\add_sub_0|temp_b[8]~23_combout\ & ((\a~combout\(8) & (!\add_sub_0|Add0~17\)) # 
-- (!\a~combout\(8) & ((\add_sub_0|Add0~17\) # (GND)))))
-- \add_sub_0|Add0~19\ = CARRY((\add_sub_0|temp_b[8]~23_combout\ & (!\a~combout\(8) & !\add_sub_0|Add0~17\)) # (!\add_sub_0|temp_b[8]~23_combout\ & ((!\add_sub_0|Add0~17\) # (!\a~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[8]~23_combout\,
	datab => \a~combout\(8),
	datad => VCC,
	cin => \add_sub_0|Add0~17\,
	combout => \add_sub_0|Add0~18_combout\,
	cout => \add_sub_0|Add0~19\);

-- Location: LCCOMB_X25_Y24_N2
\add_sub_0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~20_combout\ = ((\a~combout\(9) $ (\add_sub_0|temp_b[9]~22_combout\ $ (!\add_sub_0|Add0~19\)))) # (GND)
-- \add_sub_0|Add0~21\ = CARRY((\a~combout\(9) & ((\add_sub_0|temp_b[9]~22_combout\) # (!\add_sub_0|Add0~19\))) # (!\a~combout\(9) & (\add_sub_0|temp_b[9]~22_combout\ & !\add_sub_0|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \add_sub_0|temp_b[9]~22_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~19\,
	combout => \add_sub_0|Add0~20_combout\,
	cout => \add_sub_0|Add0~21\);

-- Location: LCCOMB_X25_Y24_N4
\add_sub_0|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~22_combout\ = (\a~combout\(10) & ((\add_sub_0|temp_b[10]~21_combout\ & (\add_sub_0|Add0~21\ & VCC)) # (!\add_sub_0|temp_b[10]~21_combout\ & (!\add_sub_0|Add0~21\)))) # (!\a~combout\(10) & ((\add_sub_0|temp_b[10]~21_combout\ & 
-- (!\add_sub_0|Add0~21\)) # (!\add_sub_0|temp_b[10]~21_combout\ & ((\add_sub_0|Add0~21\) # (GND)))))
-- \add_sub_0|Add0~23\ = CARRY((\a~combout\(10) & (!\add_sub_0|temp_b[10]~21_combout\ & !\add_sub_0|Add0~21\)) # (!\a~combout\(10) & ((!\add_sub_0|Add0~21\) # (!\add_sub_0|temp_b[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datab => \add_sub_0|temp_b[10]~21_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~21\,
	combout => \add_sub_0|Add0~22_combout\,
	cout => \add_sub_0|Add0~23\);

-- Location: LCCOMB_X25_Y24_N6
\add_sub_0|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~24_combout\ = ((\a~combout\(11) $ (\add_sub_0|temp_b[11]~20_combout\ $ (!\add_sub_0|Add0~23\)))) # (GND)
-- \add_sub_0|Add0~25\ = CARRY((\a~combout\(11) & ((\add_sub_0|temp_b[11]~20_combout\) # (!\add_sub_0|Add0~23\))) # (!\a~combout\(11) & (\add_sub_0|temp_b[11]~20_combout\ & !\add_sub_0|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(11),
	datab => \add_sub_0|temp_b[11]~20_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~23\,
	combout => \add_sub_0|Add0~24_combout\,
	cout => \add_sub_0|Add0~25\);

-- Location: LCCOMB_X25_Y24_N8
\add_sub_0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~26_combout\ = (\a~combout\(12) & ((\add_sub_0|temp_b[12]~19_combout\ & (\add_sub_0|Add0~25\ & VCC)) # (!\add_sub_0|temp_b[12]~19_combout\ & (!\add_sub_0|Add0~25\)))) # (!\a~combout\(12) & ((\add_sub_0|temp_b[12]~19_combout\ & 
-- (!\add_sub_0|Add0~25\)) # (!\add_sub_0|temp_b[12]~19_combout\ & ((\add_sub_0|Add0~25\) # (GND)))))
-- \add_sub_0|Add0~27\ = CARRY((\a~combout\(12) & (!\add_sub_0|temp_b[12]~19_combout\ & !\add_sub_0|Add0~25\)) # (!\a~combout\(12) & ((!\add_sub_0|Add0~25\) # (!\add_sub_0|temp_b[12]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \add_sub_0|temp_b[12]~19_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~25\,
	combout => \add_sub_0|Add0~26_combout\,
	cout => \add_sub_0|Add0~27\);

-- Location: LCCOMB_X25_Y24_N10
\add_sub_0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~28_combout\ = ((\a~combout\(13) $ (\add_sub_0|temp_b[13]~18_combout\ $ (!\add_sub_0|Add0~27\)))) # (GND)
-- \add_sub_0|Add0~29\ = CARRY((\a~combout\(13) & ((\add_sub_0|temp_b[13]~18_combout\) # (!\add_sub_0|Add0~27\))) # (!\a~combout\(13) & (\add_sub_0|temp_b[13]~18_combout\ & !\add_sub_0|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \add_sub_0|temp_b[13]~18_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~27\,
	combout => \add_sub_0|Add0~28_combout\,
	cout => \add_sub_0|Add0~29\);

-- Location: LCCOMB_X25_Y24_N12
\add_sub_0|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~30_combout\ = (\a~combout\(14) & ((\add_sub_0|temp_b[14]~17_combout\ & (\add_sub_0|Add0~29\ & VCC)) # (!\add_sub_0|temp_b[14]~17_combout\ & (!\add_sub_0|Add0~29\)))) # (!\a~combout\(14) & ((\add_sub_0|temp_b[14]~17_combout\ & 
-- (!\add_sub_0|Add0~29\)) # (!\add_sub_0|temp_b[14]~17_combout\ & ((\add_sub_0|Add0~29\) # (GND)))))
-- \add_sub_0|Add0~31\ = CARRY((\a~combout\(14) & (!\add_sub_0|temp_b[14]~17_combout\ & !\add_sub_0|Add0~29\)) # (!\a~combout\(14) & ((!\add_sub_0|Add0~29\) # (!\add_sub_0|temp_b[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(14),
	datab => \add_sub_0|temp_b[14]~17_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~29\,
	combout => \add_sub_0|Add0~30_combout\,
	cout => \add_sub_0|Add0~31\);

-- Location: LCCOMB_X25_Y24_N14
\add_sub_0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~32_combout\ = ((\a~combout\(15) $ (\add_sub_0|temp_b[15]~16_combout\ $ (!\add_sub_0|Add0~31\)))) # (GND)
-- \add_sub_0|Add0~33\ = CARRY((\a~combout\(15) & ((\add_sub_0|temp_b[15]~16_combout\) # (!\add_sub_0|Add0~31\))) # (!\a~combout\(15) & (\add_sub_0|temp_b[15]~16_combout\ & !\add_sub_0|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(15),
	datab => \add_sub_0|temp_b[15]~16_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~31\,
	combout => \add_sub_0|Add0~32_combout\,
	cout => \add_sub_0|Add0~33\);

-- Location: LCCOMB_X25_Y24_N16
\add_sub_0|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~34_combout\ = (\a~combout\(16) & ((\add_sub_0|temp_b[16]~15_combout\ & (\add_sub_0|Add0~33\ & VCC)) # (!\add_sub_0|temp_b[16]~15_combout\ & (!\add_sub_0|Add0~33\)))) # (!\a~combout\(16) & ((\add_sub_0|temp_b[16]~15_combout\ & 
-- (!\add_sub_0|Add0~33\)) # (!\add_sub_0|temp_b[16]~15_combout\ & ((\add_sub_0|Add0~33\) # (GND)))))
-- \add_sub_0|Add0~35\ = CARRY((\a~combout\(16) & (!\add_sub_0|temp_b[16]~15_combout\ & !\add_sub_0|Add0~33\)) # (!\a~combout\(16) & ((!\add_sub_0|Add0~33\) # (!\add_sub_0|temp_b[16]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(16),
	datab => \add_sub_0|temp_b[16]~15_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~33\,
	combout => \add_sub_0|Add0~34_combout\,
	cout => \add_sub_0|Add0~35\);

-- Location: LCCOMB_X25_Y24_N18
\add_sub_0|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~36_combout\ = ((\a~combout\(17) $ (\add_sub_0|temp_b[17]~14_combout\ $ (!\add_sub_0|Add0~35\)))) # (GND)
-- \add_sub_0|Add0~37\ = CARRY((\a~combout\(17) & ((\add_sub_0|temp_b[17]~14_combout\) # (!\add_sub_0|Add0~35\))) # (!\a~combout\(17) & (\add_sub_0|temp_b[17]~14_combout\ & !\add_sub_0|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(17),
	datab => \add_sub_0|temp_b[17]~14_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~35\,
	combout => \add_sub_0|Add0~36_combout\,
	cout => \add_sub_0|Add0~37\);

-- Location: LCCOMB_X25_Y24_N20
\add_sub_0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~38_combout\ = (\a~combout\(18) & ((\add_sub_0|temp_b[18]~13_combout\ & (\add_sub_0|Add0~37\ & VCC)) # (!\add_sub_0|temp_b[18]~13_combout\ & (!\add_sub_0|Add0~37\)))) # (!\a~combout\(18) & ((\add_sub_0|temp_b[18]~13_combout\ & 
-- (!\add_sub_0|Add0~37\)) # (!\add_sub_0|temp_b[18]~13_combout\ & ((\add_sub_0|Add0~37\) # (GND)))))
-- \add_sub_0|Add0~39\ = CARRY((\a~combout\(18) & (!\add_sub_0|temp_b[18]~13_combout\ & !\add_sub_0|Add0~37\)) # (!\a~combout\(18) & ((!\add_sub_0|Add0~37\) # (!\add_sub_0|temp_b[18]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datab => \add_sub_0|temp_b[18]~13_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~37\,
	combout => \add_sub_0|Add0~38_combout\,
	cout => \add_sub_0|Add0~39\);

-- Location: LCCOMB_X25_Y24_N22
\add_sub_0|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~40_combout\ = ((\a~combout\(19) $ (\add_sub_0|temp_b[19]~12_combout\ $ (!\add_sub_0|Add0~39\)))) # (GND)
-- \add_sub_0|Add0~41\ = CARRY((\a~combout\(19) & ((\add_sub_0|temp_b[19]~12_combout\) # (!\add_sub_0|Add0~39\))) # (!\a~combout\(19) & (\add_sub_0|temp_b[19]~12_combout\ & !\add_sub_0|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \add_sub_0|temp_b[19]~12_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~39\,
	combout => \add_sub_0|Add0~40_combout\,
	cout => \add_sub_0|Add0~41\);

-- Location: LCCOMB_X25_Y24_N24
\add_sub_0|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~42_combout\ = (\add_sub_0|temp_b[20]~11_combout\ & ((\a~combout\(20) & (\add_sub_0|Add0~41\ & VCC)) # (!\a~combout\(20) & (!\add_sub_0|Add0~41\)))) # (!\add_sub_0|temp_b[20]~11_combout\ & ((\a~combout\(20) & (!\add_sub_0|Add0~41\)) # 
-- (!\a~combout\(20) & ((\add_sub_0|Add0~41\) # (GND)))))
-- \add_sub_0|Add0~43\ = CARRY((\add_sub_0|temp_b[20]~11_combout\ & (!\a~combout\(20) & !\add_sub_0|Add0~41\)) # (!\add_sub_0|temp_b[20]~11_combout\ & ((!\add_sub_0|Add0~41\) # (!\a~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[20]~11_combout\,
	datab => \a~combout\(20),
	datad => VCC,
	cin => \add_sub_0|Add0~41\,
	combout => \add_sub_0|Add0~42_combout\,
	cout => \add_sub_0|Add0~43\);

-- Location: LCCOMB_X25_Y24_N26
\add_sub_0|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~44_combout\ = ((\add_sub_0|temp_b[21]~10_combout\ $ (\a~combout\(21) $ (!\add_sub_0|Add0~43\)))) # (GND)
-- \add_sub_0|Add0~45\ = CARRY((\add_sub_0|temp_b[21]~10_combout\ & ((\a~combout\(21)) # (!\add_sub_0|Add0~43\))) # (!\add_sub_0|temp_b[21]~10_combout\ & (\a~combout\(21) & !\add_sub_0|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[21]~10_combout\,
	datab => \a~combout\(21),
	datad => VCC,
	cin => \add_sub_0|Add0~43\,
	combout => \add_sub_0|Add0~44_combout\,
	cout => \add_sub_0|Add0~45\);

-- Location: LCCOMB_X25_Y24_N28
\add_sub_0|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~46_combout\ = (\a~combout\(22) & ((\add_sub_0|temp_b[22]~9_combout\ & (\add_sub_0|Add0~45\ & VCC)) # (!\add_sub_0|temp_b[22]~9_combout\ & (!\add_sub_0|Add0~45\)))) # (!\a~combout\(22) & ((\add_sub_0|temp_b[22]~9_combout\ & 
-- (!\add_sub_0|Add0~45\)) # (!\add_sub_0|temp_b[22]~9_combout\ & ((\add_sub_0|Add0~45\) # (GND)))))
-- \add_sub_0|Add0~47\ = CARRY((\a~combout\(22) & (!\add_sub_0|temp_b[22]~9_combout\ & !\add_sub_0|Add0~45\)) # (!\a~combout\(22) & ((!\add_sub_0|Add0~45\) # (!\add_sub_0|temp_b[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(22),
	datab => \add_sub_0|temp_b[22]~9_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~45\,
	combout => \add_sub_0|Add0~46_combout\,
	cout => \add_sub_0|Add0~47\);

-- Location: LCCOMB_X25_Y24_N30
\add_sub_0|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~48_combout\ = ((\add_sub_0|temp_b[23]~8_combout\ $ (\a~combout\(23) $ (!\add_sub_0|Add0~47\)))) # (GND)
-- \add_sub_0|Add0~49\ = CARRY((\add_sub_0|temp_b[23]~8_combout\ & ((\a~combout\(23)) # (!\add_sub_0|Add0~47\))) # (!\add_sub_0|temp_b[23]~8_combout\ & (\a~combout\(23) & !\add_sub_0|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[23]~8_combout\,
	datab => \a~combout\(23),
	datad => VCC,
	cin => \add_sub_0|Add0~47\,
	combout => \add_sub_0|Add0~48_combout\,
	cout => \add_sub_0|Add0~49\);

-- Location: LCCOMB_X25_Y23_N0
\add_sub_0|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~50_combout\ = (\add_sub_0|temp_b[24]~7_combout\ & ((\a~combout\(24) & (\add_sub_0|Add0~49\ & VCC)) # (!\a~combout\(24) & (!\add_sub_0|Add0~49\)))) # (!\add_sub_0|temp_b[24]~7_combout\ & ((\a~combout\(24) & (!\add_sub_0|Add0~49\)) # 
-- (!\a~combout\(24) & ((\add_sub_0|Add0~49\) # (GND)))))
-- \add_sub_0|Add0~51\ = CARRY((\add_sub_0|temp_b[24]~7_combout\ & (!\a~combout\(24) & !\add_sub_0|Add0~49\)) # (!\add_sub_0|temp_b[24]~7_combout\ & ((!\add_sub_0|Add0~49\) # (!\a~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[24]~7_combout\,
	datab => \a~combout\(24),
	datad => VCC,
	cin => \add_sub_0|Add0~49\,
	combout => \add_sub_0|Add0~50_combout\,
	cout => \add_sub_0|Add0~51\);

-- Location: LCCOMB_X25_Y23_N2
\add_sub_0|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~52_combout\ = ((\a~combout\(25) $ (\add_sub_0|temp_b[25]~6_combout\ $ (!\add_sub_0|Add0~51\)))) # (GND)
-- \add_sub_0|Add0~53\ = CARRY((\a~combout\(25) & ((\add_sub_0|temp_b[25]~6_combout\) # (!\add_sub_0|Add0~51\))) # (!\a~combout\(25) & (\add_sub_0|temp_b[25]~6_combout\ & !\add_sub_0|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(25),
	datab => \add_sub_0|temp_b[25]~6_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~51\,
	combout => \add_sub_0|Add0~52_combout\,
	cout => \add_sub_0|Add0~53\);

-- Location: LCCOMB_X25_Y23_N4
\add_sub_0|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~54_combout\ = (\a~combout\(26) & ((\add_sub_0|temp_b[26]~5_combout\ & (\add_sub_0|Add0~53\ & VCC)) # (!\add_sub_0|temp_b[26]~5_combout\ & (!\add_sub_0|Add0~53\)))) # (!\a~combout\(26) & ((\add_sub_0|temp_b[26]~5_combout\ & 
-- (!\add_sub_0|Add0~53\)) # (!\add_sub_0|temp_b[26]~5_combout\ & ((\add_sub_0|Add0~53\) # (GND)))))
-- \add_sub_0|Add0~55\ = CARRY((\a~combout\(26) & (!\add_sub_0|temp_b[26]~5_combout\ & !\add_sub_0|Add0~53\)) # (!\a~combout\(26) & ((!\add_sub_0|Add0~53\) # (!\add_sub_0|temp_b[26]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(26),
	datab => \add_sub_0|temp_b[26]~5_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~53\,
	combout => \add_sub_0|Add0~54_combout\,
	cout => \add_sub_0|Add0~55\);

-- Location: LCCOMB_X25_Y23_N6
\add_sub_0|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~56_combout\ = ((\a~combout\(27) $ (\add_sub_0|temp_b[27]~4_combout\ $ (!\add_sub_0|Add0~55\)))) # (GND)
-- \add_sub_0|Add0~57\ = CARRY((\a~combout\(27) & ((\add_sub_0|temp_b[27]~4_combout\) # (!\add_sub_0|Add0~55\))) # (!\a~combout\(27) & (\add_sub_0|temp_b[27]~4_combout\ & !\add_sub_0|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(27),
	datab => \add_sub_0|temp_b[27]~4_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~55\,
	combout => \add_sub_0|Add0~56_combout\,
	cout => \add_sub_0|Add0~57\);

-- Location: LCCOMB_X25_Y23_N8
\add_sub_0|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~58_combout\ = (\a~combout\(28) & ((\add_sub_0|temp_b[28]~3_combout\ & (\add_sub_0|Add0~57\ & VCC)) # (!\add_sub_0|temp_b[28]~3_combout\ & (!\add_sub_0|Add0~57\)))) # (!\a~combout\(28) & ((\add_sub_0|temp_b[28]~3_combout\ & 
-- (!\add_sub_0|Add0~57\)) # (!\add_sub_0|temp_b[28]~3_combout\ & ((\add_sub_0|Add0~57\) # (GND)))))
-- \add_sub_0|Add0~59\ = CARRY((\a~combout\(28) & (!\add_sub_0|temp_b[28]~3_combout\ & !\add_sub_0|Add0~57\)) # (!\a~combout\(28) & ((!\add_sub_0|Add0~57\) # (!\add_sub_0|temp_b[28]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(28),
	datab => \add_sub_0|temp_b[28]~3_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~57\,
	combout => \add_sub_0|Add0~58_combout\,
	cout => \add_sub_0|Add0~59\);

-- Location: LCCOMB_X25_Y23_N10
\add_sub_0|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~60_combout\ = ((\add_sub_0|temp_b[29]~2_combout\ $ (\a~combout\(29) $ (!\add_sub_0|Add0~59\)))) # (GND)
-- \add_sub_0|Add0~61\ = CARRY((\add_sub_0|temp_b[29]~2_combout\ & ((\a~combout\(29)) # (!\add_sub_0|Add0~59\))) # (!\add_sub_0|temp_b[29]~2_combout\ & (\a~combout\(29) & !\add_sub_0|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp_b[29]~2_combout\,
	datab => \a~combout\(29),
	datad => VCC,
	cin => \add_sub_0|Add0~59\,
	combout => \add_sub_0|Add0~60_combout\,
	cout => \add_sub_0|Add0~61\);

-- Location: LCCOMB_X25_Y23_N12
\add_sub_0|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~62_combout\ = (\a~combout\(30) & ((\add_sub_0|temp_b[30]~1_combout\ & (\add_sub_0|Add0~61\ & VCC)) # (!\add_sub_0|temp_b[30]~1_combout\ & (!\add_sub_0|Add0~61\)))) # (!\a~combout\(30) & ((\add_sub_0|temp_b[30]~1_combout\ & 
-- (!\add_sub_0|Add0~61\)) # (!\add_sub_0|temp_b[30]~1_combout\ & ((\add_sub_0|Add0~61\) # (GND)))))
-- \add_sub_0|Add0~63\ = CARRY((\a~combout\(30) & (!\add_sub_0|temp_b[30]~1_combout\ & !\add_sub_0|Add0~61\)) # (!\a~combout\(30) & ((!\add_sub_0|Add0~61\) # (!\add_sub_0|temp_b[30]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(30),
	datab => \add_sub_0|temp_b[30]~1_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~61\,
	combout => \add_sub_0|Add0~62_combout\,
	cout => \add_sub_0|Add0~63\);

-- Location: LCCOMB_X25_Y23_N14
\add_sub_0|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~64_combout\ = ((\a~combout\(31) $ (\add_sub_0|temp_b[31]~0_combout\ $ (!\add_sub_0|Add0~63\)))) # (GND)
-- \add_sub_0|Add0~65\ = CARRY((\a~combout\(31) & ((\add_sub_0|temp_b[31]~0_combout\) # (!\add_sub_0|Add0~63\))) # (!\a~combout\(31) & (\add_sub_0|temp_b[31]~0_combout\ & !\add_sub_0|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(31),
	datab => \add_sub_0|temp_b[31]~0_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~63\,
	combout => \add_sub_0|Add0~64_combout\,
	cout => \add_sub_0|Add0~65\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_op(4),
	combout => \op~combout\(4));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(31),
	combout => \a~combout\(31));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_op(0),
	combout => \op~combout\(0));

-- Location: LCCOMB_X24_Y23_N24
\multiplexer_0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux0~0_combout\ = (\a~combout\(31) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(31)))))) # (!\a~combout\(31) & ((\op~combout\(1) & ((\b~combout\(31)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(31),
	datac => \op~combout\(0),
	datad => \b~combout\(31),
	combout => \multiplexer_0|Mux0~0_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_op(5),
	combout => \op~combout\(5));

-- Location: LCCOMB_X24_Y23_N10
\multiplexer_0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux0~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux0~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~64_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~64_combout\,
	datab => \op~combout\(4),
	datac => \multiplexer_0|Mux0~0_combout\,
	datad => \op~combout\(5),
	combout => \multiplexer_0|Mux0~1_combout\);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(30),
	combout => \a~combout\(30));

-- Location: LCCOMB_X24_Y23_N12
\multiplexer_0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux1~0_combout\ = (\b~combout\(30) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(30)))))) # (!\b~combout\(30) & ((\op~combout\(1) & ((\a~combout\(30)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \b~combout\(30),
	datac => \op~combout\(0),
	datad => \a~combout\(30),
	combout => \multiplexer_0|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y23_N22
\multiplexer_0|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux1~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux1~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~62_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux1~0_combout\,
	datab => \add_sub_0|Add0~62_combout\,
	datac => \op~combout\(4),
	datad => \op~combout\(5),
	combout => \multiplexer_0|Mux1~1_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(29),
	combout => \b~combout\(29));

-- Location: LCCOMB_X24_Y23_N8
\multiplexer_0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux2~0_combout\ = (\b~combout\(29) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(29)))))) # (!\b~combout\(29) & ((\op~combout\(1) & ((\a~combout\(29)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \b~combout\(29),
	datac => \op~combout\(0),
	datad => \a~combout\(29),
	combout => \multiplexer_0|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y23_N2
\multiplexer_0|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux2~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux2~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & ((\add_sub_0|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(4),
	datab => \multiplexer_0|Mux2~0_combout\,
	datac => \add_sub_0|Add0~60_combout\,
	datad => \op~combout\(5),
	combout => \multiplexer_0|Mux2~1_combout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(28),
	combout => \a~combout\(28));

-- Location: LCCOMB_X24_Y23_N20
\multiplexer_0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux3~0_combout\ = (\a~combout\(28) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(28)))))) # (!\a~combout\(28) & ((\op~combout\(1) & ((\b~combout\(28)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(28),
	datac => \op~combout\(0),
	datad => \b~combout\(28),
	combout => \multiplexer_0|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y23_N14
\multiplexer_0|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux3~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux3~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & (\add_sub_0|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(4),
	datab => \add_sub_0|Add0~58_combout\,
	datac => \multiplexer_0|Mux3~0_combout\,
	datad => \op~combout\(5),
	combout => \multiplexer_0|Mux3~1_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(27),
	combout => \a~combout\(27));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_op(1),
	combout => \op~combout\(1));

-- Location: LCCOMB_X25_Y23_N22
\multiplexer_0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux4~0_combout\ = (\b~combout\(27) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(27)))))) # (!\b~combout\(27) & ((\a~combout\(27) & ((\op~combout\(1)))) # (!\a~combout\(27) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(27),
	datab => \op~combout\(0),
	datac => \a~combout\(27),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y23_N24
\multiplexer_0|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux4~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux4~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~56_combout\ & ((!\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~56_combout\,
	datab => \multiplexer_0|Mux4~0_combout\,
	datac => \op~combout\(4),
	datad => \op~combout\(5),
	combout => \multiplexer_0|Mux4~1_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(26),
	combout => \a~combout\(26));

-- Location: LCCOMB_X25_Y22_N24
\multiplexer_0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux5~0_combout\ = (\a~combout\(26) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(26)))))) # (!\a~combout\(26) & ((\op~combout\(1) & ((\b~combout\(26)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(26),
	datac => \op~combout\(0),
	datad => \b~combout\(26),
	combout => \multiplexer_0|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y24_N10
\multiplexer_0|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux5~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux5~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~54_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux5~0_combout\,
	datab => \add_sub_0|Add0~54_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux5~1_combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(25),
	combout => \a~combout\(25));

-- Location: LCCOMB_X24_Y24_N24
\multiplexer_0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux6~0_combout\ = (\b~combout\(25) & (\op~combout\(1) $ (((\a~combout\(25) & \op~combout\(0)))))) # (!\b~combout\(25) & ((\op~combout\(1) & (\a~combout\(25))) # (!\op~combout\(1) & (!\a~combout\(25) & !\op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(25),
	datab => \op~combout\(1),
	datac => \a~combout\(25),
	datad => \op~combout\(0),
	combout => \multiplexer_0|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y24_N2
\multiplexer_0|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux6~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux6~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & ((\add_sub_0|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(5),
	datab => \op~combout\(4),
	datac => \multiplexer_0|Mux6~0_combout\,
	datad => \add_sub_0|Add0~52_combout\,
	combout => \multiplexer_0|Mux6~1_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(24),
	combout => \b~combout\(24));

-- Location: LCCOMB_X25_Y23_N26
\multiplexer_0|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux7~0_combout\ = (\a~combout\(24) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(24)))))) # (!\a~combout\(24) & ((\op~combout\(1) & ((\b~combout\(24)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(24),
	datac => \op~combout\(0),
	datad => \b~combout\(24),
	combout => \multiplexer_0|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y23_N20
\multiplexer_0|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux7~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux7~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~50_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(5),
	datab => \add_sub_0|Add0~50_combout\,
	datac => \op~combout\(4),
	datad => \multiplexer_0|Mux7~0_combout\,
	combout => \multiplexer_0|Mux7~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(23),
	combout => \b~combout\(23));

-- Location: LCCOMB_X27_Y24_N12
\multiplexer_0|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux8~0_combout\ = (\a~combout\(23) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(23)))))) # (!\a~combout\(23) & ((\op~combout\(1) & ((\b~combout\(23)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(23),
	datac => \op~combout\(0),
	datad => \b~combout\(23),
	combout => \multiplexer_0|Mux8~0_combout\);

-- Location: LCCOMB_X27_Y24_N22
\multiplexer_0|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux8~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux8~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~48_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~48_combout\,
	datab => \op~combout\(4),
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux8~0_combout\,
	combout => \multiplexer_0|Mux8~1_combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(22),
	combout => \a~combout\(22));

-- Location: LCCOMB_X27_Y24_N0
\multiplexer_0|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux9~0_combout\ = (\a~combout\(22) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(22)))))) # (!\a~combout\(22) & ((\op~combout\(1) & ((\b~combout\(22)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(22),
	datac => \op~combout\(0),
	datad => \b~combout\(22),
	combout => \multiplexer_0|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y24_N18
\multiplexer_0|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux9~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux9~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~46_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux9~0_combout\,
	datab => \add_sub_0|Add0~46_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux9~1_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(21),
	combout => \b~combout\(21));

-- Location: LCCOMB_X27_Y24_N28
\multiplexer_0|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux10~0_combout\ = (\a~combout\(21) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(21)))))) # (!\a~combout\(21) & ((\op~combout\(1) & ((\b~combout\(21)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(21),
	datac => \op~combout\(0),
	datad => \b~combout\(21),
	combout => \multiplexer_0|Mux10~0_combout\);

-- Location: LCCOMB_X27_Y24_N14
\multiplexer_0|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux10~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux10~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~44_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~44_combout\,
	datab => \op~combout\(4),
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux10~0_combout\,
	combout => \multiplexer_0|Mux10~1_combout\);

-- Location: LCCOMB_X27_Y24_N24
\multiplexer_0|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux11~0_combout\ = (\b~combout\(20) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(20)))))) # (!\b~combout\(20) & ((\op~combout\(1) & ((\a~combout\(20)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(20),
	datab => \op~combout\(0),
	datac => \op~combout\(1),
	datad => \a~combout\(20),
	combout => \multiplexer_0|Mux11~0_combout\);

-- Location: LCCOMB_X27_Y24_N2
\multiplexer_0|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux11~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux11~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~42_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux11~0_combout\,
	datab => \add_sub_0|Add0~42_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux11~1_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(19),
	combout => \b~combout\(19));

-- Location: LCCOMB_X26_Y25_N22
\multiplexer_0|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux12~0_combout\ = (\a~combout\(19) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(19)))))) # (!\a~combout\(19) & ((\op~combout\(1) & ((\b~combout\(19)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(19),
	datab => \op~combout\(0),
	datac => \op~combout\(1),
	datad => \b~combout\(19),
	combout => \multiplexer_0|Mux12~0_combout\);

-- Location: LCCOMB_X26_Y25_N24
\multiplexer_0|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux12~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux12~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & (\add_sub_0|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(4),
	datab => \add_sub_0|Add0~40_combout\,
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux12~0_combout\,
	combout => \multiplexer_0|Mux12~1_combout\);

-- Location: LCCOMB_X26_Y25_N10
\multiplexer_0|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux13~0_combout\ = (\a~combout\(18) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(18)))))) # (!\a~combout\(18) & ((\b~combout\(18) & ((\op~combout\(1)))) # (!\b~combout\(18) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datab => \op~combout\(0),
	datac => \b~combout\(18),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux13~0_combout\);

-- Location: LCCOMB_X26_Y25_N4
\multiplexer_0|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux13~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux13~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~38_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~38_combout\,
	datab => \op~combout\(4),
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux13~0_combout\,
	combout => \multiplexer_0|Mux13~1_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(17),
	combout => \a~combout\(17));

-- Location: LCCOMB_X26_Y25_N6
\multiplexer_0|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux14~0_combout\ = (\b~combout\(17) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(17)))))) # (!\b~combout\(17) & ((\op~combout\(1) & ((\a~combout\(17)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \op~combout\(0),
	datac => \b~combout\(17),
	datad => \a~combout\(17),
	combout => \multiplexer_0|Mux14~0_combout\);

-- Location: LCCOMB_X26_Y25_N0
\multiplexer_0|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux14~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux14~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & (\add_sub_0|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(4),
	datab => \add_sub_0|Add0~36_combout\,
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux14~0_combout\,
	combout => \multiplexer_0|Mux14~1_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(16),
	combout => \a~combout\(16));

-- Location: LCCOMB_X26_Y25_N26
\multiplexer_0|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux15~0_combout\ = (\b~combout\(16) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(16)))))) # (!\b~combout\(16) & ((\op~combout\(1) & ((\a~combout\(16)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(16),
	datab => \op~combout\(0),
	datac => \op~combout\(1),
	datad => \a~combout\(16),
	combout => \multiplexer_0|Mux15~0_combout\);

-- Location: LCCOMB_X26_Y25_N28
\multiplexer_0|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux15~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux15~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & (\add_sub_0|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(4),
	datab => \add_sub_0|Add0~34_combout\,
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux15~0_combout\,
	combout => \multiplexer_0|Mux15~1_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LCCOMB_X25_Y22_N2
\multiplexer_0|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux16~0_combout\ = (\b~combout\(15) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(15)))))) # (!\b~combout\(15) & ((\op~combout\(1) & ((\a~combout\(15)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \b~combout\(15),
	datac => \op~combout\(0),
	datad => \a~combout\(15),
	combout => \multiplexer_0|Mux16~0_combout\);

-- Location: LCCOMB_X25_Y22_N20
\multiplexer_0|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux16~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux16~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~32_combout\ & ((!\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~32_combout\,
	datab => \multiplexer_0|Mux16~0_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux16~1_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LCCOMB_X25_Y22_N30
\multiplexer_0|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux17~0_combout\ = (\a~combout\(14) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(14)))))) # (!\a~combout\(14) & ((\b~combout\(14) & ((\op~combout\(1)))) # (!\b~combout\(14) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \a~combout\(14),
	datac => \b~combout\(14),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux17~0_combout\);

-- Location: LCCOMB_X25_Y22_N8
\multiplexer_0|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux17~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux17~0_combout\)) # (!\op~combout\(5) & (((!\op~combout\(4) & \add_sub_0|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(5),
	datab => \multiplexer_0|Mux17~0_combout\,
	datac => \op~combout\(4),
	datad => \add_sub_0|Add0~30_combout\,
	combout => \multiplexer_0|Mux17~1_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LCCOMB_X25_Y22_N26
\multiplexer_0|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux18~0_combout\ = (\a~combout\(13) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(13)))))) # (!\a~combout\(13) & ((\b~combout\(13) & ((\op~combout\(1)))) # (!\b~combout\(13) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \a~combout\(13),
	datac => \b~combout\(13),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux18~0_combout\);

-- Location: LCCOMB_X25_Y22_N12
\multiplexer_0|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux18~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux18~0_combout\)) # (!\op~combout\(5) & (((!\op~combout\(4) & \add_sub_0|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(5),
	datab => \multiplexer_0|Mux18~0_combout\,
	datac => \op~combout\(4),
	datad => \add_sub_0|Add0~28_combout\,
	combout => \multiplexer_0|Mux18~1_combout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LCCOMB_X25_Y22_N6
\multiplexer_0|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux19~0_combout\ = (\a~combout\(12) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(12)))))) # (!\a~combout\(12) & ((\op~combout\(1) & ((\b~combout\(12)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \a~combout\(12),
	datac => \op~combout\(0),
	datad => \b~combout\(12),
	combout => \multiplexer_0|Mux19~0_combout\);

-- Location: LCCOMB_X25_Y22_N16
\multiplexer_0|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux19~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux19~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~26_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux19~0_combout\,
	datab => \add_sub_0|Add0~26_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux19~1_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LCCOMB_X26_Y24_N6
\multiplexer_0|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux20~0_combout\ = (\b~combout\(11) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(11)))))) # (!\b~combout\(11) & ((\op~combout\(1) & ((\a~combout\(11)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(11),
	datab => \op~combout\(1),
	datac => \op~combout\(0),
	datad => \a~combout\(11),
	combout => \multiplexer_0|Mux20~0_combout\);

-- Location: LCCOMB_X26_Y24_N8
\multiplexer_0|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux20~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux20~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~24_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux20~0_combout\,
	datab => \add_sub_0|Add0~24_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux20~1_combout\);

-- Location: LCCOMB_X26_Y24_N26
\multiplexer_0|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux21~0_combout\ = (\a~combout\(10) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(10)))))) # (!\a~combout\(10) & ((\op~combout\(1) & ((\b~combout\(10)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datab => \op~combout\(1),
	datac => \op~combout\(0),
	datad => \b~combout\(10),
	combout => \multiplexer_0|Mux21~0_combout\);

-- Location: LCCOMB_X26_Y24_N28
\multiplexer_0|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux21~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux21~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~22_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux21~0_combout\,
	datab => \add_sub_0|Add0~22_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux21~1_combout\);

-- Location: LCCOMB_X26_Y24_N30
\multiplexer_0|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux22~0_combout\ = (\a~combout\(9) & (\op~combout\(1) $ (((\b~combout\(9) & \op~combout\(0)))))) # (!\a~combout\(9) & ((\b~combout\(9) & ((\op~combout\(1)))) # (!\b~combout\(9) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \b~combout\(9),
	datac => \op~combout\(0),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux22~0_combout\);

-- Location: LCCOMB_X26_Y24_N16
\multiplexer_0|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux22~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux22~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~20_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~20_combout\,
	datab => \op~combout\(4),
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux22~0_combout\,
	combout => \multiplexer_0|Mux22~1_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LCCOMB_X26_Y24_N2
\multiplexer_0|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux23~0_combout\ = (\a~combout\(8) & (\op~combout\(1) $ (((\b~combout\(8) & \op~combout\(0)))))) # (!\a~combout\(8) & ((\b~combout\(8) & ((\op~combout\(1)))) # (!\b~combout\(8) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \b~combout\(8),
	datac => \op~combout\(0),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux23~0_combout\);

-- Location: LCCOMB_X26_Y24_N20
\multiplexer_0|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux23~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux23~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~18_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~18_combout\,
	datab => \op~combout\(4),
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux23~0_combout\,
	combout => \multiplexer_0|Mux23~1_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X26_Y25_N30
\multiplexer_0|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux24~0_combout\ = (\a~combout\(7) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(7)))))) # (!\a~combout\(7) & ((\op~combout\(1) & ((\b~combout\(7)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \op~combout\(0),
	datac => \op~combout\(1),
	datad => \b~combout\(7),
	combout => \multiplexer_0|Mux24~0_combout\);

-- Location: LCCOMB_X26_Y25_N8
\multiplexer_0|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux24~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux24~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~16_combout\ & ((!\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~16_combout\,
	datab => \multiplexer_0|Mux24~0_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux24~1_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LCCOMB_X26_Y24_N14
\multiplexer_0|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux25~0_combout\ = (\a~combout\(6) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(6)))))) # (!\a~combout\(6) & ((\op~combout\(1) & ((\b~combout\(6)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \op~combout\(1),
	datac => \op~combout\(0),
	datad => \b~combout\(6),
	combout => \multiplexer_0|Mux25~0_combout\);

-- Location: LCCOMB_X26_Y24_N0
\multiplexer_0|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux25~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux25~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~14_combout\ & ((!\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~14_combout\,
	datab => \multiplexer_0|Mux25~0_combout\,
	datac => \op~combout\(5),
	datad => \op~combout\(4),
	combout => \multiplexer_0|Mux25~1_combout\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X25_Y22_N18
\multiplexer_0|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux26~0_combout\ = (\a~combout\(5) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(5)))))) # (!\a~combout\(5) & ((\b~combout\(5) & ((\op~combout\(1)))) # (!\b~combout\(5) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \a~combout\(5),
	datac => \b~combout\(5),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux26~0_combout\);

-- Location: LCCOMB_X25_Y22_N28
\multiplexer_0|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux26~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux26~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & ((\add_sub_0|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(5),
	datab => \op~combout\(4),
	datac => \multiplexer_0|Mux26~0_combout\,
	datad => \add_sub_0|Add0~12_combout\,
	combout => \multiplexer_0|Mux26~1_combout\);

-- Location: LCCOMB_X26_Y24_N10
\multiplexer_0|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux27~0_combout\ = (\b~combout\(4) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(4)))))) # (!\b~combout\(4) & ((\op~combout\(1) & ((\a~combout\(4)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \op~combout\(1),
	datac => \op~combout\(0),
	datad => \a~combout\(4),
	combout => \multiplexer_0|Mux27~0_combout\);

-- Location: LCCOMB_X26_Y24_N12
\multiplexer_0|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux27~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux27~0_combout\)))) # (!\op~combout\(5) & (\add_sub_0|Add0~10_combout\ & (!\op~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~10_combout\,
	datab => \op~combout\(4),
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux27~0_combout\,
	combout => \multiplexer_0|Mux27~1_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X24_Y23_N16
\multiplexer_0|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux28~0_combout\ = (\a~combout\(3) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(3)))))) # (!\a~combout\(3) & ((\op~combout\(1) & ((\b~combout\(3)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \a~combout\(3),
	datac => \op~combout\(1),
	datad => \b~combout\(3),
	combout => \multiplexer_0|Mux28~0_combout\);

-- Location: LCCOMB_X24_Y23_N18
\multiplexer_0|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux28~1_combout\ = (\op~combout\(5) & (\multiplexer_0|Mux28~0_combout\)) # (!\op~combout\(5) & (((\add_sub_0|Add0~8_combout\ & !\op~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux28~0_combout\,
	datab => \add_sub_0|Add0~8_combout\,
	datac => \op~combout\(4),
	datad => \op~combout\(5),
	combout => \multiplexer_0|Mux28~1_combout\);

-- Location: LCCOMB_X25_Y25_N12
\multiplexer_0|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux29~0_combout\ = (\b~combout\(2) & (\op~combout\(1) $ (((\op~combout\(0) & \a~combout\(2)))))) # (!\b~combout\(2) & ((\op~combout\(1) & ((\a~combout\(2)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \op~combout\(0),
	datac => \op~combout\(1),
	datad => \a~combout\(2),
	combout => \multiplexer_0|Mux29~0_combout\);

-- Location: LCCOMB_X25_Y25_N6
\multiplexer_0|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux29~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux29~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & (\add_sub_0|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(4),
	datab => \op~combout\(5),
	datac => \add_sub_0|Add0~6_combout\,
	datad => \multiplexer_0|Mux29~0_combout\,
	combout => \multiplexer_0|Mux29~1_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X26_Y25_N18
\multiplexer_0|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux30~0_combout\ = (\a~combout\(1) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(1)))))) # (!\a~combout\(1) & ((\op~combout\(1) & ((\b~combout\(1)))) # (!\op~combout\(1) & (!\op~combout\(0) & !\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \op~combout\(0),
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \multiplexer_0|Mux30~0_combout\);

-- Location: LCCOMB_X26_Y25_N12
\multiplexer_0|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux30~1_combout\ = (\op~combout\(5) & (((\multiplexer_0|Mux30~0_combout\)))) # (!\op~combout\(5) & (!\op~combout\(4) & (\add_sub_0|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(4),
	datab => \add_sub_0|Add0~4_combout\,
	datac => \op~combout\(5),
	datad => \multiplexer_0|Mux30~0_combout\,
	combout => \multiplexer_0|Mux30~1_combout\);

-- Location: LCCOMB_X25_Y23_N30
\add_sub_0|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~10_combout\ = (!\add_sub_0|Add0~56_combout\ & (!\add_sub_0|Add0~50_combout\ & (!\add_sub_0|Add0~54_combout\ & !\add_sub_0|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~56_combout\,
	datab => \add_sub_0|Add0~50_combout\,
	datac => \add_sub_0|Add0~54_combout\,
	datad => \add_sub_0|Add0~52_combout\,
	combout => \add_sub_0|Equal0~10_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_op(2),
	combout => \op~combout\(2));

-- Location: LCCOMB_X24_Y24_N26
\comparator_0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comparator_0|Mux0~0_combout\ = (\add_sub_0|Equal0~10_combout\ & ((\op~combout\(0) & (\op~combout\(1) & \op~combout\(2))) # (!\op~combout\(0) & (!\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \op~combout\(1),
	datac => \add_sub_0|Equal0~10_combout\,
	datad => \op~combout\(2),
	combout => \comparator_0|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\add_sub_0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~0_combout\ = (!\add_sub_0|Add0~58_combout\ & (!\add_sub_0|Add0~62_combout\ & (!\add_sub_0|Add0~60_combout\ & !\add_sub_0|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~58_combout\,
	datab => \add_sub_0|Add0~62_combout\,
	datac => \add_sub_0|Add0~60_combout\,
	datad => \add_sub_0|Add0~64_combout\,
	combout => \add_sub_0|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y24_N4
\add_sub_0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~1_combout\ = (!\add_sub_0|Add0~44_combout\ & !\add_sub_0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub_0|Add0~44_combout\,
	datad => \add_sub_0|Add0~42_combout\,
	combout => \add_sub_0|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y25_N14
\add_sub_0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~2_combout\ = (!\add_sub_0|Add0~38_combout\ & (!\add_sub_0|Add0~40_combout\ & (!\add_sub_0|Add0~36_combout\ & !\add_sub_0|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~38_combout\,
	datab => \add_sub_0|Add0~40_combout\,
	datac => \add_sub_0|Add0~36_combout\,
	datad => \add_sub_0|Add0~34_combout\,
	combout => \add_sub_0|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y24_N30
\add_sub_0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Equal0~3_combout\ = (!\add_sub_0|Add0~48_combout\ & (\add_sub_0|Equal0~1_combout\ & (\add_sub_0|Equal0~2_combout\ & !\add_sub_0|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add0~48_combout\,
	datab => \add_sub_0|Equal0~1_combout\,
	datac => \add_sub_0|Equal0~2_combout\,
	datad => \add_sub_0|Add0~46_combout\,
	combout => \add_sub_0|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y24_N12
\comparator_0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comparator_0|Mux0~1_combout\ = (\add_sub_0|Equal0~9_combout\ & (\comparator_0|Mux0~0_combout\ & (\add_sub_0|Equal0~0_combout\ & \add_sub_0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Equal0~9_combout\,
	datab => \comparator_0|Mux0~0_combout\,
	datac => \add_sub_0|Equal0~0_combout\,
	datad => \add_sub_0|Equal0~3_combout\,
	combout => \comparator_0|Mux0~1_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X24_Y24_N20
\multiplexer_0|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~0_combout\ = (\a~combout\(0) & (\op~combout\(1) $ (((\op~combout\(0) & \b~combout\(0)))))) # (!\a~combout\(0) & ((\b~combout\(0) & ((\op~combout\(1)))) # (!\b~combout\(0) & (!\op~combout\(0) & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \op~combout\(1),
	combout => \multiplexer_0|Mux31~0_combout\);

-- Location: LCCOMB_X24_Y24_N22
\multiplexer_0|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~1_combout\ = (!\op~combout\(4) & ((\op~combout\(5) & (\multiplexer_0|Mux31~0_combout\)) # (!\op~combout\(5) & ((\add_sub_0|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(5),
	datab => \op~combout\(4),
	datac => \multiplexer_0|Mux31~0_combout\,
	datad => \add_sub_0|Add0~2_combout\,
	combout => \multiplexer_0|Mux31~1_combout\);

-- Location: LCCOMB_X25_Y23_N16
\add_sub_0|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~66_combout\ = \add_sub_0|Add0~65\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \add_sub_0|Add0~65\,
	combout => \add_sub_0|Add0~66_combout\);

-- Location: LCCOMB_X24_Y24_N30
\comparator_0|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comparator_0|Mux0~3_combout\ = (\op~combout\(2) & ((\add_sub_0|Add0~66_combout\))) # (!\op~combout\(2) & (\comparator_0|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_0|Mux0~2_combout\,
	datac => \add_sub_0|Add0~66_combout\,
	datad => \op~combout\(2),
	combout => \comparator_0|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y24_N28
\comparator_0|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comparator_0|Mux0~6_combout\ = (\op~combout\(1) & ((\op~combout\(0) & (!\comparator_0|Mux0~5_combout\)) # (!\op~combout\(0) & ((!\comparator_0|Mux0~3_combout\))))) # (!\op~combout\(1) & (((\comparator_0|Mux0~3_combout\ & \op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_0|Mux0~5_combout\,
	datab => \op~combout\(1),
	datac => \comparator_0|Mux0~3_combout\,
	datad => \op~combout\(0),
	combout => \comparator_0|Mux0~6_combout\);

-- Location: LCCOMB_X24_Y24_N6
\multiplexer_0|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~2_combout\ = (\multiplexer_0|Mux31~1_combout\) # ((\op~combout\(4) & ((\comparator_0|Mux0~1_combout\) # (\comparator_0|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_0|Mux0~1_combout\,
	datab => \multiplexer_0|Mux31~1_combout\,
	datac => \op~combout\(4),
	datad => \comparator_0|Mux0~6_combout\,
	combout => \multiplexer_0|Mux31~2_combout\);

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(31));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(30));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(29));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(28));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(27));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(26));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(25));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(24));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(23));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(22));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(21));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(20));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(19));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(18));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(17));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(16));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(15));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(14));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(13));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(12));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(11));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(10));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(9));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(8));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(7));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(6));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(5));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \multiplexer_0|Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));
END structure;


