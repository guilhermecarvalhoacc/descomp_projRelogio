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

-- DATE "04/26/2022 17:57:32"

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
	FPGA_RESET_N : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END aula7;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|decoder|saida[4]~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|decoder|Equal8~0_combout\ : std_logic;
SIGNAL \processador|flipflop|DOUT~0_combout\ : std_logic;
SIGNAL \processador|decoder|Equal4~0_combout\ : std_logic;
SIGNAL \processador|decoder|saida[1]~1_combout\ : std_logic;
SIGNAL \dadolidoRAM[3]~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~29_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~549_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~15_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \dadolidoRAM[6]~4_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~545_combout\ : std_logic;
SIGNAL \dadolidoRAM[5]~7_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~537_combout\ : std_logic;
SIGNAL \dadolidoRAM[4]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~558_combout\ : std_logic;
SIGNAL \dadolidoRAM[3]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~554_combout\ : std_logic;
SIGNAL \dadolidoRAM[2]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~530_combout\ : std_logic;
SIGNAL \dadolidoRAM[1]~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~17_combout\ : std_logic;
SIGNAL \processador|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \processador|decoder|HabilitaA~0_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18_cout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~528_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \edgeDetector0|saidaQ~0_combout\ : std_logic;
SIGNAL \edgeDetector0|saidaQ~q\ : std_logic;
SIGNAL \edgeDetector0|saida~combout\ : std_logic;
SIGNAL \flipflop_debounceKEY0|DOUT~feeder_combout\ : std_logic;
SIGNAL \habilita_reg4bit0~1_combout\ : std_logic;
SIGNAL \limpa_leituraKEY0~0_combout\ : std_logic;
SIGNAL \flipflop_debounceKEY0|DOUT~q\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~14_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~15_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \edgeDetector1|saidaQ~0_combout\ : std_logic;
SIGNAL \edgeDetector1|saidaQ~q\ : std_logic;
SIGNAL \edgeDetector1|saida~combout\ : std_logic;
SIGNAL \flipflop_debounce_KEY1|DOUT~feeder_combout\ : std_logic;
SIGNAL \limpa_leituraKEY1~0_combout\ : std_logic;
SIGNAL \flipflop_debounce_KEY1|DOUT~q\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~531_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[4]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~30\ : std_logic;
SIGNAL \processador|ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[5]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~34\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~541_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \dadolidoRAM[7]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \processador|flipflop|DOUT~1_combout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~0_combout\ : std_logic;
SIGNAL \processador|flipflop|DOUT~2_combout\ : std_logic;
SIGNAL \processador|flipflop|DOUT~3_combout\ : std_logic;
SIGNAL \processador|flipflop|DOUT~4_combout\ : std_logic;
SIGNAL \processador|flipflop|DOUT~5_combout\ : std_logic;
SIGNAL \processador|flipflop|DOUT~q\ : std_logic;
SIGNAL \processador|MUXJMP|Equal2~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~18_combout\ : std_logic;
SIGNAL \processador|MUXJMP|Equal1~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~16_combout\ : std_logic;
SIGNAL \processador|ULA1|Equal1~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[2]~7_combout\ : std_logic;
SIGNAL \habilita_reg4bit0~0_combout\ : std_logic;
SIGNAL \REG_4bit0|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_4bit0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|decoder|saida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|MUXJMP|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \processador|MUXJMP|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \flipflop_debounceKEY0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \flipflop_debounce_KEY1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_4bit0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemoriaRAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|ULA1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_4bit0|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_habilita_reg4bit0~1_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~15_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[5]~7_combout\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[4]~6_combout\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[7]~5_combout\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[6]~4_combout\ : std_logic;
SIGNAL \edgeDetector0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \edgeDetector1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[3]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \processador|flipflop|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_limpa_leituraKEY0~0_combout\ : std_logic;
SIGNAL \ALT_INV_limpa_leituraKEY1~0_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_HabilitaA~0_combout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \ALT_INV_dadolidoRAM[3]~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|MUXJMP|ALT_INV_Equal1~0_combout\ <= NOT \processador|MUXJMP|Equal1~0_combout\;
\processador|MUXJMP|ALT_INV_Equal2~0_combout\ <= NOT \processador|MUXJMP|Equal2~0_combout\;
\processador|flipflop|ALT_INV_DOUT~q\ <= NOT \processador|flipflop|DOUT~q\;
\ROM_instrucao|ALT_INV_memROM~18_combout\ <= NOT \ROM_instrucao|memROM~18_combout\;
\ROM_instrucao|ALT_INV_memROM~17_combout\ <= NOT \ROM_instrucao|memROM~17_combout\;
\ROM_instrucao|ALT_INV_memROM~16_combout\ <= NOT \ROM_instrucao|memROM~16_combout\;
\ROM_instrucao|ALT_INV_memROM~15_combout\ <= NOT \ROM_instrucao|memROM~15_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \processador|MUX1|saida_MUX[0]~4_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \processador|MUX1|saida_MUX[0]~3_combout\;
\flipflop_debounceKEY0|ALT_INV_DOUT~q\ <= NOT \flipflop_debounceKEY0|DOUT~q\;
\processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \processador|MUX1|saida_MUX[0]~2_combout\;
\flipflop_debounce_KEY1|ALT_INV_DOUT~q\ <= NOT \flipflop_debounce_KEY1|DOUT~q\;
\processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \processador|MUX1|saida_MUX[0]~1_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX1|saida_MUX[0]~0_combout\;
\MemoriaRAM|ALT_INV_ram~528_combout\ <= NOT \MemoriaRAM|ram~528_combout\;
\MemoriaRAM|ALT_INV_ram~527_combout\ <= NOT \MemoriaRAM|ram~527_combout\;
\ROM_instrucao|ALT_INV_memROM~14_combout\ <= NOT \ROM_instrucao|memROM~14_combout\;
\ROM_instrucao|ALT_INV_memROM~13_combout\ <= NOT \ROM_instrucao|memROM~13_combout\;
\MemoriaRAM|ALT_INV_ram~23_q\ <= NOT \MemoriaRAM|ram~23_q\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\ROM_instrucao|ALT_INV_memROM~7_combout\ <= NOT \ROM_instrucao|memROM~7_combout\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\ROM_instrucao|ALT_INV_memROM~5_combout\ <= NOT \ROM_instrucao|memROM~5_combout\;
\ROM_instrucao|ALT_INV_memROM~4_combout\ <= NOT \ROM_instrucao|memROM~4_combout\;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\ROM_instrucao|ALT_INV_memROM~2_combout\ <= NOT \ROM_instrucao|memROM~2_combout\;
\ROM_instrucao|ALT_INV_memROM~1_combout\ <= NOT \ROM_instrucao|memROM~1_combout\;
\ROM_instrucao|ALT_INV_memROM~0_combout\ <= NOT \ROM_instrucao|memROM~0_combout\;
\REG_4bit0|ALT_INV_DOUT\(2) <= NOT \REG_4bit0|DOUT\(2);
\REG_4bit0|ALT_INV_DOUT\(1) <= NOT \REG_4bit0|DOUT\(1);
\REG_4bit0|ALT_INV_DOUT\(3) <= NOT \REG_4bit0|DOUT\(3);
\REG_4bit0|ALT_INV_DOUT\(0) <= NOT \REG_4bit0|DOUT\(0);
\MemoriaRAM|ALT_INV_ram~558_combout\ <= NOT \MemoriaRAM|ram~558_combout\;
\MemoriaRAM|ALT_INV_ram~554_combout\ <= NOT \MemoriaRAM|ram~554_combout\;
\MemoriaRAM|ALT_INV_ram~549_combout\ <= NOT \MemoriaRAM|ram~549_combout\;
\MemoriaRAM|ALT_INV_ram~545_combout\ <= NOT \MemoriaRAM|ram~545_combout\;
\MemoriaRAM|ALT_INV_ram~541_combout\ <= NOT \MemoriaRAM|ram~541_combout\;
\MemoriaRAM|ALT_INV_ram~537_combout\ <= NOT \MemoriaRAM|ram~537_combout\;
\processador|REGA|ALT_INV_DOUT\(4) <= NOT \processador|REGA|DOUT\(4);
\processador|REGA|ALT_INV_DOUT\(5) <= NOT \processador|REGA|DOUT\(5);
\processador|REGA|ALT_INV_DOUT\(7) <= NOT \processador|REGA|DOUT\(7);
\processador|REGA|ALT_INV_DOUT\(6) <= NOT \processador|REGA|DOUT\(6);
\processador|ULA1|ALT_INV_Add0~33_sumout\ <= NOT \processador|ULA1|Add0~33_sumout\;
\processador|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA1|Add0~29_sumout\;
\processador|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA1|Add0~25_sumout\;
\processador|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA1|Add0~21_sumout\;
\processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA1|Add0~13_sumout\;
\processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA1|Add0~9_sumout\;
\processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA1|Add0~5_sumout\;
\processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \processador|incrementaPC|Add0~33_sumout\;
\processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \processador|incrementaPC|Add0~29_sumout\;
\processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \processador|incrementaPC|Add0~25_sumout\;
\processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \processador|incrementaPC|Add0~21_sumout\;
\processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \processador|incrementaPC|Add0~17_sumout\;
\processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \processador|incrementaPC|Add0~13_sumout\;
\processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \processador|incrementaPC|Add0~9_sumout\;
\processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \processador|incrementaPC|Add0~5_sumout\;
\processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \processador|incrementaPC|Add0~1_sumout\;
\processador|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \processador|ULA1|Add0~1_sumout\;
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);
\REG_4bit0|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REG_4bit0|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[8]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_habilita_reg4bit0~1_combout\ <= NOT \habilita_reg4bit0~1_combout\;
\processador|decoder|ALT_INV_Equal4~0_combout\ <= NOT \processador|decoder|Equal4~0_combout\;
\processador|decoder|ALT_INV_saida[1]~1_combout\ <= NOT \processador|decoder|saida[1]~1_combout\;
\processador|decoder|ALT_INV_saida[4]~0_combout\ <= NOT \processador|decoder|saida[4]~0_combout\;
\processador|decoder|ALT_INV_Equal8~0_combout\ <= NOT \processador|decoder|Equal8~0_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~15_combout\ <= NOT \processador|MUX1|saida_MUX[0]~15_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~14_combout\ <= NOT \processador|MUX1|saida_MUX[0]~14_combout\;
\ALT_INV_dadolidoRAM[5]~7_combout\ <= NOT \dadolidoRAM[5]~7_combout\;
\ALT_INV_dadolidoRAM[4]~6_combout\ <= NOT \dadolidoRAM[4]~6_combout\;
\ALT_INV_dadolidoRAM[7]~5_combout\ <= NOT \dadolidoRAM[7]~5_combout\;
\ALT_INV_dadolidoRAM[6]~4_combout\ <= NOT \dadolidoRAM[6]~4_combout\;
\edgeDetector0|ALT_INV_saidaQ~q\ <= NOT \edgeDetector0|saidaQ~q\;
\edgeDetector1|ALT_INV_saidaQ~q\ <= NOT \edgeDetector1|saidaQ~q\;
\ALT_INV_dadolidoRAM[2]~3_combout\ <= NOT \dadolidoRAM[2]~3_combout\;
\ALT_INV_dadolidoRAM[1]~2_combout\ <= NOT \dadolidoRAM[1]~2_combout\;
\ALT_INV_dadolidoRAM[3]~1_combout\ <= NOT \dadolidoRAM[3]~1_combout\;
\processador|ULA1|ALT_INV_Equal1~1_combout\ <= NOT \processador|ULA1|Equal1~1_combout\;
\processador|flipflop|ALT_INV_DOUT~4_combout\ <= NOT \processador|flipflop|DOUT~4_combout\;
\processador|flipflop|ALT_INV_DOUT~3_combout\ <= NOT \processador|flipflop|DOUT~3_combout\;
\processador|flipflop|ALT_INV_DOUT~2_combout\ <= NOT \processador|flipflop|DOUT~2_combout\;
\MemoriaRAM|ALT_INV_ram~536_combout\ <= NOT \MemoriaRAM|ram~536_combout\;
\MemoriaRAM|ALT_INV_ram~27_q\ <= NOT \MemoriaRAM|ram~27_q\;
\processador|flipflop|ALT_INV_DOUT~1_combout\ <= NOT \processador|flipflop|DOUT~1_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~10_combout\ <= NOT \processador|MUX1|saida_MUX[0]~10_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~9_combout\ <= NOT \processador|MUX1|saida_MUX[0]~9_combout\;
\MemoriaRAM|ALT_INV_ram~535_combout\ <= NOT \MemoriaRAM|ram~535_combout\;
\MemoriaRAM|ALT_INV_ram~30_q\ <= NOT \MemoriaRAM|ram~30_q\;
\MemoriaRAM|ALT_INV_ram~534_combout\ <= NOT \MemoriaRAM|ram~534_combout\;
\MemoriaRAM|ALT_INV_ram~28_q\ <= NOT \MemoriaRAM|ram~28_q\;
\processador|ULA1|ALT_INV_saida[3]~0_combout\ <= NOT \processador|ULA1|saida[3]~0_combout\;
\processador|MUX1|ALT_INV_saida_MUX[6]~8_combout\ <= NOT \processador|MUX1|saida_MUX[6]~8_combout\;
\MemoriaRAM|ALT_INV_ram~533_combout\ <= NOT \MemoriaRAM|ram~533_combout\;
\MemoriaRAM|ALT_INV_ram~29_q\ <= NOT \MemoriaRAM|ram~29_q\;
\processador|flipflop|ALT_INV_DOUT~0_combout\ <= NOT \processador|flipflop|DOUT~0_combout\;
\ALT_INV_limpa_leituraKEY0~0_combout\ <= NOT \limpa_leituraKEY0~0_combout\;
\ALT_INV_limpa_leituraKEY1~0_combout\ <= NOT \limpa_leituraKEY1~0_combout\;
\processador|decoder|ALT_INV_HabilitaA~0_combout\ <= NOT \processador|decoder|HabilitaA~0_combout\;
\processador|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \processador|ULA1|Equal1~0_combout\;
\MemoriaRAM|ALT_INV_ram~532_combout\ <= NOT \MemoriaRAM|ram~532_combout\;
\MemoriaRAM|ALT_INV_ram~25_q\ <= NOT \MemoriaRAM|ram~25_q\;
\MemoriaRAM|ALT_INV_ram~531_combout\ <= NOT \MemoriaRAM|ram~531_combout\;
\MemoriaRAM|ALT_INV_ram~530_combout\ <= NOT \MemoriaRAM|ram~530_combout\;
\MemoriaRAM|ALT_INV_ram~24_q\ <= NOT \MemoriaRAM|ram~24_q\;
\MemoriaRAM|ALT_INV_ram~529_combout\ <= NOT \MemoriaRAM|ram~529_combout\;
\MemoriaRAM|ALT_INV_ram~26_q\ <= NOT \MemoriaRAM|ram~26_q\;
\ALT_INV_dadolidoRAM[3]~0_combout\ <= NOT \dadolidoRAM[3]~0_combout\;

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_binario0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X48_Y4_N11
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X48_Y4_N20
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y4_N0
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

