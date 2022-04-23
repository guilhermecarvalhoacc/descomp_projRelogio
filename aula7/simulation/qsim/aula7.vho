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

-- DATE "04/23/2022 11:35:28"

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
	HabilitaRam : OUT std_logic;
	read_ram : OUT std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	ulaB_verifica : OUT std_logic_vector(7 DOWNTO 0);
	ulaA_verifica : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	dbgInstructionROM : OUT std_logic_vector(12 DOWNTO 0);
	dbgEntradaRAM : OUT std_logic_vector(7 DOWNTO 0);
	dbgSaidaRAM : OUT std_logic_vector(7 DOWNTO 0)
	);
END aula7;

-- Design Ports Information
-- HabilitaRam	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_ram	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[6]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[12]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_HabilitaRam : std_logic;
SIGNAL ww_read_ram : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ulaB_verifica : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ulaA_verifica : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dbgInstructionROM : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_dbgEntradaRAM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbgSaidaRAM : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \processador|decoder|Equal4~1_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \processador|decoder|Equal4~2_combout\ : std_logic;
SIGNAL \processador|decoder|Equal4~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|dado_out~0_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|decoder|saida[4]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|decoder|saida[4]~0_combout\ : std_logic;
SIGNAL \processador|decoder|HabilitaA~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~559_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~564_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~567_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~565_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~566_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~560_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~562_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~563_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~561_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~15_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~529_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~16feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~16_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~534_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~17_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[3]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~42feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~18_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~542_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[4]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~19_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~545_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~20_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~44feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~550_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~21_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[7]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~22_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~558_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_end|Equal7~0_combout\ : std_logic;
SIGNAL \decoder_end|Equal7~1_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoder_end|Equal7~2_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoder_end|Equal7~3_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoder_end|Equal7~4_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoder_end|Equal7~5_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoder_end|Equal7~6_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \processador|decoder|saida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \REG_4bit4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_4bit0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_4bit1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MemoriaRAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_HabilitaA~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \REG_4bit5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemoriaRAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_dado_out[7]~11_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_dado_out[4]~10_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_dado_out[3]~9_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \decoder_end|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \processador|decoder|ALT_INV_saida[4]~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
HabilitaRam <= ww_HabilitaRam;
read_ram <= ww_read_ram;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
ulaB_verifica <= ww_ulaB_verifica;
ulaA_verifica <= ww_ulaA_verifica;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
dbgInstructionROM <= ww_dbgInstructionROM;
dbgEntradaRAM <= ww_dbgEntradaRAM;
dbgSaidaRAM <= ww_dbgSaidaRAM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|REGA|ALT_INV_DOUT\(7) <= NOT \processador|REGA|DOUT\(7);
\processador|REGA|ALT_INV_DOUT\(5) <= NOT \processador|REGA|DOUT\(5);
\processador|REGA|ALT_INV_DOUT\(4) <= NOT \processador|REGA|DOUT\(4);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
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
\MemoriaRAM|ALT_INV_ram~60_q\ <= NOT \MemoriaRAM|ram~60_q\;
\MemoriaRAM|ALT_INV_ram~28_q\ <= NOT \MemoriaRAM|ram~28_q\;
\MemoriaRAM|ALT_INV_ram~545_combout\ <= NOT \MemoriaRAM|ram~545_combout\;
\MemoriaRAM|ALT_INV_ram~544_combout\ <= NOT \MemoriaRAM|ram~544_combout\;
\MemoriaRAM|ALT_INV_ram~67_q\ <= NOT \MemoriaRAM|ram~67_q\;
\MemoriaRAM|ALT_INV_ram~75_q\ <= NOT \MemoriaRAM|ram~75_q\;
\MemoriaRAM|ALT_INV_ram~51_q\ <= NOT \MemoriaRAM|ram~51_q\;
\MemoriaRAM|ALT_INV_ram~59_q\ <= NOT \MemoriaRAM|ram~59_q\;
\MemoriaRAM|ALT_INV_ram~543_combout\ <= NOT \MemoriaRAM|ram~543_combout\;
\MemoriaRAM|ALT_INV_ram~35_q\ <= NOT \MemoriaRAM|ram~35_q\;
\MemoriaRAM|ALT_INV_ram~43_q\ <= NOT \MemoriaRAM|ram~43_q\;
\MemoriaRAM|ALT_INV_ram~19_q\ <= NOT \MemoriaRAM|ram~19_q\;
\MemoriaRAM|ALT_INV_ram~27_q\ <= NOT \MemoriaRAM|ram~27_q\;
\MemoriaRAM|ALT_INV_ram~542_combout\ <= NOT \MemoriaRAM|ram~542_combout\;
\MemoriaRAM|ALT_INV_ram~541_combout\ <= NOT \MemoriaRAM|ram~541_combout\;
\MemoriaRAM|ALT_INV_ram~66_q\ <= NOT \MemoriaRAM|ram~66_q\;
\MemoriaRAM|ALT_INV_ram~34_q\ <= NOT \MemoriaRAM|ram~34_q\;
\MemoriaRAM|ALT_INV_ram~540_combout\ <= NOT \MemoriaRAM|ram~540_combout\;
\MemoriaRAM|ALT_INV_ram~74_q\ <= NOT \MemoriaRAM|ram~74_q\;
\MemoriaRAM|ALT_INV_ram~42_q\ <= NOT \MemoriaRAM|ram~42_q\;
\MemoriaRAM|ALT_INV_ram~539_combout\ <= NOT \MemoriaRAM|ram~539_combout\;
\MemoriaRAM|ALT_INV_ram~50_q\ <= NOT \MemoriaRAM|ram~50_q\;
\MemoriaRAM|ALT_INV_ram~18_q\ <= NOT \MemoriaRAM|ram~18_q\;
\MemoriaRAM|ALT_INV_ram~538_combout\ <= NOT \MemoriaRAM|ram~538_combout\;
\MemoriaRAM|ALT_INV_ram~58_q\ <= NOT \MemoriaRAM|ram~58_q\;
\MemoriaRAM|ALT_INV_ram~26_q\ <= NOT \MemoriaRAM|ram~26_q\;
\processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \processador|MUX1|saida_MUX[2]~2_combout\;
\MemoriaRAM|ALT_INV_ram~537_combout\ <= NOT \MemoriaRAM|ram~537_combout\;
\MemoriaRAM|ALT_INV_ram~536_combout\ <= NOT \MemoriaRAM|ram~536_combout\;
\MemoriaRAM|ALT_INV_ram~65_q\ <= NOT \MemoriaRAM|ram~65_q\;
\MemoriaRAM|ALT_INV_ram~73_q\ <= NOT \MemoriaRAM|ram~73_q\;
\MemoriaRAM|ALT_INV_ram~49_q\ <= NOT \MemoriaRAM|ram~49_q\;
\MemoriaRAM|ALT_INV_ram~57_q\ <= NOT \MemoriaRAM|ram~57_q\;
\MemoriaRAM|ALT_INV_ram~535_combout\ <= NOT \MemoriaRAM|ram~535_combout\;
\MemoriaRAM|ALT_INV_ram~33_q\ <= NOT \MemoriaRAM|ram~33_q\;
\MemoriaRAM|ALT_INV_ram~41_q\ <= NOT \MemoriaRAM|ram~41_q\;
\MemoriaRAM|ALT_INV_ram~17_q\ <= NOT \MemoriaRAM|ram~17_q\;
\MemoriaRAM|ALT_INV_ram~25_q\ <= NOT \MemoriaRAM|ram~25_q\;
\processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \processador|MUX1|saida_MUX[1]~1_combout\;
\MemoriaRAM|ALT_INV_ram~534_combout\ <= NOT \MemoriaRAM|ram~534_combout\;
\MemoriaRAM|ALT_INV_ram~533_combout\ <= NOT \MemoriaRAM|ram~533_combout\;
\MemoriaRAM|ALT_INV_ram~64_q\ <= NOT \MemoriaRAM|ram~64_q\;
\MemoriaRAM|ALT_INV_ram~32_q\ <= NOT \MemoriaRAM|ram~32_q\;
\MemoriaRAM|ALT_INV_ram~532_combout\ <= NOT \MemoriaRAM|ram~532_combout\;
\MemoriaRAM|ALT_INV_ram~72_q\ <= NOT \MemoriaRAM|ram~72_q\;
\MemoriaRAM|ALT_INV_ram~40_q\ <= NOT \MemoriaRAM|ram~40_q\;
\MemoriaRAM|ALT_INV_ram~531_combout\ <= NOT \MemoriaRAM|ram~531_combout\;
\MemoriaRAM|ALT_INV_ram~48_q\ <= NOT \MemoriaRAM|ram~48_q\;
\MemoriaRAM|ALT_INV_ram~16_q\ <= NOT \MemoriaRAM|ram~16_q\;
\MemoriaRAM|ALT_INV_ram~530_combout\ <= NOT \MemoriaRAM|ram~530_combout\;
\MemoriaRAM|ALT_INV_ram~56_q\ <= NOT \MemoriaRAM|ram~56_q\;
\MemoriaRAM|ALT_INV_ram~24_q\ <= NOT \MemoriaRAM|ram~24_q\;
\processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX1|saida_MUX[0]~0_combout\;
\MemoriaRAM|ALT_INV_dado_out~0_combout\ <= NOT \MemoriaRAM|dado_out~0_combout\;
\MemoriaRAM|ALT_INV_ram~529_combout\ <= NOT \MemoriaRAM|ram~529_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\MemoriaRAM|ALT_INV_ram~528_combout\ <= NOT \MemoriaRAM|ram~528_combout\;
\MemoriaRAM|ALT_INV_ram~63_q\ <= NOT \MemoriaRAM|ram~63_q\;
\MemoriaRAM|ALT_INV_ram~71_q\ <= NOT \MemoriaRAM|ram~71_q\;
\MemoriaRAM|ALT_INV_ram~47_q\ <= NOT \MemoriaRAM|ram~47_q\;
\MemoriaRAM|ALT_INV_ram~55_q\ <= NOT \MemoriaRAM|ram~55_q\;
\MemoriaRAM|ALT_INV_ram~527_combout\ <= NOT \MemoriaRAM|ram~527_combout\;
\ROM_instrucao|ALT_INV_memROM~7_combout\ <= NOT \ROM_instrucao|memROM~7_combout\;
\MemoriaRAM|ALT_INV_ram~31_q\ <= NOT \MemoriaRAM|ram~31_q\;
\MemoriaRAM|ALT_INV_ram~39_q\ <= NOT \MemoriaRAM|ram~39_q\;
\MemoriaRAM|ALT_INV_ram~15_q\ <= NOT \MemoriaRAM|ram~15_q\;
\MemoriaRAM|ALT_INV_ram~23_q\ <= NOT \MemoriaRAM|ram~23_q\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\processador|decoder|ALT_INV_Equal4~0_combout\ <= NOT \processador|decoder|Equal4~0_combout\;
\processador|decoder|ALT_INV_HabilitaA~0_combout\ <= NOT \processador|decoder|HabilitaA~0_combout\;
\ROM_instrucao|ALT_INV_memROM~5_combout\ <= NOT \ROM_instrucao|memROM~5_combout\;
\ROM_instrucao|ALT_INV_memROM~4_combout\ <= NOT \ROM_instrucao|memROM~4_combout\;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\ROM_instrucao|ALT_INV_memROM~2_combout\ <= NOT \ROM_instrucao|memROM~2_combout\;
\ROM_instrucao|ALT_INV_memROM~1_combout\ <= NOT \ROM_instrucao|memROM~1_combout\;
\ROM_instrucao|ALT_INV_memROM~0_combout\ <= NOT \ROM_instrucao|memROM~0_combout\;
\MemoriaRAM|ALT_INV_ram~559_combout\ <= NOT \MemoriaRAM|ram~559_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\REG_4bit5|ALT_INV_DOUT\(2) <= NOT \REG_4bit5|DOUT\(2);
\REG_4bit5|ALT_INV_DOUT\(1) <= NOT \REG_4bit5|DOUT\(1);
\REG_4bit5|ALT_INV_DOUT\(3) <= NOT \REG_4bit5|DOUT\(3);
\REG_4bit5|ALT_INV_DOUT\(0) <= NOT \REG_4bit5|DOUT\(0);
\REG_4bit4|ALT_INV_DOUT\(2) <= NOT \REG_4bit4|DOUT\(2);
\REG_4bit4|ALT_INV_DOUT\(1) <= NOT \REG_4bit4|DOUT\(1);
\REG_4bit4|ALT_INV_DOUT\(3) <= NOT \REG_4bit4|DOUT\(3);
\REG_4bit4|ALT_INV_DOUT\(0) <= NOT \REG_4bit4|DOUT\(0);
\REG_4bit3|ALT_INV_DOUT\(2) <= NOT \REG_4bit3|DOUT\(2);
\REG_4bit3|ALT_INV_DOUT\(1) <= NOT \REG_4bit3|DOUT\(1);
\REG_4bit3|ALT_INV_DOUT\(3) <= NOT \REG_4bit3|DOUT\(3);
\REG_4bit3|ALT_INV_DOUT\(0) <= NOT \REG_4bit3|DOUT\(0);
\REG_4bit2|ALT_INV_DOUT\(2) <= NOT \REG_4bit2|DOUT\(2);
\REG_4bit2|ALT_INV_DOUT\(1) <= NOT \REG_4bit2|DOUT\(1);
\REG_4bit2|ALT_INV_DOUT\(3) <= NOT \REG_4bit2|DOUT\(3);
\REG_4bit2|ALT_INV_DOUT\(0) <= NOT \REG_4bit2|DOUT\(0);
\REG_4bit1|ALT_INV_DOUT\(2) <= NOT \REG_4bit1|DOUT\(2);
\REG_4bit1|ALT_INV_DOUT\(1) <= NOT \REG_4bit1|DOUT\(1);
\REG_4bit1|ALT_INV_DOUT\(3) <= NOT \REG_4bit1|DOUT\(3);
\REG_4bit1|ALT_INV_DOUT\(0) <= NOT \REG_4bit1|DOUT\(0);
\REG_4bit0|ALT_INV_DOUT\(2) <= NOT \REG_4bit0|DOUT\(2);
\REG_4bit0|ALT_INV_DOUT\(1) <= NOT \REG_4bit0|DOUT\(1);
\REG_4bit0|ALT_INV_DOUT\(3) <= NOT \REG_4bit0|DOUT\(3);
\REG_4bit0|ALT_INV_DOUT\(0) <= NOT \REG_4bit0|DOUT\(0);
\MemoriaRAM|ALT_INV_ram~558_combout\ <= NOT \MemoriaRAM|ram~558_combout\;
\MemoriaRAM|ALT_INV_ram~557_combout\ <= NOT \MemoriaRAM|ram~557_combout\;
\MemoriaRAM|ALT_INV_ram~70_q\ <= NOT \MemoriaRAM|ram~70_q\;
\MemoriaRAM|ALT_INV_ram~38_q\ <= NOT \MemoriaRAM|ram~38_q\;
\MemoriaRAM|ALT_INV_ram~556_combout\ <= NOT \MemoriaRAM|ram~556_combout\;
\MemoriaRAM|ALT_INV_ram~78_q\ <= NOT \MemoriaRAM|ram~78_q\;
\MemoriaRAM|ALT_INV_ram~46_q\ <= NOT \MemoriaRAM|ram~46_q\;
\MemoriaRAM|ALT_INV_ram~555_combout\ <= NOT \MemoriaRAM|ram~555_combout\;
\MemoriaRAM|ALT_INV_ram~54_q\ <= NOT \MemoriaRAM|ram~54_q\;
\MemoriaRAM|ALT_INV_ram~22_q\ <= NOT \MemoriaRAM|ram~22_q\;
\MemoriaRAM|ALT_INV_ram~554_combout\ <= NOT \MemoriaRAM|ram~554_combout\;
\MemoriaRAM|ALT_INV_ram~62_q\ <= NOT \MemoriaRAM|ram~62_q\;
\MemoriaRAM|ALT_INV_ram~30_q\ <= NOT \MemoriaRAM|ram~30_q\;
\processador|MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \processador|MUX1|saida_MUX[6]~6_combout\;
\MemoriaRAM|ALT_INV_ram~553_combout\ <= NOT \MemoriaRAM|ram~553_combout\;
\MemoriaRAM|ALT_INV_ram~552_combout\ <= NOT \MemoriaRAM|ram~552_combout\;
\MemoriaRAM|ALT_INV_ram~69_q\ <= NOT \MemoriaRAM|ram~69_q\;
\MemoriaRAM|ALT_INV_ram~77_q\ <= NOT \MemoriaRAM|ram~77_q\;
\MemoriaRAM|ALT_INV_ram~53_q\ <= NOT \MemoriaRAM|ram~53_q\;
\MemoriaRAM|ALT_INV_ram~61_q\ <= NOT \MemoriaRAM|ram~61_q\;
\MemoriaRAM|ALT_INV_ram~551_combout\ <= NOT \MemoriaRAM|ram~551_combout\;
\MemoriaRAM|ALT_INV_ram~37_q\ <= NOT \MemoriaRAM|ram~37_q\;
\MemoriaRAM|ALT_INV_ram~45_q\ <= NOT \MemoriaRAM|ram~45_q\;
\MemoriaRAM|ALT_INV_ram~21_q\ <= NOT \MemoriaRAM|ram~21_q\;
\MemoriaRAM|ALT_INV_ram~29_q\ <= NOT \MemoriaRAM|ram~29_q\;
\processador|MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \processador|MUX1|saida_MUX[5]~5_combout\;
\MemoriaRAM|ALT_INV_ram~550_combout\ <= NOT \MemoriaRAM|ram~550_combout\;
\MemoriaRAM|ALT_INV_ram~549_combout\ <= NOT \MemoriaRAM|ram~549_combout\;
\MemoriaRAM|ALT_INV_ram~68_q\ <= NOT \MemoriaRAM|ram~68_q\;
\MemoriaRAM|ALT_INV_ram~36_q\ <= NOT \MemoriaRAM|ram~36_q\;
\MemoriaRAM|ALT_INV_ram~548_combout\ <= NOT \MemoriaRAM|ram~548_combout\;
\MemoriaRAM|ALT_INV_ram~76_q\ <= NOT \MemoriaRAM|ram~76_q\;
\MemoriaRAM|ALT_INV_ram~44_q\ <= NOT \MemoriaRAM|ram~44_q\;
\MemoriaRAM|ALT_INV_ram~547_combout\ <= NOT \MemoriaRAM|ram~547_combout\;
\MemoriaRAM|ALT_INV_ram~52_q\ <= NOT \MemoriaRAM|ram~52_q\;
\MemoriaRAM|ALT_INV_ram~20_q\ <= NOT \MemoriaRAM|ram~20_q\;
\MemoriaRAM|ALT_INV_ram~546_combout\ <= NOT \MemoriaRAM|ram~546_combout\;
\processador|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[6]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
\ROM_instrucao|ALT_INV_memROM~13_combout\ <= NOT \ROM_instrucao|memROM~13_combout\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\MemoriaRAM|ALT_INV_dado_out[7]~11_combout\ <= NOT \MemoriaRAM|dado_out[7]~11_combout\;
\MemoriaRAM|ALT_INV_dado_out[4]~10_combout\ <= NOT \MemoriaRAM|dado_out[4]~10_combout\;
\MemoriaRAM|ALT_INV_dado_out[3]~9_combout\ <= NOT \MemoriaRAM|dado_out[3]~9_combout\;
\processador|decoder|ALT_INV_saida[4]~1_combout\ <= NOT \processador|decoder|saida[4]~1_combout\;
\processador|decoder|ALT_INV_Equal4~2_combout\ <= NOT \processador|decoder|Equal4~2_combout\;
\decoder_end|ALT_INV_Equal7~0_combout\ <= NOT \decoder_end|Equal7~0_combout\;
\processador|decoder|ALT_INV_saida[4]~0_combout\ <= NOT \processador|decoder|saida[4]~0_combout\;

