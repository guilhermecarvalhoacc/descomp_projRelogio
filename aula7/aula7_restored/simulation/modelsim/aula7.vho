-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/19/2022 19:05:56"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	rst : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	sevenseg1 : OUT std_logic_vector(6 DOWNTO 0);
	sevenseg2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END aula7;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg1[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg1[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg1[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg1[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg1[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg1[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg1[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg2[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg2[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg2[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg2[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg2[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg2[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevenseg2[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sevenseg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sevenseg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \processador|decoder|Equal4~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \processador|decoder|Equal4~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|decoder|saida[4]~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18_cout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|decoder|saida[4]~0_combout\ : std_logic;
SIGNAL \processador|decoder|saida[5]~1_combout\ : std_logic;
SIGNAL \habilita_reg4bit1~0_combout\ : std_logic;
SIGNAL \REG_4bit1|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoder|Equal4~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_4bit1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit1|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_4bit1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_rst <= rst;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
ww_SW <= SW;
sevenseg1 <= ww_sevenseg1;
sevenseg2 <= ww_sevenseg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REG_4bit1|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_4bit1|DOUT[0]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[8]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ROM_instrucao|ALT_INV_memROM~14_combout\ <= NOT \ROM_instrucao|memROM~14_combout\;
\ROM_instrucao|ALT_INV_memROM~13_combout\ <= NOT \ROM_instrucao|memROM~13_combout\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\processador|decoder|ALT_INV_Equal4~2_combout\ <= NOT \processador|decoder|Equal4~2_combout\;
\processador|decoder|ALT_INV_saida[4]~2_combout\ <= NOT \processador|decoder|saida[4]~2_combout\;
\processador|decoder|ALT_INV_Equal4~1_combout\ <= NOT \processador|decoder|Equal4~1_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\processador|MUX1|ALT_INV_saida_MUX[1]~3_combout\ <= NOT \processador|MUX1|saida_MUX[1]~3_combout\;
\processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \processador|MUX1|saida_MUX[2]~2_combout\;
\processador|decoder|ALT_INV_saida[4]~0_combout\ <= NOT \processador|decoder|saida[4]~0_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX1|saida_MUX[0]~0_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\ROM_instrucao|ALT_INV_memROM~5_combout\ <= NOT \ROM_instrucao|memROM~5_combout\;
\ROM_instrucao|ALT_INV_memROM~4_combout\ <= NOT \ROM_instrucao|memROM~4_combout\;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\ROM_instrucao|ALT_INV_memROM~1_combout\ <= NOT \ROM_instrucao|memROM~1_combout\;
\ROM_instrucao|ALT_INV_memROM~0_combout\ <= NOT \ROM_instrucao|memROM~0_combout\;
\REG_4bit1|ALT_INV_DOUT\(1) <= NOT \REG_4bit1|DOUT\(1);
\REG_4bit1|ALT_INV_DOUT\(2) <= NOT \REG_4bit1|DOUT\(2);
\REG_4bit1|ALT_INV_DOUT\(3) <= NOT \REG_4bit1|DOUT\(3);
\REG_4bit1|ALT_INV_DOUT\(0) <= NOT \REG_4bit1|DOUT\(0);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);

-- Location: IOOBUF_X32_Y45_N76
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X50_Y45_N53
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X38_Y45_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X54_Y20_N39
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X51_Y0_N36
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X20_Y45_N2
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X46_Y45_N59
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X50_Y45_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X54_Y20_N56
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X44_Y45_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X11_Y0_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X11_Y0_N19
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X11_Y0_N36
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X11_Y0_N53
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X10_Y0_N93
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X12_Y0_N36
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X10_Y0_N42
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X10_Y0_N59
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X10_Y0_N76
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y19_N56
\sevenseg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg1(0));

-- Location: IOOBUF_X0_Y18_N96
\sevenseg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg1(1));

-- Location: IOOBUF_X16_Y0_N93
\sevenseg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg1(2));

-- Location: IOOBUF_X14_Y0_N19
\sevenseg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg1(3));

-- Location: IOOBUF_X16_Y0_N59
\sevenseg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg1(4));

-- Location: IOOBUF_X14_Y0_N2
\sevenseg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg1(5));

-- Location: IOOBUF_X18_Y0_N53
\sevenseg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg1(6));

-- Location: IOOBUF_X0_Y19_N22
\sevenseg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg2(0));

-- Location: IOOBUF_X0_Y18_N79
\sevenseg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg2(1));

-- Location: IOOBUF_X16_Y0_N42
\sevenseg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg2(2));

-- Location: IOOBUF_X14_Y0_N53
\sevenseg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg2(3));

-- Location: IOOBUF_X16_Y0_N76
\sevenseg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg2(4));

-- Location: IOOBUF_X14_Y0_N36
\sevenseg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg2(5));