-- Location: LABCELL_X47_Y4_N3
\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

-- Location: LABCELL_X47_Y4_N6
\processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))
-- \processador|incrementaPC|Add0~10\ = CARRY(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~6\,
	sumout => \processador|incrementaPC|Add0~9_sumout\,
	cout => \processador|incrementaPC|Add0~10\);

-- Location: FF_X48_Y4_N43
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X48_Y4_N39
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT\(2)) ) ) # ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & ((\processador|PC|DOUT\(2)))) # 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110000000000111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: LABCELL_X48_Y4_N15
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: LABCELL_X48_Y4_N6
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( 
-- !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000111100001100000011110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: LABCELL_X47_Y5_N39
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( \ROM_instrucao|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: LABCELL_X47_Y4_N9
\processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))
-- \processador|incrementaPC|Add0~14\ = CARRY(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	cin => \processador|incrementaPC|Add0~10\,
	sumout => \processador|incrementaPC|Add0~13_sumout\,
	cout => \processador|incrementaPC|Add0~14\);

-- Location: LABCELL_X47_Y4_N12
\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~14\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

-- Location: LABCELL_X48_Y4_N51
\processador|MUXJMP|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[4]~7_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (!\processador|MUXJMP|Equal2~0_combout\ & ((\processador|incrementaPC|Add0~29_sumout\))) # (\processador|MUXJMP|Equal2~0_combout\ & 
-- (\processador|MUXJMP|Equal1~0_combout\)) ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( (!\processador|MUXJMP|Equal2~0_combout\ & \processador|incrementaPC|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datab => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \processador|MUXJMP|saida_MUX[4]~7_combout\);

-- Location: FF_X48_Y4_N53
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y4_N15
\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

-- Location: LABCELL_X48_Y4_N27
\processador|MUXJMP|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[5]~6_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( (!\processador|MUXJMP|Equal2~0_combout\ & ((\processador|incrementaPC|Add0~25_sumout\))) # (\processador|MUXJMP|Equal2~0_combout\ & 
-- (\processador|MUXJMP|Equal1~0_combout\)) ) ) # ( !\ROM_instrucao|memROM~5_combout\ & ( (!\processador|MUXJMP|Equal2~0_combout\ & \processador|incrementaPC|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datab => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \processador|MUXJMP|saida_MUX[5]~6_combout\);

