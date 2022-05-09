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

  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin

tmp(0) := NOP & '0' & x"00"; 	 ---- MAIN LOOP
tmp(1) := NOP & '0' & x"00"; 	 --%LABEL LOOP_INICIAL
tmp(2) := "1001000010000";	-- JSR @SR_INICIALIZACAO
tmp(3) := "0000000000000";	-- NOP
tmp(4) := "1001000101101";	-- JSR @SR_ATUALIZAR_DISPLAY
tmp(5) := "0000000000000";	-- NOP
tmp(6) := "1001001000110";	-- JSR @SR_SET_LIMIT
tmp(7) := NOP & '0' & x"00"; 	 --%LABEL MAIN_LOOP
tmp(8) := "1001000101101";	-- JSR @SR_ATUALIZAR_DISPLAY
tmp(9) := "0000000000000";	-- NOP
tmp(10) := "1001011110010";	-- JSR @SR_VERIFICA_LIMITE      	#--TODO: Verificar se flag_inibicao está funcionando
tmp(11) := "0000000000000";	-- NOP
tmp(12) := "1001010010100";	-- JSR @SR_INCREMENTO_CONTADOR
tmp(13) := "0000000000000";	-- NOP
tmp(14) := "0110001000000";	-- JMP @SR_VERIFICA_FPGA_RESET  	#-- Se for reset, volta pro loop inicial, caso contrario main loop
tmp(15) := "0000000000000";	-- NOP
tmp(16) := NOP & '0' & x"00"; 	 --%LABEL SR_INICIALIZACAO #-- ZERAR VALORES DA MEMORIA (INICIALIZACAO) - DANI
tmp(17) := "0100000000000";	-- LDI $0                               	# Carrega 0 no acumulador
tmp(18) := "0101000000000";	-- STA @ADDR_CTE0                       	# Seta a constate CTE0
tmp(19) := "0100000000001";	-- LDI $1                               	# Carrega 1 no acumulador 
tmp(20) := "0101000000001";	-- STA @ADDR_CTE1                       	# Seta a constante CTE1
tmp(21) := "0100000001001";	-- LDI $9                               	# Carrega 9 no acumulador 
tmp(22) := "0101000001001";	-- STA @ADDR_CTE9                       	# Seta a constante CTE9
tmp(23) := NOP & '0' & x"00"; 	 ---- Inicializar endereços de memória
tmp(24) := "0001000000000";	-- LDA @ADDR_CTE0                        	#-- Load cte 0
tmp(25) := "0101000001010";	-- STA @ADDR_COUNTER_UNIDADE        
tmp(26) := "0101000001011";	-- STA @ADDR_COUNTER_DEZENA         
tmp(27) := "0101000001100";	-- STA @ADDR_COUNTER_CENTENA        
tmp(28) := "0101000001101";	-- STA @ADDR_COUNTER_MILHAR         
tmp(29) := "0101000001110";	-- STA @ADDR_COUNTER_DEZ_MILHAR     
tmp(30) := "0101000001111";	-- STA @ADDR_COUNTER_CEN_MILHAR     
tmp(31) := "0101000010000";	-- STA @ADDR_LIMIT_COUNTER_UNIDADE  
tmp(32) := "0101000010001";	-- STA @ADDR_LIMIT_COUNTER_DEZENA   
tmp(33) := "0101000010010";	-- STA @ADDR_LIMIT_COUNTER_CENTENA  
tmp(34) := "0101000010011";	-- STA @ADDR_LIMIT_COUNTER_MILHAR   
tmp(35) := "0101000010100";	-- STA @ADDR_LIMIT_COUNTER_DEZ_MILHAR
tmp(36) := "0101000010101";	-- STA @ADDR_LIMIT_COUNTER_CEN_MILHAR
tmp(37) := "0101000010110";	-- STA @ADDR_FLAG_OVERFLOW
tmp(38) := "0101000010111";	-- STA @ADDR_FLAG_INIBICAO
tmp(39) := "0101101100100";	-- STA @FPGA_RESET
tmp(40) := "0101111111111";	-- STA @CLEAR_KEY0
tmp(41) := "0101111111110";	-- STA @CLEAR_KEY1
tmp(42) := "0101100000000";	-- STA @LEDR
tmp(43) := "1010000000000";	-- RET @ADDR_CTE0                      	#-- Exit inicialization sub routine
tmp(44) := "0000000000000";	-- NOP                                 	#-- === FIM INICIALIZAR CTE's  ===
tmp(45) := NOP & '0' & x"00"; 	 --%LABEL SR_ATUALIZAR_DISPLAY #-- ATUALIZAR DISPLAY - DANI
tmp(46) := "0001000001010";	-- LDA  @ADDR_COUNTER_UNIDADE    	#-- LOAD UNIDADE
tmp(47) := "0101100100000";	-- STA  @HEX0                    	#-- ARMAZENA EM HEX0
tmp(48) := "0001000001011";	-- LDA  @ADDR_COUNTER_DEZENA     	#-- LOAD DEZENA 
tmp(49) := "0101100100001";	-- STA  @HEX1                    	#-- ARMAZENA EM HEX1
tmp(50) := "0001000001100";	-- LDA  @ADDR_COUNTER_CENTENA    	#-- LOAD CENTENA
tmp(51) := "0101100100010";	-- STA  @HEX2                    	#-- ARMAZENA EM HEX2
tmp(52) := "0001000001101";	-- LDA  @ADDR_COUNTER_MILHAR     	#-- LOAD MILHAR
tmp(53) := "0101100100011";	-- STA  @HEX3                    	#-- ARMAZENA EM HEX3
tmp(54) := "0001000001110";	-- LDA  @ADDR_COUNTER_DEZ_MILHAR 	#-- LOAD DEZ.MILHAR 
tmp(55) := "0101100100100";	-- STA  @HEX4                    	#-- ARMAZENA EM HEX4
tmp(56) := "0001000001111";	-- LDA  @ADDR_COUNTER_CEN_MILHAR 	#-- LOAD CEN.MILHAR 
tmp(57) := "0101100100101";	-- STA  @HEX5                    	#-- ARMAZENA EM HEX5
tmp(58) := NOP & '0' & x"00"; 	 ---- ATUALIZA LEDS OVERFLOW, INIBICAO
tmp(59) := "0001000010110";	-- LDA @ADDR_FLAG_OVERFLOW       	#-- LOAD FLAG OVERFLOW
tmp(60) := "0101100000001";	-- STA @LED_F_OVERFLOW           	#-- ARMAZENA NO LED
tmp(61) := "0001000010111";	-- LDA @ADDR_FLAG_INIBICAO       	#-- LOAD FLAG INIBICAO
tmp(62) := "0101100000001";	-- STA @LED_F_OVERFLOW           	#-- ARMAZENA NO LED
tmp(63) := "1010000000000";	-- RET @0                        	#-- EXIT SUB ROUTINE;
tmp(64) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_FPGA_RESET
tmp(65) := "0001101100100";	-- LDA @FPGA_RESET
tmp(66) := "1000000000000";	-- CEQ @ADDR_CTE0
tmp(67) := "0111000000001";	-- JEQ @LOOP_INICIAL                     	#Se reset fpga == 0 (está invertido), recomeça tudo
tmp(68) := "0000000000000";	-- NOP
tmp(69) := "0110000000111";	-- JMP @MAIN_LOOP    
tmp(70) := NOP & '0' & x"00"; 	 --%LABEL SR_SET_LIMIT             #-- CONFIGURAR LIMITE CONTADOR
tmp(71) := "0001000000001";	-- LDA @ADDR_CTE1                  	# LOAD CTE1 (explicito)
tmp(72) := "0101100000000";	-- STA @LEDR                       	# Acender o primeiro LED
tmp(73) := "0001101000000";	-- LDA @SWR                        	# Carrega valores dos SW
tmp(74) := "0101000010000";	-- STA @ADDR_LIMIT_COUNTER_UNIDADE 	# SET UNIDADE LIMIT
tmp(75) := "0101100100000";	-- STA @HEX0                       	# Mostra o valor escolhido em HEX0
tmp(76) := "0001101100001";	-- LDA @KEY1                       	# LOAD KEY1
tmp(77) := "1000000000001";	-- CEQ @ADDR_CTE1                  	# KEY1 == 1
tmp(78) := "0101111111110";	-- STA @CLEAR_KEY1                 	# RESET KEY1
tmp(79) := "0111001010010";	-- JEQ @SR_SET_LIMIT_DEZ           	# If Key1 apertado: jmp configurar limite dezena
tmp(80) := "0000000000000";	-- NOP
tmp(81) := "0110001000110";	-- JMP @SR_SET_LIMIT           
tmp(82) := NOP & '0' & x"00"; 	 --%LABEL SR_SET_LIMIT_DEZ
tmp(83) := "0100000000010";	-- LDI $2                          	# LOAD 2 (explicito)
tmp(84) := "0101100000000";	-- STA @LEDR                       	# Acender o segundo LED
tmp(85) := "0001101000000";	-- LDA @SWR                        	# Carrega valores dos SW
tmp(86) := "0101000010001";	-- STA @ADDR_LIMIT_COUNTER_DEZENA  	# SET UNIDADE LIMIT
tmp(87) := "0101100100001";	-- STA @HEX1                       	# Mostra o valor escolhido em HEX1
tmp(88) := "0001101100001";	-- LDA @KEY1                       	# LOAD KEY1
tmp(89) := "1000000000001";	-- CEQ @ADDR_CTE1                  	# KEY1 == 1?
tmp(90) := "0101111111110";	-- STA @CLEAR_KEY1                 	# RESET KEY1
tmp(91) := "0111001011110";	-- JEQ @SR_SET_LIMIT_CENT          	# If Key1 apertado: jmp configurar limite CENT
tmp(92) := "0000000000000";	-- NOP
tmp(93) := "0110001010010";	-- JMP @SR_SET_LIMIT_DEZ           	# if key1 not apertado: refaz o processo para DEZENA
tmp(94) := NOP & '0' & x"00"; 	 --%LABEL SR_SET_LIMIT_CENT
tmp(95) := "0101111111110";	-- STA @CLEAR_KEY1                 	# RESET KEY1
tmp(96) := "0100000000100";	-- LDI $4                          	# LOAD 4 (explicito)
tmp(97) := "0101100000000";	-- STA @LEDR                       	# Acender o terceiro LED
tmp(98) := "0001101000000";	-- LDA @SWR                        	# Carrega valores dos SW
tmp(99) := "0101000010010";	-- STA @ADDR_LIMIT_COUNTER_CENTENA 	# SET CENTENA LIMIT
tmp(100) := "0101100100010";	-- STA @HEX2                       	# Mostra o valor escolhido em HEX2
tmp(101) := "0001101100001";	-- LDA @KEY1                       	# LOAD KEY1
tmp(102) := "1000000000001";	-- CEQ @ADDR_CTE1                  	# KEY1 == 1?
tmp(103) := "0101111111110";	-- STA @CLEAR_KEY1                 	# RESET KEY1
tmp(104) := "0111001101011";	-- JEQ @SR_SET_LIMIT_MILHAR        	# If Key1 apertado: jmp configurar limite MILHAR
tmp(105) := "0000000000000";	-- NOP
tmp(106) := "0110001011110";	-- JMP @SR_SET_LIMIT_CENT          	# if key1 not apertado: refaz o processo para CENTENA
tmp(107) := NOP & '0' & x"00"; 	 --%LABEL SR_SET_LIMIT_MILHAR
tmp(108) := "0101111111110";	-- STA @CLEAR_KEY1                 	# RESET KEY1
tmp(109) := "0100000001000";	-- LDI $8                          	# Load 8 (explicito)
tmp(110) := "0101100000000";	-- STA @LEDR                       	# Acender o 4 LED
tmp(111) := "0001101000000";	-- LDA @SWR                        	# Carrega valores dos SW
tmp(112) := "0101000010011";	-- STA @ADDR_LIMIT_COUNTER_MILHAR  	# SET UNIDADE LIMIT
tmp(113) := "0101100100011";	-- STA @HEX3                       	# Mostra o valor escolhido em HEX3
tmp(114) := "0001101100001";	-- LDA @KEY1                       	# LOAD KEY1
tmp(115) := "1000000000001";	-- CEQ @ADDR_CTE1                  	# KEY1 == 1?
tmp(116) := "0101111111110";	-- STA @CLEAR_KEY1                 	# RESET KEY1
tmp(117) := "0111001111000";	-- JEQ @SR_SET_LIMIT_DEZ_MILHAR    	# If Key1 apertado: jmp configurar limite DEZ_MILHAR
tmp(118) := "0000000000000";	-- NOP
tmp(119) := "0110001101011";	-- JMP @SR_SET_LIMIT_MILHAR        	# if key1 not apertado: refaz o processo para MILHAR
tmp(120) := NOP & '0' & x"00"; 	 --%LABEL SR_SET_LIMIT_DEZ_MILHAR
tmp(121) := "0101111111110";	-- STA @CLEAR_KEY1                    	# RESET KEY1
tmp(122) := "0100000010000";	-- LDI $16                            	# Load 16 (explicito)
tmp(123) := "0101100000000";	-- STA @LEDR
tmp(124) := "0001101000000";	-- LDA @SWR                           	# Carrega valores dos SW
tmp(125) := "0101000010100";	-- STA @ADDR_LIMIT_COUNTER_DEZ_MILHAR 	# SET DEZ_MILHAR LIMIT
tmp(126) := "0101100100100";	-- STA @HEX4                          	# Mostra o valor escolhido em HEX4
tmp(127) := "0001101100001";	-- LDA @KEY1                          	# LOAD KEY1
tmp(128) := "1000000000001";	-- CEQ @ADDR_CTE1                     	# KEY1 == 1?
tmp(129) := "0101111111110";	-- STA @CLEAR_KEY1                 	# RESET KEY1
tmp(130) := "0111010000101";	-- JEQ @SR_SET_LIMIT_CENT_MILHAR      	# If Key1 apertado: jmp configurar limite CENT_MILHAR
tmp(131) := "0000000000000";	-- NOP
tmp(132) := "0110001111000";	-- JMP @SR_SET_LIMIT_DEZ_MILHAR       	# if key1 not apertado: refaz o processo para MILHAR
tmp(133) := NOP & '0' & x"00"; 	 --%LABEL SR_SET_LIMIT_CENT_MILHAR
tmp(134) := "0101111111110";	-- STA @CLEAR_KEY1                    	# RESET KEY1
tmp(135) := "0100000100000";	-- LDI $32                            	# Load 32 (explicito)
tmp(136) := "0101100000000";	-- STA @LEDR                          	# Acender o 6 LED
tmp(137) := "0001101000000";	-- LDA @SWR                           	# Carrega valores dos SW
tmp(138) := "0101000010101";	-- STA @ADDR_LIMIT_COUNTER_CEN_MILHAR 	# SET CENT_MILHAR LIMIT
tmp(139) := "0101100100101";	-- STA @HEX5                          	# Mostra o valor escolhido em HEX5
tmp(140) := "0001101100001";	-- LDA @KEY1                          	# LOAD KEY1
tmp(141) := "1000000000000";	-- CEQ @ADDR_CTE0                     	# KEY1 == 0? Se nao tiver clicado continua configurando, else terminou de configurar
tmp(142) := "0101111111110";	-- STA @CLEAR_KEY1                    	# RESET KEY1
tmp(143) := "0111010000101";	-- JEQ @SR_SET_LIMIT_CENT_MILHAR      	# If Key1 apertado: jmp configurar limite CENT_MILHAR
tmp(144) := "0000000000000";	-- NOP
tmp(145) := "0001000000000";	-- LDA @ADDR_CTE0                     
tmp(146) := "0101100000000";	-- STA @LEDR                          	# Reset LEDR, as the limit setting is completed
tmp(147) := "1010000000000";	-- RET $0
tmp(148) := NOP & '0' & x"00"; 	 --%LABEL SR_INCREMENTO_CONTADOR
tmp(149) := "0001101100000";	-- LDA  @KEY0                       	# Carrega KEY0
tmp(150) := "1000000000001";	-- CEQ  @ADDR_CTE1                  	# Key0 == 1?
tmp(151) := "0101111111111";	-- STA  @CLEAR_KEY0                 	# Reset key0
tmp(152) := "0111010011011";	-- JEQ  @SR_VERIFICA_FLAG_INIBICAO
tmp(153) := "0000000000000";	-- NOP
tmp(154) := "1010000000000";	-- RET  $0
tmp(155) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_FLAG_INIBICAO
tmp(156) := "0001000010111";	-- LDA  @ADDR_FLAG_INIBICAO         	# LOAD FLAG INIBICAO
tmp(157) := "1000000000000";	-- CEQ  @ADDR_CTE0                  	# Inibicao == 0?
tmp(158) := "0111010100010";	-- JEQ  @SR_INCREMENTO_UNIDADE      	# IF inib == 0 : incrementa, else RET
tmp(159) := "0000000000000";	-- NOP
tmp(160) := "1010000000000";	-- RET  $0
tmp(161) := NOP & '0' & x"00"; 	 ---- 1) UNIDADE
tmp(162) := NOP & '0' & x"00"; 	 --%LABEL SR_INCREMENTO_UNIDADE
tmp(163) := "0001000001010";	-- LDA  @ADDR_COUNTER_UNIDADE 	#-- LOAD UNIDADE
tmp(164) := "1000000001001";	-- CEQ  @ADDR_CTE9            	#-- COMPARA COM 9
tmp(165) := "0111010101011";	-- JEQ  @SR_INCREMENTO_DEZENA 	#PULA PARA INCREMENTO DE DEZENA
tmp(166) := "0000000000000";	-- NOP
tmp(167) := NOP & '0' & x"00"; 	 ---- IF (UNIDADE != 9): {UNIDADE++} 
tmp(168) := "0010000000001";	-- SOMA @ADDR_CTE1            	#-- SOMA 1        
tmp(169) := "0101000001010";	-- STA  @ADDR_COUNTER_UNIDADE 	#-- SET UNIDADE += 1;
tmp(170) := "1010000000000";	-- RET  @ADDR_CTE0            	#-- EXIT SUB ROUTINE;
tmp(171) := NOP & '0' & x"00"; 	 --%LABEL SR_INCREMENTO_DEZENA
tmp(172) := NOP & '0' & x"00"; 	 ---- ELSE (UNIDADE == 9): {UNIDADE=0; DEZENA++}
tmp(173) := "0001000000000";	-- LDA  @ADDR_CTE0            	#-- LOAD CTE 0
tmp(174) := "0101000001010";	-- STA  @ADDR_COUNTER_UNIDADE 	#-- SET UNIDADE = 0 | RAM[10] - UNIDADE;
tmp(175) := NOP & '0' & x"00"; 	 ---- 2) DEZENA
tmp(176) := "0001000001011";	-- LDA  @ADDR_COUNTER_DEZENA  	#-- LOAD DEZENA 
tmp(177) := "1000000001001";	-- CEQ  @ADDR_CTE9            	#-- COMPARA COM 9
tmp(178) := "0111010111000";	-- JEQ  @SR_INCREMENTO_CENTENA 	#PULA PARA INCREMENTO DE CENTENA
tmp(179) := "0000000000000";	-- NOP
tmp(180) := NOP & '0' & x"00"; 	 ---- IF DEZENA != 9: {DEZENA++} 
tmp(181) := "0010000000001";	-- SOMA @ADDR_CTE1            	#-- SOMA 1       
tmp(182) := "0101000001011";	-- STA  @ADDR_COUNTER_DEZENA  	#-- SET DEZENA += 1;
tmp(183) := "1010000000000";	-- RET  @ADDR_CTE0            	#-- EXIT SUB ROUTINE;
tmp(184) := NOP & '0' & x"00"; 	 --%LABEL SR_INCREMENTO_CENTENA
tmp(185) := NOP & '0' & x"00"; 	 ---- ELSE (DEZENA == 9): {DEZENA=0; CENTENA++}
tmp(186) := "0001000000000";	-- LDA  @ADDR_CTE0            	#-- LOAD CTE 0
tmp(187) := "0101000001011";	-- STA  @ADDR_COUNTER_DEZENA  	#-- SET DEZENA = 0 
tmp(188) := NOP & '0' & x"00"; 	 ---- 3) CENTENA
tmp(189) := "0001000001100";	-- LDA  @ADDR_COUNTER_CENTENA  	#-- LOAD CENTENA 
tmp(190) := "1000000001001";	-- CEQ  @ADDR_CTE9             	#-- COMPARA COM 9 
tmp(191) := "0111011000101";	-- JEQ  @SR_INCREMENTO_MILHAR  	#PULA PARA INCREMENTO DE MILHAR
tmp(192) := "0000000000000";	-- NOP
tmp(193) := NOP & '0' & x"00"; 	 ---- IF CENTENA != 9: {CENTENA++} 
tmp(194) := "0010000000001";	-- SOMA @ADDR_CTE1             	#-- SOMA 1        
tmp(195) := "0101000001100";	-- STA  @ADDR_COUNTER_CENTENA  	#-- SET CENTENA += 1;
tmp(196) := "1010000000000";	-- RET  @ADDR_CTE0             	#-- EXIT SUB ROUTINE;
tmp(197) := NOP & '0' & x"00"; 	 --%LABEL SR_INCREMENTO_MILHAR -- ELSE (CENTENA == 9): {CENTENA=0; MILHAR++}
tmp(198) := "0001000000000";	-- LDA  @ADDR_CTE0             	#-- LOAD CTE 0
tmp(199) := "0101000001100";	-- STA  @ADDR_COUNTER_CENTENA  	#-- SET CENTENA = 0
tmp(200) := NOP & '0' & x"00"; 	 ---- 4) MILHARES
tmp(201) := "0001000001101";	-- LDA  @ADDR_COUNTER_MILHAR      	#-- LOAD MILHAR   
tmp(202) := "1000000001001";	-- CEQ  @ADDR_CTE9                	#-- COMPARA COM 9
tmp(203) := "0111011010001";	-- JEQ  @SR_INCREMENTO_DEZ_MILHAR 	#-- PULA PARA INCREMENTO DE DEZ MILHAR
tmp(204) := "0000000000000";	-- NOP
tmp(205) := NOP & '0' & x"00"; 	 ---- IF MILHAR != 9: {MILHAR++} 
tmp(206) := "0010000000001";	-- SOMA @ADDR_CTE1                	#-- SOMA 1        
tmp(207) := "0101000001101";	-- STA  @ADDR_COUNTER_MILHAR      	#-- SET MILHAR += 1;
tmp(208) := "1010000000000";	-- RET  @ADDR_CTE0                	#-- EXIT SUB ROUTINE;
tmp(209) := NOP & '0' & x"00"; 	 --%LABEL SR_INCREMENTO_DEZ_MILHAR -- ELSE (MILHAR == 9): {MILHAR=0; DEZ_MILHAR++}
tmp(210) := "0001000000000";	-- LDA  @ADDR_CTE0                	#-- LOAD CTE 0
tmp(211) := "0101000001101";	-- STA  @ADDR_COUNTER_MILHAR      	#-- SET MILHAR = 0 
tmp(212) := NOP & '0' & x"00"; 	 ---- 5) DEZ. MILHARES
tmp(213) := "0001000001110";	-- LDA  @ADDR_COUNTER_DEZ_MILHAR     	#-- LOAD DEZ.MILHAR   
tmp(214) := "1000000001001";	-- CEQ  @ADDR_CTE9                   	#-- COMPARA COM 9 
tmp(215) := "0111011011101";	-- JEQ  @SR_INCREMENTO_CEN_MILHAR    	#-- PULA PARA INCREMENTO DE CEN.MILHAR
tmp(216) := "0000000000000";	-- NOP
tmp(217) := NOP & '0' & x"00"; 	 ---- IF DEZ.MILHAR != 9: {DEZ.MILHAR++} 
tmp(218) := "0010000000001";	-- SOMA @ADDR_CTE1                   	#-- SOMA 1  
tmp(219) := "0101000001110";	-- STA  @ADDR_COUNTER_DEZ_MILHAR     	#-- SET DEZ.MILHAR += 1;
tmp(220) := "1010000000000";	-- RET  @ADDR_CTE0                   	#-- EXIT SUB ROUTINE;
tmp(221) := NOP & '0' & x"00"; 	 --%LABEL SR_INCREMENTO_CEN_MILHAR   #-- ELSE (DEZ.MILHAR == 9): {DEZ.MILHAR=0; CEN.MILHAR++}
tmp(222) := "0001000000000";	-- LDA  @ADDR_CTE0  	#-- LOAD CTE 0
tmp(223) := "0101000001110";	-- STA  @ADDR_COUNTER_DEZ_MILHAR     	#-- SET DEZ.MILHAR = 0 
tmp(224) := NOP & '0' & x"00"; 	 ---- 6) CEN. MILHARES
tmp(225) := "0001000001111";	-- LDA  @ADDR_COUNTER_CEN_MILHAR     	#-- LOAD CEN.MILHAR 
tmp(226) := "1000000001001";	-- CEQ  @ADDR_CTE9                   	#-- COMPARA COM 9 
tmp(227) := "0111011101010";	-- JEQ  @SR_SET_OVERFLOW 	#PULA PARA FLAG OVErFLOW E LIMITE ATINGIDO
tmp(228) := "0000000000000";	-- NOP
tmp(229) := NOP & '0' & x"00"; 	 ---- IF CEN.MILHAR != 9: {CEN.MILHAR++} 
tmp(230) := "0010000000001";	-- SOMA @ADDR_CTE1                   	#-- SOMA 1
tmp(231) := "0101000001111";	-- STA  @ADDR_COUNTER_CEN_MILHAR     	#-- SET CEN.MILHAR += 1;
tmp(232) := "1010000000000";	-- RET  @ADDR_CTE0                   	#-- EXIT SUB ROUTINE;
tmp(233) := NOP & '0' & x"00"; 	 ---- ELSE (CEN.MILHAR == 9): {CEN.MILHAR=10; OVERFLOW=1 INIBI=1}
tmp(234) := NOP & '0' & x"00"; 	 --%LABEL SR_SET_OVERFLOW         #-- OVERFLOW E INIBICAO
tmp(235) := "0001000001111";	-- LDA  @ADDR_COUNTER_CEN_MILHAR  	#-- LOAD CEN.MILHAR 
tmp(236) := "0010000000001";	-- SOMA @ADDR_CTE1                	#-- SOMA 1
tmp(237) := "0101000001111";	-- STA  @ADDR_COUNTER_CEN_MILHAR  	#-- SET CEN.MILHAR += 1;
tmp(238) := "0001000000001";	-- LDA  @ADDR_CTE1                	#-- LOAD CTE 1
tmp(239) := "0101000010111";	-- STA  @ADDR_FLAG_INIBICAO       	#-- FLAG_INIBICAO = 1
tmp(240) := "0101000010110";	-- STA  @ADDR_FLAG_OVERFLOW       	#-- FLAG_OVERFLOW = 1
tmp(241) := "1010000000000";	-- RET  @ADDR_CTE0                	#-- EXIT SUB ROUTINE - INCREMENTA;
tmp(242) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_LIMITE -- SUB-ROTINA LIMITE: VERIFICAR SE ATINGIU O LIMITE - DANI
tmp(243) := NOP & '0' & x"00"; 	 ---- 1) CEN.MILHAR
tmp(244) := "0001000010101";	-- LDA @ADDR_LIMIT_COUNTER_CEN_MILHAR   	#-- LOAD LIMITE CEN.MILHAR
tmp(245) := "1000000001111";	-- CEQ @ADDR_COUNTER_CEN_MILHAR         	#-- VERIFY (COUNTER == LIMIT)
tmp(246) := NOP & '0' & x"00"; 	 ----  IF (COUNTER == LIMIT): {CONTINUE}
tmp(247) := "0111011111010";	-- JEQ @SR_VERIFICA_LIMITE_DEZ_MILHAR   	#-- Jump to next verification
tmp(248) := NOP & '0' & x"00"; 	 ----  ELSE (COUNTER != LIMIT): {FLAG INIBICAO=FALSE}
tmp(249) := "0110100101101";	-- JMP @SR_NAO_ATINGIU_LIMITE           	#-- JUMP SR 'LIMITE NAO ATINGIDO'
tmp(250) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_LIMITE_DEZ_MILHAR #-- 2) DEZ.MILHAR
tmp(251) := "0100000100000";	-- LDI $32 
tmp(252) := "0101100000000";	-- STA @LEDR                            	#-- Set LEDR[5] ON (limit_cent_milhar_atingido)
tmp(253) := "0001000010100";	-- LDA @ADDR_LIMIT_COUNTER_DEZ_MILHAR   	#-- LOAD LIMITE DEZ.MILHAR
tmp(254) := "1000000001110";	-- CEQ @ADDR_COUNTER_DEZ_MILHAR         	#-- VERIFY (COUNTER == LIMIT)
tmp(255) := NOP & '0' & x"00"; 	 ----  IF (COUNTER == LIMIT): {CONTINUE}
tmp(256) := "0111100000011";	-- JEQ @SR_VERIFICA_LIMITE_MILHAR       	#-- Jump to next verification
tmp(257) := NOP & '0' & x"00"; 	 ----  ELSE (COUNTER != LIMIT): {FLAG INIBICAO=FALSE}
tmp(258) := "0110100101101";	-- JMP @SR_NAO_ATINGIU_LIMITE           	#-- JUMP SR 'LIMITE NAO ATINGIDO'
tmp(259) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_LIMITE_MILHAR     #-- 3) MILHAR
tmp(260) := "0100000110000";	-- LDI $48
tmp(261) := "0101100000000";	-- STA @LEDR                            	# LEDR[5..4] ON - Limit cent_milhar and dez_milhar atingido
tmp(262) := "0001000010011";	-- LDA @ADDR_LIMIT_COUNTER_MILHAR       	#-- LOAD LIMITE MILHAR
tmp(263) := "1000000001101";	-- CEQ @ADDR_COUNTER_MILHAR             	#-- VERIFY (COUNTER == LIMIT)
tmp(264) := NOP & '0' & x"00"; 	 ----  IF (COUNTER == LIMIT): {CONTINUE}
tmp(265) := "0111100001100";	-- JEQ @SR_VERIFICA_LIMITE_CENTENA      	#-- Jump to next verification
tmp(266) := NOP & '0' & x"00"; 	 ----  ELSE (COUNTER != LIMIT): {FLAG INIBICAO=FALSE}
tmp(267) := "0110100101101";	-- JMP @SR_NAO_ATINGIU_LIMITE           	#-- JUMP SR 'LIMITE NAO ATINGIDO'
tmp(268) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_LIMITE_CENTENA    #-- 4) CENTENA
tmp(269) := "0100000111000";	-- LDI $56
tmp(270) := "0101100000000";	-- STA @LEDR                            	# LEDR[5..3] ON - Limit cent_milhar, dez_milhar, milhar atingido
tmp(271) := "0001000010010";	-- LDA @ADDR_LIMIT_COUNTER_CENTENA      	#-- LOAD LIMITE CENTENA
tmp(272) := "1000000001100";	-- CEQ @ADDR_COUNTER_CENTENA            	#-- VERIFY (COUNTER == LIMIT)
tmp(273) := NOP & '0' & x"00"; 	 ----  IF (COUNTER == LIMIT): {CONTINUE}
tmp(274) := "0111100010101";	-- JEQ @SR_VERIFICA_LIMITE_DEZENA       	#-- Jump to next verification
tmp(275) := NOP & '0' & x"00"; 	 ----  ELSE (COUNTER != LIMIT): {FLAG INIBICAO=FALSE}
tmp(276) := "0110100101101";	-- JMP @SR_NAO_ATINGIU_LIMITE           	#-- JUMP SR 'LIMITE NAO ATINGIDO'
tmp(277) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_LIMITE_DEZENA     #-- 5) DEZENA
tmp(278) := "0100000111100";	-- LDI $60
tmp(279) := "0101100000000";	-- STA @LEDR                            	# LEDR[5..2] ON - Limit cent_milhar, dez_milhar, milhar, cent atingido
tmp(280) := "0001000010001";	-- LDA @ADDR_LIMIT_COUNTER_DEZENA   	#-- LOAD LIMITE DEZENA
tmp(281) := "1000000001011";	-- CEQ @ADDR_COUNTER_DEZENA             	#-- VERIFY (COUNTER == LIMIT)
tmp(282) := NOP & '0' & x"00"; 	 ----  IF (COUNTER == LIMIT): {CONTINUE}
tmp(283) := "0111100011110";	-- JEQ @SR_VERIFICA_LIMITE_UNIDADE      	#-- Jump to next verification
tmp(284) := NOP & '0' & x"00"; 	 ----  ELSE (COUNTER != LIMIT): {FLAG INIBICAO=FALSE}
tmp(285) := "0110100101101";	-- JMP @SR_NAO_ATINGIU_LIMITE           	#-- JUMP SR 'LIMITE NAO ATINGIDO'
tmp(286) := NOP & '0' & x"00"; 	 --%LABEL SR_VERIFICA_LIMITE_UNIDADE #-- 1) UNIDADE
tmp(287) := "0100000111110";	-- LDI $62
tmp(288) := "0101100000000";	-- STA @LEDR                            	# LEDR[5..1] ON - Limit cent_milhar, dez_milhar, milhar, cent, dez atingido
tmp(289) := "0001000010000";	-- LDA @ADDR_LIMIT_COUNTER_UNIDADE   	#-- LOAD LIMITE UNIDADE
tmp(290) := "1000000001010";	-- CEQ @ADDR_COUNTER_UNIDADE         	#-- VERIFY (COUNTER == LIMIT)
tmp(291) := NOP & '0' & x"00"; 	 ----  IF (COUNTER == LIMIT): {CONTINUE}
tmp(292) := "0111100100111";	-- JEQ @SR_ATINGIU_LIMITE            	#-- JUMP SR 'LIMITE ATINGIDO'
tmp(293) := NOP & '0' & x"00"; 	 ----  ELSE (COUNTER != LIMIT): {FLAG INIBICAO=FALSE}
tmp(294) := "0110100101101";	-- JMP @SR_NAO_ATINGIU_LIMITE           	#-- JUMP SR 'LIMITE NAO ATINGIDO'
tmp(295) := NOP & '0' & x"00"; 	 --%LABEL SR_ATINGIU_LIMITE             #-- SUB-ROTINA LIMITE A): MARCA LIMITE ATINGIDO - DANI
tmp(296) := "0001000111111";	-- LDA $63 
tmp(297) := "0101100000000";	-- STA @LEDR                            	#-- Clear LEDR, as limit has reached
tmp(298) := "0001000000001";	-- LDA @ADDR_CTE1                       	#-- LOAD CTE 1
tmp(299) := "0101000010111";	-- STA @ADDR_FLAG_INIBICAO              	#-- FLAG_INIBICAO = 1
tmp(300) := "1010000000000";	-- RET                                  	#-- EXIT COUNTER LIMIT VERIFICATION SUB-ROUTINE
tmp(301) := NOP & '0' & x"00"; 	 --%LABEL SR_NAO_ATINGIU_LIMITE         #-- SUB-ROTINA LIMITE B): MARCA LIMITE NÃO ATINGIDO - DANI
tmp(302) := "0001000000000";	-- LDA @ADDR_CTE0                       	#-- LOAD CTE 0
tmp(303) := "0101000010111";	-- STA @ADDR_FLAG_INIBICAO              	#-- FLAG_INIBICAO = 0
tmp(304) := "1010000000000";	-- RET                                  	#-- EXIT COUNTER LIMIT VERIFICATION SUB-ROUTINE

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