-- Location: IOOBUF_X54_Y15_N22
\dbgSaidaRAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~529_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(0));

-- Location: IOOBUF_X54_Y15_N56
\dbgSaidaRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~534_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(1));

-- Location: IOOBUF_X43_Y45_N36
\dbgSaidaRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~537_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(2));

-- Location: IOOBUF_X54_Y20_N5
\dbgSaidaRAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~542_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(3));

-- Location: IOOBUF_X54_Y14_N96
\dbgSaidaRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~545_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(4));

-- Location: IOOBUF_X43_Y45_N53
\dbgSaidaRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~550_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(5));

-- Location: IOOBUF_X48_Y45_N2
\dbgSaidaRAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~553_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(6));

-- Location: IOOBUF_X54_Y15_N5
\dbgSaidaRAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|ram~558_combout\,
	oe => \MemoriaRAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(7));

-- Location: IOOBUF_X40_Y45_N76
\HabilitaRam~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_HabilitaRam);

-- Location: IOOBUF_X54_Y18_N79
\read_ram~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoder|ALT_INV_HabilitaA~0_combout\,
	devoe => ww_devoe,
	o => ww_read_ram);

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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N36
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X54_Y18_N45
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X25_Y0_N36
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOOBUF_X44_Y45_N2
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X42_Y45_N53
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

-- Location: IOOBUF_X54_Y19_N39
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

-- Location: IOOBUF_X25_Y0_N53
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X54_Y19_N56
\ulaB_verifica[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(0));

-- Location: IOOBUF_X54_Y15_N39
\ulaB_verifica[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(1));

-- Location: IOOBUF_X43_Y45_N2
\ulaB_verifica[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(2));

-- Location: IOOBUF_X40_Y45_N93
\ulaB_verifica[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(3));

-- Location: IOOBUF_X43_Y45_N19
\ulaB_verifica[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(4));

-- Location: IOOBUF_X44_Y45_N36
\ulaB_verifica[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(5));

-- Location: IOOBUF_X54_Y17_N39
\ulaB_verifica[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(6));

-- Location: IOOBUF_X54_Y14_N79
\ulaB_verifica[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(7));

-- Location: IOOBUF_X54_Y16_N39
\ulaA_verifica[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(0));

-- Location: IOOBUF_X54_Y20_N56
\ulaA_verifica[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(1));

-- Location: IOOBUF_X25_Y0_N2
\ulaA_verifica[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(2));

-- Location: IOOBUF_X23_Y0_N76
\ulaA_verifica[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(3));

-- Location: IOOBUF_X54_Y19_N5
\ulaA_verifica[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ulaA_verifica(4));

-- Location: IOOBUF_X54_Y14_N62
\ulaA_verifica[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(5));

-- Location: IOOBUF_X54_Y17_N5
\ulaA_verifica[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(6));

-- Location: IOOBUF_X50_Y45_N36
\ulaA_verifica[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(7));

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
	i => \decoder_binario1|rascSaida7seg[0]~0_combout\,
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
	i => \decoder_binario1|rascSaida7seg[1]~1_combout\,
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
	i => \decoder_binario1|rascSaida7seg[2]~2_combout\,
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
	i => \decoder_binario1|rascSaida7seg[3]~3_combout\,
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
	i => \decoder_binario1|rascSaida7seg[4]~4_combout\,
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
	i => \decoder_binario1|rascSaida7seg[5]~5_combout\,
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
	i => \decoder_binario1|rascSaida7seg[6]~6_combout\,
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
	i => \decoder_binario2|rascSaida7seg[0]~0_combout\,
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
	i => \decoder_binario2|rascSaida7seg[1]~1_combout\,
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
	i => \decoder_binario2|rascSaida7seg[2]~2_combout\,
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
	i => \decoder_binario2|rascSaida7seg[3]~3_combout\,
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
	i => \decoder_binario2|rascSaida7seg[4]~4_combout\,
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
	i => \decoder_binario2|rascSaida7seg[5]~5_combout\,
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
	i => \decoder_binario2|rascSaida7seg[6]~6_combout\,
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
	i => \decoder_binario3|rascSaida7seg[0]~0_combout\,
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
	i => \decoder_binario3|rascSaida7seg[1]~1_combout\,
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
	i => \decoder_binario3|rascSaida7seg[2]~2_combout\,
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
	i => \decoder_binario3|rascSaida7seg[3]~3_combout\,
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
	i => \decoder_binario3|rascSaida7seg[4]~4_combout\,
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
	i => \decoder_binario3|rascSaida7seg[5]~5_combout\,
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
	i => \decoder_binario3|rascSaida7seg[6]~6_combout\,
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
	i => \decoder_binario4|rascSaida7seg[0]~0_combout\,
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
	i => \decoder_binario4|rascSaida7seg[1]~1_combout\,
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
	i => \decoder_binario4|rascSaida7seg[2]~2_combout\,
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
	i => \decoder_binario4|rascSaida7seg[3]~3_combout\,
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
	i => \decoder_binario4|rascSaida7seg[4]~4_combout\,
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
	i => \decoder_binario4|rascSaida7seg[5]~5_combout\,
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
	i => \decoder_binario4|rascSaida7seg[6]~6_combout\,
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
	i => \decoder_binario5|rascSaida7seg[0]~0_combout\,
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
	i => \decoder_binario5|rascSaida7seg[1]~1_combout\,
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
	i => \decoder_binario5|rascSaida7seg[2]~2_combout\,
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
	i => \decoder_binario5|rascSaida7seg[3]~3_combout\,
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
	i => \decoder_binario5|rascSaida7seg[4]~4_combout\,
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
	i => \decoder_binario5|rascSaida7seg[5]~5_combout\,
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
	i => \decoder_binario5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X29_Y0_N53
\dbgInstructionROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(0));

-- Location: IOOBUF_X38_Y0_N2
\dbgInstructionROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(1));

-- Location: IOOBUF_X50_Y0_N2
\dbgInstructionROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(2));

-- Location: IOOBUF_X11_Y0_N2
\dbgInstructionROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(3));

-- Location: IOOBUF_X19_Y0_N53
\dbgInstructionROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(4));

-- Location: IOOBUF_X42_Y45_N36
\dbgInstructionROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(5));

-- Location: IOOBUF_X10_Y45_N36
\dbgInstructionROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(6));

-- Location: IOOBUF_X19_Y0_N19
\dbgInstructionROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(7));

-- Location: IOOBUF_X42_Y45_N2
\dbgInstructionROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(8));

-- Location: IOOBUF_X24_Y0_N53
\dbgInstructionROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(9));

-- Location: IOOBUF_X54_Y16_N5
\dbgInstructionROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(10));

-- Location: IOOBUF_X24_Y0_N2
\dbgInstructionROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(11));

-- Location: IOOBUF_X54_Y21_N56
\dbgInstructionROM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(12));

-- Location: IOOBUF_X54_Y16_N22
\dbgEntradaRAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(0));

-- Location: IOOBUF_X54_Y20_N39
\dbgEntradaRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(1));

-- Location: IOOBUF_X25_Y0_N19
\dbgEntradaRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(2));

-- Location: IOOBUF_X23_Y0_N93
\dbgEntradaRAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(3));

-- Location: IOOBUF_X54_Y19_N22
\dbgEntradaRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(4));

-- Location: IOOBUF_X54_Y14_N45
\dbgEntradaRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(5));

-- Location: IOOBUF_X54_Y17_N22
\dbgEntradaRAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(6));

-- Location: IOOBUF_X50_Y45_N53
\dbgEntradaRAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(7));

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

-- Location: CLKCTRL_G6
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

-- Location: MLABCELL_X42_Y7_N30
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

-- Location: MLABCELL_X42_Y7_N39
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

-- Location: MLABCELL_X42_Y7_N42
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

-- Location: MLABCELL_X45_Y7_N42
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

-- Location: FF_X42_Y7_N32
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM_instrucao|memROM~6_combout\,
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y6_N27
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( \processador|PC|DOUT\(2) & ( !\processador|PC|DOUT[0]~DUPLICATE_q\ $ (((\processador|PC|DOUT\(1) & \processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000011111100000000111111110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: MLABCELL_X42_Y7_N48
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

-- Location: MLABCELL_X42_Y7_N51
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

-- Location: FF_X42_Y7_N53
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
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: MLABCELL_X42_Y7_N54
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

-- Location: FF_X42_Y7_N41
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
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y7_N18
\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = ( \processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[0]~DUPLICATE_q\ & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~13_combout\);

-- Location: MLABCELL_X42_Y7_N6
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( !\processador|PC|DOUT\(8) & ( \ROM_instrucao|memROM~13_combout\ & ( (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(6),
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	datae => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: FF_X42_Y7_N35
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
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y7_N12
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\processador|PC|DOUT\(0) & (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[2]~DUPLICATE_q\ $ (!\processador|PC|DOUT[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: FF_X42_Y7_N38
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM_instrucao|memROM~8_combout\,
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y7_N21
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT[0]~DUPLICATE_q\ & ((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: MLABCELL_X42_Y7_N27
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: FF_X42_Y7_N56
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: MLABCELL_X42_Y7_N24
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(8) & !\processador|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(8),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: MLABCELL_X42_Y6_N27
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~3_combout\ ) ) # ( !\ROM_instrucao|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: LABCELL_X43_Y6_N30
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( \processador|PC|DOUT\(2) & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT\(3)))) ) ) # ( !\processador|PC|DOUT\(2) & ( \processador|PC|DOUT[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: MLABCELL_X42_Y6_N42
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: MLABCELL_X42_Y6_N48
\processador|decoder|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal4~1_combout\ = ( \ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~9_combout\ & ( !\ROM_instrucao|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \processador|decoder|Equal4~1_combout\);

-- Location: FF_X42_Y7_N44
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
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: MLABCELL_X42_Y7_N45
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

-- Location: FF_X42_Y7_N47
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: FF_X42_Y7_N50
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
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: MLABCELL_X42_Y7_N15
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(0) $ (((\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110010101100101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: MLABCELL_X42_Y7_N9
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( !\processador|PC|DOUT\(8) & ( \ROM_instrucao|memROM~12_combout\ & ( (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(6),
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: FF_X42_Y7_N31
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM_instrucao|memROM~6_combout\,
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: MLABCELL_X42_Y7_N33
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

-- Location: FF_X42_Y7_N34
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
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: MLABCELL_X42_Y7_N36
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

-- Location: FF_X42_Y7_N37
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM_instrucao|memROM~8_combout\,
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: FF_X42_Y7_N40
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
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X43_Y6_N48
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( \processador|PC|DOUT\(2) & ( !\processador|PC|DOUT[0]~DUPLICATE_q\ ) ) # ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((\processador|PC|DOUT\(1)) # (\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(1),
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: MLABCELL_X42_Y6_N54
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: MLABCELL_X42_Y6_N33
\processador|decoder|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal4~2_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & \ROM_instrucao|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \processador|decoder|Equal4~2_combout\);

-- Location: LABCELL_X43_Y6_N36
\processador|decoder|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|Equal4~0_combout\ = ( !\ROM_instrucao|memROM~5_combout\ & ( (!\ROM_instrucao|memROM~3_combout\ & (!\ROM_instrucao|memROM~4_combout\ & \ROM_instrucao|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \processador|decoder|Equal4~0_combout\);

-- Location: LABCELL_X43_Y6_N45
\MemoriaRAM|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out~0_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~1_combout\) ) ) ) # ( \ROM_instrucao|memROM~3_combout\ & ( 
-- !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~0_combout\ & (\ROM_instrucao|memROM~5_combout\ & \ROM_instrucao|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|dado_out~0_combout\);

-- Location: LABCELL_X43_Y7_N6
\processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~0_combout\ = ( \MemoriaRAM|ram~529_combout\ & ( (!\processador|decoder|Equal4~0_combout\) # (\ROM_instrucao|memROM~6_combout\) ) ) # ( !\MemoriaRAM|ram~529_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & 
-- ((!\MemoriaRAM|dado_out~0_combout\))) # (\processador|decoder|Equal4~0_combout\ & (\ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011111100110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datad => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~529_combout\,
	combout => \processador|MUX1|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X42_Y6_N6
\processador|decoder|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida[4]~1_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~9_combout\ ) ) # ( \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \processador|decoder|saida[4]~1_combout\);

-- Location: LABCELL_X43_Y7_N30
\processador|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~34_cout\ = CARRY(( ((!\ROM_instrucao|memROM~10_combout\ & (!\ROM_instrucao|memROM~9_combout\ $ (\ROM_instrucao|memROM~11_combout\)))) # (\processador|decoder|Equal4~2_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	cin => GND,
	cout => \processador|ULA1|Add0~34_cout\);

-- Location: LABCELL_X43_Y7_N33
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( !\processador|MUX1|saida_MUX[0]~0_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|ULA1|Add0~34_cout\ ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( !\processador|MUX1|saida_MUX[0]~0_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	dataf => \processador|decoder|ALT_INV_saida[4]~1_combout\,
	cin => \processador|ULA1|Add0~34_cout\,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: MLABCELL_X42_Y6_N21
\processador|decoder|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida[4]~0_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( (!\ROM_instrucao|memROM~11_combout\) # (\ROM_instrucao|memROM~10_combout\) ) ) # ( !\ROM_instrucao|memROM~9_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # 
-- (\ROM_instrucao|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \processador|decoder|saida[4]~0_combout\);

-- Location: MLABCELL_X42_Y6_N3
\processador|decoder|HabilitaA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|HabilitaA~0_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\ROM_instrucao|memROM~3_combout\) # ((!\ROM_instrucao|memROM~5_combout\ & !\ROM_instrucao|memROM~4_combout\)) ) ) # ( !\ROM_instrucao|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \processador|decoder|HabilitaA~0_combout\);

-- Location: MLABCELL_X42_Y6_N12
\processador|decoder|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|saida\(5) = ( \processador|decoder|HabilitaA~0_combout\ & ( \processador|decoder|Equal4~0_combout\ ) ) # ( !\processador|decoder|HabilitaA~0_combout\ & ( \processador|decoder|Equal4~0_combout\ ) ) # ( 
-- !\processador|decoder|HabilitaA~0_combout\ & ( !\processador|decoder|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|decoder|ALT_INV_HabilitaA~0_combout\,
	dataf => \processador|decoder|ALT_INV_Equal4~0_combout\,
	combout => \processador|decoder|saida\(5));

-- Location: FF_X43_Y7_N34
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
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: LABCELL_X43_Y6_N21
\MemoriaRAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~559_combout\ = ( !\ROM_instrucao|memROM~0_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~5_combout\ & (!\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \MemoriaRAM|ram~559_combout\);

-- Location: LABCELL_X41_Y7_N42
\MemoriaRAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~564_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~559_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~559_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~564_combout\);

-- Location: FF_X41_Y7_N23
\MemoriaRAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~55_q\);

-- Location: LABCELL_X43_Y6_N24
\MemoriaRAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~567_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~559_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \MemoriaRAM|ram~567_combout\);

-- Location: FF_X40_Y7_N19
\MemoriaRAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~63_q\);

-- Location: LABCELL_X41_Y7_N54
\MemoriaRAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~565_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~7_combout\ & !\ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~565_combout\);

-- Location: FF_X40_Y7_N28
\MemoriaRAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~47_q\);

-- Location: LABCELL_X41_Y7_N6
\MemoriaRAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~566_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (\ROM_instrucao|memROM~6_combout\ & (\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~566_combout\);

-- Location: FF_X40_Y7_N34
\MemoriaRAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~71_q\);

-- Location: LABCELL_X41_Y7_N30
\MemoriaRAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~528_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~71_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~55_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~63_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~55_q\,
	datab => \MemoriaRAM|ALT_INV_ram~63_q\,
	datac => \MemoriaRAM|ALT_INV_ram~47_q\,
	datad => \MemoriaRAM|ALT_INV_ram~71_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~528_combout\);

-- Location: LABCELL_X41_Y7_N51
\MemoriaRAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~560_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~560_combout\);

-- Location: FF_X41_Y7_N1
\MemoriaRAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~23_q\);

-- Location: LABCELL_X43_Y6_N9
\MemoriaRAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~562_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~7_combout\ & \ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~562_combout\);

-- Location: FF_X43_Y6_N44
\MemoriaRAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~39_q\);

-- Location: LABCELL_X43_Y6_N39
\MemoriaRAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~563_combout\ = ( !\ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~7_combout\ & \MemoriaRAM|ram~559_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~563_combout\);

-- Location: FF_X43_Y6_N14
\MemoriaRAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~31_q\);

-- Location: LABCELL_X43_Y6_N51
\MemoriaRAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~561_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~7_combout\ & !\ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~561_combout\);

-- Location: FF_X43_Y6_N7
\MemoriaRAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~15_q\);

-- Location: LABCELL_X43_Y6_N15
\MemoriaRAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~527_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~39_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~23_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~31_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~23_q\,
	datab => \MemoriaRAM|ALT_INV_ram~39_q\,
	datac => \MemoriaRAM|ALT_INV_ram~31_q\,
	datad => \MemoriaRAM|ALT_INV_ram~15_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~527_combout\);

-- Location: MLABCELL_X42_Y7_N3
\MemoriaRAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~529_combout\ = ( \MemoriaRAM|ram~527_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & ((!\ROM_instrucao|memROM~8_combout\) # (\MemoriaRAM|ram~528_combout\))) ) ) # ( !\MemoriaRAM|ram~527_combout\ & ( (\MemoriaRAM|ram~528_combout\ & 
-- (\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~528_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~527_combout\,
	combout => \MemoriaRAM|ram~529_combout\);

-- Location: LABCELL_X43_Y7_N27
\processador|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[1]~1_combout\ = ( \MemoriaRAM|ram~534_combout\ & ( (!\processador|decoder|Equal4~0_combout\) # (\ROM_instrucao|memROM~7_combout\) ) ) # ( !\MemoriaRAM|ram~534_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & 
-- ((!\MemoriaRAM|dado_out~0_combout\))) # (\processador|decoder|Equal4~0_combout\ & (\ROM_instrucao|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101111101010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datad => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~534_combout\,
	combout => \processador|MUX1|saida_MUX[1]~1_combout\);

-- Location: FF_X43_Y7_N38
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|MUX1|saida_MUX[1]~1_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: LABCELL_X43_Y7_N36
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( \processador|REGA|DOUT\(1) ) + ( !\processador|MUX1|saida_MUX[1]~1_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( \processador|REGA|DOUT\(1) ) + ( !\processador|MUX1|saida_MUX[1]~1_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(1),
	dataf => \processador|decoder|ALT_INV_saida[4]~1_combout\,
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: FF_X43_Y7_N37
\processador|REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|MUX1|saida_MUX[1]~1_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y7_N27
\MemoriaRAM|ram~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~16feeder_combout\ = \processador|REGA|DOUT[1]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \MemoriaRAM|ram~16feeder_combout\);

-- Location: FF_X44_Y7_N29
\MemoriaRAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~16feeder_combout\,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~16_q\);

-- Location: FF_X40_Y7_N52
\MemoriaRAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~48_q\);

-- Location: MLABCELL_X42_Y7_N0
\MemoriaRAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~531_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\MemoriaRAM|ram~16_q\)) # (\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~48_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~16_q\,
	datad => \MemoriaRAM|ALT_INV_ram~48_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~531_combout\);