-- Location: FF_X48_Y4_N29
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X47_Y4_N18
\processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~22\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~21_sumout\,
	cout => \processador|incrementaPC|Add0~22\);

-- Location: LABCELL_X48_Y4_N48
\processador|MUXJMP|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[6]~5_combout\ = ( \processador|incrementaPC|Add0~21_sumout\ & ( (!\processador|MUXJMP|Equal2~0_combout\) # ((\processador|MUXJMP|Equal1~0_combout\ & \ROM_instrucao|memROM~7_combout\)) ) ) # ( 
-- !\processador|incrementaPC|Add0~21_sumout\ & ( (\processador|MUXJMP|Equal1~0_combout\ & (\processador|MUXJMP|Equal2~0_combout\ & \ROM_instrucao|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111001100110111011100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datab => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \processador|MUXJMP|saida_MUX[6]~5_combout\);

-- Location: FF_X48_Y4_N50
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: LABCELL_X47_Y4_N21
\processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~18\ = CARRY(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~17_sumout\,
	cout => \processador|incrementaPC|Add0~18\);

-- Location: LABCELL_X47_Y4_N24
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~18\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

-- Location: MLABCELL_X49_Y4_N48
\processador|MUXJMP|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[8]~8_combout\ = ( \processador|incrementaPC|Add0~33_sumout\ & ( \processador|MUXJMP|Equal2~0_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & \processador|MUXJMP|Equal1~0_combout\) ) ) ) # ( 
-- !\processador|incrementaPC|Add0~33_sumout\ & ( \processador|MUXJMP|Equal2~0_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & \processador|MUXJMP|Equal1~0_combout\) ) ) ) # ( \processador|incrementaPC|Add0~33_sumout\ & ( 
-- !\processador|MUXJMP|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datae => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	combout => \processador|MUXJMP|saida_MUX[8]~8_combout\);

-- Location: FF_X49_Y4_N49
\processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y4_N33
\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(1)))) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~13_combout\);

-- Location: LABCELL_X47_Y4_N54
\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = ( !\processador|PC|DOUT\(7) & ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[8]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5) & (\ROM_instrucao|memROM~13_combout\ & !\processador|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(6),
	datae => \processador|PC|ALT_INV_DOUT\(7),
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~14_combout\);

