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
  
tmp (0) := JSR & R0 & '0' & x"0F"; 	-- JSR @INICIA_MEMORIA | 
tmp (1) := NOP & R0 & '0' & x"00";
-- %LABEL MAIN_LOOP
tmp (2) := JSR & R0 & '0' & x"24"; 	-- JSR @SR_REFRESH_DISPLAY | 
tmp (3) := NOP & R0 & '0' & x"00";
tmp (4) := JSR & R0 & '0' & x"31"; 	-- JSR @CONFIG_HORARIO | 
tmp (5) := NOP & R0 & '0' & x"00";
tmp (6) := JSR & R0 & '0' & x"BD"; 	-- JSR @CONFIG_DESPERTADOR | 
tmp (7) := NOP & R0 & '0' & x"00";
tmp (8) := JSR & R0 & '0' & x"76"; 	-- JSR @INCREMENTA_HORARIO | 
tmp (9) := NOP & R0 & '0' & x"00";
tmp (10) := JSR & R0 & '1' & x"02"; 	-- JSR @VERIFICA_HORARIO_E_DESPERTADOR | 
tmp (11) := NOP & R0 & '0' & x"00";
tmp (12) := JSR & R0 & '1' & x"19"; 	-- JSR @VERIFICA_ESTADO_DESPERTANDO | 
tmp (13) := NOP & R0 & '0' & x"00";
tmp (14) := JMP & R0 & '0' & x"02"; 	-- JMP @MAIN_LOOP | 
-- %LABEL INICIA_MEMORIA
tmp (15) := LDI & R0 & '0' & x"00"; 	-- LDI R0, $0 | 
tmp (16) := LDI & R1 & '0' & x"01"; 	-- LDI R1, $1 | 
tmp (17) := LDI & R2 & '0' & x"05"; 	-- LDI R2, $5 | 
tmp (18) := LDI & R3 & '0' & x"09"; 	-- LDI R3, $9 | 
tmp (19) := STA & R1 & '0' & x"01"; 	-- STA R1, @ADDR_CTE1 | 
tmp (20) := STA & R0 & '0' & x"0A"; 	-- STA R0, @ADDR_COUNTER_SEG_UN | 
tmp (21) := STA & R0 & '0' & x"0B"; 	-- STA R0, @ADDR_COUNTER_SEG_DEZ | 
tmp (22) := STA & R0 & '0' & x"0C"; 	-- STA R0, @ADDR_COUNTER_MIN_UN | 
tmp (23) := STA & R0 & '0' & x"0D"; 	-- STA R0, @ADDR_COUNTER_MIN_DEZ | 
tmp (24) := STA & R0 & '0' & x"0E"; 	-- STA R0, @ADDR_COUNTER_HOR_UN | 
tmp (25) := STA & R0 & '0' & x"0F"; 	-- STA R0, @ADDR_COUNTER_HOR_DEZ | 
tmp (26) := STA & R0 & '0' & x"10"; 	-- STA R0, @DESP_SEG_UN | 
tmp (27) := STA & R0 & '0' & x"11"; 	-- STA R0, @DESP_SEG_DEZ | 
tmp (28) := STA & R0 & '0' & x"12"; 	-- STA R0, @DESP_MIN_UN | 
tmp (29) := STA & R0 & '0' & x"13"; 	-- STA R0, @DESP_MIN_DEZ | 
tmp (30) := STA & R0 & '0' & x"15"; 	-- STA R0, @DESP_HOR_DEZ | 
tmp (31) := STA & R2 & '0' & x"14"; 	-- STA R2, @DESP_HOR_UN |  inicializa despertador para as 5AM 
tmp (32) := STA & R0 & '1' & x"64"; 	-- STA R0, @FPGA_RESET | 
tmp (33) := STA & R0 & '0' & x"16"; 	-- STA R0, @FLAG_DESPERTOU | 
tmp (34) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (35) := RET & R0 & '0' & x"00";
-- %LABEL SR_REFRESH_DISPLAY
tmp (36) := LDA & R4 & '0' & x"0A"; 	-- LDA R4, @ADDR_COUNTER_SEG_UN | -- LOAD UNIDADE
tmp (37) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | -- ARMAZENA EM HEX0
tmp (38) := LDA & R4 & '0' & x"0B"; 	-- LDA R4, @ADDR_COUNTER_SEG_DEZ | -- LOAD DEZENA 
tmp (39) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | -- ARMAZENA EM HEX1
tmp (40) := LDA & R4 & '0' & x"0C"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | -- LOAD CENTENA
tmp (41) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | -- ARMAZENA EM HEX2
tmp (42) := LDA & R4 & '0' & x"0D"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | -- LOAD MILHAR
tmp (43) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | -- ARMAZENA EM HEX3
tmp (44) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | -- LOAD DEZ.MILHAR 
tmp (45) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | -- ARMAZENA EM HEX4
tmp (46) := LDA & R4 & '0' & x"0F"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | -- LOAD CEN.MILHAR 
tmp (47) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | -- ARMAZENA EM HEX5
tmp (48) := RET & R0 & '0' & x"00";
-- %LABEL CONFIG_HORARIO
tmp (49) := JMP & R0 & '0' & x"33"; 	-- JMP @SHOULD_CONFIG | 
tmp (50) := NOP & R0 & '0' & x"00";
-- %LABEL SHOULD_CONFIG
tmp (51) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (52) := JEQ & R0 & '0' & x"37"; 	-- JEQ @PRE_CONFIG_SEG_UN | 
tmp (53) := NOP & R0 & '0' & x"00";
tmp (54) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_SEG_UN
tmp (55) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (56) := LDI & R4 & '0' & x"01"; 	-- LDI R4, $1 |  LOAD 1 em R4
tmp (57) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende primeiro LEDR
-- %LABEL CONFIG_SEG_UN
tmp (58) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (59) := STA & R4 & '0' & x"0A"; 	-- STA R4, @ADDR_COUNTER_SEG_UN | 
tmp (60) := STA & R4 & '1' & x"20"; 	-- STA R4, @HEX0 | 
tmp (61) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (62) := JEQ & R0 & '0' & x"41"; 	-- JEQ @PRE_CONFIG_SEG_DEZ | 
tmp (63) := NOP & R0 & '0' & x"00";
tmp (64) := JMP & R0 & '0' & x"3A"; 	-- JMP @CONFIG_SEG_UN | 
-- %LABEL PRE_CONFIG_SEG_DEZ
tmp (65) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (66) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 |  LOAD 2 em R4
tmp (67) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende segundo LEDR
-- %LABEL CONFIG_SEG_DEZ
tmp (68) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (69) := STA & R4 & '0' & x"0B"; 	-- STA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (70) := STA & R4 & '1' & x"21"; 	-- STA R4, @HEX1 | 
tmp (71) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (72) := JEQ & R0 & '0' & x"4B"; 	-- JEQ @PRE_CONFIG_MIN_UN | 
tmp (73) := NOP & R0 & '0' & x"00";
tmp (74) := JMP & R0 & '0' & x"44"; 	-- JMP @CONFIG_SEG_DEZ | 
-- %LABEL PRE_CONFIG_MIN_UN
tmp (75) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (76) := LDI & R4 & '0' & x"04"; 	-- LDI R4, $4 |  LOAD 4 em R4
tmp (77) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende terceiro LEDR
-- %LABEL CONFIG_MIN_UN
tmp (78) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (79) := STA & R4 & '0' & x"0C"; 	-- STA R4, @ADDR_COUNTER_MIN_UN | 
tmp (80) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 | 
tmp (81) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (82) := JEQ & R0 & '0' & x"55"; 	-- JEQ @PRE_CONFIG_MIN_DEZ | 
tmp (83) := NOP & R0 & '0' & x"00";
tmp (84) := JMP & R0 & '0' & x"4E"; 	-- JMP @CONFIG_MIN_UN | 
-- %LABEL PRE_CONFIG_MIN_DEZ
tmp (85) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (86) := LDI & R4 & '0' & x"08"; 	-- LDI R4, $8 |  LOAD 8 em R4
tmp (87) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_MIN_DEZ
tmp (88) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (89) := STA & R4 & '0' & x"0D"; 	-- STA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (90) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | 
tmp (91) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (92) := JEQ & R0 & '0' & x"5F"; 	-- JEQ @PRE_CONFIG_HOR_UN | 
tmp (93) := NOP & R0 & '0' & x"00";
tmp (94) := JMP & R0 & '0' & x"58"; 	-- JMP @CONFIG_MIN_DEZ | 
-- %LABEL PRE_CONFIG_HOR_UN
tmp (95) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (96) := LDI & R4 & '0' & x"10"; 	-- LDI R4, $16 |  LOAD 16 em R4
tmp (97) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_HOR_UN
tmp (98) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (99) := STA & R4 & '0' & x"0E"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (100) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (101) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (102) := JEQ & R0 & '0' & x"69"; 	-- JEQ @PRE_CONFIG_HOR_DEZ | 
tmp (103) := NOP & R0 & '0' & x"00";
tmp (104) := JMP & R0 & '0' & x"62"; 	-- JMP @CONFIG_HOR_UN | 
-- %LABEL PRE_CONFIG_HOR_DEZ
tmp (105) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 |  RST KEY1
tmp (106) := LDI & R4 & '0' & x"20"; 	-- LDI R4, $32 |  LOAD 32 em R4
tmp (107) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quinto LEDR
-- %LABEL CONFIG_HOR_DEZ
tmp (108) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (109) := STA & R4 & '0' & x"0F"; 	-- STA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (110) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
tmp (111) := CEQ & R1 & '1' & x"61"; 	-- CEQ R1, @KEY1 | 
tmp (112) := JEQ & R0 & '0' & x"73"; 	-- JEQ @FIM_CONFIG | 
tmp (113) := NOP & R0 & '0' & x"00";
tmp (114) := JMP & R0 & '0' & x"6C"; 	-- JMP @CONFIG_HOR_DEZ | 
-- %LABEL FIM_CONFIG
tmp (115) := STA & R4 & '1' & x"FE"; 	-- STA R4, @CLEAR_KEY1 | 
tmp (116) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (117) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HORARIO
tmp (118) := JMP & R0 & '0' & x"78"; 	-- JMP @VERIFICA_INCREMENTO | 
tmp (119) := NOP & R0 & '0' & x"00";
-- %LABEL VERIFICA_INCREMENTO
tmp (120) := CEQ & R1 & '1' & x"60"; 	-- CEQ R1, @KEY0 | 
tmp (121) := JEQ & R0 & '0' & x"7C"; 	-- JEQ @INCREMENTA_SEGUNDO_UN | 
tmp (122) := NOP & R0 & '0' & x"00";
tmp (123) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_SEGUNDO_UN
tmp (124) := STA & R4 & '1' & x"FF"; 	-- STA R4, @CLEAR_KEY0 | 
tmp (125) := CEQ & R3 & '0' & x"0A"; 	-- CEQ R3, @ADDR_COUNTER_SEG_UN |  seg_un == 9?
tmp (126) := JEQ & R0 & '0' & x"84"; 	-- JEQ @INCREMENTA_SEG_DEZ |  if seg_un == 9: seg_dez++
tmp (127) := NOP & R0 & '0' & x"00";
tmp (128) := LDA & R4 & '0' & x"0A"; 	-- LDA R4, @ADDR_COUNTER_SEG_UN | 
tmp (129) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (130) := STA & R4 & '0' & x"0A"; 	-- STA R4, @ADDR_COUNTER_SEG_UN | 
tmp (131) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_SEG_DEZ
tmp (132) := STA & R0 & '0' & x"0A"; 	-- STA R0, @ADDR_COUNTER_SEG_UN |  if seg_un == 9: seg_un = 0
tmp (133) := CEQ & R2 & '0' & x"0B"; 	-- CEQ R2, @ADDR_COUNTER_SEG_DEZ |  seg_dez == 5?
tmp (134) := JEQ & R0 & '0' & x"8C"; 	-- JEQ @INCREMENTA_MIN_UN |  if seg_dez == 5: min_un++
tmp (135) := NOP & R0 & '0' & x"00";
tmp (136) := LDA & R4 & '0' & x"0B"; 	-- LDA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (137) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (138) := STA & R4 & '0' & x"0B"; 	-- STA R4, @ADDR_COUNTER_SEG_DEZ | 
tmp (139) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_MIN_UN
tmp (140) := STA & R0 & '0' & x"0B"; 	-- STA R0, @ADDR_COUNTER_SEG_DEZ | 
tmp (141) := CEQ & R3 & '0' & x"0C"; 	-- CEQ R3, @ADDR_COUNTER_MIN_UN |  min_un == 9?
tmp (142) := JEQ & R0 & '0' & x"94"; 	-- JEQ @INCREMENTA_MIN_DEZ |  if min_un == 9: min_dez++
tmp (143) := NOP & R0 & '0' & x"00";
tmp (144) := LDA & R4 & '0' & x"0C"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | 
tmp (145) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (146) := STA & R4 & '0' & x"0C"; 	-- STA R4, @ADDR_COUNTER_MIN_UN | 
tmp (147) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_MIN_DEZ
tmp (148) := STA & R0 & '0' & x"0C"; 	-- STA R0, @ADDR_COUNTER_MIN_UN |  if min_un == 9: min_un = 0
tmp (149) := CEQ & R2 & '0' & x"0D"; 	-- CEQ R2, @ADDR_COUNTER_MIN_DEZ |  min_dez == 5?
tmp (150) := JEQ & R0 & '0' & x"9C"; 	-- JEQ @INCREMENTA_HOR_UN |  if min_dez == 5: hor_un ++
tmp (151) := NOP & R0 & '0' & x"00";
tmp (152) := LDA & R4 & '0' & x"0D"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (153) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (154) := STA & R4 & '0' & x"0D"; 	-- STA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (155) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HOR_UN
tmp (156) := STA & R0 & '0' & x"0D"; 	-- STA R0, @ADDR_COUNTER_MIN_DEZ |  if seg_un == 9: seg_un = 0
tmp (157) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 | 
tmp (158) := CEQ & R4 & '0' & x"0F"; 	-- CEQ R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (159) := JEQ & R0 & '0' & x"A3"; 	-- JEQ @INC_HOR_ATE_3 | Se o horário for maior que 20h, a unidade da hora vai até 3, caso contrário vai até 9
tmp (160) := NOP & R0 & '0' & x"00";
tmp (161) := JMP & R0 & '0' & x"AB"; 	-- JMP @INC_HOR_ATE_9 | 
tmp (162) := NOP & R0 & '0' & x"00";
-- %LABEL INC_HOR_ATE_3
tmp (163) := LDI & R4 & '0' & x"03"; 	-- LDI R4, $3 | 
tmp (164) := CEQ & R4 & '0' & x"0E"; 	-- CEQ R4, @ADDR_COUNTER_HOR_UN | 
tmp (165) := JEQ & R0 & '0' & x"B2"; 	-- JEQ @INCREMENTA_HOR_DEZ | 
tmp (166) := NOP & R0 & '0' & x"00";
tmp (167) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (168) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (169) := STA & R4 & '0' & x"0E"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (170) := RET & R0 & '0' & x"00";
-- %LABEL INC_HOR_ATE_9
tmp (171) := CEQ & R3 & '0' & x"0E"; 	-- CEQ R3, @ADDR_COUNTER_HOR_UN | 
tmp (172) := JEQ & R0 & '0' & x"B2"; 	-- JEQ @INCREMENTA_HOR_DEZ | 
tmp (173) := NOP & R0 & '0' & x"00";
tmp (174) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (175) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (176) := STA & R4 & '0' & x"0E"; 	-- STA R4, @ADDR_COUNTER_HOR_UN | 
tmp (177) := RET & R0 & '0' & x"00";
-- %LABEL INCREMENTA_HOR_DEZ
tmp (178) := STA & R0 & '0' & x"0E"; 	-- STA R0, @ADDR_COUNTER_HOR_UN |  if hor_un == 9: hor_un = 0 | se for maior que 10, vai até 12 só TODO
tmp (179) := LDI & R4 & '0' & x"02"; 	-- LDI R4, $2 | 
tmp (180) := CEQ & R4 & '0' & x"0F"; 	-- CEQ R4, @ADDR_COUNTER_HOR_DEZ |  TODO: esse limite também é vagabundo, se for 2, já completou, se for 0 ou 1, soma :D
tmp (181) := JEQ & R0 & '0' & x"BB"; 	-- JEQ @FIM_INCREMENTA |  if seg_dez == 9: min_un++
tmp (182) := NOP & R0 & '0' & x"00";
tmp (183) := LDA & R4 & '0' & x"0F"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (184) := SOMA & R4 & '0' & x"01"; 	-- SOMA R4, @ADDR_CTE1 | 
tmp (185) := STA & R4 & '0' & x"0F"; 	-- STA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (186) := RET & R0 & '0' & x"00";
-- %LABEL FIM_INCREMENTA
tmp (187) := STA & R0 & '0' & x"0F"; 	-- STA R0, @ADDR_COUNTER_HOR_DEZ | 
tmp (188) := RET & R0 & '0' & x"00";
-- %LABEL CONFIG_DESPERTADOR
tmp (189) := JMP & R0 & '0' & x"BF"; 	-- JMP @SHOULD_CONFIG_DESP | 
tmp (190) := NOP & R0 & '0' & x"00";
-- %LABEL SHOULD_CONFIG_DESP
tmp (191) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | Verifica KEY2 pressionada
tmp (192) := JEQ & R0 & '0' & x"C3"; 	-- JEQ @VERIFICA_FLAG_DESPERTOU | se foi pressionada começa configuração
tmp (193) := NOP & R0 & '0' & x"00";
tmp (194) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_FLAG_DESPERTOU
tmp (195) := CEQ & R0 & '0' & x"16"; 	-- CEQ R0, @FLAG_DESPERTOU | 
tmp (196) := JEQ & R0 & '0' & x"C7"; 	-- JEQ @PRE_CONFIG_DESP_MIN_UN | 
tmp (197) := NOP & R0 & '0' & x"00";
tmp (198) := RET & R0 & '0' & x"00";
-- %LABEL PRE_CONFIG_DESP_MIN_UN
tmp (199) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (200) := LDI & R4 & '0' & x"04"; 	-- LDI R4, $4 |  LOAD 4 em R4
tmp (201) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende terceiro LEDR
tmp (202) := STA & R0 & '0' & x"10"; 	-- STA R0, @DESP_SEG_UN |  Configura despertador para segundo==0
tmp (203) := STA & R0 & '0' & x"11"; 	-- STA R0, @DESP_SEG_DEZ |  Configura despertador para segundo==0
tmp (204) := STA & R0 & '1' & x"20"; 	-- STA R0, @HEX0 |  Zera os dois hex
tmp (205) := STA & R0 & '1' & x"21"; 	-- STA R0, @HEX1 | 
tmp (206) := LDA & R4 & '0' & x"13"; 	-- LDA R4, @DESP_MIN_DEZ | 
tmp (207) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | 
tmp (208) := LDA & R4 & '0' & x"14"; 	-- LDA R4, @DESP_HOR_UN | 
tmp (209) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (210) := LDA & R4 & '0' & x"15"; 	-- LDA R4, @DESP_HOR_DEZ | 
tmp (211) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
-- %LABEL CONFIG_DESP_MIN_UN
tmp (212) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR |  Carrega o SW
tmp (213) := STA & R4 & '0' & x"12"; 	-- STA R4, @DESP_MIN_UN |  Guarda na unidade de minuto (despertador)
tmp (214) := STA & R4 & '1' & x"22"; 	-- STA R4, @HEX2 |  Mostra no hex2
tmp (215) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 |  Key1 apertado?
tmp (216) := JEQ & R0 & '0' & x"DB"; 	-- JEQ @PRE_CONFIG_DESP_MIN_DEZ |  if key1=1 : configura a dezena do minuto  (despertador)
tmp (217) := NOP & R0 & '0' & x"00";
tmp (218) := JMP & R0 & '0' & x"D4"; 	-- JMP @CONFIG_DESP_MIN_UN | 
-- %LABEL PRE_CONFIG_DESP_MIN_DEZ
tmp (219) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (220) := LDI & R4 & '0' & x"08"; 	-- LDI R4, $8 |  LOAD 8 em R4
tmp (221) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_DESP_MIN_DEZ
tmp (222) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR |  Carrega o SW
tmp (223) := STA & R4 & '0' & x"13"; 	-- STA R4, @DESP_MIN_DEZ |  Guarda no despertador dezena de minuto
tmp (224) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 |  mostra no hex3
tmp (225) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 |  Key2 apertada?
tmp (226) := JEQ & R0 & '0' & x"E5"; 	-- JEQ @PRE_CONFIG_DESP_HOR_UN | 
tmp (227) := NOP & R0 & '0' & x"00";
tmp (228) := JMP & R0 & '0' & x"DE"; 	-- JMP @CONFIG_DESP_MIN_DEZ | 
-- %LABEL PRE_CONFIG_DESP_HOR_UN
tmp (229) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (230) := LDI & R4 & '0' & x"10"; 	-- LDI R4, $16 |  LOAD 16 em R4
tmp (231) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quarto LEDR
-- %LABEL CONFIG_DESP_HOR_UN
tmp (232) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (233) := STA & R4 & '0' & x"14"; 	-- STA R4, @DESP_HOR_UN | 
tmp (234) := STA & R4 & '1' & x"24"; 	-- STA R4, @HEX4 | 
tmp (235) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | 
tmp (236) := JEQ & R0 & '0' & x"EF"; 	-- JEQ @PRE_CONFIG_DESP_HOR_DEZ | 
tmp (237) := NOP & R0 & '0' & x"00";
tmp (238) := JMP & R0 & '0' & x"E8"; 	-- JMP @CONFIG_DESP_HOR_UN | 
-- %LABEL PRE_CONFIG_DESP_HOR_DEZ
tmp (239) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 |  RST KEY2
tmp (240) := LDI & R4 & '0' & x"20"; 	-- LDI R4, $32 |  LOAD 32 em R4
tmp (241) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR |  Acende quinto LEDR
-- %LABEL CONFIG_DESP_HOR_DEZ
tmp (242) := LDA & R4 & '1' & x"40"; 	-- LDA R4, @SWR | 
tmp (243) := STA & R4 & '0' & x"15"; 	-- STA R4, @DESP_HOR_DEZ | 
tmp (244) := STA & R4 & '1' & x"25"; 	-- STA R4, @HEX5 | 
tmp (245) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | 
tmp (246) := JEQ & R0 & '0' & x"F9"; 	-- JEQ @FIM_CONFIG_DESPERTADOR | 
tmp (247) := NOP & R0 & '0' & x"00";
tmp (248) := JMP & R0 & '0' & x"F2"; 	-- JMP @CONFIG_DESP_HOR_DEZ | 
-- %LABEL FIM_CONFIG_DESPERTADOR
tmp (249) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 | 
tmp (250) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (251) := STA & R0 & '1' & x"20"; 	-- STA R0, @HEX0 | 
tmp (252) := STA & R0 & '1' & x"21"; 	-- STA R0, @HEX1 | 
tmp (253) := STA & R0 & '1' & x"22"; 	-- STA R0, @HEX2 | 
tmp (254) := STA & R0 & '1' & x"23"; 	-- STA R0, @HEX3 | 
tmp (255) := STA & R0 & '1' & x"24"; 	-- STA R0, @HEX4 | 
tmp (256) := STA & R0 & '1' & x"25"; 	-- STA R0, @HEX5 | 
tmp (257) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_HORARIO_E_DESPERTADOR
tmp (258) := LDA & R4 & '0' & x"0F"; 	-- LDA R4, @ADDR_COUNTER_HOR_DEZ | 
tmp (259) := CEQ & R4 & '0' & x"15"; 	-- CEQ R4, @DESP_HOR_DEZ | 
tmp (260) := JEQ & R0 & '1' & x"07"; 	-- JEQ @VERIFICA_DESP_HOR_UN | 
tmp (261) := NOP & R0 & '0' & x"00";
tmp (262) := JMP & R0 & '1' & x"16"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL VERIFICA_DESP_HOR_UN
tmp (263) := LDA & R4 & '0' & x"0E"; 	-- LDA R4, @ADDR_COUNTER_HOR_UN | 
tmp (264) := CEQ & R4 & '0' & x"14"; 	-- CEQ R4, @DESP_HOR_UN | 
tmp (265) := JEQ & R0 & '1' & x"0C"; 	-- JEQ @VERIFICA_DESP_MIN_DEZ | 
tmp (266) := NOP & R0 & '0' & x"00";
tmp (267) := JMP & R0 & '1' & x"16"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL VERIFICA_DESP_MIN_DEZ
tmp (268) := LDA & R4 & '0' & x"0D"; 	-- LDA R4, @ADDR_COUNTER_MIN_DEZ | 
tmp (269) := CEQ & R4 & '0' & x"13"; 	-- CEQ R4, @DESP_MIN_DEZ | 
tmp (270) := JEQ & R0 & '1' & x"11"; 	-- JEQ @VERIFICA_DESP_MIN_UN | 
tmp (271) := NOP & R0 & '0' & x"00";
tmp (272) := JMP & R0 & '1' & x"16"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL VERIFICA_DESP_MIN_UN
tmp (273) := LDA & R4 & '0' & x"0C"; 	-- LDA R4, @ADDR_COUNTER_MIN_UN | 
tmp (274) := CEQ & R4 & '0' & x"12"; 	-- CEQ R4, @DESP_MIN_UN | 
tmp (275) := JEQ & R0 & '1' & x"17"; 	-- JEQ @SR_DESP_ATINGIDO | 
tmp (276) := NOP & R0 & '0' & x"00";
tmp (277) := JMP & R0 & '1' & x"16"; 	-- JMP @SR_DESP_NAO_ATINGIDO | 
-- %LABEL SR_DESP_NAO_ATINGIDO
tmp (278) := RET & R0 & '0' & x"00";
-- %LABEL SR_DESP_ATINGIDO
tmp (279) := STA & R1 & '0' & x"16"; 	-- STA R1, @FLAG_DESPERTOU | 
tmp (280) := RET & R0 & '0' & x"00";
-- %LABEL VERIFICA_ESTADO_DESPERTANDO
tmp (281) := CEQ & R1 & '0' & x"16"; 	-- CEQ R1, @FLAG_DESPERTOU | 
tmp (282) := JEQ & R0 & '1' & x"1D"; 	-- JEQ @TOCA_DESPERTADOR | 
tmp (283) := NOP & R0 & '0' & x"00";
tmp (284) := RET & R0 & '0' & x"00";
-- %LABEL TOCA_DESPERTADOR
tmp (285) := LDI & R4 & '0' & x"FF"; 	-- LDI R4, @255 | 
tmp (286) := STA & R4 & '1' & x"00"; 	-- STA R4, @LEDR | 
tmp (287) := CEQ & R1 & '1' & x"62"; 	-- CEQ R1, @KEY2 | 
tmp (288) := JEQ & R0 & '1' & x"23"; 	-- JEQ @DESLIGA_DESPERTADOR | 
tmp (289) := NOP & R0 & '0' & x"00";
tmp (290) := RET & R0 & '0' & x"00";
-- %LABEL DESLIGA_DESPERTADOR
tmp (291) := STA & R4 & '1' & x"FD"; 	-- STA R4, @CLEAR_KEY2 | 
tmp (292) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (293) := STA & R0 & '0' & x"16"; 	-- STA R0, @FLAG_DESPERTOU | 
tmp (294) := RET & R0 & '0' & x"00";

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