-- Location: IOOBUF_X18_Y0_N36
\sevenseg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_sevenseg2(6));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X5_Y2_N30
\processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~1_sumout\ = SUM(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|incrementaPC|Add0~2\ = CARRY(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|incrementaPC|Add0~1_sumout\,
	cout => \processador|incrementaPC|Add0~2\);

-- Location: LABCELL_X5_Y2_N33
\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

-- Location: LABCELL_X5_Y2_N21
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[0]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: LABCELL_X5_Y2_N9
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: FF_X5_Y2_N38
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM_instrucao|memROM~9_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y2_N18
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(0) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & ((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT\(3)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: LABCELL_X5_Y2_N3
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT[0]~DUPLICATE_q\ $ (((\processador|PC|DOUT\(3) & \processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000110000111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: LABCELL_X5_Y2_N15
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( \processador|PC|DOUT\(3) & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- \processador|PC|DOUT[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: LABCELL_X5_Y2_N0
\processador|decoder|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal4~0_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~3_combout\ & (!\ROM_instrucao|memROM~5_combout\ & !\ROM_instrucao|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \processador|decoder|Equal4~0_combout\);

-- Location: FF_X5_Y2_N35
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM_instrucao|memROM~7_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y2_N12
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(3) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: MLABCELL_X4_Y2_N3
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: FF_X5_Y2_N34
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM_instrucao|memROM~7_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: LABCELL_X5_Y2_N36
\processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))
-- \processador|incrementaPC|Add0~10\ = CARRY(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(2),
	cin => \processador|incrementaPC|Add0~6\,
	sumout => \processador|incrementaPC|Add0~9_sumout\,
	cout => \processador|incrementaPC|Add0~10\);

-- Location: FF_X5_Y2_N37
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM_instrucao|memROM~9_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: LABCELL_X5_Y2_N39
\processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))
-- \processador|incrementaPC|Add0~14\ = CARRY(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(3),
	cin => \processador|incrementaPC|Add0~10\,
	sumout => \processador|incrementaPC|Add0~13_sumout\,
	cout => \processador|incrementaPC|Add0~14\);

-- Location: MLABCELL_X4_Y2_N18
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X5_Y2_N41
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X5_Y2_N42
\processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))
-- \processador|incrementaPC|Add0~18\ = CARRY(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	cin => \processador|incrementaPC|Add0~14\,
	sumout => \processador|incrementaPC|Add0~17_sumout\,
	cout => \processador|incrementaPC|Add0~18\);

-- Location: FF_X5_Y2_N44
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X5_Y2_N45
\processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))
-- \processador|incrementaPC|Add0~22\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|incrementaPC|Add0~18\,
	sumout => \processador|incrementaPC|Add0~21_sumout\,
	cout => \processador|incrementaPC|Add0~22\);