-- Location: LABCELL_X48_Y4_N42
\processador|MUXJMP|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[3]~3_combout\ = ( \processador|incrementaPC|Add0~13_sumout\ & ( (!\processador|MUXJMP|Equal2~0_combout\) # ((\processador|MUXJMP|Equal1~0_combout\ & \ROM_instrucao|memROM~14_combout\)) ) ) # ( 
-- !\processador|incrementaPC|Add0~13_sumout\ & ( (\processador|MUXJMP|Equal1~0_combout\ & (\processador|MUXJMP|Equal2~0_combout\ & \ROM_instrucao|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111001100110111011100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datab => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \processador|MUXJMP|saida_MUX[3]~3_combout\);

-- Location: FF_X48_Y4_N44
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y4_N30
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT[3]~DUPLICATE_q\ & \ROM_instrucao|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: LABCELL_X48_Y4_N18
\processador|MUXJMP|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[2]~2_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (\processador|incrementaPC|Add0~9_sumout\) # (\processador|MUXJMP|Equal2~0_combout\) ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( 
-- (!\processador|MUXJMP|Equal2~0_combout\ & ((\processador|incrementaPC|Add0~9_sumout\))) # (\processador|MUXJMP|Equal2~0_combout\ & (!\processador|MUXJMP|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datac => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \processador|MUXJMP|saida_MUX[2]~2_combout\);

-- Location: FF_X48_Y4_N19
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: LABCELL_X48_Y4_N33
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT\(0) & ((\processador|PC|DOUT\(2)))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & (\processador|PC|DOUT\(0) & \processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: LABCELL_X48_Y4_N54
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = (\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: LABCELL_X48_Y4_N9
\processador|MUXJMP|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[1]~1_combout\ = ( \processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|MUXJMP|Equal1~0_combout\) # ((!\processador|MUXJMP|Equal2~0_combout\) # (\ROM_instrucao|memROM~3_combout\)) ) ) # ( 
-- !\processador|incrementaPC|Add0~5_sumout\ & ( (\processador|MUXJMP|Equal2~0_combout\ & ((!\processador|MUXJMP|Equal1~0_combout\) # (\ROM_instrucao|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datac => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUXJMP|saida_MUX[1]~1_combout\);

-- Location: FF_X48_Y4_N10
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: MLABCELL_X49_Y4_N9
\processador|decoder|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida[4]~0_combout\ = ( \processador|PC|DOUT\(0) & ( (\ROM_instrucao|memROM~0_combout\ & (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(1) $ (!\processador|PC|DOUT\(2))))) ) ) # ( !\processador|PC|DOUT\(0) & ( 
-- (\ROM_instrucao|memROM~0_combout\ & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|decoder|saida[4]~0_combout\);

-- Location: FF_X48_Y4_N47
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y3_N48
\processador|decoder|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal8~0_combout\ = ( \processador|PC|DOUT\(2) & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\ROM_instrucao|memROM~0_combout\ & \processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|decoder|Equal8~0_combout\);

-- Location: LABCELL_X47_Y5_N21
\processador|flipflop|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|DOUT~0_combout\ = ( \processador|flipflop|DOUT~q\ & ( !\processador|decoder|Equal8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoder|ALT_INV_Equal8~0_combout\,
	dataf => \processador|flipflop|ALT_INV_DOUT~q\,
	combout => \processador|flipflop|DOUT~0_combout\);

-- Location: MLABCELL_X49_Y4_N21
\processador|decoder|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal4~0_combout\ = ( !\processador|PC|DOUT\(3) & ( \ROM_instrucao|memROM~0_combout\ & ( (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \processador|decoder|Equal4~0_combout\);

-- Location: LABCELL_X47_Y5_N24
\processador|decoder|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida[1]~1_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT\(2) & \processador|PC|DOUT[1]~DUPLICATE_q\)) # 
-- (\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) $ (!\processador|PC|DOUT[1]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010010000000010001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \processador|decoder|saida[1]~1_combout\);

-- Location: LABCELL_X47_Y5_N48
\dadolidoRAM[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[3]~0_combout\ = ( !\ROM_instrucao|memROM~5_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\processador|decoder|saida[1]~1_combout\ & !\ROM_instrucao|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \processador|decoder|ALT_INV_saida[1]~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \dadolidoRAM[3]~0_combout\);

-- Location: LABCELL_X47_Y3_N57
\MemoriaRAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~553_combout\ = ( !\processador|PC|DOUT\(2) & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM_instrucao|memROM~0_combout\ & (\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MemoriaRAM|ram~553_combout\);

-- Location: FF_X48_Y3_N35
\MemoriaRAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~29_q\);

-- Location: LABCELL_X48_Y4_N57
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM_instrucao|memROM~0_combout\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (((!\processador|PC|DOUT\(0) & !\processador|PC|DOUT[1]~DUPLICATE_q\))))) ) ) # ( 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\ROM_instrucao|memROM~0_combout\ & !\processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000010010001000100001001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: LABCELL_X48_Y3_N33
\MemoriaRAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~533_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\ROM_instrucao|memROM~5_combout\ & \MemoriaRAM|ram~29_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~29_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~533_combout\);

-- Location: LABCELL_X48_Y3_N27
\MemoriaRAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~549_combout\ = ( !\ROM_instrucao|memROM~14_combout\ & ( (\MemoriaRAM|ram~533_combout\ & !\ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~533_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \MemoriaRAM|ram~549_combout\);

-- Location: LABCELL_X48_Y3_N24
\processador|MUX1|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[6]~8_combout\ = ( \MemoriaRAM|ram~549_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & (\dadolidoRAM[3]~0_combout\)) # (\processador|decoder|Equal4~0_combout\ & ((\ROM_instrucao|memROM~7_combout\))) ) ) # ( 
-- !\MemoriaRAM|ram~549_combout\ & ( (\ROM_instrucao|memROM~7_combout\ & \processador|decoder|Equal4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dadolidoRAM[3]~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~549_combout\,
	combout => \processador|MUX1|saida_MUX[6]~8_combout\);

-- Location: MLABCELL_X49_Y4_N57
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: MLABCELL_X49_Y4_N0
\ROM_instrucao|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~15_combout\ = ( \processador|PC|DOUT\(2) & ( (\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~15_combout\);

-- Location: MLABCELL_X49_Y4_N15
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( \processador|PC|DOUT\(0) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( \processador|PC|DOUT\(2) ) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- !\processador|PC|DOUT\(1) & ( (\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011110000111100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: MLABCELL_X49_Y4_N33
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(0)) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT\(2)) # 
-- (!\processador|PC|DOUT\(0)) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(0)) ) ) ) # ( !\processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (\processador|PC|DOUT\(2) & 
-- \processador|PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100000000000011111111111100001111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: MLABCELL_X49_Y4_N54
\processador|decoder|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida\(5) = ( \ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~15_combout\ & (\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~0_combout\)) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( 
-- (!\ROM_instrucao|memROM~15_combout\ & (\ROM_instrucao|memROM~0_combout\ & (!\ROM_instrucao|memROM~9_combout\ $ (\ROM_instrucao|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000001000001000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \processador|decoder|saida\(5));

-- Location: FF_X48_Y5_N52
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|MUX1|saida_MUX[6]~8_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: LABCELL_X48_Y3_N0
\dadolidoRAM[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[6]~4_combout\ = ( \MemoriaRAM|ram~549_combout\ & ( \dadolidoRAM[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_dadolidoRAM[3]~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~549_combout\,
	combout => \dadolidoRAM[6]~4_combout\);

-- Location: FF_X48_Y3_N50
\MemoriaRAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~28_q\);

-- Location: LABCELL_X48_Y3_N51
\MemoriaRAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~534_combout\ = ( !\ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_ram~28_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~534_combout\);

-- Location: LABCELL_X48_Y3_N18
\MemoriaRAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~545_combout\ = ( \MemoriaRAM|ram~534_combout\ & ( (!\ROM_instrucao|memROM~14_combout\ & !\ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~534_combout\,
	combout => \MemoriaRAM|ram~545_combout\);

-- Location: LABCELL_X48_Y3_N9
\dadolidoRAM[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[5]~7_combout\ = ( \dadolidoRAM[3]~0_combout\ & ( \MemoriaRAM|ram~545_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_dadolidoRAM[3]~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~545_combout\,
	combout => \dadolidoRAM[5]~7_combout\);

-- Location: FF_X48_Y3_N56
\MemoriaRAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~27_q\);

-- Location: LABCELL_X48_Y3_N57
\MemoriaRAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~536_combout\ = ( !\ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_ram~27_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~536_combout\);

-- Location: LABCELL_X48_Y3_N12
\MemoriaRAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~537_combout\ = ( !\ROM_instrucao|memROM~3_combout\ & ( \MemoriaRAM|ram~536_combout\ & ( !\ROM_instrucao|memROM~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~536_combout\,
	combout => \MemoriaRAM|ram~537_combout\);

-- Location: LABCELL_X48_Y3_N39
\dadolidoRAM[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[4]~6_combout\ = ( \dadolidoRAM[3]~0_combout\ & ( \MemoriaRAM|ram~537_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_dadolidoRAM[3]~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~537_combout\,
	combout => \dadolidoRAM[4]~6_combout\);

-- Location: FF_X49_Y5_N32
\MemoriaRAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~26_q\);

-- Location: MLABCELL_X49_Y5_N33
\MemoriaRAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~529_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\MemoriaRAM|ram~26_q\ & !\ROM_instrucao|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~26_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~529_combout\);

-- Location: MLABCELL_X49_Y5_N42
\MemoriaRAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~558_combout\ = ( !\ROM_instrucao|memROM~14_combout\ & ( \MemoriaRAM|ram~529_combout\ & ( !\ROM_instrucao|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~529_combout\,
	combout => \MemoriaRAM|ram~558_combout\);

-- Location: MLABCELL_X49_Y5_N9
\dadolidoRAM[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[3]~1_combout\ = ( \MemoriaRAM|ram~558_combout\ & ( \dadolidoRAM[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_dadolidoRAM[3]~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~558_combout\,
	combout => \dadolidoRAM[3]~1_combout\);

-- Location: FF_X49_Y5_N29
\MemoriaRAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~25_q\);

-- Location: MLABCELL_X49_Y5_N24
\MemoriaRAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~532_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\MemoriaRAM|ram~25_q\ & !\ROM_instrucao|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~25_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~532_combout\);

-- Location: MLABCELL_X49_Y5_N57
\MemoriaRAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~554_combout\ = ( !\ROM_instrucao|memROM~3_combout\ & ( !\ROM_instrucao|memROM~14_combout\ & ( \MemoriaRAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_ram~532_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \MemoriaRAM|ram~554_combout\);

-- Location: LABCELL_X47_Y5_N9
\dadolidoRAM[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[2]~3_combout\ = ( \MemoriaRAM|ram~554_combout\ & ( \dadolidoRAM[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_dadolidoRAM[3]~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~554_combout\,
	combout => \dadolidoRAM[2]~3_combout\);

-- Location: FF_X47_Y5_N47
\MemoriaRAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~24_q\);

-- Location: LABCELL_X47_Y5_N45
\MemoriaRAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~530_combout\ = ( !\ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & \MemoriaRAM|ram~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~24_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~530_combout\);

-- Location: LABCELL_X47_Y5_N54
\dadolidoRAM[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[1]~2_combout\ = ( \MemoriaRAM|ram~530_combout\ & ( (!\ROM_instrucao|memROM~3_combout\ & (\dadolidoRAM[3]~0_combout\ & !\ROM_instrucao|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ALT_INV_dadolidoRAM[3]~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~530_combout\,
	combout => \dadolidoRAM[1]~2_combout\);

-- Location: MLABCELL_X49_Y4_N42
\ROM_instrucao|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~17_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \ROM_instrucao|memROM~17_combout\);

-- Location: LABCELL_X48_Y5_N15
\processador|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Equal1~0_combout\ = ( \ROM_instrucao|memROM~16_combout\ & ( \ROM_instrucao|memROM~18_combout\ ) ) # ( !\ROM_instrucao|memROM~16_combout\ & ( \ROM_instrucao|memROM~18_combout\ ) ) # ( \ROM_instrucao|memROM~16_combout\ & ( 
-- !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~15_combout\ ) ) ) # ( !\ROM_instrucao|memROM~16_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \processador|ULA1|Equal1~0_combout\);

-- Location: LABCELL_X48_Y5_N3
\processador|decoder|HabilitaA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|HabilitaA~0_combout\ = ( \ROM_instrucao|memROM~16_combout\ & ( !\ROM_instrucao|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	combout => \processador|decoder|HabilitaA~0_combout\);

-- Location: LABCELL_X48_Y5_N30
\processador|ULA1|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~18_cout\ = CARRY(( (!\ROM_instrucao|memROM~17_combout\ & (!\processador|ULA1|Equal1~0_combout\)) # (\ROM_instrucao|memROM~17_combout\ & (((\ROM_instrucao|memROM~16_combout\ & !\ROM_instrucao|memROM~15_combout\)))) ) + ( VCC ) + ( 
-- !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datab => \processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	cin => GND,
	cout => \processador|ULA1|Add0~18_cout\);

-- Location: LABCELL_X48_Y5_N33
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( !\processador|MUX1|saida_MUX[0]~4_combout\ $ (((!\ROM_instrucao|memROM~17_combout\ & (\processador|ULA1|Equal1~0_combout\)) # (\ROM_instrucao|memROM~17_combout\ & ((!\processador|decoder|HabilitaA~0_combout\))))) ) 
-- + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add0~18_cout\ ))
-- \processador|ULA1|Add0~2\ = CARRY(( !\processador|MUX1|saida_MUX[0]~4_combout\ $ (((!\ROM_instrucao|memROM~17_combout\ & (\processador|ULA1|Equal1~0_combout\)) # (\ROM_instrucao|memROM~17_combout\ & ((!\processador|decoder|HabilitaA~0_combout\))))) ) + ( 
-- \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000110101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datab => \processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \processador|decoder|ALT_INV_HabilitaA~0_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[0]~4_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => \processador|ULA1|Add0~18_cout\,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: FF_X48_Y5_N35
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~1_sumout\,
	asdata => \processador|MUX1|saida_MUX[0]~4_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: FF_X48_Y4_N5
\MemoriaRAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~23_q\);

-- Location: LABCELL_X48_Y4_N21
\MemoriaRAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~527_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~0_combout\ & \MemoriaRAM|ram~23_q\) ) ) # ( !\ROM_instrucao|memROM~13_combout\ & ( (\MemoriaRAM|ram~23_q\ & ((!\ROM_instrucao|memROM~2_combout\) # 
-- (!\ROM_instrucao|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~23_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~527_combout\);

-- Location: LABCELL_X48_Y5_N21
\MemoriaRAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~528_combout\ = ( \MemoriaRAM|ram~527_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & !\ROM_instrucao|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~527_combout\,
	combout => \MemoriaRAM|ram~528_combout\);

-- Location: LABCELL_X48_Y4_N36
\processador|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~3_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( (\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \processador|MUX1|saida_MUX[0]~3_combout\);

-- Location: LABCELL_X48_Y5_N24
\processador|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~1_combout\ = ( !\processador|decoder|Equal4~0_combout\ & ( !\ROM_instrucao|memROM~7_combout\ & ( (\processador|decoder|saida[1]~1_combout\ & (!\ROM_instrucao|memROM~12_combout\ & !\ROM_instrucao|memROM~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoder|ALT_INV_saida[1]~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \processador|MUX1|saida_MUX[0]~1_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X10_Y2_N51
\edgeDetector0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \edgeDetector0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \edgeDetector0|saidaQ~0_combout\);

-- Location: FF_X10_Y2_N53
\edgeDetector0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \edgeDetector0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \edgeDetector0|saidaQ~q\);

-- Location: LABCELL_X10_Y2_N0
\edgeDetector0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \edgeDetector0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\edgeDetector0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \edgeDetector0|ALT_INV_saidaQ~q\,
	combout => \edgeDetector0|saida~combout\);

-- Location: LABCELL_X47_Y4_N30
\flipflop_debounceKEY0|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipflop_debounceKEY0|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \flipflop_debounceKEY0|DOUT~feeder_combout\);

-- Location: LABCELL_X47_Y4_N39
\habilita_reg4bit0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit0~1_combout\ = ( \processador|PC|DOUT\(3) & ( (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \ROM_instrucao|memROM~0_combout\)) ) ) # ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[1]~DUPLICATE_q\ & 
-- (\ROM_instrucao|memROM~0_combout\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \habilita_reg4bit0~1_combout\);

-- Location: LABCELL_X47_Y4_N48
\limpa_leituraKEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa_leituraKEY0~0_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( (\processador|MUX1|saida_MUX[0]~3_combout\ & (\ROM_instrucao|memROM~3_combout\ & (\ROM_instrucao|memROM~14_combout\ & 
-- \habilita_reg4bit0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ALT_INV_habilita_reg4bit0~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \limpa_leituraKEY0~0_combout\);

-- Location: FF_X47_Y4_N31
\flipflop_debounceKEY0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \edgeDetector0|saida~combout\,
	d => \flipflop_debounceKEY0|DOUT~feeder_combout\,
	clrn => \ALT_INV_limpa_leituraKEY0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_debounceKEY0|DOUT~q\);

-- Location: LABCELL_X48_Y4_N0
\processador|MUX1|saida_MUX[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~14_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( \flipflop_debounceKEY0|DOUT~q\ & ( (!\processador|decoder|Equal4~0_combout\ & (\KEY[2]~input_o\ & (\processador|MUX1|saida_MUX[0]~3_combout\ & 
-- !\ROM_instrucao|memROM~1_combout\))) # (\processador|decoder|Equal4~0_combout\ & (((\ROM_instrucao|memROM~1_combout\)))) ) ) ) # ( !\ROM_instrucao|memROM~3_combout\ & ( \flipflop_debounceKEY0|DOUT~q\ & ( (!\processador|decoder|Equal4~0_combout\ & 
-- (\processador|MUX1|saida_MUX[0]~3_combout\ & !\ROM_instrucao|memROM~1_combout\)) # (\processador|decoder|Equal4~0_combout\ & ((\ROM_instrucao|memROM~1_combout\))) ) ) ) # ( \ROM_instrucao|memROM~3_combout\ & ( !\flipflop_debounceKEY0|DOUT~q\ & ( 
-- (!\processador|decoder|Equal4~0_combout\ & (\KEY[2]~input_o\ & (\processador|MUX1|saida_MUX[0]~3_combout\ & !\ROM_instrucao|memROM~1_combout\))) # (\processador|decoder|Equal4~0_combout\ & (((\ROM_instrucao|memROM~1_combout\)))) ) ) ) # ( 
-- !\ROM_instrucao|memROM~3_combout\ & ( !\flipflop_debounceKEY0|DOUT~q\ & ( (\processador|decoder|Equal4~0_combout\ & \ROM_instrucao|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000100101010100001010010101010000001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \flipflop_debounceKEY0|ALT_INV_DOUT~q\,
	combout => \processador|MUX1|saida_MUX[0]~14_combout\);

-- Location: LABCELL_X48_Y5_N18
\processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~0_combout\ = ( !\ROM_instrucao|memROM~12_combout\ & ( \processador|decoder|saida[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoder|ALT_INV_saida[1]~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \processador|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X48_Y5_N0
\processador|MUX1|saida_MUX[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~15_combout\ = ( \processador|MUX1|saida_MUX[0]~14_combout\ & ( (\processador|MUX1|saida_MUX[0]~0_combout\) # (\ROM_instrucao|memROM~1_combout\) ) ) # ( !\processador|MUX1|saida_MUX[0]~14_combout\ & ( 
-- (\ROM_instrucao|memROM~1_combout\ & \processador|MUX1|saida_MUX[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \processador|MUX1|ALT_INV_saida_MUX[0]~14_combout\,
	combout => \processador|MUX1|saida_MUX[0]~15_combout\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X10_Y1_N42
\edgeDetector1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \edgeDetector1|saidaQ~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \edgeDetector1|saidaQ~0_combout\);

-- Location: FF_X10_Y1_N44
\edgeDetector1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \edgeDetector1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \edgeDetector1|saidaQ~q\);

-- Location: LABCELL_X10_Y1_N9
\edgeDetector1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \edgeDetector1|saida~combout\ = LCELL(( !\KEY[1]~input_o\ & ( !\edgeDetector1|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \edgeDetector1|ALT_INV_saidaQ~q\,
	combout => \edgeDetector1|saida~combout\);

-- Location: LABCELL_X47_Y4_N36
\flipflop_debounce_KEY1|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipflop_debounce_KEY1|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \flipflop_debounce_KEY1|DOUT~feeder_combout\);

-- Location: LABCELL_X47_Y4_N42
\limpa_leituraKEY1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa_leituraKEY1~0_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( (\processador|MUX1|saida_MUX[0]~3_combout\ & (\ROM_instrucao|memROM~3_combout\ & (\ROM_instrucao|memROM~14_combout\ & 
-- \habilita_reg4bit0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ALT_INV_habilita_reg4bit0~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \limpa_leituraKEY1~0_combout\);

-- Location: FF_X47_Y4_N37
\flipflop_debounce_KEY1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \edgeDetector1|saida~combout\,
	d => \flipflop_debounce_KEY1|DOUT~feeder_combout\,
	clrn => \ALT_INV_limpa_leituraKEY1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop_debounce_KEY1|DOUT~q\);

-- Location: LABCELL_X47_Y5_N18
\processador|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~2_combout\ = ( \flipflop_debounce_KEY1|DOUT~q\ & ( ((!\ROM_instrucao|memROM~0_combout\) # (!\ROM_instrucao|memROM~2_combout\)) # (\KEY[3]~input_o\) ) ) # ( !\flipflop_debounce_KEY1|DOUT~q\ & ( (\KEY[3]~input_o\ & 
-- (\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \flipflop_debounce_KEY1|ALT_INV_DOUT~q\,
	combout => \processador|MUX1|saida_MUX[0]~2_combout\);

-- Location: LABCELL_X48_Y5_N6
\processador|MUX1|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~4_combout\ = ( \processador|MUX1|saida_MUX[0]~15_combout\ & ( \processador|MUX1|saida_MUX[0]~2_combout\ & ( (((\MemoriaRAM|ram~528_combout\ & \processador|MUX1|saida_MUX[0]~1_combout\)) # 
-- (\processador|MUX1|saida_MUX[0]~14_combout\)) # (\processador|MUX1|saida_MUX[0]~3_combout\) ) ) ) # ( !\processador|MUX1|saida_MUX[0]~15_combout\ & ( \processador|MUX1|saida_MUX[0]~2_combout\ & ( (!\MemoriaRAM|ram~528_combout\ & 
-- (!\processador|MUX1|saida_MUX[0]~3_combout\ & ((\processador|MUX1|saida_MUX[0]~14_combout\)))) # (\MemoriaRAM|ram~528_combout\ & (((!\processador|MUX1|saida_MUX[0]~3_combout\ & \processador|MUX1|saida_MUX[0]~14_combout\)) # 
-- (\processador|MUX1|saida_MUX[0]~1_combout\))) ) ) ) # ( \processador|MUX1|saida_MUX[0]~15_combout\ & ( !\processador|MUX1|saida_MUX[0]~2_combout\ & ( ((\MemoriaRAM|ram~528_combout\ & \processador|MUX1|saida_MUX[0]~1_combout\)) # 
-- (\processador|MUX1|saida_MUX[0]~14_combout\) ) ) ) # ( !\processador|MUX1|saida_MUX[0]~15_combout\ & ( !\processador|MUX1|saida_MUX[0]~2_combout\ & ( (!\MemoriaRAM|ram~528_combout\ & (!\processador|MUX1|saida_MUX[0]~3_combout\ & 
-- ((\processador|MUX1|saida_MUX[0]~14_combout\)))) # (\MemoriaRAM|ram~528_combout\ & (((!\processador|MUX1|saida_MUX[0]~3_combout\ & \processador|MUX1|saida_MUX[0]~14_combout\)) # (\processador|MUX1|saida_MUX[0]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011111111100000101110011010011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~528_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[0]~14_combout\,
	datae => \processador|MUX1|ALT_INV_saida_MUX[0]~15_combout\,
	dataf => \processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \processador|MUX1|saida_MUX[0]~4_combout\);

-- Location: LABCELL_X48_Y5_N36
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( \processador|REGA|DOUT\(1) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[1]~2_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~3_combout\)))) ) + ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( \processador|REGA|DOUT\(1) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[1]~2_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~3_combout\)))) ) + ( \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(1),
	dataf => \ALT_INV_dadolidoRAM[1]~2_combout\,
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: MLABCELL_X49_Y5_N18
\MemoriaRAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~531_combout\ = ( \MemoriaRAM|ram~530_combout\ & ( (!\ROM_instrucao|memROM~14_combout\ & !\ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~530_combout\,
	combout => \MemoriaRAM|ram~531_combout\);

-- Location: MLABCELL_X49_Y5_N39
\processador|MUX1|saida_MUX[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[1]~6_combout\ = ( \MemoriaRAM|ram~531_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & (\dadolidoRAM[3]~0_combout\)) # (\processador|decoder|Equal4~0_combout\ & ((\ROM_instrucao|memROM~3_combout\))) ) ) # ( 
-- !\MemoriaRAM|ram~531_combout\ & ( (\processador|decoder|Equal4~0_combout\ & \ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_dadolidoRAM[3]~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~531_combout\,
	combout => \processador|MUX1|saida_MUX[1]~6_combout\);

-- Location: FF_X48_Y5_N38
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~9_sumout\,
	asdata => \processador|MUX1|saida_MUX[1]~6_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: LABCELL_X48_Y5_N39
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[2]~3_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~12_combout\)))) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[2]~3_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~12_combout\)))) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	dataf => \ALT_INV_dadolidoRAM[2]~3_combout\,
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: LABCELL_X48_Y5_N42
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( \processador|REGA|DOUT\(3) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[3]~1_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~14_combout\)))) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( \processador|REGA|DOUT\(3) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[3]~1_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~14_combout\)))) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datab => \processador|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_dadolidoRAM[3]~1_combout\,
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: MLABCELL_X49_Y5_N15
\processador|MUX1|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[3]~5_combout\ = ( \MemoriaRAM|ram~558_combout\ & ( \dadolidoRAM[3]~0_combout\ & ( (!\processador|decoder|Equal4~0_combout\) # (\ROM_instrucao|memROM~14_combout\) ) ) ) # ( !\MemoriaRAM|ram~558_combout\ & ( 
-- \dadolidoRAM[3]~0_combout\ & ( (\processador|decoder|Equal4~0_combout\ & \ROM_instrucao|memROM~14_combout\) ) ) ) # ( \MemoriaRAM|ram~558_combout\ & ( !\dadolidoRAM[3]~0_combout\ & ( (\processador|decoder|Equal4~0_combout\ & 
-- \ROM_instrucao|memROM~14_combout\) ) ) ) # ( !\MemoriaRAM|ram~558_combout\ & ( !\dadolidoRAM[3]~0_combout\ & ( (\processador|decoder|Equal4~0_combout\ & \ROM_instrucao|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~558_combout\,
	dataf => \ALT_INV_dadolidoRAM[3]~0_combout\,
	combout => \processador|MUX1|saida_MUX[3]~5_combout\);

-- Location: FF_X48_Y5_N44
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|MUX1|saida_MUX[3]~5_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: LABCELL_X48_Y5_N45
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( \processador|REGA|DOUT\(4) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[4]~6_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~12_combout\)))) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~30\ = CARRY(( \processador|REGA|DOUT\(4) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[4]~6_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~12_combout\)))) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datab => \processador|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(4),
	dataf => \ALT_INV_dadolidoRAM[4]~6_combout\,
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~29_sumout\,
	cout => \processador|ULA1|Add0~30\);

-- Location: LABCELL_X48_Y3_N45
\processador|MUX1|saida_MUX[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[4]~13_combout\ = ( \MemoriaRAM|ram~537_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & (\dadolidoRAM[3]~0_combout\)) # (\processador|decoder|Equal4~0_combout\ & ((\ROM_instrucao|memROM~12_combout\))) ) ) # ( 
-- !\MemoriaRAM|ram~537_combout\ & ( (\ROM_instrucao|memROM~12_combout\ & \processador|decoder|Equal4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dadolidoRAM[3]~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datad => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~537_combout\,
	combout => \processador|MUX1|saida_MUX[4]~13_combout\);

-- Location: FF_X48_Y5_N46
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~29_sumout\,
	asdata => \processador|MUX1|saida_MUX[4]~13_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: LABCELL_X48_Y5_N48
\processador|ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~33_sumout\ = SUM(( \processador|REGA|DOUT\(5) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[5]~7_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~5_combout\)))) ) + ( \processador|ULA1|Add0~30\ ))
-- \processador|ULA1|Add0~34\ = CARRY(( \processador|REGA|DOUT\(5) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[5]~7_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~5_combout\)))) ) + ( \processador|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datab => \processador|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(5),
	dataf => \ALT_INV_dadolidoRAM[5]~7_combout\,
	cin => \processador|ULA1|Add0~30\,
	sumout => \processador|ULA1|Add0~33_sumout\,
	cout => \processador|ULA1|Add0~34\);

-- Location: MLABCELL_X49_Y5_N51
\processador|MUX1|saida_MUX[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[5]~12_combout\ = ( \dadolidoRAM[3]~0_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & ((\MemoriaRAM|ram~545_combout\))) # (\processador|decoder|Equal4~0_combout\ & (\ROM_instrucao|memROM~5_combout\)) ) ) # ( 
-- !\dadolidoRAM[3]~0_combout\ & ( (\processador|decoder|Equal4~0_combout\ & \ROM_instrucao|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~545_combout\,
	dataf => \ALT_INV_dadolidoRAM[3]~0_combout\,
	combout => \processador|MUX1|saida_MUX[5]~12_combout\);

-- Location: FF_X48_Y5_N49
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~33_sumout\,
	asdata => \processador|MUX1|saida_MUX[5]~12_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: LABCELL_X48_Y5_N51
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[6]~4_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~7_combout\)))) ) + ( \processador|ULA1|Add0~34\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[6]~4_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~7_combout\)))) ) + ( \processador|ULA1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datab => \processador|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	dataf => \ALT_INV_dadolidoRAM[6]~4_combout\,
	cin => \processador|ULA1|Add0~34\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: FF_X48_Y3_N32
\MemoriaRAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~30_q\);

