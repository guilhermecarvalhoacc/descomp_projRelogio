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
  
tmp (0) := JSR & R0 & '0' & x"15"; 	-- JSR @INICIA_MEMORIA | 
tmp (1) := NOP & R0 & '0' & x"00";
-- %LABEL MAIN_LOOP
tmp (2) := JSR & R0 & '0' & x"32"; 	-- JSR @SR_REFRESH_DISPLAY | 
tmp (3) := NOP & R0 & '0' & x"00";
tmp (4) := JSR & R0 & '0' & x"4F"; 	-- JSR @CONFIG_HORARIO | 
tmp (5) := NOP & R0 & '0' & x"00";
tmp (6) := JSR & R0 & '0' & x"DB"; 	-- JSR @CONFIG_DESPERTADOR | 
tmp (7) := NOP & R0 & '0' & x"00";
tmp (8) := JSR & R0 & '1' & x"45"; 	-- JSR @CONFIG_TEMPORIZADOR | 
tmp (9) := NOP & R0 & '0' & x"00";
tmp (10) := JSR & R0 & '0' & x"94"; 	-- JSR @INCREMENTA_HORARIO | 
tmp (11) := NOP & R0 & '0' & x"00";
tmp (12) := JSR & R0 & '1' & x"A2"; 	-- JSR @DECREMENTA_TEMP | 
tmp (13) := NOP & R0 & '0' & x"00";
tmp (14) := JSR & R0 & '1' & x"20"; 	-- JSR @VERIFICA_HORARIO_E_DESPERTADOR | 
tmp (15) := NOP & R0 & '0' & x"00";
tmp (16) := JSR & R0 & '1' & x"37"; 	-- JSR @VERIFICA_ESTADO_DESPERTANDO | 
tmp (17) := NOP & R0 & '0' & x"00";
tmp (18) := JSR & R0 & '1' & x"4F"; 	-- JSR @VERIFICA_ESTADO_TEMP_DESPERTANDO | 
tmp (19) := NOP & R0 & '0' & x"00";
tmp (20) := JMP & R0 & '0' & x"02"; 	-- JMP @MAIN_LOOP | 
-- %LABEL INICIA_MEMORIA
tmp (21) := LDI & R0 & '0' & x"00"; 	-- LDI R0, $0 | 
tmp (22) := LDI & R1 & '0' & x"01"; 	-- LDI R1, $1 | 
tmp (23) := LDI & R2 & '0' & x"05"; 	-- LDI R2, $5 | 
tmp (24) := LDI & R3 & '0' & x"09"; 	-- LDI R3, $9 | 
tmp (25) := STA & R1 & '0' & x"01"; 	-- STA R1, @ADDR_CTE1 | 
tmp (26) := STA & R0 & '0' & x"04"; 	-- STA R0, @ADDR_COUNTER_SEG_UN | 
tmp (27) := STA & R0 & '0' & x"05"; 	-- STA R0, @ADDR_COUNTER_SEG_DEZ | 
tmp (28) := STA & R0 & '0' & x"06"; 	-- STA R0, @ADDR_COUNTER_MIN_UN | 
tmp (29) := STA & R0 & '0' & x"07"; 	-- STA R0, @ADDR_COUNTER_MIN_DEZ | 
tmp (30) := STA & R0 & '0' & x"08"; 	-- STA R0, @ADDR_COUNTER_HOR_UN | 
tmp (31) := STA & R0 & '0' & x"09"; 	-- STA R0, @ADDR_COUNTER_HOR_DEZ | 
tmp (32) := STA & R0 & '0' & x"0A"; 	-- STA R0, @TEMP_SEG_UN | 
tmp (33) := STA & R0 & '0' & x"0B"; 	-- STA R0, @TEMP_SEG_DEZ | 
tmp (34) := STA & R0 & '0' & x"0C"; 	-- STA R0, @TEMP_MIN_UN | 
tmp (35) := STA & R0 & '0' & x"0D"; 	-- STA R0, @TEMP_MIN_DEZ | 
tmp (36) := STA & R0 & '0' & x"0E"; 	-- STA R0, @TEMP_HOR_UN | 
tmp (37) := STA & R0 & '0' & x"0F"; 	-- STA R0, @TEMP_HOR_DEZ | 
tmp (38) := STA & R0 & '0' & x"10"; 	-- STA R0, @DESP_SEG_UN | 
tmp (39) := STA & R0 & '0' & x"11"; 	-- STA R0, @DESP_SEG_DEZ | 
tmp (40) := STA & R0 & '0' & x"12"; 	-- STA R0, @DESP_MIN_UN | 
tmp (41) := STA & R0 & '0' & x"13"; 	-- STA R0, @DESP_MIN_DEZ | 
tmp (42) := STA & R0 & '0' & x"15"; 	-- STA R0, @DESP_HOR_DEZ | 
tmp (43) := STA & R2 & '0' & x"14"; 	-- STA R2, @DESP_HOR_UN |  inicializa despertador para as 5AM 
tmp (44) := STA & R0 & '1' & x"64"; 	-- STA R0, @FPGA_RESET | 
tmp (45) := STA & R0 & '0' & x"16"; 	-- STA R0, @FLAG_DESPERTOU | 
tmp (46) := STA & R0 & '0' & x"18"; 	-- STA R0, @FLAG_SHOULD_DECREMENTAR | 
tmp (47) := STA & R0 & '0' & x"17"; 	-- STA R0, @FLAG_TEMPORIZADOR_FINISHED | 
tmp (48) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (49) := RET & R0 & '0' & x"00";
-- %LABEL SR_REFRESH_DISPLAY
tmp (50) := CEQ & R1 & '1' & x"42"; 	-- CEQ R1, @SW9 |  Verifica SW9 == 1
tmp (51) := JEQ & R0 & '0' & x"42"; 	-- JEQ @DISPLAY_TEMPORIZADOR |  If SW9==1 : Display Temporizador. Else {display horario}
tmp (52) := NOP & R0 & '0' & x"00";
tmp (53) := LDA & R4 & '0' & x"04"; 	-- LDA R4, @ADDR_COUNTER_SEG_UN | -- LOAD UNIDADE
tmp (54) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | -- ARMAZENA EM HEX0
tmp (55) := LDA & R4 & '0' & x"05"; 	-- LDA R4, @ADDR_COUNTER_SEG_DEZ | -- LOAD DEZENA 
tmp (56) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | -- ARMAZENA EM HEX1
tmp (57) := LDA & R4 & '0' & x"06"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | -- LOAD CENTENA
tmp (58) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | -- ARMAZENA EM HEX2
tmp (59) := LDA & R4 & '0' & x"07"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | -- LOAD MILHAR
tmp (60) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | -- ARMAZENA EM HEX3
tmp (61) := LDA & R4 & '0' & x"08"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | -- LOAD DEZ.MILHAR 
tmp (62) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | -- ARMAZENA EM HEX4
tmp (63) := LDA & R4 & '0' & x"09"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | -- LOAD CEN.MILHAR 
tmp (64) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | -- ARMAZENA EM HEX5
tmp (65) := RET & R0 & '0' & x"00";
-- %LABEL DISPLAY_TEMPORIZADOR
tmp (66) := LDA & R4 & '0' & x"0A"; 	-- LDA R4, @TEMP_SEG_UN | -- LOAD UNIDADE
tmp (67) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | -- ARMAZENA EM HEX0
tmp (68) := LDA & R4 & '0' & x"0B"; 	-- LDA R4, @TEMP_SEG_DEZ | -- LOAD DEZENA 
tmp (69) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | -- ARMAZENA EM HEX1
tmp (70) := LDA & R4 & '0' & x"0C"; 	-- LDA R4, @TEMP_MIN_UN | -- LOAD CENTENA
tmp (71) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | -- ARMAZENA EM HEX2
tmp (72) := LDA & R4 & '0' & x"0D"; 	-- LDA R4, @TEMP_MIN_DEZ | -- LOAD MILHAR
tmp (73) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | -- ARMAZENA EM HEX3
tmp (74) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @TEMP_HOR_UN | -- LOAD DEZ.MILHAR 
tmp (75) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | -- ARMAZENA EM HEX4
tmp (76) := LDA & R4 & '0' & x"0F"; 	-- LDA R4, @TEMP_HOR_DEZ | -- LOAD CEN.MILHAR 
tmp (77) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | -- ARMAZENA EM HEX5
tmp (78) := RET & R0 & '0' & x"00";
-- %LABEL CONFIG_HORARIO
tmp (79) := JMP & R0 & '0' & x"51"; 	-- JMP @SHOULD_CONFIG | 
tmp (80) := NOP & R0 & '0' & x"00";
-- %LABEL SHOULD_CONFIG
tmp (81) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (82) := JEQ & R0 & '0' & x"55"; 	-- JEQ @PRE_CONFIG_SEG_UN | 
tmp (83) := NOP & R0 & '0' & x"00";
tmp (84) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_SEG_UN
tmp (85) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (86) := LDI & R4 & '0' & x"01"; 	-- LDI R4, $1 |  LOAD 1 em R4
tmp (87) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende primeiro LEDR
-- %LABEL CONFIG_SEG_UN
tmp (88) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (89) := STA & R4 & '0' & x"04"; 	-- STA R4, @ADDR_COUNTER_SEG_UN | 
tmp (90) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | 
tmp (91) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (92) := JEQ & R0 & '0' & x"5F"; 	-- JEQ @PRE_CONFIG_SEG_DEZ | 
tmp (93) := NOP & R0 & '0' & x"00";
tmp (94) := JMP & R0 & '0' & x"58"; 	-- JMP @CONFIG_SEG_UN | 
-- %LABEL PRE_CONFIG_SEG_DEZ
tmp (95) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (96) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 |  LOAD 2 em R4
tmp (97) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende segundo LEDR
-- %LABEL CONFIG_SEG_DEZ
tmp (98) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (99) := STA & R4 & '0' & x"05"; 	-- STA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (100) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | 
tmp (101) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (102) := JEQ & R0 & '0' & x"69"; 	-- JEQ @PRE_CONFIG_MIN_UN | 
tmp (103) := NOP & R0 & '0' & x"00";
tmp (104) := JMP & R0 & '0' & x"62"; 	-- JMP @CONFIG_SEG_DEZ | 
-- %LABEL PRE_CONFIG_MIN_UN
tmp (105) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (106) := LDI & R4 & '0' & x"04"; 	-- LDI R4, $4 |  LOAD 4 em R4
tmp (107) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende terceiro LEDR
-- %LABEL CONFIG_MIN_UN
tmp (108) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (109) := STA & R4 & '0' & x"06"; 	-- STA R4, @ADDR_COUNTER_MIN_UN | 
tmp (110) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | 
tmp (111) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (112) := JEQ & R0 & '0' & x"73"; 	-- JEQ @PRE_CONFIG_MIN_DEZ | 
tmp (113) := NOP & R0 & '0' & x"00";
tmp (114) := JMP & R0 & '0' & x"6C"; 	-- JMP @CONFIG_MIN_UN | 
-- %LABEL PRE_CONFIG_MIN_DEZ
tmp (115) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (116) := LDI & R4 & '0' & x"08"; 	-- LDI R4, $8 |  LOAD 8 em R4
tmp (117) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_MIN_DEZ
tmp (118) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (119) := STA & R4 & '0' & x"07"; 	-- STA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (120) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | 
tmp (121) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (122) := JEQ & R0 & '0' & x"7D"; 	-- JEQ @PRE_CONFIG_HOR_UN | 
tmp (123) := NOP & R0 & '0' & x"00";
tmp (124) := JMP & R0 & '0' & x"76"; 	-- JMP @CONFIG_MIN_DEZ | 
-- %LABEL PRE_CONFIG_HOR_UN
tmp (125) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (126) := LDI & R4 & '0' & x"10"; 	-- LDI R4, $16 |  LOAD 16 em R4
tmp (127) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_HOR_UN
tmp (128) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (129) := STA & R4 & '0' & x"08"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (130) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (131) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (132) := JEQ & R0 & '0' & x"87"; 	-- JEQ @PRE_CONFIG_HOR_DEZ | 
tmp (133) := NOP & R0 & '0' & x"00";
tmp (134) := JMP & R0 & '0' & x"80"; 	-- JMP @CONFIG_HOR_UN | 
-- %LABEL PRE_CONFIG_HOR_DEZ
tmp (135) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (136) := LDI & R4 & '0' & x"20"; 	-- LDI R4, $32 |  LOAD 32 em R4
tmp (137) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quinto LEDR
-- %LABEL CONFIG_HOR_DEZ
tmp (138) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (139) := STA & R4 & '0' & x"09"; 	-- STA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (140) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
tmp (141) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (142) := JEQ & R0 & '0' & x"91"; 	-- JEQ @FIM_CONFIG | 
tmp (143) := NOP & R0 & '0' & x"00";
tmp (144) := JMP & R0 & '0' & x"8A"; 	-- JMP @CONFIG_HOR_DEZ | 
-- %LABEL FIM_CONFIG
tmp (145) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 | 
tmp (146) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (147) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HORARIO
tmp (148) := JMP & R0 & '0' & x"96"; 	-- JMP @VERIFICA_INCREMENTO | 
tmp (149) := NOP & R0 & '0' & x"00";
-- %LABEL VERIFICA_INCREMENTO
tmp (150) := CEQ & R1 & '1' & x"60"; 	-- CEQ R1, @KEY0 | 
tmp (151) := JEQ & R0 & '0' & x"9A"; 	-- JEQ @INCREMENTA_SEGUNDO_UN | 
tmp (152) := NOP & R0 & '0' & x"00";
tmp (153) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_SEGUNDO_UN
tmp (154) := STA & R4 & '1' & x"FF"; 	-- STA R4, @CLEAR_KEY0 | 
tmp (155) := CEQ & R3 & '0' & x"04"; 	-- CEQ R3, @ADDR_COUNTER_SEG_UN |  seg_un == 9?
tmp (156) := JEQ & R0 & '0' & x"A2"; 	-- JEQ @INCREMENTA_SEG_DEZ |  if seg_un == 9: seg_dez++
tmp (157) := NOP & R0 & '0' & x"00";
tmp (158) := LDA & R4 & '0' & x"04"; 	-- LDA R4, @ADDR_COUNTER_SEG_UN | 
tmp (159) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (160) := STA & R4 & '0' & x"04"; 	-- STA R4, @ADDR_COUNTER_SEG_UN | 
tmp (161) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_SEG_DEZ
tmp (162) := STA & R0 & '0' & x"04"; 	-- STA R0, @ADDR_COUNTER_SEG_UN |  if seg_un == 9: seg_un = 0
tmp (163) := CEQ & R2 & '0' & x"05"; 	-- CEQ R2, @ADDR_COUNTER_SEG_DEZ |  seg_dez == 5?
tmp (164) := JEQ & R0 & '0' & x"AA"; 	-- JEQ @INCREMENTA_MIN_UN |  if seg_dez == 5: min_un++
tmp (165) := NOP & R0 & '0' & x"00";
tmp (166) := LDA & R4 & '0' & x"05"; 	-- LDA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (167) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (168) := STA & R4 & '0' & x"05"; 	-- STA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (169) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_MIN_UN
tmp (170) := STA & R0 & '0' & x"05"; 	-- STA R0, @ADDR_COUNTER_SEG_DEZ | 
tmp (171) := CEQ & R3 & '0' & x"06"; 	-- CEQ R3, @ADDR_COUNTER_MIN_UN |  min_un == 9?
tmp (172) := JEQ & R0 & '0' & x"B2"; 	-- JEQ @INCREMENTA_MIN_DEZ |  if min_un == 9: min_dez++
tmp (173) := NOP & R0 & '0' & x"00";
tmp (174) := LDA & R4 & '0' & x"06"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | 
tmp (175) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (176) := STA & R4 & '0' & x"06"; 	-- STA R4, @ADDR_COUNTER_MIN_UN | 
tmp (177) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_MIN_DEZ
tmp (178) := STA & R0 & '0' & x"06"; 	-- STA R0, @ADDR_COUNTER_MIN_UN |  if min_un == 9: min_un = 0
tmp (179) := CEQ & R2 & '0' & x"07"; 	-- CEQ R2, @ADDR_COUNTER_MIN_DEZ |  min_dez == 5?
tmp (180) := JEQ & R0 & '0' & x"BA"; 	-- JEQ @INCREMENTA_HOR_UN |  if min_dez == 5: hor_un ++
tmp (181) := NOP & R0 & '0' & x"00";
tmp (182) := LDA & R4 & '0' & x"07"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (183) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (184) := STA & R4 & '0' & x"07"; 	-- STA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (185) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HOR_UN
tmp (186) := STA & R0 & '0' & x"07"; 	-- STA R0, @ADDR_COUNTER_MIN_DEZ |  if seg_un == 9: seg_un = 0
tmp (187) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 | 
tmp (188) := CEQ & R4 & '0' & x"09"; 	-- CEQ R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (189) := JEQ & R0 & '0' & x"C1"; 	-- JEQ @INC_HOR_ATE_3 | Se o horário for maior que 20h, a unidade da hora vai até 3, caso contrário vai até 9
tmp (190) := NOP & R0 & '0' & x"00";
tmp (191) := JMP & R0 & '0' & x"C9"; 	-- JMP @INC_HOR_ATE_9 | 
tmp (192) := NOP & R0 & '0' & x"00";
-- %LABEL INC_HOR_ATE_3
tmp (193) := LDI & R4 & '0' & x"03"; 	-- LDI R4, $3 | 
tmp (194) := CEQ & R4 & '0' & x"08"; 	-- CEQ R4, @ADDR_COUNTER_HOR_UN | 
tmp (195) := JEQ & R0 & '0' & x"D0"; 	-- JEQ @INCREMENTA_HOR_DEZ | 
tmp (196) := NOP & R0 & '0' & x"00";
tmp (197) := LDA & R4 & '0' & x"08"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (198) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (199) := STA & R4 & '0' & x"08"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (200) := RET & R0 & '0' & x"00";
-- %LABEL INC_HOR_ATE_9
tmp (201) := CEQ & R3 & '0' & x"08"; 	-- CEQ R3, @ADDR_COUNTER_HOR_UN | 
tmp (202) := JEQ & R0 & '0' & x"D0"; 	-- JEQ @INCREMENTA_HOR_DEZ | 
tmp (203) := NOP & R0 & '0' & x"00";
tmp (204) := LDA & R4 & '0' & x"08"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (205) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (206) := STA & R4 & '0' & x"08"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (207) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HOR_DEZ
tmp (208) := STA & R0 & '0' & x"08"; 	-- STA R0, @ADDR_COUNTER_HOR_UN |  if hor_un == 9: hor_un = 0 | se for maior que 10, vai até 12 só TODO
tmp (209) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 | 
tmp (210) := CEQ & R4 & '0' & x"09"; 	-- CEQ R4, @ADDR_COUNTER_HOR_DEZ |  TODO: esse limite também é vagabundo, se for 2, já completou, se for 0 ou 1, soma :D
tmp (211) := JEQ & R0 & '0' & x"D9"; 	-- JEQ @FIM_INCREMENTA |  if seg_dez == 9: min_un++
tmp (212) := NOP & R0 & '0' & x"00";
tmp (213) := LDA & R4 & '0' & x"09"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (214) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (215) := STA & R4 & '0' & x"09"; 	-- STA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (216) := RET & R0 & '0' & x"00";
-- %LABEL FIM_INCREMENTA
tmp (217) := STA & R0 & '0' & x"09"; 	-- STA R0, @ADDR_COUNTER_HOR_DEZ | 
tmp (218) := RET & R0 & '0' & x"00";
-- %LABEL CONFIG_DESPERTADOR
tmp (219) := JMP & R0 & '0' & x"DD"; 	-- JMP @SHOULD_CONFIG_DESP | 
tmp (220) := NOP & R0 & '0' & x"00";
-- %LABEL SHOULD_CONFIG_DESP
tmp (221) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | Verifica KEY2 pressionada
tmp (222) := JEQ & R0 & '0' & x"E1"; 	-- JEQ @VERIFICA_FLAG_DESPERTOU | se foi pressionada começa configuração
tmp (223) := NOP & R0 & '0' & x"00";
tmp (224) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_FLAG_DESPERTOU
tmp (225) := CEQ & R0 & '0' & x"16"; 	-- CEQ R0, @FLAG_DESPERTOU | 
tmp (226) := JEQ & R0 & '0' & x"E5"; 	-- JEQ @PRE_CONFIG_DESP_MIN_UN | 
tmp (227) := NOP & R0 & '0' & x"00";
tmp (228) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_DESP_MIN_UN
tmp (229) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (230) := LDI & R4 & '0' & x"04"; 	-- LDI R4, $4 |  LOAD 4 em R4
tmp (231) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende terceiro LEDR
tmp (232) := STA & R0 & '0' & x"10"; 	-- STA R0, @DESP_SEG_UN |  Configura despertador para segundo==0
tmp (233) := STA & R0 & '0' & x"11"; 	-- STA R0, @DESP_SEG_DEZ |  Configura despertador para segundo==0
tmp (234) := STA & R0 & '1' & x"20"; 	-- STA R0, @HEX0 |  Zera os dois hex
tmp (235) := STA & R0 & '1' & x"21"; 	-- STA R0, @HEX1 | 
tmp (236) := LDA & R4 & '0' & x"13"; 	-- LDA R4, @DESP_MIN_DEZ | 
tmp (237) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | 
tmp (238) := LDA & R4 & '0' & x"14"; 	-- LDA R4, @DESP_HOR_UN | 
tmp (239) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (240) := LDA & R4 & '0' & x"15"; 	-- LDA R4, @DESP_HOR_DEZ | 
tmp (241) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
-- %LABEL CONFIG_DESP_MIN_UN
tmp (242) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR |  Carrega o SW
tmp (243) := STA & R4 & '0' & x"12"; 	-- STA R4, @DESP_MIN_UN |  Guarda na unidade de minuto (despertador)
tmp (244) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 |  Mostra no hex2
tmp (245) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 |  Key1 apertado?
tmp (246) := JEQ & R0 & '0' & x"F9"; 	-- JEQ @PRE_CONFIG_DESP_MIN_DEZ |  if key1=1 : configura a dezena do minuto  (despertador)
tmp (247) := NOP & R0 & '0' & x"00";
tmp (248) := JMP & R0 & '0' & x"F2"; 	-- JMP @CONFIG_DESP_MIN_UN | 
-- %LABEL PRE_CONFIG_DESP_MIN_DEZ
tmp (249) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (250) := LDI & R4 & '0' & x"08"; 	-- LDI R4, $8 |  LOAD 8 em R4
tmp (251) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_DESP_MIN_DEZ
tmp (252) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR |  Carrega o SW
tmp (253) := STA & R4 & '0' & x"13"; 	-- STA R4, @DESP_MIN_DEZ |  Guarda no despertador dezena de minuto
tmp (254) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 |  mostra no hex3
tmp (255) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 |  Key2 apertada?
tmp (256) := JEQ & R0 & '1' & x"03"; 	-- JEQ @PRE_CONFIG_DESP_HOR_UN | 
tmp (257) := NOP & R0 & '0' & x"00";
tmp (258) := JMP & R0 & '0' & x"FC"; 	-- JMP @CONFIG_DESP_MIN_DEZ | 
-- %LABEL PRE_CONFIG_DESP_HOR_UN
tmp (259) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (260) := LDI & R4 & '0' & x"10"; 	-- LDI R4, $16 |  LOAD 16 em R4
tmp (261) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_DESP_HOR_UN
tmp (262) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (263) := STA & R4 & '0' & x"14"; 	-- STA R4, @DESP_HOR_UN | 
tmp (264) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (265) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | 
tmp (266) := JEQ & R0 & '1' & x"0D"; 	-- JEQ @PRE_CONFIG_DESP_HOR_DEZ | 
tmp (267) := NOP & R0 & '0' & x"00";
tmp (268) := JMP & R0 & '1' & x"06"; 	-- JMP @CONFIG_DESP_HOR_UN | 
-- %LABEL PRE_CONFIG_DESP_HOR_DEZ
tmp (269) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (270) := LDI & R4 & '0' & x"20"; 	-- LDI R4, $32 |  LOAD 32 em R4
tmp (271) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quinto LEDR
-- %LABEL CONFIG_DESP_HOR_DEZ
tmp (272) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (273) := STA & R4 & '0' & x"15"; 	-- STA R4, @DESP_HOR_DEZ | 
tmp (274) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
tmp (275) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | 
tmp (276) := JEQ & R0 & '1' & x"17"; 	-- JEQ @FIM_CONFIG_DESPERTADOR | 
tmp (277) := NOP & R0 & '0' & x"00";
tmp (278) := JMP & R0 & '1' & x"10"; 	-- JMP @CONFIG_DESP_HOR_DEZ | 
-- %LABEL FIM_CONFIG_DESPERTADOR
tmp (279) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 | 
tmp (280) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (281) := STA & R0 & '1' & x"20"; 	-- STA R0, @HEX0 | 
tmp (282) := STA & R0 & '1' & x"21"; 	-- STA R0, @HEX1 | 
tmp (283) := STA & R0 & '1' & x"22"; 	-- STA R0, @HEX2 | 
tmp (284) := STA & R0 & '1' & x"23"; 	-- STA R0, @HEX3 | 
tmp (285) := STA & R0 & '1' & x"24"; 	-- STA R0, @HEX4 | 
tmp (286) := STA & R0 & '1' & x"25"; 	-- STA R0, @HEX5 | 
tmp (287) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_HORARIO_E_DESPERTADOR
tmp (288) := LDA & R4 & '0' & x"09"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (289) := CEQ & R4 & '0' & x"15"; 	-- CEQ R4, @DESP_HOR_DEZ | 
tmp (290) := JEQ & R0 & '1' & x"25"; 	-- JEQ @VERIFICA_DESP_HOR_UN | 
tmp (291) := NOP & R0 & '0' & x"00";
tmp (292) := JMP & R0 & '1' & x"34"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL VERIFICA_DESP_HOR_UN
tmp (293) := LDA & R4 & '0' & x"08"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (294) := CEQ & R4 & '0' & x"14"; 	-- CEQ R4, @DESP_HOR_UN | 
tmp (295) := JEQ & R0 & '1' & x"2A"; 	-- JEQ @VERIFICA_DESP_MIN_DEZ | 
tmp (296) := NOP & R0 & '0' & x"00";
tmp (297) := JMP & R0 & '1' & x"34"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL VERIFICA_DESP_MIN_DEZ
tmp (298) := LDA & R4 & '0' & x"07"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (299) := CEQ & R4 & '0' & x"13"; 	-- CEQ R4, @DESP_MIN_DEZ | 
tmp (300) := JEQ & R0 & '1' & x"2F"; 	-- JEQ @VERIFICA_DESP_MIN_UN | 
tmp (301) := NOP & R0 & '0' & x"00";
tmp (302) := JMP & R0 & '1' & x"34"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL VERIFICA_DESP_MIN_UN
tmp (303) := LDA & R4 & '0' & x"06"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | 
tmp (304) := CEQ & R4 & '0' & x"12"; 	-- CEQ R4, @DESP_MIN_UN | 
tmp (305) := JEQ & R0 & '1' & x"35"; 	-- JEQ @SR_DESP_ATINGIDO | 
tmp (306) := NOP & R0 & '0' & x"00";
tmp (307) := JMP & R0 & '1' & x"34"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL SR_DESP_NAO_ATINGIDO
tmp (308) := RET & R0 & '0' & x"00";
-- %LABEL SR_DESP_ATINGIDO
tmp (309) := STA & R1 & '0' & x"16"; 	-- STA R1, @FLAG_DESPERTOU | 
tmp (310) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_ESTADO_DESPERTANDO
tmp (311) := CEQ & R1 & '0' & x"16"; 	-- CEQ R1, @FLAG_DESPERTOU | 
tmp (312) := JEQ & R0 & '1' & x"3B"; 	-- JEQ @TOCA_DESPERTADOR | 
tmp (313) := NOP & R0 & '0' & x"00";
tmp (314) := RET & R0 & '0' & x"00";
-- %LABEL TOCA_DESPERTADOR
tmp (315) := LDI & R4 & '0' & x"FF"; 	-- LDI R4, @255 | 
tmp (316) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
tmp (317) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | 
tmp (318) := JEQ & R0 & '1' & x"41"; 	-- JEQ @DESLIGA_DESPERTADOR | 
tmp (319) := NOP & R0 & '0' & x"00";
tmp (320) := RET & R0 & '0' & x"00";
-- %LABEL DESLIGA_DESPERTADOR
tmp (321) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 | 
tmp (322) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (323) := STA & R0 & '0' & x"16"; 	-- STA R0, @FLAG_DESPERTOU | 
tmp (324) := RET & R0 & '0' & x"00";
-- %LABEL CONFIG_TEMPORIZADOR
tmp (325) := JMP & R0 & '1' & x"47"; 	-- JMP @SHOULD_CONFIG_TEMP | 
tmp (326) := NOP & R0 & '0' & x"00";
-- %LABEL SHOULD_CONFIG_TEMP
tmp (327) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 |  Verifica key3 == 1
tmp (328) := JEQ & R0 & '1' & x"4B"; 	-- JEQ @VERIFICA_FLAG_TEMPORIZADOR_DESPERTOU |  If key3==1: Verifica flag_temporizador_despertou
tmp (329) := NOP & R0 & '0' & x"00";
tmp (330) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_FLAG_TEMPORIZADOR_DESPERTOU
tmp (331) := CEQ & R0 & '0' & x"17"; 	-- CEQ R0, @FLAG_TEMPORIZADOR_FINISHED |  Verifica se o temporizador já finalizou (chegou em 0)
tmp (332) := JEQ & R0 & '1' & x"5E"; 	-- JEQ @PRE_CONFIG_TEMP_SEG_UN |  Caso não tenha terminado, jmp para fazer configuração 
tmp (333) := NOP & R0 & '0' & x"00";
tmp (334) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_ESTADO_TEMP_DESPERTANDO
tmp (335) := CEQ & R1 & '0' & x"17"; 	-- CEQ R1, @FLAG_TEMPORIZADOR_FINISHED |  Verifica se o temporizador já finalizou (chegou em 0)
tmp (336) := JEQ & R0 & '1' & x"53"; 	-- JEQ @TOCA_DESPERTADOR_TEMP | 
tmp (337) := NOP & R0 & '0' & x"00";
tmp (338) := RET & R0 & '0' & x"00";
-- %LABEL TOCA_DESPERTADOR_TEMP
tmp (339) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 |  Faz a verificação (key3 pressionado) para desligar o alarme
tmp (340) := LDI & R4 & '0' & x"55"; 	-- LDI R4, $85 |  Caso tenha terminado, ativa os leds indicando o ALARME 
tmp (341) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
tmp (342) := JEQ & R0 & '1' & x"59"; 	-- JEQ @DESLIGA_ALARME_TEMP | 
tmp (343) := NOP & R0 & '0' & x"00";
tmp (344) := RET & R0 & '0' & x"00";
-- %LABEL DESLIGA_ALARME_TEMP
tmp (345) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (346) := STA & R0 & '0' & x"17"; 	-- STA R0, @FLAG_TEMPORIZADOR_FINISHED | 
tmp (347) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (348) := STA & R0 & '0' & x"18"; 	-- STA R0, @FLAG_SHOULD_DECREMENTAR | 
tmp (349) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_TEMP_SEG_UN
tmp (350) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (351) := LDI & R4 & '0' & x"01"; 	-- LDI R4, $1 | 
tmp (352) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
-- %LABEL CONFIG_TEMP_SEG_UN
tmp (353) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (354) := STA & R4 & '0' & x"0A"; 	-- STA R4, @TEMP_SEG_UN | 
tmp (355) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | 
tmp (356) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 | 
tmp (357) := JEQ & R0 & '1' & x"68"; 	-- JEQ @PRE_CONFIG_TEMP_SEG_DEZ | 
tmp (358) := NOP & R0 & '0' & x"00";
tmp (359) := JMP & R0 & '1' & x"61"; 	-- JMP @CONFIG_TEMP_SEG_UN | 
-- %LABEL PRE_CONFIG_TEMP_SEG_DEZ
tmp (360) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (361) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 | 
tmp (362) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
-- %LABEL CONFIG_TEMP_SEG_DEZ
tmp (363) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (364) := STA & R4 & '0' & x"0B"; 	-- STA R4, @TEMP_SEG_DEZ | 
tmp (365) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | 
tmp (366) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 | 
tmp (367) := JEQ & R0 & '1' & x"72"; 	-- JEQ @PRE_CONFIG_TEMP_MIN_UN | 
tmp (368) := NOP & R0 & '0' & x"00";
tmp (369) := JMP & R0 & '1' & x"6B"; 	-- JMP @CONFIG_TEMP_SEG_DEZ | 
-- %LABEL PRE_CONFIG_TEMP_MIN_UN
tmp (370) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (371) := LDI & R4 & '0' & x"04"; 	-- LDI R4, $4 | 
tmp (372) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
-- %LABEL CONFIG_TEMP_MIN_UN
tmp (373) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (374) := STA & R4 & '0' & x"0C"; 	-- STA R4, @TEMP_MIN_UN | 
tmp (375) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | 
tmp (376) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 | 
tmp (377) := JEQ & R0 & '1' & x"7D"; 	-- JEQ @PRE_CONFIG_TEMP_MIN_DEZ | 
tmp (378) := NOP & R0 & '0' & x"00";
tmp (379) := JMP & R0 & '1' & x"75"; 	-- JMP @CONFIG_TEMP_MIN_UN | 
tmp (380) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_TEMP_MIN_DEZ
tmp (381) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (382) := LDI & R4 & '0' & x"08"; 	-- LDI R4, $8 | 
tmp (383) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
-- %LABEL CONFIG_TEMP_MIN_DEZ
tmp (384) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (385) := STA & R4 & '0' & x"0D"; 	-- STA R4, @TEMP_MIN_DEZ | 
tmp (386) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | 
tmp (387) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 | 
tmp (388) := JEQ & R0 & '1' & x"88"; 	-- JEQ @PRE_CONFIG_TEMP_HOR_UN | 
tmp (389) := NOP & R0 & '0' & x"00";
tmp (390) := JMP & R0 & '1' & x"80"; 	-- JMP @CONFIG_TEMP_MIN_DEZ | 
tmp (391) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_TEMP_HOR_UN
tmp (392) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (393) := LDI & R4 & '0' & x"10"; 	-- LDI R4, $16 | 
tmp (394) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
-- %LABEL CONFIG_TEMP_HOR_UN
tmp (395) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (396) := STA & R4 & '0' & x"0E"; 	-- STA R4, @TEMP_HOR_UN | 
tmp (397) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (398) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 | 
tmp (399) := JEQ & R0 & '1' & x"93"; 	-- JEQ @PRE_CONFIG_TEMP_HOR_DEZ | 
tmp (400) := NOP & R0 & '0' & x"00";
tmp (401) := JMP & R0 & '1' & x"8B"; 	-- JMP @CONFIG_TEMP_HOR_UN | 
tmp (402) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_TEMP_HOR_DEZ
tmp (403) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (404) := LDI & R4 & '0' & x"20"; 	-- LDI R4, $32 | 
tmp (405) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
-- %LABEL CONFIG_TEMP_HOR_DEZ
tmp (406) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (407) := STA & R4 & '0' & x"0F"; 	-- STA R4, @TEMP_HOR_DEZ | 
tmp (408) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
tmp (409) := CEQ & R1 & '1' & x"63"; 	-- CEQ R1, @KEY3 | 
tmp (410) := JEQ & R0 & '1' & x"9E"; 	-- JEQ @FIM_CONFIG_TEMPORIZADOR | 
tmp (411) := NOP & R0 & '0' & x"00";
tmp (412) := JMP & R0 & '1' & x"96"; 	-- JMP @CONFIG_TEMP_HOR_DEZ | 
tmp (413) := RET & R0 & '0' & x"00";
-- %LABEL FIM_CONFIG_TEMPORIZADOR
tmp (414) := STA & R4 & '1' & x"FC"; 	-- STA R4, @CLEAR_KEY3 | 
tmp (415) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (416) := STA & R1 & '0' & x"18"; 	-- STA R1, @FLAG_SHOULD_DECREMENTAR | 
tmp (417) := RET & R0 & '0' & x"00";
-- %LABEL DECREMENTA_TEMP
tmp (418) := JMP & R0 & '1' & x"A4"; 	-- JMP @SHOULD_DECREMENTAR_TEMP | 
tmp (419) := NOP & R0 & '0' & x"00";
-- %LABEL SHOULD_DECREMENTAR_TEMP
tmp (420) := CEQ & R1 & '0' & x"18"; 	-- CEQ R1, @FLAG_SHOULD_DECREMENTAR | 
tmp (421) := JEQ & R0 & '1' & x"A8"; 	-- JEQ @VERIFICA_CLK_DECREMENTA | 
tmp (422) := NOP & R0 & '0' & x"00";
tmp (423) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_CLK_DECREMENTA
tmp (424) := CEQ & R1 & '1' & x"65"; 	-- CEQ R1, @KEYTEMP | 
tmp (425) := JEQ & R0 & '1' & x"AC"; 	-- JEQ @DECREMENTA_SEG_UN | 
tmp (426) := NOP & R0 & '0' & x"00";
tmp (427) := RET & R0 & '0' & x"00";
-- %LABEL DECREMENTA_SEG_UN
tmp (428) := STA & R4 & '1' & x"FB"; 	-- STA R4, @CLEAR_KEYTEMP |  Limpa KEYTEMP
tmp (429) := CEQ & R0 & '0' & x"0A"; 	-- CEQ R0, @TEMP_SEG_UN |  if temp_seg_un == 0: decrementa_seg_dez
tmp (430) := JEQ & R0 & '1' & x"B4"; 	-- JEQ @DECREMENTA_SEG_DEZ | 
tmp (431) := NOP & R0 & '0' & x"00";
tmp (432) := LDA & R4 & '0' & x"0A"; 	-- LDA R4, @TEMP_SEG_UN |  else: (temp_seg_un != (1 or 0)) : temp_seg_un-=1
tmp (433) := SUB & R4 & '0' & x"01"; 	-- SUB R4, @ADDR_CTE1 | 
tmp (434) := STA & R4 & '0' & x"0A"; 	-- STA R4, @TEMP_SEG_UN | 
tmp (435) := RET & R0 & '0' & x"00";
-- %LABEL DECREMENTA_SEG_DEZ
tmp (436) := CEQ & R0 & '0' & x"0B"; 	-- CEQ R0, @TEMP_SEG_DEZ |  temp_seg_dez == 0?
tmp (437) := JEQ & R0 & '1' & x"BC"; 	-- JEQ @DECREMENTA_MIN_UN |  if (temp_seg_dez == 0): decrementa_min_un, else: temp_seg_dez-=1; temp_seg_un=9
tmp (438) := NOP & R0 & '0' & x"00";
tmp (439) := LDA & R4 & '0' & x"0B"; 	-- LDA R4, @TEMP_SEG_DEZ | 
tmp (440) := SUB & R4 & '0' & x"01"; 	-- SUB R4, @ADDR_CTE1 |  temp_seg_dez-=1
tmp (441) := STA & R4 & '0' & x"0B"; 	-- STA R4, @TEMP_SEG_DEZ | 
tmp (442) := STA & R3 & '0' & x"0A"; 	-- STA R3, @TEMP_SEG_UN |  temp_seg_un = 9
tmp (443) := RET & R0 & '0' & x"00";
-- %LABEL DECREMENTA_MIN_UN
tmp (444) := CEQ & R0 & '0' & x"0C"; 	-- CEQ R0, @TEMP_MIN_UN | 
tmp (445) := JEQ & R0 & '1' & x"C5"; 	-- JEQ @DECREMENTA_MIN_DEZ | 
tmp (446) := NOP & R0 & '0' & x"00";
tmp (447) := LDA & R4 & '0' & x"0C"; 	-- LDA R4, @TEMP_MIN_UN | 
tmp (448) := SUB & R4 & '0' & x"01"; 	-- SUB R4, @ADDR_CTE1 | 
tmp (449) := STA & R4 & '0' & x"0C"; 	-- STA R4, @TEMP_MIN_UN | 
tmp (450) := STA & R2 & '0' & x"0B"; 	-- STA R2, @TEMP_SEG_DEZ | 
tmp (451) := STA & R3 & '0' & x"0A"; 	-- STA R3, @TEMP_SEG_UN | 
tmp (452) := RET & R0 & '0' & x"00";
-- %LABEL DECREMENTA_MIN_DEZ
tmp (453) := CEQ & R0 & '0' & x"0D"; 	-- CEQ R0, @TEMP_MIN_DEZ | 
tmp (454) := JEQ & R0 & '1' & x"CF"; 	-- JEQ @DECREMENTA_HOR_UN | 
tmp (455) := NOP & R0 & '0' & x"00";
tmp (456) := LDA & R4 & '0' & x"0D"; 	-- LDA R4, @TEMP_MIN_DEZ | 
tmp (457) := SUB & R4 & '0' & x"01"; 	-- SUB R4, @ADDR_CTE1 | 
tmp (458) := STA & R4 & '0' & x"0D"; 	-- STA R4, @TEMP_MIN_DEZ | 
tmp (459) := STA & R3 & '0' & x"0C"; 	-- STA R3, @TEMP_MIN_UN | 
tmp (460) := STA & R2 & '0' & x"0B"; 	-- STA R2, @TEMP_SEG_DEZ | 
tmp (461) := STA & R3 & '0' & x"0A"; 	-- STA R3, @TEMP_SEG_UN | 
tmp (462) := RET & R0 & '0' & x"00";
-- %LABEL DECREMENTA_HOR_UN
tmp (463) := CEQ & R0 & '0' & x"0E"; 	-- CEQ R0, @TEMP_HOR_UN | 
tmp (464) := JEQ & R0 & '1' & x"DA"; 	-- JEQ @DECREMENTA_HOR_DEZ | 
tmp (465) := NOP & R0 & '0' & x"00";
tmp (466) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @TEMP_HOR_UN | 
tmp (467) := SUB & R4 & '0' & x"01"; 	-- SUB R4, @ADDR_CTE1 | 
tmp (468) := STA & R4 & '0' & x"0E"; 	-- STA R4, @TEMP_HOR_UN | 
tmp (469) := STA & R2 & '0' & x"0D"; 	-- STA R2, @TEMP_MIN_DEZ | 
tmp (470) := STA & R3 & '0' & x"0C"; 	-- STA R3, @TEMP_MIN_UN | 
tmp (471) := STA & R2 & '0' & x"0B"; 	-- STA R2, @TEMP_SEG_DEZ | 
tmp (472) := STA & R3 & '0' & x"0A"; 	-- STA R3, @TEMP_SEG_UN | 
tmp (473) := RET & R0 & '0' & x"00";
-- %LABEL DECREMENTA_HOR_DEZ
tmp (474) := CEQ & R0 & '0' & x"0F"; 	-- CEQ R0, @TEMP_HOR_DEZ | 
tmp (475) := JEQ & R0 & '1' & x"E6"; 	-- JEQ @FIM_DECREMENTA | 
tmp (476) := NOP & R0 & '0' & x"00";
tmp (477) := LDA & R4 & '0' & x"0F"; 	-- LDA R4, @TEMP_HOR_DEZ | 
tmp (478) := SUB & R4 & '0' & x"01"; 	-- SUB R4, @ADDR_CTE1 | 
tmp (479) := STA & R4 & '0' & x"0F"; 	-- STA R4, @TEMP_HOR_DEZ | 
tmp (480) := STA & R3 & '0' & x"0E"; 	-- STA R3, @TEMP_HOR_UN | 
tmp (481) := STA & R2 & '0' & x"0D"; 	-- STA R2, @TEMP_MIN_DEZ | 
tmp (482) := STA & R3 & '0' & x"0C"; 	-- STA R3, @TEMP_MIN_UN | 
tmp (483) := STA & R2 & '0' & x"0B"; 	-- STA R2, @TEMP_SEG_DEZ | 
tmp (484) := STA & R3 & '0' & x"0A"; 	-- STA R3, @TEMP_SEG_UN | 
tmp (485) := RET & R0 & '0' & x"00";
-- %LABEL FIM_DECREMENTA
tmp (486) := STA & R1 & '0' & x"17"; 	-- STA R1, @FLAG_TEMPORIZADOR_FINISHED | 
tmp (487) := RET & R0 & '0' & x"00";

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