-- Location: FF_X44_Y7_N59
\MemoriaRAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~32_q\);

-- Location: FF_X43_Y7_N26
\MemoriaRAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~64_q\);

-- Location: LABCELL_X43_Y7_N24
\MemoriaRAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~533_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\MemoriaRAM|ram~32_q\)) # (\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~64_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~32_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~64_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~533_combout\);

-- Location: FF_X41_Y7_N38
\MemoriaRAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~24_q\);

-- Location: FF_X41_Y7_N20
\MemoriaRAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~56_q\);

-- Location: LABCELL_X41_Y7_N18
\MemoriaRAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~530_combout\ = ( \MemoriaRAM|ram~56_q\ & ( \ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~2_combout\ ) ) ) # ( \MemoriaRAM|ram~56_q\ & ( !\ROM_instrucao|memROM~8_combout\ & ( (\MemoriaRAM|ram~24_q\ & 
-- !\ROM_instrucao|memROM~2_combout\) ) ) ) # ( !\MemoriaRAM|ram~56_q\ & ( !\ROM_instrucao|memROM~8_combout\ & ( (\MemoriaRAM|ram~24_q\ & !\ROM_instrucao|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~24_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~56_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \MemoriaRAM|ram~530_combout\);

-- Location: FF_X44_Y7_N35
\MemoriaRAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~40_q\);

-- Location: FF_X40_Y7_N4
\MemoriaRAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~72_q\);

-- Location: LABCELL_X44_Y7_N30
\MemoriaRAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~532_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~72_q\ ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~40_q\,
	datad => \MemoriaRAM|ALT_INV_ram~72_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~532_combout\);

-- Location: LABCELL_X43_Y7_N18
\MemoriaRAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~534_combout\ = ( \MemoriaRAM|ram~530_combout\ & ( \MemoriaRAM|ram~532_combout\ & ( ((!\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~531_combout\)) # (\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~533_combout\)))) # 
-- (\ROM_instrucao|memROM~6_combout\) ) ) ) # ( !\MemoriaRAM|ram~530_combout\ & ( \MemoriaRAM|ram~532_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~531_combout\ & ((!\ROM_instrucao|memROM~6_combout\)))) # 
-- (\ROM_instrucao|memROM~7_combout\ & (((\ROM_instrucao|memROM~6_combout\) # (\MemoriaRAM|ram~533_combout\)))) ) ) ) # ( \MemoriaRAM|ram~530_combout\ & ( !\MemoriaRAM|ram~532_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & 
-- (((\ROM_instrucao|memROM~6_combout\)) # (\MemoriaRAM|ram~531_combout\))) # (\ROM_instrucao|memROM~7_combout\ & (((\MemoriaRAM|ram~533_combout\ & !\ROM_instrucao|memROM~6_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~530_combout\ & ( 
-- !\MemoriaRAM|ram~532_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~531_combout\)) # (\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~533_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~531_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~533_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~530_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~532_combout\,
	combout => \MemoriaRAM|ram~534_combout\);

-- Location: LABCELL_X43_Y7_N0
\processador|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[2]~2_combout\ = ( \MemoriaRAM|ram~537_combout\ & ( (!\processador|decoder|Equal4~0_combout\) # (\ROM_instrucao|memROM~8_combout\) ) ) # ( !\MemoriaRAM|ram~537_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & 
-- (!\MemoriaRAM|dado_out~0_combout\)) # (\processador|decoder|Equal4~0_combout\ & ((\ROM_instrucao|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001111101010100000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~537_combout\,
	combout => \processador|MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X43_Y7_N39
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( !\processador|MUX1|saida_MUX[2]~2_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( !\processador|MUX1|saida_MUX[2]~2_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	dataf => \processador|decoder|ALT_INV_saida[4]~1_combout\,
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: FF_X43_Y7_N40
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
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: FF_X44_Y7_N38
\MemoriaRAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~41_q\);

-- Location: FF_X44_Y7_N8
\MemoriaRAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~17_q\);

-- Location: FF_X41_Y7_N17
\MemoriaRAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~25_q\);

-- Location: FF_X44_Y7_N2
\MemoriaRAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~33_q\);

-- Location: LABCELL_X44_Y7_N0
\MemoriaRAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~535_combout\ = ( \MemoriaRAM|ram~33_q\ & ( \ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~25_q\))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~41_q\)) ) ) ) # ( !\MemoriaRAM|ram~33_q\ 
-- & ( \ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~25_q\))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~41_q\)) ) ) ) # ( \MemoriaRAM|ram~33_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( 
-- (\ROM_instrucao|memROM~7_combout\) # (\MemoriaRAM|ram~17_q\) ) ) ) # ( !\MemoriaRAM|ram~33_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( (\MemoriaRAM|ram~17_q\ & !\ROM_instrucao|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~41_q\,
	datab => \MemoriaRAM|ALT_INV_ram~17_q\,
	datac => \MemoriaRAM|ALT_INV_ram~25_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~33_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~535_combout\);

-- Location: FF_X40_Y7_N40
\MemoriaRAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~65_q\);

-- Location: FF_X40_Y7_N25
\MemoriaRAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~49_q\);

-- Location: FF_X40_Y7_N31
\MemoriaRAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~73_q\);

-- Location: FF_X41_Y7_N52
\MemoriaRAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~57_q\);

-- Location: LABCELL_X41_Y7_N12
\MemoriaRAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~536_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~73_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~57_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~65_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~65_q\,
	datab => \MemoriaRAM|ALT_INV_ram~49_q\,
	datac => \MemoriaRAM|ALT_INV_ram~73_q\,
	datad => \MemoriaRAM|ALT_INV_ram~57_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~536_combout\);

-- Location: LABCELL_X43_Y7_N12
\MemoriaRAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~537_combout\ = ( \MemoriaRAM|ram~536_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~535_combout\) # (\ROM_instrucao|memROM~8_combout\))) ) ) # ( !\MemoriaRAM|ram~536_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & 
-- (!\ROM_instrucao|memROM~2_combout\ & \MemoriaRAM|ram~535_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~535_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~536_combout\,
	combout => \MemoriaRAM|ram~537_combout\);

-- Location: LABCELL_X40_Y7_N57
\MemoriaRAM|dado_out[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[3]~9_combout\ = ( \MemoriaRAM|dado_out~0_combout\ & ( \MemoriaRAM|ram~542_combout\ ) ) # ( !\MemoriaRAM|dado_out~0_combout\ & ( \MemoriaRAM|ram~542_combout\ ) ) # ( !\MemoriaRAM|dado_out~0_combout\ & ( !\MemoriaRAM|ram~542_combout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~542_combout\,
	combout => \MemoriaRAM|dado_out[3]~9_combout\);

-- Location: LABCELL_X43_Y7_N42
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( \processador|REGA|DOUT\(3) ) + ( (!\processador|decoder|saida[4]~0_combout\ & (((!\MemoriaRAM|dado_out[3]~9_combout\)) # (\processador|decoder|Equal4~0_combout\))) # (\processador|decoder|saida[4]~0_combout\ & 
-- (!\processador|decoder|Equal4~2_combout\ $ (((!\MemoriaRAM|dado_out[3]~9_combout\) # (\processador|decoder|Equal4~0_combout\))))) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( \processador|REGA|DOUT\(3) ) + ( (!\processador|decoder|saida[4]~0_combout\ & (((!\MemoriaRAM|dado_out[3]~9_combout\)) # (\processador|decoder|Equal4~0_combout\))) # (\processador|decoder|saida[4]~0_combout\ & 
-- (!\processador|decoder|Equal4~2_combout\ $ (((!\MemoriaRAM|dado_out[3]~9_combout\) # (\processador|decoder|Equal4~0_combout\))))) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datac => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(3),
	dataf => \MemoriaRAM|ALT_INV_dado_out[3]~9_combout\,
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: LABCELL_X40_Y7_N15
\processador|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[3]~3_combout\ = ( !\processador|decoder|Equal4~0_combout\ & ( \MemoriaRAM|ram~542_combout\ ) ) # ( !\processador|decoder|Equal4~0_combout\ & ( !\MemoriaRAM|ram~542_combout\ & ( !\MemoriaRAM|dado_out~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	datae => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~542_combout\,
	combout => \processador|MUX1|saida_MUX[3]~3_combout\);

-- Location: FF_X43_Y7_N43
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|MUX1|saida_MUX[3]~3_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: MLABCELL_X45_Y7_N24
\MemoriaRAM|ram~42feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~42feeder_combout\ = ( \processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \MemoriaRAM|ram~42feeder_combout\);

-- Location: FF_X45_Y7_N25
\MemoriaRAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~42feeder_combout\,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~42_q\);

-- Location: FF_X40_Y7_N2
\MemoriaRAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~74_q\);

-- Location: LABCELL_X40_Y7_N0
\MemoriaRAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~540_combout\ = ( \MemoriaRAM|ram~74_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~8_combout\) # (\MemoriaRAM|ram~42_q\) ) ) ) # ( !\MemoriaRAM|ram~74_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~42_q\ 
-- & !\ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~42_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~74_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~540_combout\);

-- Location: FF_X42_Y7_N17
\MemoriaRAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~18_q\);

-- Location: FF_X40_Y7_N50
\MemoriaRAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~50_q\);

-- Location: LABCELL_X40_Y7_N48
\MemoriaRAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~539_combout\ = ( \MemoriaRAM|ram~50_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~8_combout\) # (\MemoriaRAM|ram~18_q\) ) ) ) # ( !\MemoriaRAM|ram~50_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~18_q\ 
-- & !\ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~18_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~50_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~539_combout\);

-- Location: FF_X44_Y7_N43
\MemoriaRAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~34_q\);

-- Location: FF_X40_Y7_N38
\MemoriaRAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~66_q\);

-- Location: LABCELL_X40_Y7_N36
\MemoriaRAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~541_combout\ = ( \MemoriaRAM|ram~66_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~8_combout\) # (\MemoriaRAM|ram~34_q\) ) ) ) # ( !\MemoriaRAM|ram~66_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~34_q\ 
-- & !\ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~34_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~66_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~541_combout\);

-- Location: FF_X41_Y7_N40
\MemoriaRAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~26_q\);

-- Location: FF_X41_Y7_N47
\MemoriaRAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~58_q\);

-- Location: LABCELL_X41_Y7_N45
\MemoriaRAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~538_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\MemoriaRAM|ram~26_q\)) # (\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~58_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~26_q\,
	datad => \MemoriaRAM|ALT_INV_ram~58_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~538_combout\);

-- Location: LABCELL_X40_Y7_N42
\MemoriaRAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~542_combout\ = ( \MemoriaRAM|ram~541_combout\ & ( \MemoriaRAM|ram~538_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (((\ROM_instrucao|memROM~6_combout\) # (\MemoriaRAM|ram~539_combout\)))) # (\ROM_instrucao|memROM~7_combout\ & 
-- (((!\ROM_instrucao|memROM~6_combout\)) # (\MemoriaRAM|ram~540_combout\))) ) ) ) # ( !\MemoriaRAM|ram~541_combout\ & ( \MemoriaRAM|ram~538_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (((\ROM_instrucao|memROM~6_combout\) # 
-- (\MemoriaRAM|ram~539_combout\)))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~540_combout\ & ((\ROM_instrucao|memROM~6_combout\)))) ) ) ) # ( \MemoriaRAM|ram~541_combout\ & ( !\MemoriaRAM|ram~538_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ 
-- & (((\MemoriaRAM|ram~539_combout\ & !\ROM_instrucao|memROM~6_combout\)))) # (\ROM_instrucao|memROM~7_combout\ & (((!\ROM_instrucao|memROM~6_combout\)) # (\MemoriaRAM|ram~540_combout\))) ) ) ) # ( !\MemoriaRAM|ram~541_combout\ & ( 
-- !\MemoriaRAM|ram~538_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (((\MemoriaRAM|ram~539_combout\ & !\ROM_instrucao|memROM~6_combout\)))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~540_combout\ & ((\ROM_instrucao|memROM~6_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~540_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~539_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~541_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~538_combout\,
	combout => \MemoriaRAM|ram~542_combout\);

-- Location: LABCELL_X40_Y7_N21
\processador|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[4]~4_combout\ = ( !\processador|decoder|Equal4~0_combout\ & ( \MemoriaRAM|dado_out~0_combout\ & ( \MemoriaRAM|ram~545_combout\ ) ) ) # ( !\processador|decoder|Equal4~0_combout\ & ( !\MemoriaRAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~545_combout\,
	datae => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	combout => \processador|MUX1|saida_MUX[4]~4_combout\);

