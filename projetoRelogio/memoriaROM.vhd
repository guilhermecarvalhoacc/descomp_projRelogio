library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in  std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado     : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  	constant NOP  : std_logic_vector(3 downto 0) := "0000";
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant SOMA : std_logic_vector(3 downto 0) := "0010";
	constant SUB  : std_logic_vector(3 downto 0) := "0011";
	constant LDI  : std_logic_vector(3 downto 0) := "0100";
	constant STA  : std_logic_vector(3 downto 0) := "0101";
	constant JMP  : std_logic_vector(3 downto 0) := "0110";
	constant JSR  : std_logic_vector(3 downto 0) := "1001";
	constant RET  : std_logic_vector(3 downto 0) := "1010";
	constant JEQ  : std_logic_vector(3 downto 0) := "0111";
	constant CEQ  : std_logic_vector(3 downto 0) := "1000";
 	
	constant R0   : std_logic_vector(2 downto 0) := "000";
	constant R1   : std_logic_vector(2 downto 0) := "001";
	constant R2   : std_logic_vector(2 downto 0) := "010";
	constant R3   : std_logic_vector(2 downto 0) := "011";
	constant R4   : std_logic_vector(2 downto 0) := "100";
	constant R5   : std_logic_vector(2 downto 0) := "101";
	constant R6   : std_logic_vector(2 downto 0) := "110";
	constant R7   : std_logic_vector(2 downto 0) := "111";
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
tmp (0) := JSR & R0 & '0' & x"09"; 	-- JSR @INICIA_MEMORIA | 
tmp (1) := NOP & R0 & '0' & x"00";
-- %LABEL MAIN_LOOP
tmp (2) := JSR & R0 & '0' & x"1D"; 	-- JSR @SR_REFRESH_DISPLAY | 
tmp (3) := NOP & R0 & '0' & x"00";
tmp (4) := JSR & R0 & '0' & x"2A"; 	-- JSR @CONFIG_HORARIO | 
tmp (5) := NOP & R0 & '0' & x"00";
tmp (6) := JSR & R0 & '0' & x"6F"; 	-- JSR @INCREMENTA_HORARIO | 
tmp (7) := NOP & R0 & '0' & x"00";
tmp (8) := JMP & R0 & '0' & x"02"; 	-- JMP @MAIN_LOOP | 
-- %LABEL INICIA_MEMORIA
tmp (9) := LDI & R0 & '0' & x"00"; 	-- LDI R0, $0 | 
tmp (10) := LDI & R1 & '0' & x"01"; 	-- LDI R1, $1 | 
tmp (11) := LDI & R2 & '0' & x"05"; 	-- LDI R2, $5 | 
tmp (12) := LDI & R3 & '0' & x"09"; 	-- LDI R3, $9 | 
tmp (13) := STA & R1 & '0' & x"01"; 	-- STA R1, @ADDR_CTE1 | 
tmp (14) := STA & R0 & '0' & x"0A"; 	-- STA R0, @ADDR_COUNTER_SEG_UN | 
tmp (15) := STA & R0 & '0' & x"0B"; 	-- STA R0, @ADDR_COUNTER_SEG_DEZ | 
tmp (16) := STA & R0 & '0' & x"0C"; 	-- STA R0, @ADDR_COUNTER_MIN_UN | 
tmp (17) := STA & R0 & '0' & x"0D"; 	-- STA R0, @ADDR_COUNTER_MIN_DEZ | 
tmp (18) := STA & R0 & '0' & x"0E"; 	-- STA R0, @ADDR_COUNTER_HOR_UN | 
tmp (19) := STA & R0 & '0' & x"0F"; 	-- STA R0, @ADDR_COUNTER_HOR_DEZ | 
tmp (20) := STA & R0 & '0' & x"10"; 	-- STA R0, @ADDR_LIMIT_SEG_UN | 
tmp (21) := STA & R0 & '0' & x"11"; 	-- STA R0, @ADDR_LIMIT_SEG_DEZ | 
tmp (22) := STA & R0 & '0' & x"12"; 	-- STA R0, @ADDR_LIMIT_MIN_UN | 
tmp (23) := STA & R0 & '0' & x"13"; 	-- STA R0, @ADDR_LIMIT_MIN_DEZ | 
tmp (24) := STA & R0 & '0' & x"14"; 	-- STA R0, @ADDR_LIMIT_HOR_UN | 
tmp (25) := STA & R0 & '0' & x"15"; 	-- STA R0, @ADDR_LIMIT_HOR_DEZ | 
tmp (26) := STA & R0 & '1' & x"64"; 	-- STA R0, @FPGA_RESET | 
tmp (27) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (28) := RET & R0 & '0' & x"00";
-- %LABEL SR_REFRESH_DISPLAY
tmp (29) := LDA & R4 & '0' & x"0A"; 	-- LDA R4, @ADDR_COUNTER_SEG_UN | -- LOAD UNIDADE
tmp (30) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | -- ARMAZENA EM HEX0
tmp (31) := LDA & R4 & '0' & x"0B"; 	-- LDA R4, @ADDR_COUNTER_SEG_DEZ | -- LOAD DEZENA 
tmp (32) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | -- ARMAZENA EM HEX1
tmp (33) := LDA & R4 & '0' & x"0C"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | -- LOAD CENTENA
tmp (34) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | -- ARMAZENA EM HEX2
tmp (35) := LDA & R4 & '0' & x"0D"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | -- LOAD MILHAR
tmp (36) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | -- ARMAZENA EM HEX3
tmp (37) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | -- LOAD DEZ.MILHAR 
tmp (38) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | -- ARMAZENA EM HEX4
tmp (39) := LDA & R4 & '0' & x"0F"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | -- LOAD CEN.MILHAR 
tmp (40) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | -- ARMAZENA EM HEX5
tmp (41) := RET & R0 & '0' & x"00";
-- %LABEL CONFIG_HORARIO
tmp (42) := JMP & R0 & '0' & x"2C"; 	-- JMP @SHOULD_CONFIG | 
tmp (43) := NOP & R0 & '0' & x"00";
-- %LABEL SHOULD_CONFIG
tmp (44) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (45) := JEQ & R0 & '0' & x"30"; 	-- JEQ @PRE_CONFIG_SEG_UN | 
tmp (46) := NOP & R0 & '0' & x"00";
tmp (47) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_SEG_UN
tmp (48) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (49) := LDI & R4 & '0' & x"01"; 	-- LDI R4, $1 |  LOAD 1 em R4
tmp (50) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende primeiro LEDR
-- %LABEL CONFIG_SEG_UN
tmp (51) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (52) := STA & R4 & '0' & x"0A"; 	-- STA R4, @ADDR_COUNTER_SEG_UN | 
tmp (53) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | 
tmp (54) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (55) := JEQ & R0 & '0' & x"3A"; 	-- JEQ @PRE_CONFIG_SEG_DEZ | 
tmp (56) := NOP & R0 & '0' & x"00";
tmp (57) := JMP & R0 & '0' & x"33"; 	-- JMP @CONFIG_SEG_UN | 
-- %LABEL PRE_CONFIG_SEG_DEZ
tmp (58) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (59) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 |  LOAD 2 em R4
tmp (60) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende segundo LEDR
-- %LABEL CONFIG_SEG_DEZ
tmp (61) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (62) := STA & R4 & '0' & x"0B"; 	-- STA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (63) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | 
tmp (64) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (65) := JEQ & R0 & '0' & x"44"; 	-- JEQ @PRE_CONFIG_MIN_UN | 
tmp (66) := NOP & R0 & '0' & x"00";
tmp (67) := JMP & R0 & '0' & x"3D"; 	-- JMP @CONFIG_SEG_DEZ | 
-- %LABEL PRE_CONFIG_MIN_UN
tmp (68) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (69) := LDI & R4 & '0' & x"04"; 	-- LDI R4, $4 |  LOAD 4 em R4
tmp (70) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende terceiro LEDR
-- %LABEL CONFIG_MIN_UN
tmp (71) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (72) := STA & R4 & '0' & x"0C"; 	-- STA R4, @ADDR_COUNTER_MIN_UN | 
tmp (73) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | 
tmp (74) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (75) := JEQ & R0 & '0' & x"4E"; 	-- JEQ @PRE_CONFIG_MIN_DEZ | 
tmp (76) := NOP & R0 & '0' & x"00";
tmp (77) := JMP & R0 & '0' & x"47"; 	-- JMP @CONFIG_MIN_UN | 
-- %LABEL PRE_CONFIG_MIN_DEZ
tmp (78) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (79) := LDI & R4 & '0' & x"08"; 	-- LDI R4, $8 |  LOAD 8 em R4
tmp (80) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_MIN_DEZ
tmp (81) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (82) := STA & R4 & '0' & x"0D"; 	-- STA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (83) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | 
tmp (84) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (85) := JEQ & R0 & '0' & x"58"; 	-- JEQ @PRE_CONFIG_HOR_UN | 
tmp (86) := NOP & R0 & '0' & x"00";
tmp (87) := JMP & R0 & '0' & x"51"; 	-- JMP @CONFIG_MIN_DEZ | 
-- %LABEL PRE_CONFIG_HOR_UN
tmp (88) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (89) := LDI & R4 & '0' & x"10"; 	-- LDI R4, $16 |  LOAD 16 em R4
tmp (90) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_HOR_UN
tmp (91) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (92) := STA & R4 & '0' & x"0E"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (93) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (94) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (95) := JEQ & R0 & '0' & x"62"; 	-- JEQ @PRE_CONFIG_HOR_DEZ | 
tmp (96) := NOP & R0 & '0' & x"00";
tmp (97) := JMP & R0 & '0' & x"5B"; 	-- JMP @CONFIG_HOR_UN | 
-- %LABEL PRE_CONFIG_HOR_DEZ
tmp (98) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (99) := LDI & R4 & '0' & x"20"; 	-- LDI R4, $32 |  LOAD 32 em R4
tmp (100) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quinto LEDR
-- %LABEL CONFIG_HOR_DEZ
tmp (101) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (102) := STA & R4 & '0' & x"0F"; 	-- STA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (103) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
tmp (104) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (105) := JEQ & R0 & '0' & x"6C"; 	-- JEQ @FIM_CONFIG | 
tmp (106) := NOP & R0 & '0' & x"00";
tmp (107) := JMP & R0 & '0' & x"65"; 	-- JMP @CONFIG_HOR_DEZ | 
-- %LABEL FIM_CONFIG
tmp (108) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 | 
tmp (109) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (110) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HORARIO
tmp (111) := JMP & R0 & '0' & x"71"; 	-- JMP @VERIFICA_INCREMENTO | 
tmp (112) := NOP & R0 & '0' & x"00";
-- %LABEL VERIFICA_INCREMENTO
tmp (113) := CEQ & R1 & '1' & x"60"; 	-- CEQ R1, @KEY0 | 
tmp (114) := JEQ & R0 & '0' & x"75"; 	-- JEQ @INCREMENTA_SEGUNDO_UN | 
tmp (115) := NOP & R0 & '0' & x"00";
tmp (116) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_SEGUNDO_UN
tmp (117) := STA & R4 & '1' & x"FF"; 	-- STA R4, @CLEAR_KEY0 | 
tmp (118) := CEQ & R3 & '0' & x"0A"; 	-- CEQ R3, @ADDR_COUNTER_SEG_UN |  seg_un == 9?
tmp (119) := JEQ & R0 & '0' & x"7D"; 	-- JEQ @INCREMENTA_SEG_DEZ |  if seg_un == 9: seg_dez++
tmp (120) := NOP & R0 & '0' & x"00";
tmp (121) := LDA & R4 & '0' & x"0A"; 	-- LDA R4, @ADDR_COUNTER_SEG_UN | 
tmp (122) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (123) := STA & R4 & '0' & x"0A"; 	-- STA R4, @ADDR_COUNTER_SEG_UN | 
tmp (124) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_SEG_DEZ
tmp (125) := STA & R0 & '0' & x"0A"; 	-- STA R0, @ADDR_COUNTER_SEG_UN |  if seg_un == 9: seg_un = 0
tmp (126) := CEQ & R2 & '0' & x"0B"; 	-- CEQ R2, @ADDR_COUNTER_SEG_DEZ |  seg_dez == 5?
tmp (127) := JEQ & R0 & '0' & x"85"; 	-- JEQ @INCREMENTA_MIN_UN |  if seg_dez == 5: min_un++
tmp (128) := NOP & R0 & '0' & x"00";
tmp (129) := LDA & R4 & '0' & x"0B"; 	-- LDA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (130) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (131) := STA & R4 & '0' & x"0B"; 	-- STA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (132) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_MIN_UN
tmp (133) := STA & R0 & '0' & x"0B"; 	-- STA R0, @ADDR_COUNTER_SEG_DEZ | 
tmp (134) := CEQ & R3 & '0' & x"0C"; 	-- CEQ R3, @ADDR_COUNTER_MIN_UN |  min_un == 9?
tmp (135) := JEQ & R0 & '0' & x"8D"; 	-- JEQ @INCREMENTA_MIN_DEZ |  if min_un == 9: min_dez++
tmp (136) := NOP & R0 & '0' & x"00";
tmp (137) := LDA & R4 & '0' & x"0C"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | 
tmp (138) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (139) := STA & R4 & '0' & x"0C"; 	-- STA R4, @ADDR_COUNTER_MIN_UN | 
tmp (140) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_MIN_DEZ
tmp (141) := STA & R0 & '0' & x"0C"; 	-- STA R0, @ADDR_COUNTER_MIN_UN |  if min_un == 9: min_un = 0
tmp (142) := CEQ & R2 & '0' & x"0D"; 	-- CEQ R2, @ADDR_COUNTER_MIN_DEZ |  min_dez == 5?
tmp (143) := JEQ & R0 & '0' & x"95"; 	-- JEQ @INCREMENTA_HOR_UN |  if min_dez == 5: hor_un ++
tmp (144) := NOP & R0 & '0' & x"00";
tmp (145) := LDA & R4 & '0' & x"0D"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (146) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (147) := STA & R4 & '0' & x"0D"; 	-- STA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (148) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HOR_UN
tmp (149) := STA & R0 & '0' & x"0D"; 	-- STA R0, @ADDR_COUNTER_MIN_DEZ |  if seg_un == 9: seg_un = 0
tmp (150) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 | 
tmp (151) := CEQ & R4 & '0' & x"0F"; 	-- CEQ R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (152) := JEQ & R0 & '0' & x"9C"; 	-- JEQ @INC_HOR_ATE_3 | Se o horário for maior que 20h, a unidade da hora vai até 3, caso contrário vai até 9
tmp (153) := NOP & R0 & '0' & x"00";
tmp (154) := JMP & R0 & '0' & x"A4"; 	-- JMP @INC_HOR_ATE_9 | 
tmp (155) := NOP & R0 & '0' & x"00";
-- %LABEL INC_HOR_ATE_3
tmp (156) := LDI & R4 & '0' & x"03"; 	-- LDI R4, $3 | 
tmp (157) := CEQ & R4 & '0' & x"0E"; 	-- CEQ R4, @ADDR_COUNTER_HOR_UN | 
tmp (158) := JEQ & R0 & '0' & x"AB"; 	-- JEQ @INCREMENTA_HOR_DEZ | 
tmp (159) := NOP & R0 & '0' & x"00";
tmp (160) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (161) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (162) := STA & R4 & '0' & x"0E"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (163) := RET & R0 & '0' & x"00";
-- %LABEL INC_HOR_ATE_9
tmp (164) := CEQ & R3 & '0' & x"0E"; 	-- CEQ R3, @ADDR_COUNTER_HOR_UN | 
tmp (165) := JEQ & R0 & '0' & x"AB"; 	-- JEQ @INCREMENTA_HOR_DEZ | 
tmp (166) := NOP & R0 & '0' & x"00";
tmp (167) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (168) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (169) := STA & R4 & '0' & x"0E"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (170) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HOR_DEZ
tmp (171) := STA & R0 & '0' & x"0E"; 	-- STA R0, @ADDR_COUNTER_HOR_UN |  if hor_un == 9: hor_un = 0 | se for maior que 10, vai até 12 só TODO
tmp (172) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 | 
tmp (173) := CEQ & R4 & '0' & x"0F"; 	-- CEQ R4, @ADDR_COUNTER_HOR_DEZ |  TODO: esse limite também é vagabundo, se for 2, já completou, se for 0 ou 1, soma :D
tmp (174) := JEQ & R0 & '0' & x"B4"; 	-- JEQ @FIM_INCREMENTA |  if seg_dez == 9: min_un++
tmp (175) := NOP & R0 & '0' & x"00";
tmp (176) := LDA & R4 & '0' & x"0F"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (177) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (178) := STA & R4 & '0' & x"0F"; 	-- STA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (179) := RET & R0 & '0' & x"00";
-- %LABEL FIM_INCREMENTA
tmp (180) := STA & R0 & '0' & x"0F"; 	-- STA R0, @ADDR_COUNTER_HOR_DEZ | 
tmp (181) := RET & R0 & '0' & x"00";


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