-- Location: LABCELL_X5_Y2_N27
\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(3)) # (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & 
-- ((\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101010101010001000101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~14_combout\);

-- Location: FF_X5_Y2_N55
\processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM_instrucao|memROM~10_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y2_N33
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( \ROM_instrucao|memROM~14_combout\ & ( !\processador|PC|DOUT[8]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(4) & !\processador|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: FF_X5_Y2_N47
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM_instrucao|memROM~10_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X5_Y2_N48
\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

-- Location: FF_X5_Y2_N50
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: LABCELL_X5_Y2_N51
\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

-- Location: FF_X5_Y2_N53
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X5_Y2_N54
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(8),
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

-- Location: FF_X5_Y2_N56
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM_instrucao|memROM~10_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X5_Y2_N6
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(8) & (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(8),
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: LABCELL_X5_Y2_N24
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(3) & 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: LABCELL_X6_Y2_N12
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: FF_X5_Y2_N31
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: FF_X5_Y2_N32
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X5_Y2_N40
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y2_N18
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: LABCELL_X6_Y2_N15
\processador|decoder|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal4~1_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & (\ROM_instrucao|memROM~4_combout\ & \ROM_instrucao|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \processador|decoder|Equal4~1_combout\);

-- Location: IOIBUF_X18_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X6_Y2_N6
\processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~0_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~0_combout\ & ( ((!\ROM_instrucao|memROM~5_combout\ & (!\ROM_instrucao|memROM~3_combout\ & !\ROM_instrucao|memROM~4_combout\))) # (\SW[0]~input_o\) ) ) 
-- ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~0_combout\ & ( \SW[0]~input_o\ ) ) ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~0_combout\ & ( (\SW[0]~input_o\ & (((\ROM_instrucao|memROM~4_combout\) # 
-- (\ROM_instrucao|memROM~3_combout\)) # (\ROM_instrucao|memROM~5_combout\))) ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~0_combout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000101010101010101010101010101011101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \processador|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X6_Y2_N3
\processador|decoder|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida[4]~2_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~5_combout\) # (!\ROM_instrucao|memROM~1_combout\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~1_combout\) # 
-- (\ROM_instrucao|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \processador|decoder|saida[4]~2_combout\);

-- Location: LABCELL_X6_Y2_N54
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \ROM_instrucao|memROM~5_combout\ ) # ( !\ROM_instrucao|memROM~5_combout\ & ( !\ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: LABCELL_X6_Y2_N57
\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \ROM_instrucao|memROM~13_combout\);

-- Location: LABCELL_X6_Y2_N30
\processador|ULA1|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~18_cout\ = CARRY(( ((!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~12_combout\ $ (\ROM_instrucao|memROM~13_combout\)))) # (\processador|decoder|Equal4~1_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	cin => GND,
	cout => \processador|ULA1|Add0~18_cout\);

-- Location: LABCELL_X6_Y2_N33
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( !\processador|MUX1|saida_MUX[0]~0_combout\ $ (((!\processador|decoder|Equal4~1_combout\ & ((\processador|decoder|saida[4]~2_combout\) # (\ROM_instrucao|memROM~11_combout\))))) ) + ( 
-- \processador|ULA1|Add0~18_cout\ ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( !\processador|MUX1|saida_MUX[0]~0_combout\ $ (((!\processador|decoder|Equal4~1_combout\ & ((\processador|decoder|saida[4]~2_combout\) # (\ROM_instrucao|memROM~11_combout\))))) ) + ( 
-- \processador|ULA1|Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~1_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	dataf => \processador|decoder|ALT_INV_saida[4]~2_combout\,
	cin => \processador|ULA1|Add0~18_cout\,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: LABCELL_X6_Y2_N27
\processador|decoder|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida[4]~0_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( ((!\ROM_instrucao|memROM~4_combout\) # (!\ROM_instrucao|memROM~1_combout\)) # (\ROM_instrucao|memROM~3_combout\) ) ) # ( !\ROM_instrucao|memROM~5_combout\ & ( 
-- ((!\ROM_instrucao|memROM~1_combout\) # (\ROM_instrucao|memROM~4_combout\)) # (\ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \processador|decoder|saida[4]~0_combout\);

-- Location: LABCELL_X6_Y2_N24
\processador|decoder|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida[5]~1_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & \ROM_instrucao|memROM~1_combout\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & 
-- (!\ROM_instrucao|memROM~3_combout\ $ (\ROM_instrucao|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \processador|decoder|saida[5]~1_combout\);

-- Location: FF_X6_Y2_N34
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~1_sumout\,
	asdata => \processador|MUX1|saida_MUX[0]~0_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: MLABCELL_X4_Y2_N48
\habilita_reg4bit1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit1~0_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~10_combout\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \habilita_reg4bit1~0_combout\);

-- Location: FF_X4_Y2_N53
\REG_4bit1|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y2_N0
\processador|decoder|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal4~2_combout\ = ( !\ROM_instrucao|memROM~3_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~1_combout\ & !\ROM_instrucao|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \processador|decoder|Equal4~2_combout\);

-- Location: IOIBUF_X12_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X6_Y2_N48
\processador|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[2]~2_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( \SW[2]~input_o\ ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( \SW[2]~input_o\ & ( (((!\ROM_instrucao|memROM~1_combout\) # (\ROM_instrucao|memROM~3_combout\)) # 
-- (\ROM_instrucao|memROM~4_combout\)) # (\ROM_instrucao|memROM~5_combout\) ) ) ) # ( \ROM_instrucao|memROM~8_combout\ & ( !\SW[2]~input_o\ & ( (!\ROM_instrucao|memROM~5_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000011110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \processador|MUX1|saida_MUX[2]~2_combout\);

-- Location: IOIBUF_X12_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X6_Y2_N51
\processador|MUX1|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[1]~3_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \SW[1]~input_o\ ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( \SW[1]~input_o\ & ( (((!\ROM_instrucao|memROM~1_combout\) # (\ROM_instrucao|memROM~3_combout\)) # 
-- (\ROM_instrucao|memROM~4_combout\)) # (\ROM_instrucao|memROM~5_combout\) ) ) ) # ( \ROM_instrucao|memROM~6_combout\ & ( !\SW[1]~input_o\ & ( (!\ROM_instrucao|memROM~5_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~3_combout\ & 
-- \ROM_instrucao|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000011111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \processador|MUX1|saida_MUX[1]~3_combout\);

-- Location: LABCELL_X6_Y2_N36
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( \processador|REGA|DOUT\(1) ) + ( !\processador|MUX1|saida_MUX[1]~3_combout\ $ (((!\processador|decoder|Equal4~1_combout\ & ((\processador|decoder|saida[4]~2_combout\) # (\ROM_instrucao|memROM~11_combout\))))) ) + 
-- ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( \processador|REGA|DOUT\(1) ) + ( !\processador|MUX1|saida_MUX[1]~3_combout\ $ (((!\processador|decoder|Equal4~1_combout\ & ((\processador|decoder|saida[4]~2_combout\) # (\ROM_instrucao|memROM~11_combout\))))) ) + ( 
-- \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~1_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[1]~3_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(1),
	dataf => \processador|decoder|ALT_INV_saida[4]~2_combout\,
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: FF_X6_Y2_N37
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|MUX1|saida_MUX[1]~3_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: LABCELL_X6_Y2_N39
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( !\processador|MUX1|saida_MUX[2]~2_combout\ $ (((!\processador|decoder|Equal4~1_combout\ & ((\processador|decoder|saida[4]~2_combout\) # (\ROM_instrucao|memROM~11_combout\))))) ) + ( 
-- \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( !\processador|MUX1|saida_MUX[2]~2_combout\ $ (((!\processador|decoder|Equal4~1_combout\ & ((\processador|decoder|saida[4]~2_combout\) # (\ROM_instrucao|memROM~11_combout\))))) ) + ( 
-- \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~1_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	dataf => \processador|decoder|ALT_INV_saida[4]~2_combout\,
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: FF_X6_Y2_N40
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~9_sumout\,
	asdata => \processador|MUX1|saida_MUX[2]~2_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: LABCELL_X6_Y2_N42
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( \processador|REGA|DOUT\(3) ) + ( (!\processador|decoder|Equal4~2_combout\ & (!\SW[3]~input_o\ $ (((!\processador|decoder|Equal4~1_combout\ & \processador|decoder|saida[4]~0_combout\))))) # 
-- (\processador|decoder|Equal4~2_combout\ & (((!\processador|decoder|saida[4]~0_combout\)) # (\processador|decoder|Equal4~1_combout\))) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~1_combout\,
	datac => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_SW[3]~input_o\,
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~5_sumout\);

-- Location: LABCELL_X6_Y2_N21
\processador|MUX1|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[3]~1_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \SW[3]~input_o\ ) ) # ( !\ROM_instrucao|memROM~5_combout\ & ( (\SW[3]~input_o\ & ((!\ROM_instrucao|memROM~1_combout\) # ((\ROM_instrucao|memROM~4_combout\) # 
-- (\ROM_instrucao|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \processador|MUX1|saida_MUX[3]~1_combout\);

-- Location: FF_X6_Y2_N43
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|MUX1|saida_MUX[3]~1_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: FF_X4_Y2_N32
\REG_4bit1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(3));

-- Location: FF_X4_Y2_N50
\REG_4bit1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(1));

-- Location: FF_X4_Y2_N35
\REG_4bit1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(2));

-- Location: MLABCELL_X4_Y2_N12
\decoder_binario1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[0]~0_combout\ = ( \REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT[0]~DUPLICATE_q\ $ (\REG_4bit1|DOUT\(3)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit1|DOUT\(3) $ 
-- (\REG_4bit1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(1),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X4_Y2_N45
\decoder_binario1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[1]~1_combout\ = ( \REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT\(3) $ (!\REG_4bit1|DOUT[0]~DUPLICATE_q\))) # (\REG_4bit1|DOUT\(1) & ((!\REG_4bit1|DOUT[0]~DUPLICATE_q\) # (\REG_4bit1|DOUT\(3)))) ) ) # ( 
-- !\REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT\(1) & (\REG_4bit1|DOUT\(3) & \REG_4bit1|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(1),
	datac => \REG_4bit1|ALT_INV_DOUT\(3),
	datad => \REG_4bit1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X4_Y2_N36
\decoder_binario1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[2]~2_combout\ = ( \REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT\(3) & ((!\REG_4bit1|DOUT[0]~DUPLICATE_q\) # (\REG_4bit1|DOUT\(1)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit1|DOUT\(3) & 
-- \REG_4bit1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(1),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X4_Y2_N6
\decoder_binario1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[3]~3_combout\ = ( \REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(1))) # (\REG_4bit1|DOUT[0]~DUPLICATE_q\ & ((\REG_4bit1|DOUT\(1)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( 
-- (!\REG_4bit1|DOUT[0]~DUPLICATE_q\ & (\REG_4bit1|DOUT\(3) & \REG_4bit1|DOUT\(1))) # (\REG_4bit1|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(1),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[3]~3_combout\);

-- Location: FF_X4_Y2_N52
\REG_4bit1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(0));

-- Location: MLABCELL_X4_Y2_N27
\decoder_binario1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[4]~4_combout\ = ( \REG_4bit1|DOUT\(1) & ( (\REG_4bit1|DOUT\(0) & !\REG_4bit1|DOUT\(3)) ) ) # ( !\REG_4bit1|DOUT\(1) & ( (!\REG_4bit1|DOUT\(2) & (\REG_4bit1|DOUT\(0))) # (\REG_4bit1|DOUT\(2) & ((!\REG_4bit1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(2),
	datab => \REG_4bit1|ALT_INV_DOUT\(0),
	datac => \REG_4bit1|ALT_INV_DOUT\(3),
	dataf => \REG_4bit1|ALT_INV_DOUT\(1),
	combout => \decoder_binario1|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X4_Y2_N54
\decoder_binario1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[5]~5_combout\ = ( \REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit1|DOUT\(3) $ (!\REG_4bit1|DOUT\(1)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(3) & ((\REG_4bit1|DOUT\(1)) # 
-- (\REG_4bit1|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(1),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X4_Y2_N24
\decoder_binario1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[6]~6_combout\ = ( \REG_4bit1|DOUT\(3) & ( (\REG_4bit1|DOUT\(2) & (!\REG_4bit1|DOUT\(0) & !\REG_4bit1|DOUT\(1))) ) ) # ( !\REG_4bit1|DOUT\(3) & ( (!\REG_4bit1|DOUT\(2) & ((!\REG_4bit1|DOUT\(1)))) # (\REG_4bit1|DOUT\(2) & 
-- (\REG_4bit1|DOUT\(0) & \REG_4bit1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000110100001101000011010000101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(2),
	datab => \REG_4bit1|ALT_INV_DOUT\(0),
	datac => \REG_4bit1|ALT_INV_DOUT\(1),
	dataf => \REG_4bit1|ALT_INV_DOUT\(3),
	combout => \decoder_binario1|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X36_Y45_N52
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X40_Y0_N58
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X50_Y45_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X48_Y0_N92
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X48_Y0_N75
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X44_Y45_N35
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X52_Y45_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X36_Y45_N1
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X14_Y45_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X10_Y45_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);
END structure;


