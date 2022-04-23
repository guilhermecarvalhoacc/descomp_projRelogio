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

-- DATE "04/23/2022 12:00:17"

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
	HabilitaRam : BUFFER std_logic;
	read_ram : BUFFER std_logic;
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	ulaB_verifica : BUFFER std_logic_vector(7 DOWNTO 0);
	ulaA_verifica : BUFFER std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	dbgInstructionROM : BUFFER std_logic_vector(12 DOWNTO 0);
	dbgEntradaRAM : BUFFER std_logic_vector(7 DOWNTO 0);
	dbgSaidaRAM : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END aula7;

-- Design Ports Information
-- HabilitaRam	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_ram	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- PC_OUT[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaB_verifica[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ulaA_verifica[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- dbgInstructionROM[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[7]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[10]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgInstructionROM[12]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgEntradaRAM[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgSaidaRAM[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~34\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUXJMP|saida_MUX[4]~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \habilita_KEY0~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[0]~3_combout\ : std_logic;
SIGNAL \habilita_FPGA_RESET~0_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \buffer_FPGA_RESET|saida[0]~1_combout\ : std_logic;
SIGNAL \habilita_KEY0~2_combout\ : std_logic;
SIGNAL \buffer_FPGA_RESET|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[0]~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[0]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[0]~15_combout\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[0]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[3]~4_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[4]~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \MemoriaRAM|dado_out[7]~6_combout\ : std_logic;
SIGNAL \processador|decoder|HabilitaA~0_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \habilita_reg4bit0~0_combout\ : std_logic;
SIGNAL \habilita_registrador~0_combout\ : std_logic;
SIGNAL \registrador_8bits|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \flipflop2|DOUT~0_combout\ : std_logic;
SIGNAL \flipflop2|DOUT~feeder_combout\ : std_logic;
SIGNAL \flipflop2|DOUT~q\ : std_logic;
SIGNAL \flipflop1|DOUT~0_combout\ : std_logic;
SIGNAL \flipflop1|DOUT~feeder_combout\ : std_logic;
SIGNAL \flipflop1|DOUT~q\ : std_logic;
SIGNAL \habilita_KEY0~0_combout\ : std_logic;
SIGNAL \habilita_reg4bit0~1_combout\ : std_logic;
SIGNAL \REG_4bit0|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_reg4bit1~0_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_4bit2|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \habilita_reg4bit2~0_combout\ : std_logic;
SIGNAL \REG_4bit2|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \REG_4bit2|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \REG_4bit2|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \REG_4bit2|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_reg4bit3~0_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \REG_4bit3|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_reg4bit5~0_combout\ : std_logic;
SIGNAL \habilita_reg4bit4~0_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habilita_reg4bit5~combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoder_binario5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \REG_4bit4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_4bit5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \registrador_8bits|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \buffer_FPGA_RESET|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_KEY0~2_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_habilita_reg4bit5~0_combout\ : std_logic;
SIGNAL \flipflop1|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \flipflop2|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_reg4bit0~0_combout\ : std_logic;
SIGNAL \REG_4bit5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_4bit0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemoriaRAM|ALT_INV_dado_out[0]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_dado_out[0]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_KEY0~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_dado_out[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \buffer_FPGA_RESET|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_KEY0~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_habilita_FPGA_RESET~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \flipflop1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \flipflop2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM_instrucao|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

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
\REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_4bit3|DOUT[0]~DUPLICATE_q\;
\REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_4bit2|DOUT[0]~DUPLICATE_q\;
\REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_4bit0|DOUT[0]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\buffer_FPGA_RESET|ALT_INV_saida[0]~1_combout\ <= NOT \buffer_FPGA_RESET|saida[0]~1_combout\;
\ALT_INV_habilita_KEY0~2_combout\ <= NOT \habilita_KEY0~2_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ALT_INV_habilita_reg4bit5~0_combout\ <= NOT \habilita_reg4bit5~0_combout\;
\flipflop1|ALT_INV_DOUT~0_combout\ <= NOT \flipflop1|DOUT~0_combout\;
\flipflop2|ALT_INV_DOUT~0_combout\ <= NOT \flipflop2|DOUT~0_combout\;
\ALT_INV_habilita_reg4bit0~0_combout\ <= NOT \habilita_reg4bit0~0_combout\;
\REG_4bit5|ALT_INV_DOUT\(1) <= NOT \REG_4bit5|DOUT\(1);
\REG_4bit5|ALT_INV_DOUT\(2) <= NOT \REG_4bit5|DOUT\(2);
\REG_4bit5|ALT_INV_DOUT\(3) <= NOT \REG_4bit5|DOUT\(3);
\REG_4bit5|ALT_INV_DOUT\(0) <= NOT \REG_4bit5|DOUT\(0);
\REG_4bit4|ALT_INV_DOUT\(1) <= NOT \REG_4bit4|DOUT\(1);
\REG_4bit4|ALT_INV_DOUT\(2) <= NOT \REG_4bit4|DOUT\(2);
\REG_4bit4|ALT_INV_DOUT\(3) <= NOT \REG_4bit4|DOUT\(3);
\REG_4bit4|ALT_INV_DOUT\(0) <= NOT \REG_4bit4|DOUT\(0);
\REG_4bit3|ALT_INV_DOUT\(1) <= NOT \REG_4bit3|DOUT\(1);
\REG_4bit3|ALT_INV_DOUT\(2) <= NOT \REG_4bit3|DOUT\(2);
\REG_4bit3|ALT_INV_DOUT\(3) <= NOT \REG_4bit3|DOUT\(3);
\REG_4bit3|ALT_INV_DOUT\(0) <= NOT \REG_4bit3|DOUT\(0);
\REG_4bit2|ALT_INV_DOUT\(1) <= NOT \REG_4bit2|DOUT\(1);
\REG_4bit2|ALT_INV_DOUT\(2) <= NOT \REG_4bit2|DOUT\(2);
\REG_4bit2|ALT_INV_DOUT\(3) <= NOT \REG_4bit2|DOUT\(3);
\REG_4bit2|ALT_INV_DOUT\(0) <= NOT \REG_4bit2|DOUT\(0);
\REG_4bit1|ALT_INV_DOUT\(1) <= NOT \REG_4bit1|DOUT\(1);
\REG_4bit1|ALT_INV_DOUT\(2) <= NOT \REG_4bit1|DOUT\(2);
\REG_4bit1|ALT_INV_DOUT\(3) <= NOT \REG_4bit1|DOUT\(3);
\REG_4bit1|ALT_INV_DOUT\(0) <= NOT \REG_4bit1|DOUT\(0);
\REG_4bit0|ALT_INV_DOUT\(1) <= NOT \REG_4bit0|DOUT\(1);
\REG_4bit0|ALT_INV_DOUT\(2) <= NOT \REG_4bit0|DOUT\(2);
\REG_4bit0|ALT_INV_DOUT\(3) <= NOT \REG_4bit0|DOUT\(3);
\REG_4bit0|ALT_INV_DOUT\(0) <= NOT \REG_4bit0|DOUT\(0);
\MemoriaRAM|ALT_INV_dado_out[0]~3_combout\ <= NOT \MemoriaRAM|dado_out[0]~3_combout\;
\MemoriaRAM|ALT_INV_dado_out[0]~2_combout\ <= NOT \MemoriaRAM|dado_out[0]~2_combout\;
\MemoriaRAM|ALT_INV_dado_out[0]~1_combout\ <= NOT \MemoriaRAM|dado_out[0]~1_combout\;
\ALT_INV_habilita_KEY0~1_combout\ <= NOT \habilita_KEY0~1_combout\;
\MemoriaRAM|ALT_INV_dado_out[0]~0_combout\ <= NOT \MemoriaRAM|dado_out[0]~0_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\buffer_FPGA_RESET|ALT_INV_saida[0]~0_combout\ <= NOT \buffer_FPGA_RESET|saida[0]~0_combout\;
\ALT_INV_habilita_KEY0~0_combout\ <= NOT \habilita_KEY0~0_combout\;
\ROM_instrucao|ALT_INV_memROM~7_combout\ <= NOT \ROM_instrucao|memROM~7_combout\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\ROM_instrucao|ALT_INV_memROM~5_combout\ <= NOT \ROM_instrucao|memROM~5_combout\;
\ALT_INV_habilita_FPGA_RESET~0_combout\ <= NOT \habilita_FPGA_RESET~0_combout\;
\ROM_instrucao|ALT_INV_memROM~4_combout\ <= NOT \ROM_instrucao|memROM~4_combout\;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\flipflop1|ALT_INV_DOUT~q\ <= NOT \flipflop1|DOUT~q\;
\flipflop2|ALT_INV_DOUT~q\ <= NOT \flipflop2|DOUT~q\;
\ROM_instrucao|ALT_INV_memROM~2_combout\ <= NOT \ROM_instrucao|memROM~2_combout\;
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\ROM_instrucao|ALT_INV_memROM~1_combout\ <= NOT \ROM_instrucao|memROM~1_combout\;
\ROM_instrucao|ALT_INV_memROM~0_combout\ <= NOT \ROM_instrucao|memROM~0_combout\;
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \processador|incrementaPC|Add0~33_sumout\;
\processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \processador|incrementaPC|Add0~29_sumout\;
\processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \processador|incrementaPC|Add0~21_sumout\;
\processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \processador|incrementaPC|Add0~5_sumout\;
\processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \processador|incrementaPC|Add0~1_sumout\;
\processador|REGA|ALT_INV_DOUT\(7) <= NOT \processador|REGA|DOUT\(7);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);

-- Location: IOOBUF_X38_Y45_N19
\dbgSaidaRAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|dado_out[0]~15_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(0));

-- Location: IOOBUF_X42_Y45_N19
\dbgSaidaRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[1]~1_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(1));

-- Location: IOOBUF_X54_Y16_N5
\dbgSaidaRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[2]~2_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(2));

-- Location: IOOBUF_X50_Y45_N36
\dbgSaidaRAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|dado_out[3]~4_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(3));

-- Location: IOOBUF_X40_Y45_N76
\dbgSaidaRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|dado_out[4]~5_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(4));

-- Location: IOOBUF_X42_Y45_N36
\dbgSaidaRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[5]~3_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(5));