-- Location: LABCELL_X48_Y3_N30
\MemoriaRAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~535_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\ROM_instrucao|memROM~5_combout\ & \MemoriaRAM|ram~30_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~30_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~535_combout\);

-- Location: LABCELL_X48_Y3_N3
\MemoriaRAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~541_combout\ = ( \MemoriaRAM|ram~535_combout\ & ( (!\ROM_instrucao|memROM~14_combout\ & !\ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~535_combout\,
	combout => \MemoriaRAM|ram~541_combout\);

-- Location: LABCELL_X48_Y3_N21
\processador|MUX1|saida_MUX[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[7]~11_combout\ = ( \MemoriaRAM|ram~541_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[3]~0_combout\))) # (\processador|decoder|Equal4~0_combout\ & (\ROM_instrucao|memROM~12_combout\)) ) ) # ( 
-- !\MemoriaRAM|ram~541_combout\ & ( (\ROM_instrucao|memROM~12_combout\ & \processador|decoder|Equal4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datac => \ALT_INV_dadolidoRAM[3]~0_combout\,
	datad => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~541_combout\,
	combout => \processador|MUX1|saida_MUX[7]~11_combout\);

-- Location: FF_X48_Y5_N55
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~25_sumout\,
	asdata => \processador|MUX1|saida_MUX[7]~11_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: LABCELL_X48_Y3_N42
\dadolidoRAM[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dadolidoRAM[7]~5_combout\ = ( \MemoriaRAM|ram~541_combout\ & ( \dadolidoRAM[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_dadolidoRAM[3]~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~541_combout\,
	combout => \dadolidoRAM[7]~5_combout\);

-- Location: LABCELL_X48_Y5_N54
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( \processador|REGA|DOUT\(7) ) + ( !\processador|ULA1|Equal1~1_combout\ $ (((!\processador|decoder|Equal4~0_combout\ & ((\dadolidoRAM[7]~5_combout\))) # (\processador|decoder|Equal4~0_combout\ & 
-- (\ROM_instrucao|memROM~12_combout\)))) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datac => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(7),
	dataf => \ALT_INV_dadolidoRAM[7]~5_combout\,
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\);

-- Location: LABCELL_X47_Y5_N57
\processador|MUX1|saida_MUX[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~9_combout\ = ( \flipflop_debounceKEY0|DOUT~q\ & ( ((!\ROM_instrucao|memROM~0_combout\) # (!\ROM_instrucao|memROM~2_combout\)) # (\KEY[2]~input_o\) ) ) # ( !\flipflop_debounceKEY0|DOUT~q\ & ( (\KEY[2]~input_o\ & 
-- (\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \flipflop_debounceKEY0|ALT_INV_DOUT~q\,
	combout => \processador|MUX1|saida_MUX[0]~9_combout\);

-- Location: LABCELL_X47_Y5_N30
\processador|MUX1|saida_MUX[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~10_combout\ = ( \processador|decoder|Equal4~0_combout\ & ( \processador|MUX1|saida_MUX[0]~3_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) ) ) # ( !\processador|decoder|Equal4~0_combout\ & ( 
-- \processador|MUX1|saida_MUX[0]~3_combout\ & ( (\processador|MUX1|saida_MUX[0]~0_combout\ & ((!\ROM_instrucao|memROM~1_combout\ & ((\processador|MUX1|saida_MUX[0]~9_combout\))) # (\ROM_instrucao|memROM~1_combout\ & 
-- (\processador|MUX1|saida_MUX[0]~2_combout\)))) ) ) ) # ( \processador|decoder|Equal4~0_combout\ & ( !\processador|MUX1|saida_MUX[0]~3_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000001001000110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[0]~9_combout\,
	datae => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	combout => \processador|MUX1|saida_MUX[0]~10_combout\);

-- Location: LABCELL_X47_Y5_N36
\processador|flipflop|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|DOUT~1_combout\ = ( \processador|MUX1|saida_MUX[0]~10_combout\ & ( (!\processador|decoder|saida[4]~0_combout\ & \processador|decoder|Equal8~0_combout\) ) ) # ( !\processador|MUX1|saida_MUX[0]~10_combout\ & ( 
-- (\processador|decoder|Equal8~0_combout\ & ((!\processador|decoder|saida[4]~0_combout\) # ((!\processador|MUX1|saida_MUX[0]~1_combout\) # (!\MemoriaRAM|ram~528_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010001100110011001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datab => \processador|decoder|ALT_INV_Equal8~0_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~528_combout\,
	dataf => \processador|MUX1|ALT_INV_saida_MUX[0]~10_combout\,
	combout => \processador|flipflop|DOUT~1_combout\);

-- Location: LABCELL_X47_Y5_N42
\processador|ULA1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~0_combout\ = ( \MemoriaRAM|ram~558_combout\ & ( (\processador|decoder|saida[4]~0_combout\ & ((!\processador|decoder|Equal4~0_combout\ & (\dadolidoRAM[3]~0_combout\)) # (\processador|decoder|Equal4~0_combout\ & 
-- ((\ROM_instrucao|memROM~14_combout\))))) ) ) # ( !\MemoriaRAM|ram~558_combout\ & ( (\processador|decoder|Equal4~0_combout\ & (\processador|decoder|saida[4]~0_combout\ & \ROM_instrucao|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datab => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \ALT_INV_dadolidoRAM[3]~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~558_combout\,
	combout => \processador|ULA1|saida[3]~0_combout\);

-- Location: LABCELL_X47_Y5_N27
\processador|flipflop|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|DOUT~2_combout\ = ( !\processador|ULA1|saida[3]~0_combout\ & ( \processador|flipflop|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|flipflop|ALT_INV_DOUT~1_combout\,
	dataf => \processador|ULA1|ALT_INV_saida[3]~0_combout\,
	combout => \processador|flipflop|DOUT~2_combout\);

-- Location: LABCELL_X47_Y5_N0
\processador|flipflop|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|DOUT~3_combout\ = ( \processador|ULA1|Add0~9_sumout\ & ( \processador|ULA1|Add0~13_sumout\ & ( (!\processador|MUX1|saida_MUX[6]~8_combout\ & (\processador|decoder|saida[4]~0_combout\ & \processador|flipflop|DOUT~2_combout\)) ) ) ) # 
-- ( !\processador|ULA1|Add0~9_sumout\ & ( \processador|ULA1|Add0~13_sumout\ & ( (!\processador|MUX1|saida_MUX[6]~8_combout\ & (\processador|decoder|saida[4]~0_combout\ & \processador|flipflop|DOUT~2_combout\)) ) ) ) # ( \processador|ULA1|Add0~9_sumout\ & ( 
-- !\processador|ULA1|Add0~13_sumout\ & ( (!\processador|MUX1|saida_MUX[6]~8_combout\ & (\processador|decoder|saida[4]~0_combout\ & \processador|flipflop|DOUT~2_combout\)) ) ) ) # ( !\processador|ULA1|Add0~9_sumout\ & ( !\processador|ULA1|Add0~13_sumout\ & ( 
-- (\processador|flipflop|DOUT~2_combout\ & ((!\processador|decoder|saida[4]~0_combout\ & ((!\processador|ULA1|Add0~1_sumout\))) # (\processador|decoder|saida[4]~0_combout\ & (!\processador|MUX1|saida_MUX[6]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[6]~8_combout\,
	datab => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datac => \processador|flipflop|ALT_INV_DOUT~2_combout\,
	datad => \processador|ULA1|ALT_INV_Add0~1_sumout\,
	datae => \processador|ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \processador|flipflop|DOUT~3_combout\);

-- Location: LABCELL_X47_Y5_N51
\processador|flipflop|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|DOUT~4_combout\ = ( \processador|ULA1|Add0~5_sumout\ & ( !\processador|decoder|saida[4]~0_combout\ ) ) # ( !\processador|ULA1|Add0~5_sumout\ & ( (!\processador|decoder|saida[4]~0_combout\ & ((\processador|ULA1|Add0~33_sumout\) # 
-- (\processador|ULA1|Add0~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add0~29_sumout\,
	datac => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datad => \processador|ULA1|ALT_INV_Add0~33_sumout\,
	dataf => \processador|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \processador|flipflop|DOUT~4_combout\);

-- Location: LABCELL_X47_Y5_N12
\processador|flipflop|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|flipflop|DOUT~5_combout\ = ( \processador|flipflop|DOUT~3_combout\ & ( \processador|flipflop|DOUT~4_combout\ & ( \processador|flipflop|DOUT~0_combout\ ) ) ) # ( !\processador|flipflop|DOUT~3_combout\ & ( \processador|flipflop|DOUT~4_combout\ 
-- & ( \processador|flipflop|DOUT~0_combout\ ) ) ) # ( \processador|flipflop|DOUT~3_combout\ & ( !\processador|flipflop|DOUT~4_combout\ & ( (((!\processador|ULA1|Add0~21_sumout\ & !\processador|ULA1|Add0~25_sumout\)) # 
-- (\processador|flipflop|DOUT~0_combout\)) # (\processador|decoder|saida[4]~0_combout\) ) ) ) # ( !\processador|flipflop|DOUT~3_combout\ & ( !\processador|flipflop|DOUT~4_combout\ & ( \processador|flipflop|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111101110111011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datab => \processador|flipflop|ALT_INV_DOUT~0_combout\,
	datac => \processador|ULA1|ALT_INV_Add0~21_sumout\,
	datad => \processador|ULA1|ALT_INV_Add0~25_sumout\,
	datae => \processador|flipflop|ALT_INV_DOUT~3_combout\,
	dataf => \processador|flipflop|ALT_INV_DOUT~4_combout\,
	combout => \processador|flipflop|DOUT~5_combout\);