-- Location: FF_X43_Y7_N47
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|MUX1|saida_MUX[4]~4_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: LABCELL_X43_Y7_N15
\MemoriaRAM|dado_out[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[4]~10_combout\ = ( \MemoriaRAM|ram~545_combout\ ) # ( !\MemoriaRAM|ram~545_combout\ & ( !\MemoriaRAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~545_combout\,
	combout => \MemoriaRAM|dado_out[4]~10_combout\);

-- Location: LABCELL_X43_Y7_N45
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( \processador|REGA|DOUT\(4) ) + ( (!\processador|decoder|saida[4]~0_combout\ & (((!\MemoriaRAM|dado_out[4]~10_combout\)) # (\processador|decoder|Equal4~0_combout\))) # (\processador|decoder|saida[4]~0_combout\ & 
-- (!\processador|decoder|Equal4~2_combout\ $ (((!\MemoriaRAM|dado_out[4]~10_combout\) # (\processador|decoder|Equal4~0_combout\))))) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( \processador|REGA|DOUT\(4) ) + ( (!\processador|decoder|saida[4]~0_combout\ & (((!\MemoriaRAM|dado_out[4]~10_combout\)) # (\processador|decoder|Equal4~0_combout\))) # (\processador|decoder|saida[4]~0_combout\ & 
-- (!\processador|decoder|Equal4~2_combout\ $ (((!\MemoriaRAM|dado_out[4]~10_combout\) # (\processador|decoder|Equal4~0_combout\))))) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datac => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(4),
	dataf => \MemoriaRAM|ALT_INV_dado_out[4]~10_combout\,
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: FF_X43_Y7_N46
\processador|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|MUX1|saida_MUX[4]~4_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X44_Y7_N40
\MemoriaRAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~43_q\);

-- Location: FF_X44_Y7_N5
\MemoriaRAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~35_q\);

-- Location: FF_X41_Y7_N14
\MemoriaRAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~27_q\);

-- Location: FF_X44_Y7_N10
\MemoriaRAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~19_q\);

-- Location: LABCELL_X41_Y7_N3
\MemoriaRAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~543_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~43_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~27_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~35_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~43_q\,
	datab => \MemoriaRAM|ALT_INV_ram~35_q\,
	datac => \MemoriaRAM|ALT_INV_ram~27_q\,
	datad => \MemoriaRAM|ALT_INV_ram~19_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~543_combout\);

-- Location: FF_X40_Y7_N55
\MemoriaRAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~75_q\);

-- Location: FF_X41_Y7_N32
\MemoriaRAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~67_q\);

-- Location: FF_X41_Y7_N8
\MemoriaRAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~59_q\);

-- Location: FF_X40_Y7_N13
\MemoriaRAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~51_q\);

-- Location: LABCELL_X41_Y7_N39
\MemoriaRAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~544_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~75_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~59_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~67_q\ ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~75_q\,
	datab => \MemoriaRAM|ALT_INV_ram~67_q\,
	datac => \MemoriaRAM|ALT_INV_ram~59_q\,
	datad => \MemoriaRAM|ALT_INV_ram~51_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~544_combout\);

-- Location: LABCELL_X41_Y7_N24
\MemoriaRAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~545_combout\ = ( \MemoriaRAM|ram~543_combout\ & ( \MemoriaRAM|ram~544_combout\ & ( !\ROM_instrucao|memROM~2_combout\ ) ) ) # ( !\MemoriaRAM|ram~543_combout\ & ( \MemoriaRAM|ram~544_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & 
-- \ROM_instrucao|memROM~8_combout\) ) ) ) # ( \MemoriaRAM|ram~543_combout\ & ( !\MemoriaRAM|ram~544_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~543_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~544_combout\,
	combout => \MemoriaRAM|ram~545_combout\);

-- Location: LABCELL_X43_Y7_N3
\processador|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[5]~5_combout\ = ( \MemoriaRAM|ram~550_combout\ & ( (!\processador|decoder|Equal4~0_combout\) # (\ROM_instrucao|memROM~2_combout\) ) ) # ( !\MemoriaRAM|ram~550_combout\ & ( (!\processador|decoder|Equal4~0_combout\ & 
-- (!\MemoriaRAM|dado_out~0_combout\)) # (\processador|decoder|Equal4~0_combout\ & ((\ROM_instrucao|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001111101010100000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~550_combout\,
	combout => \processador|MUX1|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X43_Y7_N48
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( !\processador|MUX1|saida_MUX[5]~5_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( \processador|REGA|DOUT\(5) ) + 
-- ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( !\processador|MUX1|saida_MUX[5]~5_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( \processador|REGA|DOUT\(5) ) + ( 
-- \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011001101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datac => \processador|decoder|ALT_INV_saida[4]~1_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: FF_X43_Y7_N50
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|MUX1|saida_MUX[5]~5_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: FF_X44_Y7_N23
\MemoriaRAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~36_q\);

-- Location: FF_X43_Y7_N16
\MemoriaRAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~68_q\);

-- Location: LABCELL_X44_Y7_N39
\MemoriaRAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~549_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~68_q\ ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~36_q\,
	datad => \MemoriaRAM|ALT_INV_ram~68_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~549_combout\);

-- Location: FF_X44_Y7_N28
\MemoriaRAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~20_q\);

-- Location: FF_X45_Y7_N23
\MemoriaRAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~52_q\);

-- Location: MLABCELL_X45_Y7_N21
\MemoriaRAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~547_combout\ = ( \MemoriaRAM|ram~52_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~8_combout\) # (\MemoriaRAM|ram~20_q\) ) ) ) # ( !\MemoriaRAM|ram~52_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~20_q\ 
-- & !\ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~20_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~52_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~547_combout\);

-- Location: MLABCELL_X45_Y7_N15
\MemoriaRAM|ram~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~44feeder_combout\ = ( \processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~44feeder_combout\);

-- Location: FF_X45_Y7_N17
\MemoriaRAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~44feeder_combout\,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~44_q\);

-- Location: FF_X45_Y7_N11
\MemoriaRAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~76_q\);

-- Location: MLABCELL_X45_Y7_N9
\MemoriaRAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~548_combout\ = ( \MemoriaRAM|ram~76_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~8_combout\) # (\MemoriaRAM|ram~44_q\) ) ) ) # ( !\MemoriaRAM|ram~76_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~44_q\ 
-- & !\ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~44_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~76_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~548_combout\);

-- Location: FF_X41_Y7_N26
\MemoriaRAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~28_q\);

-- Location: FF_X41_Y7_N50
\MemoriaRAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~60_q\);

-- Location: LABCELL_X41_Y7_N48
\MemoriaRAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~546_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\MemoriaRAM|ram~28_q\)) # (\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~60_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~28_q\,
	datad => \MemoriaRAM|ALT_INV_ram~60_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~546_combout\);

-- Location: LABCELL_X44_Y7_N18
\MemoriaRAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~550_combout\ = ( \MemoriaRAM|ram~548_combout\ & ( \MemoriaRAM|ram~546_combout\ & ( ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~547_combout\))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~549_combout\))) # 
-- (\ROM_instrucao|memROM~6_combout\) ) ) ) # ( !\MemoriaRAM|ram~548_combout\ & ( \MemoriaRAM|ram~546_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~547_combout\))) # 
-- (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~549_combout\)))) # (\ROM_instrucao|memROM~6_combout\ & (((!\ROM_instrucao|memROM~7_combout\)))) ) ) ) # ( \MemoriaRAM|ram~548_combout\ & ( !\MemoriaRAM|ram~546_combout\ & ( 
-- (!\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~547_combout\))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~549_combout\)))) # (\ROM_instrucao|memROM~6_combout\ & 
-- (((\ROM_instrucao|memROM~7_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~548_combout\ & ( !\MemoriaRAM|ram~546_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~547_combout\))) # 
-- (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~549_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~549_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~547_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~548_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~546_combout\,
	combout => \MemoriaRAM|ram~550_combout\);

-- Location: LABCELL_X44_Y7_N15
\processador|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[6]~6_combout\ = ( !\processador|decoder|Equal4~0_combout\ & ( \MemoriaRAM|ram~553_combout\ ) ) # ( !\processador|decoder|Equal4~0_combout\ & ( !\MemoriaRAM|ram~553_combout\ & ( !\MemoriaRAM|dado_out~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	datae => \processador|decoder|ALT_INV_Equal4~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~553_combout\,
	combout => \processador|MUX1|saida_MUX[6]~6_combout\);

-- Location: FF_X43_Y7_N53
\processador|REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~25_sumout\,
	asdata => \processador|MUX1|saida_MUX[6]~6_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y7_N51
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( !\processador|MUX1|saida_MUX[6]~6_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( !\processador|MUX1|saida_MUX[6]~6_combout\ $ (((!\processador|decoder|Equal4~2_combout\ & ((\processador|decoder|saida[4]~1_combout\) # (\ROM_instrucao|memROM~10_combout\))))) ) + ( 
-- \processador|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011001101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datac => \processador|decoder|ALT_INV_saida[4]~1_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: FF_X43_Y7_N52
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~25_sumout\,
	asdata => \processador|MUX1|saida_MUX[6]~6_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: FF_X44_Y7_N26
\MemoriaRAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~21_q\);

-- Location: FF_X41_Y7_N4
\MemoriaRAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~29_q\);

-- Location: FF_X44_Y7_N31
\MemoriaRAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~45_q\);

-- Location: FF_X44_Y7_N56
\MemoriaRAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~37_q\);

-- Location: LABCELL_X44_Y7_N54
\MemoriaRAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~551_combout\ = ( \MemoriaRAM|ram~37_q\ & ( \ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~29_q\)) # (\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~45_q\))) ) ) ) # ( !\MemoriaRAM|ram~37_q\ 
-- & ( \ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~29_q\)) # (\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~45_q\))) ) ) ) # ( \MemoriaRAM|ram~37_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( 
-- (\ROM_instrucao|memROM~7_combout\) # (\MemoriaRAM|ram~21_q\) ) ) ) # ( !\MemoriaRAM|ram~37_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( (\MemoriaRAM|ram~21_q\ & !\ROM_instrucao|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~21_q\,
	datab => \MemoriaRAM|ALT_INV_ram~29_q\,
	datac => \MemoriaRAM|ALT_INV_ram~45_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~37_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~551_combout\);

-- Location: FF_X41_Y7_N43
\MemoriaRAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~61_q\);

-- Location: FF_X40_Y7_N47
\MemoriaRAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~77_q\);

-- Location: FF_X41_Y7_N35
\MemoriaRAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~69_q\);

-- Location: FF_X40_Y7_N10
\MemoriaRAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~53_q\);

-- Location: LABCELL_X40_Y7_N9
\MemoriaRAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~552_combout\ = ( \MemoriaRAM|ram~53_q\ & ( \ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~61_q\)) # (\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~77_q\))) ) ) ) # ( !\MemoriaRAM|ram~53_q\ 
-- & ( \ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~61_q\)) # (\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~77_q\))) ) ) ) # ( \MemoriaRAM|ram~53_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( 
-- (!\ROM_instrucao|memROM~7_combout\) # (\MemoriaRAM|ram~69_q\) ) ) ) # ( !\MemoriaRAM|ram~53_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( (\ROM_instrucao|memROM~7_combout\ & \MemoriaRAM|ram~69_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~61_q\,
	datab => \MemoriaRAM|ALT_INV_ram~77_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~69_q\,
	datae => \MemoriaRAM|ALT_INV_ram~53_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~552_combout\);

-- Location: LABCELL_X44_Y7_N24
\MemoriaRAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~553_combout\ = ( \MemoriaRAM|ram~552_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~551_combout\) # (\ROM_instrucao|memROM~8_combout\))) ) ) # ( !\MemoriaRAM|ram~552_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & 
-- (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~551_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~551_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~552_combout\,
	combout => \MemoriaRAM|ram~553_combout\);