-- Location: IOOBUF_X38_Y45_N36
\dbgSaidaRAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[6]~4_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(6));

-- Location: IOOBUF_X40_Y45_N59
\dbgSaidaRAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|dado_out[7]~6_combout\,
	oe => \MemoriaRAM|dado_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgSaidaRAM(7));

-- Location: IOOBUF_X18_Y0_N36
\HabilitaRam~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_HabilitaRam);

-- Location: IOOBUF_X25_Y0_N19
\read_ram~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoder|HabilitaA~0_combout\,
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
	i => \registrador_8bits|DOUT\(0),
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
	i => \registrador_8bits|DOUT\(1),
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
	i => \registrador_8bits|DOUT\(2),
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
	i => \registrador_8bits|DOUT\(3),
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
	i => \registrador_8bits|DOUT\(4),
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
	i => \registrador_8bits|DOUT\(5),
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
	i => \registrador_8bits|DOUT\(6),
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
	i => \registrador_8bits|DOUT\(7),
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
	i => \flipflop2|DOUT~q\,
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
	i => \flipflop1|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X54_Y14_N96
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X40_Y45_N42
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

-- Location: IOOBUF_X19_Y0_N19
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X23_Y0_N76
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X36_Y45_N53
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

-- Location: IOOBUF_X38_Y45_N53
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

-- Location: IOOBUF_X50_Y45_N19
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

-- Location: IOOBUF_X54_Y15_N39
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

-- Location: IOOBUF_X48_Y45_N2
\ulaB_verifica[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|dado_out[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(3));

-- Location: IOOBUF_X38_Y45_N2
\ulaB_verifica[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|dado_out[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(4));

-- Location: IOOBUF_X43_Y45_N53
\ulaB_verifica[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(5));

-- Location: IOOBUF_X36_Y45_N19
\ulaB_verifica[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|MUX1|saida_MUX[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(6));

-- Location: IOOBUF_X40_Y45_N93
\ulaB_verifica[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoriaRAM|dado_out[7]~6_combout\,
	devoe => ww_devoe,
	o => ww_ulaB_verifica(7));

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X34_Y45_N19
\ulaA_verifica[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_ulaA_verifica(4));

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X20_Y45_N2
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X29_Y0_N36
\dbgInstructionROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(0));

-- Location: IOOBUF_X29_Y0_N53
\dbgInstructionROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(1));

-- Location: IOOBUF_X54_Y14_N62
\dbgInstructionROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(2));

-- Location: IOOBUF_X54_Y19_N22
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X38_Y0_N2
\dbgInstructionROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(5));

-- Location: IOOBUF_X54_Y14_N45
\dbgInstructionROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \habilita_FPGA_RESET~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(6));

-- Location: IOOBUF_X20_Y45_N53
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

-- Location: IOOBUF_X18_Y0_N53
\dbgInstructionROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(8));

-- Location: IOOBUF_X18_Y0_N2
\dbgInstructionROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(9));

-- Location: IOOBUF_X24_Y0_N19
\dbgInstructionROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(10));

-- Location: IOOBUF_X25_Y0_N36
\dbgInstructionROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_dbgInstructionROM(11));

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X54_Y18_N62
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

-- Location: IOOBUF_X36_Y45_N36
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X34_Y45_N2
\dbgEntradaRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_dbgEntradaRAM(4));

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X20_Y45_N19
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

-- Location: IOOBUF_X34_Y45_N53
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

-- Location: LABCELL_X10_Y2_N3
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y2_N4
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X36_Y8_N6
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\gravar:detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X39_Y9_N30
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

-- Location: LABCELL_X39_Y9_N33
\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~34\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~33_sumout\,
	cout => \processador|incrementaPC|Add0~34\);

-- Location: LABCELL_X39_Y9_N36
\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~34\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~34\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

-- Location: LABCELL_X36_Y9_N39
\processador|MUXJMP|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[2]~3_combout\ = ( \processador|PC|DOUT\(0) & ( \processador|incrementaPC|Add0~29_sumout\ ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|incrementaPC|Add0~29_sumout\ & ((!\ROM_instrucao|memROM~1_combout\) # 
-- ((!\processador|PC|DOUT\(4)) # (!\ROM_instrucao|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|MUXJMP|saida_MUX[2]~3_combout\);

-- Location: FF_X36_Y9_N40
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUXJMP|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y9_N39
\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

-- Location: FF_X36_Y9_N10
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y9_N42
\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

-- Location: LABCELL_X39_Y9_N45
\processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))
-- \processador|incrementaPC|Add0~22\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|incrementaPC|Add0~6\,
	sumout => \processador|incrementaPC|Add0~21_sumout\,
	cout => \processador|incrementaPC|Add0~22\);

-- Location: MLABCELL_X37_Y9_N6
\processador|MUXJMP|saida_MUX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[5]~2_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (\processador|incrementaPC|Add0~21_sumout\ & ((!\processador|PC|DOUT\(4)) # ((!\ROM_instrucao|memROM~1_combout\) # (\processador|PC|DOUT\(0))))) ) ) # ( 
-- !\ROM_instrucao|memROM~2_combout\ & ( \processador|incrementaPC|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111110110000000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \processador|MUXJMP|saida_MUX[5]~2_combout\);

-- Location: FF_X37_Y9_N7
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUXJMP|saida_MUX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X39_Y9_N48
\processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~18\ = CARRY(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~17_sumout\,
	cout => \processador|incrementaPC|Add0~18\);

-- Location: FF_X37_Y9_N29
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X37_Y9_N8
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUXJMP|saida_MUX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y9_N51
\processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))
-- \processador|incrementaPC|Add0~14\ = CARRY(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \processador|incrementaPC|Add0~18\,
	sumout => \processador|incrementaPC|Add0~13_sumout\,
	cout => \processador|incrementaPC|Add0~14\);

-- Location: FF_X37_Y9_N22
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y9_N54
\processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(8),
	cin => \processador|incrementaPC|Add0~14\,
	sumout => \processador|incrementaPC|Add0~9_sumout\);