-- Location: FF_X47_Y5_N14
\processador|flipflop|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|flipflop|DOUT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|flipflop|DOUT~q\);

-- Location: MLABCELL_X49_Y4_N39
\processador|MUXJMP|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|Equal2~0_combout\ = ( \ROM_instrucao|memROM~16_combout\ & ( (\ROM_instrucao|memROM~15_combout\ & (!\ROM_instrucao|memROM~18_combout\ $ (!\ROM_instrucao|memROM~17_combout\))) ) ) # ( !\ROM_instrucao|memROM~16_combout\ & ( 
-- (\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~15_combout\ & ((!\ROM_instrucao|memROM~17_combout\) # (\processador|flipflop|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100000000010100010000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \processador|flipflop|ALT_INV_DOUT~q\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	combout => \processador|MUXJMP|Equal2~0_combout\);

-- Location: LABCELL_X48_Y4_N45
\processador|MUXJMP|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[0]~0_combout\ = ( \processador|incrementaPC|Add0~1_sumout\ & ( (!\processador|MUXJMP|Equal1~0_combout\) # ((!\processador|MUXJMP|Equal2~0_combout\) # (\ROM_instrucao|memROM~1_combout\)) ) ) # ( 
-- !\processador|incrementaPC|Add0~1_sumout\ & ( (\processador|MUXJMP|Equal2~0_combout\ & ((!\processador|MUXJMP|Equal1~0_combout\) # (\ROM_instrucao|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datab => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \processador|MUXJMP|saida_MUX[0]~0_combout\);

-- Location: FF_X48_Y4_N46
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: MLABCELL_X49_Y4_N45
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( \processador|PC|DOUT\(1) & ( (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) $ (!\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(1) & ( (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(2) & 
-- \processador|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: MLABCELL_X49_Y4_N36
\ROM_instrucao|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~18_combout\ = ( \ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \ROM_instrucao|memROM~18_combout\);

-- Location: MLABCELL_X49_Y4_N3
\processador|MUXJMP|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|Equal1~0_combout\ = ( \ROM_instrucao|memROM~16_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~17_combout\ & \ROM_instrucao|memROM~15_combout\)) ) ) # ( !\ROM_instrucao|memROM~16_combout\ & ( 
-- (\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~15_combout\ & ((!\ROM_instrucao|memROM~17_combout\) # (\processador|flipflop|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100000000010100010000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \processador|flipflop|ALT_INV_DOUT~q\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	combout => \processador|MUXJMP|Equal1~0_combout\);

-- Location: LABCELL_X48_Y4_N24
\processador|MUXJMP|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[7]~4_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (!\processador|MUXJMP|Equal2~0_combout\ & ((\processador|incrementaPC|Add0~17_sumout\))) # (\processador|MUXJMP|Equal2~0_combout\ & 
-- (\processador|MUXJMP|Equal1~0_combout\)) ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( (!\processador|MUXJMP|Equal2~0_combout\ & \processador|incrementaPC|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUXJMP|ALT_INV_Equal1~0_combout\,
	datab => \processador|MUXJMP|ALT_INV_Equal2~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \processador|MUXJMP|saida_MUX[7]~4_combout\);

-- Location: FF_X48_Y4_N25
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: FF_X49_Y4_N50
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: FF_X48_Y4_N28
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X48_Y4_N52
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|MUXJMP|saida_MUX[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X48_Y4_N12
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT\(8) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: MLABCELL_X49_Y4_N6
\ROM_instrucao|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~16_combout\ = ( \ROM_instrucao|memROM~8_combout\ ) # ( !\ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \ROM_instrucao|memROM~16_combout\);

-- Location: MLABCELL_X49_Y4_N27
\processador|ULA1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Equal1~1_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( \ROM_instrucao|memROM~17_combout\ ) ) # ( !\ROM_instrucao|memROM~15_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~16_combout\ ) ) ) # ( 
-- \ROM_instrucao|memROM~15_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~16_combout\) # (\ROM_instrucao|memROM~18_combout\) ) ) ) # ( !\ROM_instrucao|memROM~15_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( 
-- (\ROM_instrucao|memROM~18_combout\) # (\ROM_instrucao|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111100001111111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \processador|ULA1|Equal1~1_combout\);

-- Location: MLABCELL_X49_Y5_N0
\processador|MUX1|saida_MUX[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[2]~7_combout\ = ( \dadolidoRAM[3]~0_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & (\MemoriaRAM|ram~554_combout\)) # (\processador|decoder|Equal4~0_combout\ & ((\ROM_instrucao|memROM~12_combout\))) ) ) # ( 
-- !\dadolidoRAM[3]~0_combout\ & ( (\processador|decoder|Equal4~0_combout\ & \ROM_instrucao|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~554_combout\,
	datac => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ALT_INV_dadolidoRAM[3]~0_combout\,
	combout => \processador|MUX1|saida_MUX[2]~7_combout\);

-- Location: FF_X48_Y5_N41
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|MUX1|saida_MUX[2]~7_combout\,
	sload => \processador|decoder|saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: LABCELL_X47_Y5_N6
\habilita_reg4bit0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit0~0_combout\ = ( \processador|PC|DOUT\(2) & ( (\ROM_instrucao|memROM~0_combout\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[0]~DUPLICATE_q\ & !\processador|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \habilita_reg4bit0~0_combout\);

-- Location: FF_X49_Y5_N50
\REG_4bit0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_reg4bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(2));

-- Location: FF_X49_Y5_N47
\REG_4bit0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_reg4bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(3));

-- Location: FF_X49_Y5_N55
\REG_4bit0|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X49_Y5_N13
\REG_4bit0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(0));

-- Location: MLABCELL_X49_Y5_N27
\decoder_binario0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[0]~0_combout\ = ( \REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(3) $ (\REG_4bit0|DOUT[1]~DUPLICATE_q\))) # (\REG_4bit0|DOUT\(2) & (\REG_4bit0|DOUT\(3) & !\REG_4bit0|DOUT[1]~DUPLICATE_q\)) ) ) # ( 
-- !\REG_4bit0|DOUT\(0) & ( (\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(3) & !\REG_4bit0|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(2),
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X49_Y5_N3
\decoder_binario0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[1]~1_combout\ = ( \REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT[1]~DUPLICATE_q\ & (\REG_4bit0|DOUT\(2) & !\REG_4bit0|DOUT\(3))) # (\REG_4bit0|DOUT[1]~DUPLICATE_q\ & ((\REG_4bit0|DOUT\(3)))) ) ) # ( !\REG_4bit0|DOUT\(0) & ( 
-- (\REG_4bit0|DOUT\(2) & ((\REG_4bit0|DOUT\(3)) # (\REG_4bit0|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \REG_4bit0|ALT_INV_DOUT\(3),
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X49_Y5_N36
\decoder_binario0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[2]~2_combout\ = ( \REG_4bit0|DOUT\(0) & ( (\REG_4bit0|DOUT[1]~DUPLICATE_q\ & (\REG_4bit0|DOUT\(2) & \REG_4bit0|DOUT\(3))) ) ) # ( !\REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(2) & (\REG_4bit0|DOUT[1]~DUPLICATE_q\ & 
-- !\REG_4bit0|DOUT\(3))) # (\REG_4bit0|DOUT\(2) & ((\REG_4bit0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_4bit0|ALT_INV_DOUT\(2),
	datad => \REG_4bit0|ALT_INV_DOUT\(3),
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[2]~2_combout\);

-- Location: FF_X49_Y5_N56
\REG_4bit0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(1));

-- Location: MLABCELL_X49_Y5_N30
\decoder_binario0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[3]~3_combout\ = ( \REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(3) & !\REG_4bit0|DOUT\(1))) # (\REG_4bit0|DOUT\(2) & ((\REG_4bit0|DOUT\(1)))) ) ) # ( !\REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(2) & 
-- (\REG_4bit0|DOUT\(3) & \REG_4bit0|DOUT\(1))) # (\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(3) & !\REG_4bit0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(2),
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT\(1),
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X49_Y5_N6
\decoder_binario0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[4]~4_combout\ = ( \REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(3)) # ((!\REG_4bit0|DOUT\(1) & !\REG_4bit0|DOUT\(2))) ) ) # ( !\REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(1) & (!\REG_4bit0|DOUT\(3) & \REG_4bit0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(1),
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT\(2),
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X49_Y5_N21
\decoder_binario0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[5]~5_combout\ = ( \REG_4bit0|DOUT\(0) & ( !\REG_4bit0|DOUT\(3) $ (((\REG_4bit0|DOUT\(2) & !\REG_4bit0|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(3) & 
-- \REG_4bit0|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(2),
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X49_Y5_N48
\decoder_binario0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[6]~6_combout\ = ( \REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(3) & (!\REG_4bit0|DOUT\(1) $ (\REG_4bit0|DOUT\(2)))) ) ) # ( !\REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(1) & (!\REG_4bit0|DOUT\(3) $ (\REG_4bit0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT\(1),
	datad => \REG_4bit0|ALT_INV_DOUT\(2),
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X34_Y39_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