-- Location: LABCELL_X44_Y7_N9
\MemoriaRAM|dado_out[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[7]~11_combout\ = ( \MemoriaRAM|ram~558_combout\ ) # ( !\MemoriaRAM|ram~558_combout\ & ( !\MemoriaRAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~558_combout\,
	combout => \MemoriaRAM|dado_out[7]~11_combout\);

-- Location: LABCELL_X43_Y7_N54
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( \processador|REGA|DOUT\(7) ) + ( (!\processador|decoder|saida[4]~0_combout\ & (((!\MemoriaRAM|dado_out[7]~11_combout\)) # (\processador|decoder|Equal4~0_combout\))) # (\processador|decoder|saida[4]~0_combout\ & 
-- (!\processador|decoder|Equal4~2_combout\ $ (((!\MemoriaRAM|dado_out[7]~11_combout\) # (\processador|decoder|Equal4~0_combout\))))) ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	datab => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datac => \processador|decoder|ALT_INV_Equal4~2_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(7),
	dataf => \MemoriaRAM|ALT_INV_dado_out[7]~11_combout\,
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X44_Y7_N45
\processador|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[7]~7_combout\ = ( \MemoriaRAM|dado_out~0_combout\ & ( \MemoriaRAM|ram~558_combout\ & ( !\processador|decoder|Equal4~0_combout\ ) ) ) # ( !\MemoriaRAM|dado_out~0_combout\ & ( \MemoriaRAM|ram~558_combout\ & ( 
-- !\processador|decoder|Equal4~0_combout\ ) ) ) # ( !\MemoriaRAM|dado_out~0_combout\ & ( !\MemoriaRAM|ram~558_combout\ & ( !\processador|decoder|Equal4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|decoder|ALT_INV_Equal4~0_combout\,
	datae => \MemoriaRAM|ALT_INV_dado_out~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~558_combout\,
	combout => \processador|MUX1|saida_MUX[7]~7_combout\);

-- Location: FF_X43_Y7_N55
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~29_sumout\,
	asdata => \processador|MUX1|saida_MUX[7]~7_combout\,
	sload => \processador|decoder|ALT_INV_saida[4]~0_combout\,
	ena => \processador|decoder|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: FF_X44_Y7_N49
\MemoriaRAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~38_q\);

-- Location: FF_X43_Y7_N11
\MemoriaRAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~70_q\);

-- Location: LABCELL_X43_Y7_N9
\MemoriaRAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~557_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\MemoriaRAM|ram~38_q\)) # (\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~70_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~38_q\,
	datad => \MemoriaRAM|ALT_INV_ram~70_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~557_combout\);

-- Location: FF_X44_Y7_N13
\MemoriaRAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~22_q\);

-- Location: FF_X45_Y7_N53
\MemoriaRAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~54_q\);

-- Location: MLABCELL_X45_Y7_N51
\MemoriaRAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~555_combout\ = ( \MemoriaRAM|ram~54_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~8_combout\) # (\MemoriaRAM|ram~22_q\) ) ) ) # ( !\MemoriaRAM|ram~54_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~22_q\ 
-- & !\ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~22_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~54_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~555_combout\);

-- Location: FF_X45_Y7_N41
\MemoriaRAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~78_q\);

-- Location: FF_X45_Y7_N34
\MemoriaRAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~46_q\);

-- Location: LABCELL_X41_Y7_N57
\MemoriaRAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~556_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~46_q\))) # (\ROM_instrucao|memROM~8_combout\ & (\MemoriaRAM|ram~78_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~78_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~46_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~556_combout\);

-- Location: FF_X41_Y7_N29
\MemoriaRAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~30_q\);

-- Location: FF_X41_Y7_N11
\MemoriaRAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~62_q\);

-- Location: LABCELL_X41_Y7_N9
\MemoriaRAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~554_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\MemoriaRAM|ram~30_q\)) # (\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~62_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~30_q\,
	datad => \MemoriaRAM|ALT_INV_ram~62_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~554_combout\);

-- Location: LABCELL_X44_Y7_N51
\MemoriaRAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~558_combout\ = ( \MemoriaRAM|ram~556_combout\ & ( \MemoriaRAM|ram~554_combout\ & ( ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~555_combout\))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~557_combout\))) # 
-- (\ROM_instrucao|memROM~6_combout\) ) ) ) # ( !\MemoriaRAM|ram~556_combout\ & ( \MemoriaRAM|ram~554_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~555_combout\))) # 
-- (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~557_combout\)))) # (\ROM_instrucao|memROM~6_combout\ & (((!\ROM_instrucao|memROM~7_combout\)))) ) ) ) # ( \MemoriaRAM|ram~556_combout\ & ( !\MemoriaRAM|ram~554_combout\ & ( 
-- (!\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~555_combout\))) # (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~557_combout\)))) # (\ROM_instrucao|memROM~6_combout\ & 
-- (((\ROM_instrucao|memROM~7_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~556_combout\ & ( !\MemoriaRAM|ram~554_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~7_combout\ & ((\MemoriaRAM|ram~555_combout\))) # 
-- (\ROM_instrucao|memROM~7_combout\ & (\MemoriaRAM|ram~557_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~557_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~555_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~556_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~554_combout\,
	combout => \MemoriaRAM|ram~558_combout\);

-- Location: FF_X42_Y7_N46
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \processador|decoder|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y6_N18
\decoder_end|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_end|Equal7~0_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~5_combout\ & (!\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \decoder_end|Equal7~0_combout\);

-- Location: LABCELL_X43_Y6_N54
\decoder_end|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_end|Equal7~1_combout\ = ( \decoder_end|Equal7~0_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~7_combout\ & !\ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \decoder_end|ALT_INV_Equal7~0_combout\,
	combout => \decoder_end|Equal7~1_combout\);

-- Location: FF_X44_Y2_N8
\REG_4bit0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoder_end|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(1));

-- Location: FF_X44_Y2_N38
\REG_4bit0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \decoder_end|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(0));

-- Location: FF_X44_Y2_N11
\REG_4bit0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoder_end|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(2));

-- Location: FF_X44_Y2_N41
\REG_4bit0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \decoder_end|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(3));

-- Location: LABCELL_X44_Y2_N48
\decoder_binario0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[0]~0_combout\ = ( \REG_4bit0|DOUT\(3) & ( (\REG_4bit0|DOUT\(0) & (!\REG_4bit0|DOUT\(1) $ (!\REG_4bit0|DOUT\(2)))) ) ) # ( !\REG_4bit0|DOUT\(3) & ( (!\REG_4bit0|DOUT\(1) & (!\REG_4bit0|DOUT\(0) $ (!\REG_4bit0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit0|ALT_INV_DOUT\(1),
	datac => \REG_4bit0|ALT_INV_DOUT\(0),
	datad => \REG_4bit0|ALT_INV_DOUT\(2),
	dataf => \REG_4bit0|ALT_INV_DOUT\(3),
	combout => \decoder_binario0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y2_N51