-- Location: FF_X37_Y9_N47
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|incrementaPC|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: MLABCELL_X37_Y9_N57
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: LABCELL_X36_Y9_N36
\processador|MUXJMP|saida_MUX[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[1]~4_combout\ = ( \processador|PC|DOUT\(0) & ( \processador|incrementaPC|Add0~33_sumout\ ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|incrementaPC|Add0~33_sumout\ & ((!\ROM_instrucao|memROM~1_combout\) # 
-- ((!\processador|PC|DOUT\(4)) # (!\ROM_instrucao|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \processador|MUXJMP|saida_MUX[1]~4_combout\);

-- Location: FF_X36_Y9_N37
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUXJMP|saida_MUX[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: FF_X36_Y9_N41
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUXJMP|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: MLABCELL_X37_Y9_N45
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(1) & !\processador|PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: MLABCELL_X37_Y9_N0
\processador|MUXJMP|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[0]~0_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\processador|incrementaPC|Add0~1_sumout\ & (((!\ROM_instrucao|memROM~2_combout\) # (!\processador|PC|DOUT\(4))) # (\processador|PC|DOUT\(0)))) ) ) # ( 
-- !\ROM_instrucao|memROM~1_combout\ & ( \processador|incrementaPC|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \processador|MUXJMP|saida_MUX[0]~0_combout\);

-- Location: FF_X36_Y9_N44
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|MUXJMP|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: MLABCELL_X37_Y9_N3
\processador|MUXJMP|saida_MUX[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUXJMP|saida_MUX[4]~1_combout\ = ( \processador|incrementaPC|Add0~5_sumout\ & ( ((!\ROM_instrucao|memROM~2_combout\) # ((!\ROM_instrucao|memROM~1_combout\) # (!\processador|PC|DOUT\(4)))) # (\processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUXJMP|saida_MUX[4]~1_combout\);

-- Location: FF_X37_Y9_N2
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|MUXJMP|saida_MUX[4]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: FF_X37_Y9_N23
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: FF_X37_Y9_N28
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: MLABCELL_X37_Y9_N39
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(8) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT\(8),
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: FF_X36_Y9_N11
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: FF_X36_Y9_N38
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUXJMP|saida_MUX[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y9_N27
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0) & !\processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(0))) ) ) # ( !\processador|PC|DOUT\(2) 
-- & ( (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: LABCELL_X36_Y9_N54
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( !\ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: LABCELL_X36_Y9_N3
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT[1]~DUPLICATE_q\))) # (\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|PC|DOUT[1]~DUPLICATE_q\))) ) ) 
-- # ( !\processador|PC|DOUT\(2) & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(0) & \processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011111010000011111111101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: MLABCELL_X37_Y9_N36
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: LABCELL_X36_Y9_N21
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT\(2)) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT\(2) & 
-- \processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: MLABCELL_X37_Y9_N9
\habilita_KEY0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_KEY0~1_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT\(0) & !\ROM_instrucao|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \habilita_KEY0~1_combout\);

-- Location: LABCELL_X36_Y9_N30
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( \processador|PC|DOUT\(0) & ( !\processador|PC|DOUT[1]~DUPLICATE_q\ $ (((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT\(0) & ( 
-- (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & ((!\processador|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100001011000010110000101100000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: MLABCELL_X37_Y9_N33
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: LABCELL_X36_Y9_N6
\MemoriaRAM|dado_out[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[0]~3_combout\ = ( \habilita_KEY0~1_combout\ & ( \ROM_instrucao|memROM~9_combout\ & ( (!\KEY[3]~input_o\ & (\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~8_combout\)) ) ) ) # ( \habilita_KEY0~1_combout\ & ( 
-- !\ROM_instrucao|memROM~9_combout\ & ( (!\KEY[2]~input_o\ & (\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_habilita_KEY0~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \MemoriaRAM|dado_out[0]~3_combout\);

-- Location: MLABCELL_X37_Y9_N51
\habilita_FPGA_RESET~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_FPGA_RESET~0_combout\ = ( !\processador|PC|DOUT\(8) & ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(4),
	datae => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \habilita_FPGA_RESET~0_combout\);

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

-- Location: MLABCELL_X37_Y9_N54
\buffer_FPGA_RESET|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_FPGA_RESET|saida[0]~1_combout\ = ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\FPGA_RESET_N~input_o\ & !\processador|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \ALT_INV_FPGA_RESET_N~input_o\,
	datad => \processador|PC|ALT_INV_DOUT\(8),
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \buffer_FPGA_RESET|saida[0]~1_combout\);

-- Location: LABCELL_X36_Y9_N18
\habilita_KEY0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_KEY0~2_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT\(0) & ( (\processador|PC|DOUT\(2) & \processador|PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \habilita_KEY0~2_combout\);

-- Location: MLABCELL_X37_Y9_N24
\buffer_FPGA_RESET|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_FPGA_RESET|saida[0]~0_combout\ = ( \habilita_KEY0~2_combout\ & ( \ROM_instrucao|memROM~3_combout\ & ( (!\processador|PC|DOUT\(4) & (\ROM_instrucao|memROM~0_combout\ & (\habilita_FPGA_RESET~0_combout\ & \buffer_FPGA_RESET|saida[0]~1_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datac => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	datad => \buffer_FPGA_RESET|ALT_INV_saida[0]~1_combout\,
	datae => \ALT_INV_habilita_KEY0~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \buffer_FPGA_RESET|saida[0]~0_combout\);

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

-- Location: MLABCELL_X37_Y9_N18
\MemoriaRAM|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[0]~1_combout\ = ( \SW[8]~input_o\ & ( \ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (!\KEY[1]~input_o\ & (\ROM_instrucao|memROM~9_combout\ & \habilita_KEY0~1_combout\))) ) ) ) # ( !\SW[8]~input_o\ & ( 
-- \ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (!\KEY[1]~input_o\ & (\ROM_instrucao|memROM~9_combout\ & \habilita_KEY0~1_combout\))) ) ) ) # ( !\SW[8]~input_o\ & ( !\ROM_instrucao|memROM~10_combout\ & ( 
-- (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~9_combout\ & \habilita_KEY0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_habilita_KEY0~1_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \MemoriaRAM|dado_out[0]~1_combout\);

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

-- Location: MLABCELL_X37_Y9_N12
\MemoriaRAM|dado_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[0]~2_combout\ = ( \SW[0]~input_o\ & ( \ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (!\SW[9]~input_o\ & (!\ROM_instrucao|memROM~9_combout\ & \habilita_KEY0~1_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( 
-- \ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (!\SW[9]~input_o\ & (!\ROM_instrucao|memROM~9_combout\ & \habilita_KEY0~1_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( !\ROM_instrucao|memROM~8_combout\ & ( 
-- (!\ROM_instrucao|memROM~10_combout\ & (!\ROM_instrucao|memROM~9_combout\ & \habilita_KEY0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_habilita_KEY0~1_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \MemoriaRAM|dado_out[0]~2_combout\);

-- Location: MLABCELL_X37_Y9_N42
\MemoriaRAM|dado_out[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[0]~15_combout\ = ( !\MemoriaRAM|dado_out[0]~2_combout\ & ( (!\MemoriaRAM|dado_out[0]~3_combout\ & (!\buffer_FPGA_RESET|saida[0]~0_combout\ & !\MemoriaRAM|dado_out[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_dado_out[0]~3_combout\,
	datac => \buffer_FPGA_RESET|ALT_INV_saida[0]~0_combout\,
	datad => \MemoriaRAM|ALT_INV_dado_out[0]~1_combout\,
	dataf => \MemoriaRAM|ALT_INV_dado_out[0]~2_combout\,
	combout => \MemoriaRAM|dado_out[0]~15_combout\);

-- Location: LABCELL_X39_Y9_N24
\MemoriaRAM|dado_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[0]~0_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( \habilita_FPGA_RESET~0_combout\ & ( (!\ROM_instrucao|memROM~5_combout\ & ((!\ROM_instrucao|memROM~3_combout\) # ((!\ROM_instrucao|memROM~7_combout\ & 
-- !\ROM_instrucao|memROM~6_combout\)))) # (\ROM_instrucao|memROM~5_combout\ & (!\ROM_instrucao|memROM~3_combout\ & ((!\ROM_instrucao|memROM~7_combout\) # (!\ROM_instrucao|memROM~6_combout\)))) ) ) ) # ( !\ROM_instrucao|memROM~0_combout\ & ( 
-- \habilita_FPGA_RESET~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	combout => \MemoriaRAM|dado_out[0]~0_combout\);

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

-- Location: LABCELL_X36_Y9_N48
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = (\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: LABCELL_X36_Y8_N0
\processador|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[1]~1_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( \habilita_FPGA_RESET~0_combout\ & ( (!\ROM_instrucao|memROM~10_combout\) # ((\ROM_instrucao|memROM~9_combout\) # (\ROM_instrucao|memROM~8_combout\)) ) ) ) # ( 
-- !\ROM_instrucao|memROM~4_combout\ & ( \habilita_FPGA_RESET~0_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & ((!\ROM_instrucao|memROM~8_combout\ & (\SW[1]~input_o\ & !\ROM_instrucao|memROM~9_combout\)) # (\ROM_instrucao|memROM~8_combout\ & 
-- ((\ROM_instrucao|memROM~9_combout\))))) ) ) ) # ( \ROM_instrucao|memROM~4_combout\ & ( !\habilita_FPGA_RESET~0_combout\ ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( !\habilita_FPGA_RESET~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101000000000011001100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	combout => \processador|MUX1|saida_MUX[1]~1_combout\);

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

-- Location: LABCELL_X36_Y8_N27
\processador|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[2]~2_combout\ = ( \habilita_FPGA_RESET~0_combout\ & ( \ROM_instrucao|memROM~9_combout\ & ( ((!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~4_combout\) ) ) ) # ( 
-- !\habilita_FPGA_RESET~0_combout\ & ( \ROM_instrucao|memROM~9_combout\ ) ) # ( \habilita_FPGA_RESET~0_combout\ & ( !\ROM_instrucao|memROM~9_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~10_combout\ & 
-- ((\ROM_instrucao|memROM~4_combout\) # (\SW[2]~input_o\)))) # (\ROM_instrucao|memROM~8_combout\ & (((\ROM_instrucao|memROM~4_combout\)))) ) ) ) # ( !\habilita_FPGA_RESET~0_combout\ & ( !\ROM_instrucao|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010011000000111111111111111111110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \processador|MUX1|saida_MUX[2]~2_combout\);

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

-- Location: LABCELL_X36_Y8_N30
\MemoriaRAM|dado_out[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[3]~4_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( \habilita_FPGA_RESET~0_combout\ & ( ((!\ROM_instrucao|memROM~10_combout\) # (\ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~9_combout\) ) ) ) # ( 
-- !\ROM_instrucao|memROM~4_combout\ & ( \habilita_FPGA_RESET~0_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & ((!\ROM_instrucao|memROM~9_combout\ & (\SW[3]~input_o\ & !\ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~9_combout\ & 
-- ((\ROM_instrucao|memROM~8_combout\))))) ) ) ) # ( \ROM_instrucao|memROM~4_combout\ & ( !\habilita_FPGA_RESET~0_combout\ ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( !\habilita_FPGA_RESET~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100101000000001111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	combout => \MemoriaRAM|dado_out[3]~4_combout\);

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

-- Location: LABCELL_X36_Y8_N45
\MemoriaRAM|dado_out[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[4]~5_combout\ = ( \habilita_FPGA_RESET~0_combout\ & ( \ROM_instrucao|memROM~9_combout\ & ( ((!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~4_combout\) ) ) ) # ( 
-- !\habilita_FPGA_RESET~0_combout\ & ( \ROM_instrucao|memROM~9_combout\ ) ) # ( \habilita_FPGA_RESET~0_combout\ & ( !\ROM_instrucao|memROM~9_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~10_combout\ & 
-- ((\ROM_instrucao|memROM~4_combout\) # (\SW[4]~input_o\)))) # (\ROM_instrucao|memROM~8_combout\ & (((\ROM_instrucao|memROM~4_combout\)))) ) ) ) # ( !\habilita_FPGA_RESET~0_combout\ & ( !\ROM_instrucao|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010011000000111111111111111111110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \MemoriaRAM|dado_out[4]~5_combout\);

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

-- Location: LABCELL_X36_Y8_N12
\processador|MUX1|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[5]~3_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( \ROM_instrucao|memROM~9_combout\ ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( \ROM_instrucao|memROM~9_combout\ & ( (!\habilita_FPGA_RESET~0_combout\) # 
-- ((\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~10_combout\)) ) ) ) # ( \ROM_instrucao|memROM~4_combout\ & ( !\ROM_instrucao|memROM~9_combout\ & ( (!\habilita_FPGA_RESET~0_combout\) # ((!\ROM_instrucao|memROM~10_combout\) # 
-- (\ROM_instrucao|memROM~8_combout\)) ) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( !\ROM_instrucao|memROM~9_combout\ & ( (!\habilita_FPGA_RESET~0_combout\) # ((\SW[5]~input_o\ & (!\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~10_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010101010111111111010111110101111101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \processador|MUX1|saida_MUX[5]~3_combout\);

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

-- Location: LABCELL_X36_Y8_N51
\processador|MUX1|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[6]~4_combout\ = ( \habilita_FPGA_RESET~0_combout\ & ( \SW[6]~input_o\ & ( (!\ROM_instrucao|memROM~8_combout\ & ((!\ROM_instrucao|memROM~9_combout\ & ((!\ROM_instrucao|memROM~10_combout\))) # (\ROM_instrucao|memROM~9_combout\ & 
-- (\ROM_instrucao|memROM~4_combout\)))) # (\ROM_instrucao|memROM~8_combout\ & (((!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~9_combout\)) # (\ROM_instrucao|memROM~4_combout\))) ) ) ) # ( !\habilita_FPGA_RESET~0_combout\ & ( \SW[6]~input_o\ ) 
-- ) # ( \habilita_FPGA_RESET~0_combout\ & ( !\SW[6]~input_o\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~4_combout\ & ((!\ROM_instrucao|memROM~10_combout\) # (\ROM_instrucao|memROM~9_combout\)))) # (\ROM_instrucao|memROM~8_combout\ & 
-- (((!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~9_combout\)) # (\ROM_instrucao|memROM~4_combout\))) ) ) ) # ( !\habilita_FPGA_RESET~0_combout\ & ( !\SW[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100010111001111111111111111111011000101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datae => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \processador|MUX1|saida_MUX[6]~4_combout\);

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

-- Location: LABCELL_X36_Y8_N36
\MemoriaRAM|dado_out[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|dado_out[7]~6_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( \ROM_instrucao|memROM~4_combout\ ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~10_combout\) # 
-- ((!\habilita_FPGA_RESET~0_combout\) # (\ROM_instrucao|memROM~9_combout\)) ) ) ) # ( \ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( (!\habilita_FPGA_RESET~0_combout\) # ((!\ROM_instrucao|memROM~10_combout\ & 
-- \ROM_instrucao|memROM~9_combout\)) ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( (!\habilita_FPGA_RESET~0_combout\) # ((!\ROM_instrucao|memROM~10_combout\ & (\SW[7]~input_o\ & !\ROM_instrucao|memROM~9_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110000111100001111101011111010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_habilita_FPGA_RESET~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|dado_out[7]~6_combout\);

-- Location: LABCELL_X36_Y8_N21
\processador|decoder|HabilitaA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoder|HabilitaA~0_combout\ = ( !\processador|PC|DOUT\(0) & ( \ROM_instrucao|memROM~1_combout\ & ( !\processador|PC|DOUT\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	datae => \processador|PC|ALT_INV_DOUT\(0),
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \processador|decoder|HabilitaA~0_combout\);

-- Location: MLABCELL_X37_Y9_N30
\processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~0_combout\ = ( \MemoriaRAM|dado_out[0]~2_combout\ & ( !\MemoriaRAM|dado_out[0]~0_combout\ ) ) # ( !\MemoriaRAM|dado_out[0]~2_combout\ & ( (!\MemoriaRAM|dado_out[0]~0_combout\) # ((!\buffer_FPGA_RESET|saida[0]~0_combout\ & 
-- (!\MemoriaRAM|dado_out[0]~1_combout\ & !\MemoriaRAM|dado_out[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buffer_FPGA_RESET|ALT_INV_saida[0]~0_combout\,
	datab => \MemoriaRAM|ALT_INV_dado_out[0]~0_combout\,
	datac => \MemoriaRAM|ALT_INV_dado_out[0]~1_combout\,
	datad => \MemoriaRAM|ALT_INV_dado_out[0]~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_dado_out[0]~2_combout\,
	combout => \processador|MUX1|saida_MUX[0]~0_combout\);

-- Location: FF_X37_Y9_N32
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX1|saida_MUX[0]~0_combout\,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: LABCELL_X36_Y9_N0
\habilita_reg4bit0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit0~0_combout\ = ( !\processador|PC|DOUT\(4) & ( (\processador|PC|DOUT\(0) & (!\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \habilita_reg4bit0~0_combout\);

-- Location: LABCELL_X36_Y9_N51
\habilita_registrador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_registrador~0_combout\ = ( !\ROM_instrucao|memROM~9_combout\ & ( (\habilita_reg4bit0~0_combout\ & (!\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habilita_reg4bit0~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \habilita_registrador~0_combout\);

-- Location: FF_X36_Y9_N32
\registrador_8bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(0));

-- Location: FF_X36_Y8_N2
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX1|saida_MUX[1]~1_combout\,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: FF_X36_Y9_N17
\registrador_8bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(1));

-- Location: FF_X36_Y8_N29
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX1|saida_MUX[2]~2_combout\,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: FF_X36_Y8_N7
\registrador_8bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(2));

-- Location: FF_X36_Y8_N32
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|dado_out[3]~4_combout\,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: FF_X36_Y9_N56
\registrador_8bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(3));

-- Location: FF_X36_Y8_N47
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|dado_out[4]~5_combout\,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: FF_X36_Y9_N13
\registrador_8bits|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(4));

-- Location: FF_X36_Y8_N14
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX1|saida_MUX[5]~3_combout\,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: FF_X36_Y9_N34
\registrador_8bits|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(5));

-- Location: FF_X36_Y8_N53
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \processador|MUX1|saida_MUX[6]~4_combout\,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: FF_X36_Y9_N58
\registrador_8bits|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(6));

-- Location: FF_X36_Y8_N50
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \MemoriaRAM|dado_out[7]~6_combout\,
	sload => VCC,
	ena => \processador|decoder|HabilitaA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: LABCELL_X35_Y9_N36
\registrador_8bits|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \registrador_8bits|DOUT[7]~feeder_combout\ = ( \processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	combout => \registrador_8bits|DOUT[7]~feeder_combout\);

-- Location: FF_X35_Y9_N37
\registrador_8bits|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \registrador_8bits|DOUT[7]~feeder_combout\,
	ena => \habilita_registrador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registrador_8bits|DOUT\(7));

-- Location: MLABCELL_X37_Y7_N12
\flipflop2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipflop2|DOUT~0_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( \flipflop2|DOUT~q\ ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( \flipflop2|DOUT~q\ & ( ((!\ROM_instrucao|memROM~9_combout\) # ((!\habilita_reg4bit0~0_combout\) # 
-- (\ROM_instrucao|memROM~10_combout\))) # (\processador|REGA|DOUT\(0)) ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( !\flipflop2|DOUT~q\ & ( (\processador|REGA|DOUT\(0) & (\ROM_instrucao|memROM~9_combout\ & (\habilita_reg4bit0~0_combout\ & 
-- !\ROM_instrucao|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(0),
	datab => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datac => \ALT_INV_habilita_reg4bit0~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \flipflop2|ALT_INV_DOUT~q\,
	combout => \flipflop2|DOUT~0_combout\);

-- Location: MLABCELL_X37_Y7_N24
\flipflop2|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipflop2|DOUT~feeder_combout\ = ( \flipflop2|DOUT~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \flipflop2|ALT_INV_DOUT~0_combout\,
	combout => \flipflop2|DOUT~feeder_combout\);

-- Location: FF_X37_Y7_N26
\flipflop2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \flipflop2|DOUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop2|DOUT~q\);

-- Location: MLABCELL_X37_Y7_N42
\flipflop1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipflop1|DOUT~0_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( \flipflop1|DOUT~q\ ) ) # ( !\ROM_instrucao|memROM~9_combout\ & ( \flipflop1|DOUT~q\ & ( ((!\ROM_instrucao|memROM~8_combout\) # ((!\habilita_reg4bit0~0_combout\) # 
-- (\ROM_instrucao|memROM~10_combout\))) # (\processador|REGA|DOUT\(0)) ) ) ) # ( !\ROM_instrucao|memROM~9_combout\ & ( !\flipflop1|DOUT~q\ & ( (\processador|REGA|DOUT\(0) & (\ROM_instrucao|memROM~8_combout\ & (\habilita_reg4bit0~0_combout\ & 
-- !\ROM_instrucao|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000011111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(0),
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_habilita_reg4bit0~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	dataf => \flipflop1|ALT_INV_DOUT~q\,
	combout => \flipflop1|DOUT~0_combout\);

-- Location: MLABCELL_X37_Y7_N33
\flipflop1|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipflop1|DOUT~feeder_combout\ = ( \flipflop1|DOUT~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \flipflop1|ALT_INV_DOUT~0_combout\,
	combout => \flipflop1|DOUT~feeder_combout\);

-- Location: FF_X37_Y7_N35
\flipflop1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \flipflop1|DOUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop1|DOUT~q\);

-- Location: LABCELL_X36_Y9_N12
\habilita_KEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_KEY0~0_combout\ = ( \habilita_KEY0~2_combout\ & ( !\processador|PC|DOUT\(8) & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \ALT_INV_habilita_KEY0~2_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(8),
	combout => \habilita_KEY0~0_combout\);

-- Location: LABCELL_X35_Y8_N54
\habilita_reg4bit0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit0~1_combout\ = ( \habilita_reg4bit0~0_combout\ & ( \habilita_KEY0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_habilita_KEY0~0_combout\,
	dataf => \ALT_INV_habilita_reg4bit0~0_combout\,
	combout => \habilita_reg4bit0~1_combout\);

-- Location: FF_X35_Y8_N56
\REG_4bit0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_reg4bit0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(3));

-- Location: FF_X35_Y8_N47
\REG_4bit0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_reg4bit0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(2));

-- Location: FF_X35_Y8_N7
\REG_4bit0|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X35_Y8_N20
\REG_4bit0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(1));

-- Location: LABCELL_X35_Y8_N42
\decoder_binario0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[0]~0_combout\ = ( \REG_4bit0|DOUT\(1) & ( (\REG_4bit0|DOUT\(3) & (!\REG_4bit0|DOUT\(2) & \REG_4bit0|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(3) & (!\REG_4bit0|DOUT\(2) $ 
-- (!\REG_4bit0|DOUT[0]~DUPLICATE_q\))) # (\REG_4bit0|DOUT\(3) & (\REG_4bit0|DOUT\(2) & \REG_4bit0|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(3),
	datab => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit0|ALT_INV_DOUT\(1),
	combout => \decoder_binario0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y8_N48
\decoder_binario0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[1]~1_combout\ = ( \REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT[0]~DUPLICATE_q\ & ((\REG_4bit0|DOUT\(2)))) # (\REG_4bit0|DOUT[0]~DUPLICATE_q\ & (\REG_4bit0|DOUT\(3))) ) ) # ( !\REG_4bit0|DOUT\(1) & ( (\REG_4bit0|DOUT\(2) & 
-- (!\REG_4bit0|DOUT\(3) $ (!\REG_4bit0|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(3),
	datab => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit0|ALT_INV_DOUT\(1),
	combout => \decoder_binario0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y8_N36
\decoder_binario0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[2]~2_combout\ = ( \REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT[0]~DUPLICATE_q\ & !\REG_4bit0|DOUT\(3))) # (\REG_4bit0|DOUT\(2) & ((\REG_4bit0|DOUT\(3)))) ) ) # ( !\REG_4bit0|DOUT\(1) & ( 
-- (\REG_4bit0|DOUT\(2) & (!\REG_4bit0|DOUT[0]~DUPLICATE_q\ & \REG_4bit0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \REG_4bit0|ALT_INV_DOUT\(3),
	dataf => \REG_4bit0|ALT_INV_DOUT\(1),
	combout => \decoder_binario0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y8_N15
\decoder_binario0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[3]~3_combout\ = ( \REG_4bit0|DOUT[0]~DUPLICATE_q\ & ( \REG_4bit0|DOUT\(1) & ( \REG_4bit0|DOUT\(2) ) ) ) # ( !\REG_4bit0|DOUT[0]~DUPLICATE_q\ & ( \REG_4bit0|DOUT\(1) & ( (\REG_4bit0|DOUT\(3) & !\REG_4bit0|DOUT\(2)) ) ) ) # ( 
-- \REG_4bit0|DOUT[0]~DUPLICATE_q\ & ( !\REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(3) & !\REG_4bit0|DOUT\(2)) ) ) ) # ( !\REG_4bit0|DOUT[0]~DUPLICATE_q\ & ( !\REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(3) & \REG_4bit0|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000001010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(3),
	datac => \REG_4bit0|ALT_INV_DOUT\(2),
	datae => \REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit0|ALT_INV_DOUT\(1),
	combout => \decoder_binario0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y8_N30
\decoder_binario0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[4]~4_combout\ = ( \REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(3) & \REG_4bit0|DOUT[0]~DUPLICATE_q\) ) ) # ( !\REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(2) & ((\REG_4bit0|DOUT[0]~DUPLICATE_q\))) # (\REG_4bit0|DOUT\(2) & 
-- (!\REG_4bit0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(3),
	datab => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit0|ALT_INV_DOUT\(1),
	combout => \decoder_binario0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y8_N0
\decoder_binario0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[5]~5_combout\ = ( \REG_4bit0|DOUT\(1) & ( (!\REG_4bit0|DOUT\(3) & ((!\REG_4bit0|DOUT\(2)) # (\REG_4bit0|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\REG_4bit0|DOUT\(1) & ( (\REG_4bit0|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit0|DOUT\(3) $ 
-- (\REG_4bit0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(3),
	datab => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit0|ALT_INV_DOUT\(1),
	combout => \decoder_binario0|rascSaida7seg[5]~5_combout\);

-- Location: FF_X35_Y8_N8
\REG_4bit0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit0|DOUT\(0));

-- Location: LABCELL_X35_Y8_N39
\decoder_binario0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario0|rascSaida7seg[6]~6_combout\ = ( \REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(3) & (!\REG_4bit0|DOUT\(1) $ (\REG_4bit0|DOUT\(2)))) ) ) # ( !\REG_4bit0|DOUT\(0) & ( (!\REG_4bit0|DOUT\(1) & (!\REG_4bit0|DOUT\(2) $ (\REG_4bit0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit0|ALT_INV_DOUT\(1),
	datab => \REG_4bit0|ALT_INV_DOUT\(2),
	datac => \REG_4bit0|ALT_INV_DOUT\(3),
	dataf => \REG_4bit0|ALT_INV_DOUT\(0),
	combout => \decoder_binario0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y8_N54
\habilita_reg4bit1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit1~0_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( \ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \habilita_reg4bit0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ALT_INV_habilita_reg4bit0~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \habilita_reg4bit1~0_combout\);

-- Location: FF_X36_Y8_N19
\REG_4bit1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(1));

-- Location: FF_X36_Y8_N56
\REG_4bit1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(3));

-- Location: FF_X36_Y8_N58
\REG_4bit1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(0));

-- Location: FF_X36_Y8_N40
\REG_4bit1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_reg4bit1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit1|DOUT\(2));

-- Location: MLABCELL_X37_Y8_N51
\decoder_binario1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[0]~0_combout\ = ( \REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT\(3) $ (\REG_4bit1|DOUT\(0)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT\(0) & (!\REG_4bit1|DOUT\(1) $ (\REG_4bit1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000001000101000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(1),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datad => \REG_4bit1|ALT_INV_DOUT\(0),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y8_N54
\decoder_binario1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[1]~1_combout\ = ( \REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT\(3) $ (!\REG_4bit1|DOUT\(0)))) # (\REG_4bit1|DOUT\(1) & ((!\REG_4bit1|DOUT\(0)) # (\REG_4bit1|DOUT\(3)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( 
-- (\REG_4bit1|DOUT\(1) & (\REG_4bit1|DOUT\(3) & \REG_4bit1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(1),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(0),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y8_N57
\decoder_binario1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[2]~2_combout\ = ( \REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT\(3) & ((!\REG_4bit1|DOUT\(0)) # (\REG_4bit1|DOUT\(1)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( (\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(1),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datad => \REG_4bit1|ALT_INV_DOUT\(0),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y8_N48
\decoder_binario1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[3]~3_combout\ = ( \REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(1) & (!\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(0))) # (\REG_4bit1|DOUT\(1) & ((\REG_4bit1|DOUT\(0)))) ) ) # ( !\REG_4bit1|DOUT\(2) & ( (!\REG_4bit1|DOUT\(1) & 
-- (!\REG_4bit1|DOUT\(3) & \REG_4bit1|DOUT\(0))) # (\REG_4bit1|DOUT\(1) & (\REG_4bit1|DOUT\(3) & !\REG_4bit1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(1),
	datab => \REG_4bit1|ALT_INV_DOUT\(3),
	datac => \REG_4bit1|ALT_INV_DOUT\(0),
	dataf => \REG_4bit1|ALT_INV_DOUT\(2),
	combout => \decoder_binario1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y8_N36
\decoder_binario1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[4]~4_combout\ = ( \REG_4bit1|DOUT\(3) & ( (!\REG_4bit1|DOUT\(2) & (!\REG_4bit1|DOUT\(1) & \REG_4bit1|DOUT\(0))) ) ) # ( !\REG_4bit1|DOUT\(3) & ( ((\REG_4bit1|DOUT\(2) & !\REG_4bit1|DOUT\(1))) # (\REG_4bit1|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111000010000000100001001111010011110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(2),
	datab => \REG_4bit1|ALT_INV_DOUT\(1),
	datac => \REG_4bit1|ALT_INV_DOUT\(0),
	datae => \REG_4bit1|ALT_INV_DOUT\(3),
	combout => \decoder_binario1|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y8_N42
\decoder_binario1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[5]~5_combout\ = ( \REG_4bit1|DOUT\(3) & ( (\REG_4bit1|DOUT\(2) & (!\REG_4bit1|DOUT\(1) & \REG_4bit1|DOUT\(0))) ) ) # ( !\REG_4bit1|DOUT\(3) & ( (!\REG_4bit1|DOUT\(2) & ((\REG_4bit1|DOUT\(0)) # (\REG_4bit1|DOUT\(1)))) # 
-- (\REG_4bit1|DOUT\(2) & (\REG_4bit1|DOUT\(1) & \REG_4bit1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011000001000000010000101011001010110000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(2),
	datab => \REG_4bit1|ALT_INV_DOUT\(1),
	datac => \REG_4bit1|ALT_INV_DOUT\(0),
	datae => \REG_4bit1|ALT_INV_DOUT\(3),
	combout => \decoder_binario1|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y8_N0
\decoder_binario1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario1|rascSaida7seg[6]~6_combout\ = ( \REG_4bit1|DOUT\(1) & ( (\REG_4bit1|DOUT\(0) & (\REG_4bit1|DOUT\(2) & !\REG_4bit1|DOUT\(3))) ) ) # ( !\REG_4bit1|DOUT\(1) & ( (!\REG_4bit1|DOUT\(2) & ((!\REG_4bit1|DOUT\(3)))) # (\REG_4bit1|DOUT\(2) & 
-- (!\REG_4bit1|DOUT\(0) & \REG_4bit1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001010111100000000101000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit1|ALT_INV_DOUT\(0),
	datac => \REG_4bit1|ALT_INV_DOUT\(2),
	datad => \REG_4bit1|ALT_INV_DOUT\(3),
	dataf => \REG_4bit1|ALT_INV_DOUT\(1),
	combout => \decoder_binario1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y9_N24
\REG_4bit2|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_4bit2|DOUT[1]~feeder_combout\ = ( \processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	combout => \REG_4bit2|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X36_Y9_N57
\habilita_reg4bit2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit2~0_combout\ = ( !\ROM_instrucao|memROM~9_combout\ & ( (\ROM_instrucao|memROM~10_combout\ & (\ROM_instrucao|memROM~8_combout\ & \habilita_reg4bit0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_habilita_reg4bit0~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \habilita_reg4bit2~0_combout\);

-- Location: FF_X35_Y9_N26
\REG_4bit2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_4bit2|DOUT[1]~feeder_combout\,
	ena => \habilita_reg4bit2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(1));

-- Location: LABCELL_X35_Y9_N30
\REG_4bit2|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_4bit2|DOUT[2]~feeder_combout\ = ( \processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	combout => \REG_4bit2|DOUT[2]~feeder_combout\);

-- Location: FF_X35_Y9_N32
\REG_4bit2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_4bit2|DOUT[2]~feeder_combout\,
	ena => \habilita_reg4bit2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(2));

-- Location: LABCELL_X35_Y9_N9
\REG_4bit2|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_4bit2|DOUT[0]~feeder_combout\ = ( \processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	combout => \REG_4bit2|DOUT[0]~feeder_combout\);

-- Location: FF_X35_Y9_N10
\REG_4bit2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_4bit2|DOUT[0]~feeder_combout\,
	ena => \habilita_reg4bit2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(0));

-- Location: LABCELL_X35_Y9_N27
\REG_4bit2|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_4bit2|DOUT[3]~feeder_combout\ = \processador|REGA|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT\(3),
	combout => \REG_4bit2|DOUT[3]~feeder_combout\);

-- Location: FF_X35_Y9_N28
\REG_4bit2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_4bit2|DOUT[3]~feeder_combout\,
	ena => \habilita_reg4bit2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT\(3));

-- Location: LABCELL_X35_Y9_N48
\decoder_binario2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[0]~0_combout\ = ( \REG_4bit2|DOUT\(3) & ( (\REG_4bit2|DOUT\(0) & (!\REG_4bit2|DOUT\(1) $ (!\REG_4bit2|DOUT\(2)))) ) ) # ( !\REG_4bit2|DOUT\(3) & ( (!\REG_4bit2|DOUT\(1) & (!\REG_4bit2|DOUT\(2) $ (!\REG_4bit2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(1),
	datab => \REG_4bit2|ALT_INV_DOUT\(2),
	datac => \REG_4bit2|ALT_INV_DOUT\(0),
	dataf => \REG_4bit2|ALT_INV_DOUT\(3),
	combout => \decoder_binario2|rascSaida7seg[0]~0_combout\);

-- Location: FF_X35_Y9_N11
\REG_4bit2|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG_4bit2|DOUT[0]~feeder_combout\,
	ena => \habilita_reg4bit2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit2|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y9_N51
\decoder_binario2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[1]~1_combout\ = ( \REG_4bit2|DOUT[0]~DUPLICATE_q\ & ( (!\REG_4bit2|DOUT\(1) & (\REG_4bit2|DOUT\(2) & !\REG_4bit2|DOUT\(3))) # (\REG_4bit2|DOUT\(1) & ((\REG_4bit2|DOUT\(3)))) ) ) # ( !\REG_4bit2|DOUT[0]~DUPLICATE_q\ & ( 
-- (\REG_4bit2|DOUT\(2) & ((\REG_4bit2|DOUT\(3)) # (\REG_4bit2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(1),
	datab => \REG_4bit2|ALT_INV_DOUT\(2),
	datac => \REG_4bit2|ALT_INV_DOUT\(3),
	dataf => \REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \decoder_binario2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y9_N57
\decoder_binario2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[2]~2_combout\ = ( \REG_4bit2|DOUT\(2) & ( (\REG_4bit2|DOUT\(3) & ((!\REG_4bit2|DOUT[0]~DUPLICATE_q\) # (\REG_4bit2|DOUT\(1)))) ) ) # ( !\REG_4bit2|DOUT\(2) & ( (!\REG_4bit2|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit2|DOUT\(3) & 
-- \REG_4bit2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \REG_4bit2|ALT_INV_DOUT\(3),
	datad => \REG_4bit2|ALT_INV_DOUT\(1),
	dataf => \REG_4bit2|ALT_INV_DOUT\(2),
	combout => \decoder_binario2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y9_N0
\decoder_binario2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[3]~3_combout\ = ( \REG_4bit2|DOUT\(2) & ( (!\REG_4bit2|DOUT\(1) & (!\REG_4bit2|DOUT\(3) & !\REG_4bit2|DOUT[0]~DUPLICATE_q\)) # (\REG_4bit2|DOUT\(1) & ((\REG_4bit2|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\REG_4bit2|DOUT\(2) & ( 
-- (!\REG_4bit2|DOUT\(1) & (!\REG_4bit2|DOUT\(3) & \REG_4bit2|DOUT[0]~DUPLICATE_q\)) # (\REG_4bit2|DOUT\(1) & (\REG_4bit2|DOUT\(3) & !\REG_4bit2|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(1),
	datab => \REG_4bit2|ALT_INV_DOUT\(3),
	datad => \REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit2|ALT_INV_DOUT\(2),
	combout => \decoder_binario2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y9_N45
\decoder_binario2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[4]~4_combout\ = ( \REG_4bit2|DOUT\(2) & ( (!\REG_4bit2|DOUT\(3) & ((!\REG_4bit2|DOUT\(1)) # (\REG_4bit2|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\REG_4bit2|DOUT\(2) & ( (\REG_4bit2|DOUT[0]~DUPLICATE_q\ & ((!\REG_4bit2|DOUT\(3)) # 
-- (!\REG_4bit2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \REG_4bit2|ALT_INV_DOUT\(3),
	datad => \REG_4bit2|ALT_INV_DOUT\(1),
	dataf => \REG_4bit2|ALT_INV_DOUT\(2),
	combout => \decoder_binario2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y9_N12
\decoder_binario2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[5]~5_combout\ = ( \REG_4bit2|DOUT\(2) & ( (\REG_4bit2|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit2|DOUT\(1) $ (!\REG_4bit2|DOUT\(3)))) ) ) # ( !\REG_4bit2|DOUT\(2) & ( (!\REG_4bit2|DOUT\(3) & ((\REG_4bit2|DOUT[0]~DUPLICATE_q\) # 
-- (\REG_4bit2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit2|ALT_INV_DOUT\(1),
	datab => \REG_4bit2|ALT_INV_DOUT\(3),
	datad => \REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_4bit2|ALT_INV_DOUT\(2),
	combout => \decoder_binario2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y9_N21
\decoder_binario2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario2|rascSaida7seg[6]~6_combout\ = ( \REG_4bit2|DOUT\(2) & ( (!\REG_4bit2|DOUT[0]~DUPLICATE_q\ & (\REG_4bit2|DOUT\(3) & !\REG_4bit2|DOUT\(1))) # (\REG_4bit2|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit2|DOUT\(3) & \REG_4bit2|DOUT\(1))) ) ) # ( 
-- !\REG_4bit2|DOUT\(2) & ( (!\REG_4bit2|DOUT\(3) & !\REG_4bit2|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \REG_4bit2|ALT_INV_DOUT\(3),
	datad => \REG_4bit2|ALT_INV_DOUT\(1),
	dataf => \REG_4bit2|ALT_INV_DOUT\(2),
	combout => \decoder_binario2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y8_N21
\habilita_reg4bit3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit3~0_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( \habilita_reg4bit0~0_combout\ & ( (\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	dataf => \ALT_INV_habilita_reg4bit0~0_combout\,
	combout => \habilita_reg4bit3~0_combout\);

-- Location: FF_X37_Y8_N23
\REG_4bit3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_reg4bit3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(3));

-- Location: FF_X37_Y8_N14
\REG_4bit3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(1));

-- Location: FF_X37_Y8_N19
\REG_4bit3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(0));

-- Location: FF_X37_Y8_N17
\REG_4bit3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_reg4bit3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT\(2));

-- Location: MLABCELL_X37_Y8_N3
\decoder_binario3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[0]~0_combout\ = ( \REG_4bit3|DOUT\(2) & ( (!\REG_4bit3|DOUT\(1) & (!\REG_4bit3|DOUT\(3) $ (\REG_4bit3|DOUT\(0)))) ) ) # ( !\REG_4bit3|DOUT\(2) & ( (\REG_4bit3|DOUT\(0) & (!\REG_4bit3|DOUT\(3) $ (\REG_4bit3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit3|ALT_INV_DOUT\(3),
	datac => \REG_4bit3|ALT_INV_DOUT\(1),
	datad => \REG_4bit3|ALT_INV_DOUT\(0),
	dataf => \REG_4bit3|ALT_INV_DOUT\(2),
	combout => \decoder_binario3|rascSaida7seg[0]~0_combout\);

-- Location: FF_X37_Y8_N20
\REG_4bit3|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit3|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y8_N6
\decoder_binario3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[1]~1_combout\ = ( \REG_4bit3|DOUT\(1) & ( (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (\REG_4bit3|DOUT\(2))) # (\REG_4bit3|DOUT[0]~DUPLICATE_q\ & ((\REG_4bit3|DOUT\(3)))) ) ) # ( !\REG_4bit3|DOUT\(1) & ( (\REG_4bit3|DOUT\(2) & 
-- (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ $ (!\REG_4bit3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit3|ALT_INV_DOUT\(2),
	datac => \REG_4bit3|ALT_INV_DOUT\(3),
	dataf => \REG_4bit3|ALT_INV_DOUT\(1),
	combout => \decoder_binario3|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y8_N9
\decoder_binario3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[2]~2_combout\ = ( \REG_4bit3|DOUT\(1) & ( (!\REG_4bit3|DOUT\(2) & (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ & !\REG_4bit3|DOUT\(3))) # (\REG_4bit3|DOUT\(2) & ((\REG_4bit3|DOUT\(3)))) ) ) # ( !\REG_4bit3|DOUT\(1) & ( 
-- (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (\REG_4bit3|DOUT\(2) & \REG_4bit3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit3|ALT_INV_DOUT\(2),
	datac => \REG_4bit3|ALT_INV_DOUT\(3),
	dataf => \REG_4bit3|ALT_INV_DOUT\(1),
	combout => \decoder_binario3|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y8_N24
\decoder_binario3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[3]~3_combout\ = ( \REG_4bit3|DOUT\(1) & ( (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit3|DOUT\(2) & \REG_4bit3|DOUT\(3))) # (\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (\REG_4bit3|DOUT\(2))) ) ) # ( !\REG_4bit3|DOUT\(1) & ( 
-- (!\REG_4bit3|DOUT\(3) & (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ $ (!\REG_4bit3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit3|ALT_INV_DOUT\(2),
	datac => \REG_4bit3|ALT_INV_DOUT\(3),
	dataf => \REG_4bit3|ALT_INV_DOUT\(1),
	combout => \decoder_binario3|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y8_N27
\decoder_binario3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[4]~4_combout\ = ( \REG_4bit3|DOUT\(1) & ( (\REG_4bit3|DOUT[0]~DUPLICATE_q\ & !\REG_4bit3|DOUT\(3)) ) ) # ( !\REG_4bit3|DOUT\(1) & ( (!\REG_4bit3|DOUT\(2) & (\REG_4bit3|DOUT[0]~DUPLICATE_q\)) # (\REG_4bit3|DOUT\(2) & 
-- ((!\REG_4bit3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit3|ALT_INV_DOUT\(2),
	datac => \REG_4bit3|ALT_INV_DOUT\(3),
	dataf => \REG_4bit3|ALT_INV_DOUT\(1),
	combout => \decoder_binario3|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y8_N15
\decoder_binario3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[5]~5_combout\ = (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit3|DOUT\(3) & (\REG_4bit3|DOUT\(1) & !\REG_4bit3|DOUT\(2)))) # (\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit3|DOUT\(3) $ (((!\REG_4bit3|DOUT\(1) & 
-- \REG_4bit3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000010100010011000001010001001100000101000100110000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit3|ALT_INV_DOUT\(3),
	datac => \REG_4bit3|ALT_INV_DOUT\(1),
	datad => \REG_4bit3|ALT_INV_DOUT\(2),
	combout => \decoder_binario3|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y8_N12
\decoder_binario3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario3|rascSaida7seg[6]~6_combout\ = ( \REG_4bit3|DOUT\(2) & ( (!\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (\REG_4bit3|DOUT\(3) & !\REG_4bit3|DOUT\(1))) # (\REG_4bit3|DOUT[0]~DUPLICATE_q\ & (!\REG_4bit3|DOUT\(3) & \REG_4bit3|DOUT\(1))) ) ) # ( 
-- !\REG_4bit3|DOUT\(2) & ( (!\REG_4bit3|DOUT\(3) & !\REG_4bit3|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000100010010001000010001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit3|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REG_4bit3|ALT_INV_DOUT\(3),
	datad => \REG_4bit3|ALT_INV_DOUT\(1),
	dataf => \REG_4bit3|ALT_INV_DOUT\(2),
	combout => \decoder_binario3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y9_N42
\habilita_reg4bit5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit5~0_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~3_combout\ & (!\processador|PC|DOUT\(4) & \processador|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \habilita_reg4bit5~0_combout\);

-- Location: LABCELL_X36_Y9_N33
\habilita_reg4bit4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit4~0_combout\ = ( \habilita_reg4bit5~0_combout\ & ( \habilita_KEY0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_habilita_KEY0~0_combout\,
	dataf => \ALT_INV_habilita_reg4bit5~0_combout\,
	combout => \habilita_reg4bit4~0_combout\);

-- Location: FF_X37_Y8_N31
\REG_4bit4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(0));

-- Location: FF_X37_Y8_N35
\REG_4bit4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_reg4bit4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(3));

-- Location: FF_X37_Y8_N40
\REG_4bit4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(1));

-- Location: FF_X37_Y8_N46
\REG_4bit4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_reg4bit4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit4|DOUT\(2));

-- Location: LABCELL_X39_Y7_N51
\decoder_binario4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[0]~0_combout\ = ( !\REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( !\REG_4bit4|DOUT\(0) $ (\REG_4bit4|DOUT\(3)) ) ) ) # ( \REG_4bit4|DOUT\(1) & ( !\REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(0) & \REG_4bit4|DOUT\(3)) ) ) ) # 
-- ( !\REG_4bit4|DOUT\(1) & ( !\REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(0) & !\REG_4bit4|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001111000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit4|ALT_INV_DOUT\(0),
	datac => \REG_4bit4|ALT_INV_DOUT\(3),
	datae => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X39_Y7_N42
\decoder_binario4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[1]~1_combout\ = ( \REG_4bit4|DOUT\(0) & ( (!\REG_4bit4|DOUT\(1) & (!\REG_4bit4|DOUT\(3) & \REG_4bit4|DOUT\(2))) # (\REG_4bit4|DOUT\(1) & (\REG_4bit4|DOUT\(3))) ) ) # ( !\REG_4bit4|DOUT\(0) & ( (\REG_4bit4|DOUT\(2) & 
-- ((\REG_4bit4|DOUT\(3)) # (\REG_4bit4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(1),
	datab => \REG_4bit4|ALT_INV_DOUT\(3),
	datac => \REG_4bit4|ALT_INV_DOUT\(2),
	dataf => \REG_4bit4|ALT_INV_DOUT\(0),
	combout => \decoder_binario4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y7_N27
\decoder_binario4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[2]~2_combout\ = ( \REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( \REG_4bit4|DOUT\(3) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(0) & \REG_4bit4|DOUT\(3)) ) ) ) # ( \REG_4bit4|DOUT\(1) & ( 
-- !\REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(0) & !\REG_4bit4|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit4|ALT_INV_DOUT\(0),
	datac => \REG_4bit4|ALT_INV_DOUT\(3),
	datae => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y7_N57
\decoder_binario4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[3]~3_combout\ = ( \REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( \REG_4bit4|DOUT\(0) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(0) & !\REG_4bit4|DOUT\(3)) ) ) ) # ( \REG_4bit4|DOUT\(1) & 
-- ( !\REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(0) & \REG_4bit4|DOUT\(3)) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( !\REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(0) & !\REG_4bit4|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011000000110011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit4|ALT_INV_DOUT\(0),
	datac => \REG_4bit4|ALT_INV_DOUT\(3),
	datae => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y7_N3
\decoder_binario4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[4]~4_combout\ = ( \REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(0) & !\REG_4bit4|DOUT\(3)) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( !\REG_4bit4|DOUT\(3) ) ) ) # ( \REG_4bit4|DOUT\(1) & 
-- ( !\REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(0) & !\REG_4bit4|DOUT\(3)) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( !\REG_4bit4|DOUT\(2) & ( \REG_4bit4|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000011000011110000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit4|ALT_INV_DOUT\(0),
	datac => \REG_4bit4|ALT_INV_DOUT\(3),
	datae => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y7_N3
\decoder_binario4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[5]~5_combout\ = ( \REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(3) & \REG_4bit4|DOUT\(0)) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(3) & \REG_4bit4|DOUT\(0)) ) ) ) # ( 
-- \REG_4bit4|DOUT\(1) & ( !\REG_4bit4|DOUT\(2) & ( !\REG_4bit4|DOUT\(3) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( !\REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(3) & \REG_4bit4|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101010101010101000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(3),
	datac => \REG_4bit4|ALT_INV_DOUT\(0),
	datae => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y7_N21
\decoder_binario4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario4|rascSaida7seg[6]~6_combout\ = ( \REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( (!\REG_4bit4|DOUT\(3) & \REG_4bit4|DOUT\(0)) ) ) ) # ( !\REG_4bit4|DOUT\(1) & ( \REG_4bit4|DOUT\(2) & ( (\REG_4bit4|DOUT\(3) & !\REG_4bit4|DOUT\(0)) ) ) ) # 
-- ( !\REG_4bit4|DOUT\(1) & ( !\REG_4bit4|DOUT\(2) & ( !\REG_4bit4|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000001010000010100000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit4|ALT_INV_DOUT\(3),
	datac => \REG_4bit4|ALT_INV_DOUT\(0),
	datae => \REG_4bit4|ALT_INV_DOUT\(1),
	dataf => \REG_4bit4|ALT_INV_DOUT\(2),
	combout => \decoder_binario4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y9_N45
habilita_reg4bit5 : cyclonev_lcell_comb
-- Equation(s):
-- \habilita_reg4bit5~combout\ = ( \habilita_reg4bit5~0_combout\ & ( (\ROM_instrucao|memROM~9_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ALT_INV_habilita_reg4bit5~0_combout\,
	combout => \habilita_reg4bit5~combout\);

-- Location: FF_X36_Y9_N53
\REG_4bit5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \habilita_reg4bit5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(3));

-- Location: FF_X36_Y9_N26
\REG_4bit5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \habilita_reg4bit5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(0));

-- Location: FF_X36_Y9_N20
\REG_4bit5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \habilita_reg4bit5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(1));

-- Location: FF_X36_Y9_N50
\REG_4bit5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \habilita_reg4bit5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4bit5|DOUT\(2));

-- Location: LABCELL_X35_Y8_N21
\decoder_binario5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[0]~0_combout\ = ( !\REG_4bit5|DOUT\(1) & ( \REG_4bit5|DOUT\(2) & ( !\REG_4bit5|DOUT\(3) $ (\REG_4bit5|DOUT\(0)) ) ) ) # ( \REG_4bit5|DOUT\(1) & ( !\REG_4bit5|DOUT\(2) & ( (\REG_4bit5|DOUT\(3) & \REG_4bit5|DOUT\(0)) ) ) ) # 
-- ( !\REG_4bit5|DOUT\(1) & ( !\REG_4bit5|DOUT\(2) & ( (!\REG_4bit5|DOUT\(3) & \REG_4bit5|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000001010000010110100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit5|ALT_INV_DOUT\(3),
	datac => \REG_4bit5|ALT_INV_DOUT\(0),
	datae => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(2),
	combout => \decoder_binario5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y8_N24
\decoder_binario5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[1]~1_combout\ = ( \REG_4bit5|DOUT\(1) & ( \REG_4bit5|DOUT\(2) & ( (!\REG_4bit5|DOUT\(0)) # (\REG_4bit5|DOUT\(3)) ) ) ) # ( !\REG_4bit5|DOUT\(1) & ( \REG_4bit5|DOUT\(2) & ( !\REG_4bit5|DOUT\(0) $ (!\REG_4bit5|DOUT\(3)) ) ) ) 
-- # ( \REG_4bit5|DOUT\(1) & ( !\REG_4bit5|DOUT\(2) & ( (\REG_4bit5|DOUT\(0) & \REG_4bit5|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100111100001111001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datac => \REG_4bit5|ALT_INV_DOUT\(3),
	datae => \REG_4bit5|ALT_INV_DOUT\(1),
	dataf => \REG_4bit5|ALT_INV_DOUT\(2),
	combout => \decoder_binario5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y7_N6
\decoder_binario5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[2]~2_combout\ = ( \REG_4bit5|DOUT\(3) & ( \REG_4bit5|DOUT\(1) & ( \REG_4bit5|DOUT\(2) ) ) ) # ( !\REG_4bit5|DOUT\(3) & ( \REG_4bit5|DOUT\(1) & ( (!\REG_4bit5|DOUT\(0) & !\REG_4bit5|DOUT\(2)) ) ) ) # ( \REG_4bit5|DOUT\(3) & 
-- ( !\REG_4bit5|DOUT\(1) & ( (!\REG_4bit5|DOUT\(0) & \REG_4bit5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datac => \REG_4bit5|ALT_INV_DOUT\(2),
	datae => \REG_4bit5|ALT_INV_DOUT\(3),
	dataf => \REG_4bit5|ALT_INV_DOUT\(1),
	combout => \decoder_binario5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y7_N39
\decoder_binario5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[3]~3_combout\ = ( \REG_4bit5|DOUT\(0) & ( \REG_4bit5|DOUT\(1) & ( \REG_4bit5|DOUT\(2) ) ) ) # ( !\REG_4bit5|DOUT\(0) & ( \REG_4bit5|DOUT\(1) & ( (!\REG_4bit5|DOUT\(2) & \REG_4bit5|DOUT\(3)) ) ) ) # ( \REG_4bit5|DOUT\(0) & ( 
-- !\REG_4bit5|DOUT\(1) & ( (!\REG_4bit5|DOUT\(2) & !\REG_4bit5|DOUT\(3)) ) ) ) # ( !\REG_4bit5|DOUT\(0) & ( !\REG_4bit5|DOUT\(1) & ( (\REG_4bit5|DOUT\(2) & !\REG_4bit5|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000001010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit5|ALT_INV_DOUT\(2),
	datac => \REG_4bit5|ALT_INV_DOUT\(3),
	datae => \REG_4bit5|ALT_INV_DOUT\(0),
	dataf => \REG_4bit5|ALT_INV_DOUT\(1),
	combout => \decoder_binario5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X36_Y9_N24
\decoder_binario5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[4]~4_combout\ = ( \REG_4bit5|DOUT\(1) & ( (!\REG_4bit5|DOUT\(3) & \REG_4bit5|DOUT\(0)) ) ) # ( !\REG_4bit5|DOUT\(1) & ( (!\REG_4bit5|DOUT\(2) & ((\REG_4bit5|DOUT\(0)))) # (\REG_4bit5|DOUT\(2) & (!\REG_4bit5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit5|ALT_INV_DOUT\(2),
	datac => \REG_4bit5|ALT_INV_DOUT\(3),
	datad => \REG_4bit5|ALT_INV_DOUT\(0),
	dataf => \REG_4bit5|ALT_INV_DOUT\(1),
	combout => \decoder_binario5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y8_N33
\decoder_binario5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[5]~5_combout\ = ( \REG_4bit5|DOUT\(0) & ( \REG_4bit5|DOUT\(2) & ( !\REG_4bit5|DOUT\(3) $ (!\REG_4bit5|DOUT\(1)) ) ) ) # ( \REG_4bit5|DOUT\(0) & ( !\REG_4bit5|DOUT\(2) & ( !\REG_4bit5|DOUT\(3) ) ) ) # ( !\REG_4bit5|DOUT\(0) 
-- & ( !\REG_4bit5|DOUT\(2) & ( (!\REG_4bit5|DOUT\(3) & \REG_4bit5|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101010101010101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4bit5|ALT_INV_DOUT\(3),
	datac => \REG_4bit5|ALT_INV_DOUT\(1),
	datae => \REG_4bit5|ALT_INV_DOUT\(0),
	dataf => \REG_4bit5|ALT_INV_DOUT\(2),
	combout => \decoder_binario5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X39_Y7_N18
\decoder_binario5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_binario5|rascSaida7seg[6]~6_combout\ = ( !\REG_4bit5|DOUT\(3) & ( \REG_4bit5|DOUT\(1) & ( (\REG_4bit5|DOUT\(0) & \REG_4bit5|DOUT\(2)) ) ) ) # ( \REG_4bit5|DOUT\(3) & ( !\REG_4bit5|DOUT\(1) & ( (!\REG_4bit5|DOUT\(0) & \REG_4bit5|DOUT\(2)) ) ) ) # 
-- ( !\REG_4bit5|DOUT\(3) & ( !\REG_4bit5|DOUT\(1) & ( !\REG_4bit5|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011000000110000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_4bit5|ALT_INV_DOUT\(0),
	datac => \REG_4bit5|ALT_INV_DOUT\(2),
	datae => \REG_4bit5|ALT_INV_DOUT\(3),
	dataf => \REG_4bit5|ALT_INV_DOUT\(1),
	combout => \decoder_binario5|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y8_N9
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( !\processador|PC|DOUT\(0) & ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & \processador|PC|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(4),
	datae => \processador|PC|ALT_INV_DOUT\(0),
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: LABCELL_X35_Y8_N57
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(0) & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~2_combout\)) ) ) # ( !\processador|PC|DOUT\(4) & ( (\processador|PC|DOUT\(0) & 
-- \ROM_instrucao|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: MLABCELL_X4_Y15_N0
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