\decoder_binario0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[1]~1_combout\ = ( \REG_4bit0|DOUT\(3) & ( (!\REG_4bit0|DOUT\(0) & ((\REG_4bit0|DOUT\(2)))) # (\REG_4bit0|DOUT\(0) & (\REG_4bit0|DOUT\(1))) ) ) # ( !\REG_4bit0|DOUT\(3) & ( (\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(0) $ 
-- (!\REG_4bit0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(0),
	datac => \REG_4bit0|ALT_INV_DOUT\(1),
	datad => \REG_4bit0|ALT_INV_DOUT\(2),
	dataf => \REG_4bit0|ALT_INV_DOUT\(3),
	combout => \decoder_binario0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y2_N54
\decoder_binario0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[2]~2_combout\ = ( \REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(3) & (!\REG_4bit0|DOUT\(0) & !\REG_4bit0|DOUT\(2))) # (\REG_4bit0|DOUT\(3) & ((\REG_4bit0|DOUT\(2)))) ) ) # ( !\REG_4bit0|DOUT\(1) & ( (\REG_4bit0|DOUT\(3) & 
-- (!\REG_4bit0|DOUT\(0) & \REG_4bit0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT\(0),
	datad => \REG_4bit0|ALT_INV_DOUT\(2),
	dataf => \REG_4bit0|ALT_INV_DOUT\(1),
	combout => \decoder_binario0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y2_N27
\decoder_binario0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[3]~3_combout\ = ( \REG_4bit0|DOUT\(3) & ( (\REG_4bit0|DOUT\(1) & (!\REG_4bit0|DOUT\(2) $ (\REG_4bit0|DOUT\(0)))) ) ) # ( !\REG_4bit0|DOUT\(3) & ( (!\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(1) & \REG_4bit0|DOUT\(0))) # 
-- (\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT\(1) $ (\REG_4bit0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT\(1),
	datad => \REG_4bit0|ALT_INV_DOUT\(0),
	dataf => \REG_4bit0|ALT_INV_DOUT\(3),
	combout => \decoder_binario0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y2_N39
\decoder_binario0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[4]~4_combout\ = ( !\REG_4bit0|DOUT\(3) & ( \REG_4bit0|DOUT\(2) & ( (!\REG_4bit0|DOUT\(1)) # (\REG_4bit0|DOUT\(0)) ) ) ) # ( \REG_4bit0|DOUT\(3) & ( !\REG_4bit0|DOUT\(2) & ( (\REG_4bit0|DOUT\(0) & !\REG_4bit0|DOUT\(1)) ) ) ) 
-- # ( !\REG_4bit0|DOUT\(3) & ( !\REG_4bit0|DOUT\(2) & ( \REG_4bit0|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(0),
	datac => \REG_4bit0|ALT_INV_DOUT\(1),
	datae => \REG_4bit0|ALT_INV_DOUT\(3),
	dataf => \REG_4bit0|ALT_INV_DOUT\(2),
	combout => \decoder_binario0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y2_N6
\decoder_binario0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[5]~5_combout\ = ( \REG_4bit0|DOUT\(2) & ( (\REG_4bit0|DOUT\(0) & (!\REG_4bit0|DOUT\(3) $ (!\REG_4bit0|DOUT\(1)))) ) ) # ( !\REG_4bit0|DOUT\(2) & ( (!\REG_4bit0|DOUT\(3) & ((\REG_4bit0|DOUT\(1)) # (\REG_4bit0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(0),
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datad => \REG_4bit0|ALT_INV_DOUT\(1),
	dataf => \REG_4bit0|ALT_INV_DOUT\(2),
	combout => \decoder_binario0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y2_N9
\decoder_binario0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[6]~6_combout\ = (!\REG_4bit0|DOUT\(0) & (!\REG_4bit0|DOUT\(1) & (!\REG_4bit0|DOUT\(3) $ (\REG_4bit0|DOUT\(2))))) # (\REG_4bit0|DOUT\(0) & (!\REG_4bit0|DOUT\(3) & (!\REG_4bit0|DOUT\(1) $ (\REG_4bit0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(0),
	datab => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT\(1),
	datad => \REG_4bit0|ALT_INV_DOUT\(2),
	combout => \decoder_binario0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y6_N3
\decoder_end|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_end|Equal7~2_combout\ = ( \decoder_end|Equal7~0_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~7_combout\ & \ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \decoder_end|ALT_INV_Equal7~0_combout\,
	combout => \decoder_end|Equal7~2_combout\);

-- Location: FF_X43_Y2_N50
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
	ena => \decoder_end|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(0));

-- Location: FF_X43_Y2_N8
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
	ena => \decoder_end|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(3));

-- Location: FF_X43_Y2_N29
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
	ena => \decoder_end|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(2));

-- Location: FF_X43_Y2_N26
\REG_4bit1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoder_end|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(1));

-- Location: LABCELL_X43_Y2_N54
\decoder_binario1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[0]~0_combout\ = ( \REG_4bit1|DOUT\(1) & ( (\REG_4bit1|DOUT\(0) & (\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(2))) ) ) # ( !\REG_4bit1|DOUT\(1) & ( (!\REG_4bit1|DOUT\(0) & (!\REG_4bit1|DOUT\(3) & \REG_4bit1|DOUT\(2))) # 
-- (\REG_4bit1|DOUT\(0) & (!\REG_4bit1|DOUT\(3) $ (\REG_4bit1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(0),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(2),
	dataf => \REG_4bit1|ALT_INV_DOUT\(1),
	combout => \decoder_binario1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y2_N57
\decoder_binario1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[1]~1_combout\ = ( \REG_4bit1|DOUT\(1) & ( (!\REG_4bit1|DOUT\(0) & ((\REG_4bit1|DOUT\(2)))) # (\REG_4bit1|DOUT\(0) & (\REG_4bit1|DOUT\(3))) ) ) # ( !\REG_4bit1|DOUT\(1) & ( (\REG_4bit1|DOUT\(2) & (!\REG_4bit1|DOUT\(0) $ 
-- (!\REG_4bit1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(0),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datad => \REG_4bit1|ALT_INV_DOUT\(2),
	dataf => \REG_4bit1|ALT_INV_DOUT\(1),
	combout => \decoder_binario1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N36
\decoder_binario1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[2]~2_combout\ = ( \REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT\(3) & ((!\REG_4bit1|DOUT\(0)) # (\REG_4bit1|DOUT\(1)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000001100010011000101000000010000000011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(1),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(0),
	datae => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N42
\decoder_binario1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[3]~3_combout\ = ( \REG_4bit1|DOUT\(1) & ( (!\REG_4bit1|DOUT\(0) & (\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(2))) # (\REG_4bit1|DOUT\(0) & ((\REG_4bit1|DOUT\(2)))) ) ) # ( !\REG_4bit1|DOUT\(1) & ( (!\REG_4bit1|DOUT\(3) & 
-- (!\REG_4bit1|DOUT\(0) $ (!\REG_4bit1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(0),
	datad => \REG_4bit1|ALT_INV_DOUT\(2),
	dataf => \REG_4bit1|ALT_INV_DOUT\(1),
	combout => \decoder_binario1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y2_N3
\decoder_binario1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[4]~4_combout\ = ( \REG_4bit1|DOUT\(0) & ( (!\REG_4bit1|DOUT\(3)) # ((!\REG_4bit1|DOUT\(1) & !\REG_4bit1|DOUT\(2))) ) ) # ( !\REG_4bit1|DOUT\(0) & ( (!\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT\(3) & \REG_4bit1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(1),
	datac => \REG_4bit1|ALT_INV_DOUT\(3),
	datad => \REG_4bit1|ALT_INV_DOUT\(2),
	dataf => \REG_4bit1|ALT_INV_DOUT\(0),
	combout => \decoder_binario1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N45
\decoder_binario1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[5]~5_combout\ = ( \REG_4bit1|DOUT\(1) & ( (!\REG_4bit1|DOUT\(3) & ((!\REG_4bit1|DOUT\(2)) # (\REG_4bit1|DOUT\(0)))) ) ) # ( !\REG_4bit1|DOUT\(1) & ( (\REG_4bit1|DOUT\(0) & (!\REG_4bit1|DOUT\(3) $ (\REG_4bit1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000111001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(0),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datad => \REG_4bit1|ALT_INV_DOUT\(2),
	dataf => \REG_4bit1|ALT_INV_DOUT\(1),
	combout => \decoder_binario1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N9
\decoder_binario1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[6]~6_combout\ = ( \REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(0) & (\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(1))) # (\REG_4bit1|DOUT\(0) & (!\REG_4bit1|DOUT\(3) & \REG_4bit1|DOUT\(1))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( 
-- (!\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001000100100010011001100000000000010001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(0),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datad => \REG_4bit1|ALT_INV_DOUT\(1),
	datae => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y6_N0
\decoder_end|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_end|Equal7~3_combout\ = ( !\ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~7_combout\ & \decoder_end|Equal7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \decoder_end|ALT_INV_Equal7~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \decoder_end|Equal7~3_combout\);

-- Location: FF_X44_Y2_N23
\REG_4bit2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \decoder_end|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(3));

-- Location: FF_X44_Y2_N20
\REG_4bit2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \decoder_end|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(0));

-- Location: FF_X44_Y2_N2
\REG_4bit2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoder_end|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(1));

-- Location: FF_X44_Y2_N4
\REG_4bit2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoder_end|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(2));

-- Location: LABCELL_X44_Y2_N24
\decoder_binario2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[0]~0_combout\ = ( \REG_4bit2|DOUT\(2) & ( (!\REG_4bit2|DOUT\(1) & (!\REG_4bit2|DOUT\(3) $ (\REG_4bit2|DOUT\(0)))) ) ) # ( !\REG_4bit2|DOUT\(2) & ( (\REG_4bit2|DOUT\(0) & (!\REG_4bit2|DOUT\(3) $ (\REG_4bit2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(3),
	datac => \REG_4bit2|ALT_INV_DOUT\(0),
	datad => \REG_4bit2|ALT_INV_DOUT\(1),
	dataf => \REG_4bit2|ALT_INV_DOUT\(2),
	combout => \decoder_binario2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y2_N27
\decoder_binario2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[1]~1_combout\ = (!\REG_4bit2|DOUT\(3) & (\REG_4bit2|DOUT\(2) & (!\REG_4bit2|DOUT\(0) $ (!\REG_4bit2|DOUT\(1))))) # (\REG_4bit2|DOUT\(3) & ((!\REG_4bit2|DOUT\(0) & (\REG_4bit2|DOUT\(2))) # (\REG_4bit2|DOUT\(0) & 
-- ((\REG_4bit2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011101000001100001110100000110000111010000011000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(3),
	datab => \REG_4bit2|ALT_INV_DOUT\(0),
	datac => \REG_4bit2|ALT_INV_DOUT\(2),
	datad => \REG_4bit2|ALT_INV_DOUT\(1),
	combout => \decoder_binario2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y2_N18
\decoder_binario2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[2]~2_combout\ = (!\REG_4bit2|DOUT\(2) & (\REG_4bit2|DOUT\(1) & (!\REG_4bit2|DOUT\(3) & !\REG_4bit2|DOUT\(0)))) # (\REG_4bit2|DOUT\(2) & (\REG_4bit2|DOUT\(3) & ((!\REG_4bit2|DOUT\(0)) # (\REG_4bit2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100000001010000110000000101000011000000010100001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(1),
	datab => \REG_4bit2|ALT_INV_DOUT\(2),
	datac => \REG_4bit2|ALT_INV_DOUT\(3),
	datad => \REG_4bit2|ALT_INV_DOUT\(0),
	combout => \decoder_binario2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N0
\decoder_binario2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[3]~3_combout\ = ( \REG_4bit2|DOUT\(1) & ( (!\REG_4bit2|DOUT\(0) & (\REG_4bit2|DOUT\(3) & !\REG_4bit2|DOUT\(2))) # (\REG_4bit2|DOUT\(0) & ((\REG_4bit2|DOUT\(2)))) ) ) # ( !\REG_4bit2|DOUT\(1) & ( (!\REG_4bit2|DOUT\(3) & 
-- (!\REG_4bit2|DOUT\(0) $ (!\REG_4bit2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit2|ALT_INV_DOUT\(0),
	datac => \REG_4bit2|ALT_INV_DOUT\(3),
	datad => \REG_4bit2|ALT_INV_DOUT\(2),
	dataf => \REG_4bit2|ALT_INV_DOUT\(1),
	combout => \decoder_binario2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y2_N21
\decoder_binario2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[4]~4_combout\ = ( \REG_4bit2|DOUT\(0) & ( (!\REG_4bit2|DOUT\(3)) # ((!\REG_4bit2|DOUT\(1) & !\REG_4bit2|DOUT\(2))) ) ) # ( !\REG_4bit2|DOUT\(0) & ( (!\REG_4bit2|DOUT\(1) & (\REG_4bit2|DOUT\(2) & !\REG_4bit2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(1),
	datab => \REG_4bit2|ALT_INV_DOUT\(2),
	datad => \REG_4bit2|ALT_INV_DOUT\(3),
	dataf => \REG_4bit2|ALT_INV_DOUT\(0),
	combout => \decoder_binario2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y2_N0
\decoder_binario2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[5]~5_combout\ = ( \REG_4bit2|DOUT\(1) & ( \REG_4bit2|DOUT\(0) & ( !\REG_4bit2|DOUT\(3) ) ) ) # ( !\REG_4bit2|DOUT\(1) & ( \REG_4bit2|DOUT\(0) & ( !\REG_4bit2|DOUT\(2) $ (\REG_4bit2|DOUT\(3)) ) ) ) # ( \REG_4bit2|DOUT\(1) & 
-- ( !\REG_4bit2|DOUT\(0) & ( (!\REG_4bit2|DOUT\(2) & !\REG_4bit2|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit2|ALT_INV_DOUT\(2),
	datac => \REG_4bit2|ALT_INV_DOUT\(3),
	datae => \REG_4bit2|ALT_INV_DOUT\(1),
	dataf => \REG_4bit2|ALT_INV_DOUT\(0),
	combout => \decoder_binario2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N24
\decoder_binario2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[6]~6_combout\ = (!\REG_4bit2|DOUT\(0) & (!\REG_4bit2|DOUT\(1) & (!\REG_4bit2|DOUT\(3) $ (\REG_4bit2|DOUT\(2))))) # (\REG_4bit2|DOUT\(0) & (!\REG_4bit2|DOUT\(3) & (!\REG_4bit2|DOUT\(2) $ (\REG_4bit2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010000000010101001000000001010100100000000101010010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(3),
	datab => \REG_4bit2|ALT_INV_DOUT\(0),
	datac => \REG_4bit2|ALT_INV_DOUT\(2),
	datad => \REG_4bit2|ALT_INV_DOUT\(1),
	combout => \decoder_binario2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y6_N57
\decoder_end|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_end|Equal7~4_combout\ = ( \decoder_end|Equal7~0_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~7_combout\ & \ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \decoder_end|ALT_INV_Equal7~0_combout\,
	combout => \decoder_end|Equal7~4_combout\);

-- Location: FF_X44_Y2_N47
\REG_4bit3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoder_end|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(1));

-- Location: FF_X44_Y2_N59
\REG_4bit3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \decoder_end|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(0));

-- Location: FF_X44_Y2_N14
\REG_4bit3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoder_end|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(2));

-- Location: FF_X44_Y2_N44
\REG_4bit3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \decoder_end|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(3));

-- Location: LABCELL_X44_Y2_N15
\decoder_binario3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[0]~0_combout\ = ( \REG_4bit3|DOUT\(3) & ( (\REG_4bit3|DOUT\(0) & (!\REG_4bit3|DOUT\(1) $ (!\REG_4bit3|DOUT\(2)))) ) ) # ( !\REG_4bit3|DOUT\(3) & ( (!\REG_4bit3|DOUT\(1) & (!\REG_4bit3|DOUT\(0) $ (!\REG_4bit3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit3|ALT_INV_DOUT\(1),
	datac => \REG_4bit3|ALT_INV_DOUT\(0),
	datad => \REG_4bit3|ALT_INV_DOUT\(2),
	dataf => \REG_4bit3|ALT_INV_DOUT\(3),
	combout => \decoder_binario3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y2_N30
\decoder_binario3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[1]~1_combout\ = ( \REG_4bit3|DOUT\(3) & ( (!\REG_4bit3|DOUT\(0) & ((\REG_4bit3|DOUT\(2)))) # (\REG_4bit3|DOUT\(0) & (\REG_4bit3|DOUT\(1))) ) ) # ( !\REG_4bit3|DOUT\(3) & ( (\REG_4bit3|DOUT\(2) & (!\REG_4bit3|DOUT\(1) $ 
-- (!\REG_4bit3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit3|ALT_INV_DOUT\(1),
	datac => \REG_4bit3|ALT_INV_DOUT\(2),
	datad => \REG_4bit3|ALT_INV_DOUT\(0),
	dataf => \REG_4bit3|ALT_INV_DOUT\(3),
	combout => \decoder_binario3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y2_N33
\decoder_binario3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[2]~2_combout\ = ( \REG_4bit3|DOUT\(3) & ( (\REG_4bit3|DOUT\(2) & ((!\REG_4bit3|DOUT\(0)) # (\REG_4bit3|DOUT\(1)))) ) ) # ( !\REG_4bit3|DOUT\(3) & ( (\REG_4bit3|DOUT\(1) & (!\REG_4bit3|DOUT\(2) & !\REG_4bit3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit3|ALT_INV_DOUT\(1),
	datac => \REG_4bit3|ALT_INV_DOUT\(2),
	datad => \REG_4bit3|ALT_INV_DOUT\(0),
	dataf => \REG_4bit3|ALT_INV_DOUT\(3),
	combout => \decoder_binario3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y2_N57
\decoder_binario3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[3]~3_combout\ = ( \REG_4bit3|DOUT\(3) & ( (\REG_4bit3|DOUT\(1) & (!\REG_4bit3|DOUT\(2) $ (\REG_4bit3|DOUT\(0)))) ) ) # ( !\REG_4bit3|DOUT\(3) & ( (!\REG_4bit3|DOUT\(2) & (!\REG_4bit3|DOUT\(1) & \REG_4bit3|DOUT\(0))) # 
-- (\REG_4bit3|DOUT\(2) & (!\REG_4bit3|DOUT\(1) $ (\REG_4bit3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT\(2),
	datac => \REG_4bit3|ALT_INV_DOUT\(1),
	datad => \REG_4bit3|ALT_INV_DOUT\(0),
	dataf => \REG_4bit3|ALT_INV_DOUT\(3),
	combout => \decoder_binario3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y2_N42
\decoder_binario3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[4]~4_combout\ = (!\REG_4bit3|DOUT\(1) & ((!\REG_4bit3|DOUT\(2) & (\REG_4bit3|DOUT\(0))) # (\REG_4bit3|DOUT\(2) & ((!\REG_4bit3|DOUT\(3)))))) # (\REG_4bit3|DOUT\(1) & (((\REG_4bit3|DOUT\(0) & !\REG_4bit3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100100000011100110010000001110011001000000111001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT\(2),
	datab => \REG_4bit3|ALT_INV_DOUT\(0),
	datac => \REG_4bit3|ALT_INV_DOUT\(1),
	datad => \REG_4bit3|ALT_INV_DOUT\(3),
	combout => \decoder_binario3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y2_N45
\decoder_binario3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[5]~5_combout\ = (!\REG_4bit3|DOUT\(2) & (!\REG_4bit3|DOUT\(3) & ((\REG_4bit3|DOUT\(1)) # (\REG_4bit3|DOUT\(0))))) # (\REG_4bit3|DOUT\(2) & (\REG_4bit3|DOUT\(0) & (!\REG_4bit3|DOUT\(3) $ (!\REG_4bit3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110110000001000011011000000100001101100000010000110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT\(2),
	datab => \REG_4bit3|ALT_INV_DOUT\(0),
	datac => \REG_4bit3|ALT_INV_DOUT\(3),
	datad => \REG_4bit3|ALT_INV_DOUT\(1),
	combout => \decoder_binario3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y2_N12
\decoder_binario3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[6]~6_combout\ = ( \REG_4bit3|DOUT\(3) & ( (!\REG_4bit3|DOUT\(0) & (!\REG_4bit3|DOUT\(1) & \REG_4bit3|DOUT\(2))) ) ) # ( !\REG_4bit3|DOUT\(3) & ( (!\REG_4bit3|DOUT\(1) & ((!\REG_4bit3|DOUT\(2)))) # (\REG_4bit3|DOUT\(1) & 
-- (\REG_4bit3|DOUT\(0) & \REG_4bit3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000010001110011000001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT\(0),
	datab => \REG_4bit3|ALT_INV_DOUT\(1),
	datad => \REG_4bit3|ALT_INV_DOUT\(2),
	dataf => \REG_4bit3|ALT_INV_DOUT\(3),
	combout => \decoder_binario3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y6_N6
\decoder_end|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_end|Equal7~5_combout\ = ( \decoder_end|Equal7~0_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~7_combout\ & !\ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \decoder_end|ALT_INV_Equal7~0_combout\,
	combout => \decoder_end|Equal7~5_combout\);

-- Location: FF_X43_Y2_N20
\REG_4bit4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \decoder_end|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(0));

-- Location: FF_X43_Y2_N41
\REG_4bit4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \decoder_end|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(3));

-- Location: FF_X43_Y2_N14
\REG_4bit4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoder_end|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(2));

-- Location: FF_X43_Y2_N23
\REG_4bit4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoder_end|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(1));

-- Location: LABCELL_X43_Y2_N15
\decoder_binario4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[0]~0_combout\ = (!\REG_4bit4|DOUT\(3) & (!\REG_4bit4|DOUT\(1) & (!\REG_4bit4|DOUT\(0) $ (!\REG_4bit4|DOUT\(2))))) # (\REG_4bit4|DOUT\(3) & (\REG_4bit4|DOUT\(0) & (!\REG_4bit4|DOUT\(2) $ (!\REG_4bit4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(0),
	datab => \REG_4bit4|ALT_INV_DOUT\(3),
	datac => \REG_4bit4|ALT_INV_DOUT\(2),
	datad => \REG_4bit4|ALT_INV_DOUT\(1),
	combout => \decoder_binario4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y2_N30
\decoder_binario4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[1]~1_combout\ = ( \REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(0) & ((\REG_4bit4|DOUT\(1)) # (\REG_4bit4|DOUT\(3)))) # (\REG_4bit4|DOUT\(0) & (!\REG_4bit4|DOUT\(3) $ (\REG_4bit4|DOUT\(1)))) ) ) # ( !\REG_4bit4|DOUT\(2) & ( 
-- (\REG_4bit4|DOUT\(0) & (\REG_4bit4|DOUT\(3) & \REG_4bit4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(0),
	datab => \REG_4bit4|ALT_INV_DOUT\(3),
	datad => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N33
\decoder_binario4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[2]~2_combout\ = ( \REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(3) & ((!\REG_4bit4|DOUT\(0)) # (\REG_4bit4|DOUT\(1)))) ) ) # ( !\REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(0) & (!\REG_4bit4|DOUT\(3) & \REG_4bit4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(0),
	datab => \REG_4bit4|ALT_INV_DOUT\(3),
	datad => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N18
\decoder_binario4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[3]~3_combout\ = (!\REG_4bit4|DOUT\(1) & (!\REG_4bit4|DOUT\(3) & (!\REG_4bit4|DOUT\(2) $ (!\REG_4bit4|DOUT\(0))))) # (\REG_4bit4|DOUT\(1) & ((!\REG_4bit4|DOUT\(2) & (\REG_4bit4|DOUT\(3) & !\REG_4bit4|DOUT\(0))) # 
-- (\REG_4bit4|DOUT\(2) & ((\REG_4bit4|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(3),
	datab => \REG_4bit4|ALT_INV_DOUT\(2),
	datac => \REG_4bit4|ALT_INV_DOUT\(1),
	datad => \REG_4bit4|ALT_INV_DOUT\(0),
	combout => \decoder_binario4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y2_N51
\decoder_binario4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[4]~4_combout\ = ( \REG_4bit4|DOUT\(1) & ( (\REG_4bit4|DOUT\(0) & !\REG_4bit4|DOUT\(3)) ) ) # ( !\REG_4bit4|DOUT\(1) & ( (!\REG_4bit4|DOUT\(2) & (\REG_4bit4|DOUT\(0))) # (\REG_4bit4|DOUT\(2) & ((!\REG_4bit4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100010100000101000001110100011101000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(0),
	datab => \REG_4bit4|ALT_INV_DOUT\(2),
	datac => \REG_4bit4|ALT_INV_DOUT\(3),
	datae => \REG_4bit4|ALT_INV_DOUT\(1),
	combout => \decoder_binario4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N21
\decoder_binario4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[5]~5_combout\ = ( \REG_4bit4|DOUT\(0) & ( !\REG_4bit4|DOUT\(3) $ (((\REG_4bit4|DOUT\(2) & !\REG_4bit4|DOUT\(1)))) ) ) # ( !\REG_4bit4|DOUT\(0) & ( (!\REG_4bit4|DOUT\(3) & (!\REG_4bit4|DOUT\(2) & \REG_4bit4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101101010101010010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(3),
	datac => \REG_4bit4|ALT_INV_DOUT\(2),
	datad => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(0),
	combout => \decoder_binario4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N12
\decoder_binario4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[6]~6_combout\ = (!\REG_4bit4|DOUT\(0) & (!\REG_4bit4|DOUT\(1) & (!\REG_4bit4|DOUT\(3) $ (\REG_4bit4|DOUT\(2))))) # (\REG_4bit4|DOUT\(0) & (!\REG_4bit4|DOUT\(3) & (!\REG_4bit4|DOUT\(1) $ (\REG_4bit4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(0),
	datab => \REG_4bit4|ALT_INV_DOUT\(3),
	datac => \REG_4bit4|ALT_INV_DOUT\(1),
	datad => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y6_N33
\decoder_end|Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_end|Equal7~6_combout\ = ( \decoder_end|Equal7~0_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~7_combout\ & \ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \decoder_end|ALT_INV_Equal7~0_combout\,
	combout => \decoder_end|Equal7~6_combout\);

-- Location: FF_X42_Y6_N53
\REG_4bit5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \decoder_end|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(2));

-- Location: FF_X42_Y6_N17
\REG_4bit5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \decoder_end|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(3));

-- Location: FF_X42_Y6_N59
\REG_4bit5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoder_end|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(1));

-- Location: FF_X42_Y6_N11
\REG_4bit5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \decoder_end|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(0));

-- Location: MLABCELL_X42_Y6_N45
\decoder_binario5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[0]~0_combout\ = ( \REG_4bit5|DOUT\(0) & ( (!\REG_4bit5|DOUT\(2) & (!\REG_4bit5|DOUT\(3) $ (\REG_4bit5|DOUT\(1)))) # (\REG_4bit5|DOUT\(2) & (\REG_4bit5|DOUT\(3) & !\REG_4bit5|DOUT\(1))) ) ) # ( !\REG_4bit5|DOUT\(0) & ( 
-- (\REG_4bit5|DOUT\(2) & (!\REG_4bit5|DOUT\(3) & !\REG_4bit5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit5|ALT_INV_DOUT\(2),
	datab => \REG_4bit5|ALT_INV_DOUT\(3),
	datac => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(0),
	combout => \decoder_binario5|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y6_N36
\decoder_binario5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[1]~1_combout\ = ( \REG_4bit5|DOUT\(3) & ( (!\REG_4bit5|DOUT\(0) & (\REG_4bit5|DOUT\(2))) # (\REG_4bit5|DOUT\(0) & ((\REG_4bit5|DOUT\(1)))) ) ) # ( !\REG_4bit5|DOUT\(3) & ( (\REG_4bit5|DOUT\(2) & (!\REG_4bit5|DOUT\(0) $ 
-- (!\REG_4bit5|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit5|ALT_INV_DOUT\(2),
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datad => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(3),
	combout => \decoder_binario5|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y6_N30
\decoder_binario5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[2]~2_combout\ = ( \REG_4bit5|DOUT\(3) & ( (\REG_4bit5|DOUT\(2) & ((!\REG_4bit5|DOUT\(0)) # (\REG_4bit5|DOUT\(1)))) ) ) # ( !\REG_4bit5|DOUT\(3) & ( (!\REG_4bit5|DOUT\(0) & (!\REG_4bit5|DOUT\(2) & \REG_4bit5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datac => \REG_4bit5|ALT_INV_DOUT\(2),
	datad => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(3),
	combout => \decoder_binario5|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y6_N24
\decoder_binario5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[3]~3_combout\ = ( \REG_4bit5|DOUT\(3) & ( (\REG_4bit5|DOUT\(1) & (!\REG_4bit5|DOUT\(0) $ (\REG_4bit5|DOUT\(2)))) ) ) # ( !\REG_4bit5|DOUT\(3) & ( (!\REG_4bit5|DOUT\(0) & (\REG_4bit5|DOUT\(2) & !\REG_4bit5|DOUT\(1))) # 
-- (\REG_4bit5|DOUT\(0) & (!\REG_4bit5|DOUT\(2) $ (\REG_4bit5|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datac => \REG_4bit5|ALT_INV_DOUT\(2),
	datad => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(3),
	combout => \decoder_binario5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y6_N39
\decoder_binario5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[4]~4_combout\ = (!\REG_4bit5|DOUT\(1) & ((!\REG_4bit5|DOUT\(2) & (\REG_4bit5|DOUT\(0))) # (\REG_4bit5|DOUT\(2) & ((!\REG_4bit5|DOUT\(3)))))) # (\REG_4bit5|DOUT\(1) & (((\REG_4bit5|DOUT\(0) & !\REG_4bit5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000110000011100100011000001110010001100000111001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit5|ALT_INV_DOUT\(2),
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datac => \REG_4bit5|ALT_INV_DOUT\(3),
	datad => \REG_4bit5|ALT_INV_DOUT\(1),
	combout => \decoder_binario5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y6_N18
\decoder_binario5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[5]~5_combout\ = ( \REG_4bit5|DOUT\(3) & ( (\REG_4bit5|DOUT\(0) & (\REG_4bit5|DOUT\(2) & !\REG_4bit5|DOUT\(1))) ) ) # ( !\REG_4bit5|DOUT\(3) & ( (!\REG_4bit5|DOUT\(0) & (!\REG_4bit5|DOUT\(2) & \REG_4bit5|DOUT\(1))) # 
-- (\REG_4bit5|DOUT\(0) & ((!\REG_4bit5|DOUT\(2)) # (\REG_4bit5|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datac => \REG_4bit5|ALT_INV_DOUT\(2),
	datad => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(3),
	combout => \decoder_binario5|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y6_N0
\decoder_binario5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[6]~6_combout\ = ( \REG_4bit5|DOUT\(0) & ( (!\REG_4bit5|DOUT\(3) & (!\REG_4bit5|DOUT\(2) $ (\REG_4bit5|DOUT\(1)))) ) ) # ( !\REG_4bit5|DOUT\(0) & ( (!\REG_4bit5|DOUT\(1) & (!\REG_4bit5|DOUT\(3) $ (\REG_4bit5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit5|ALT_INV_DOUT\(3),
	datac => \REG_4bit5|ALT_INV_DOUT\(2),
	datad => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(0),
	combout => \decoder_binario5|rascSaida7seg[6]~6_combout\);

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
END structure;


