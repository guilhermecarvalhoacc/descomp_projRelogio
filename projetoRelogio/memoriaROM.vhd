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

tmp (0) := LDI & R1 & '0' & x"01"; 	-- LDI R1, $1 | Carrega 1 em REG1
tmp (1) := STA & R1 & '1' & x"20"; 	-- STA R1, @HEX0 | 
tmp (2) := LDI & R2 & '0' & x"02"; 	-- LDI R2, $2 | Carrega 2 em REG2
tmp (3) := STA & R2 & '1' & x"21"; 	-- STA R2, @HEX1 | 
tmp (4) := LDI & R3 & '0' & x"06"; 	-- LDI R3, $6 | Carrega 3 em REG3
tmp (5) := STA & R3 & '1' & x"22"; 	-- STA R3, @HEX2 | 
tmp (6) := LDI & R4 & '0' & x"04"; 	-- LDI R4, $4 | Carrega 4 em REG4
tmp (7) := STA & R4 & '1' & x"23"; 	-- STA R4, @HEX3 | 
tmp (8) := LDI & R5 & '0' & x"05"; 	-- LDI R5, $5 | Carrega 5 em REG5
tmp (9) := STA & R5 & '1' & x"24"; 	-- STA R5, @HEX4 | 
tmp (10) := LDI & R6 & '0' & x"06"; 	-- LDI R6, $6 | Carrega 6 em REG6
tmp (11) := STA & R6 & '1' & x"25"; 	-- STA R6, @HEX5 | 
tmp (12) := JSR & R1 & '0' & x"12"; 	-- JSR @SR_INICIALIZACAO | 
tmp (13) := NOP & R1 & '0' & x"00";
tmp (14) := JSR & R1 & '0' & x"29"; 	-- JSR @SR_ATUALIZAR_DISPLAY | 
tmp (15) := NOP & R1 & '0' & x"00";
-- %LABEL MAIN_LOOP
tmp (16) := NOP & R1 & '0' & x"00";
tmp (17) := JMP & R1 & '0' & x"10"; 	-- JMP @MAIN_LOOP | 
-- %LABEL SR_INICIALIZACAO #-- ZERAR VALORES DA MEMORIA (INICIALIZACAO) - DANI
tmp (18) := LDI & R0 & '0' & x"00"; 	-- LDI R0, $0 |  Carrega 0 no REG0
tmp (19) := LDI & R1 & '0' & x"01"; 	-- LDI R1, $1 |  Carrega 1 no REG1
tmp (20) := LDI & R2 & '0' & x"09"; 	-- LDI R2, $9 |  Carrega 9 no acumulador 
-- Inicializar endereços de memória
tmp (21) := STA & R0 & '0' & x"0A"; 	-- STA R0, @ADDR_COUNTER_UNIDADE | 
tmp (22) := STA & R0 & '0' & x"0B"; 	-- STA R0, @ADDR_COUNTER_DEZENA | 
tmp (23) := STA & R0 & '0' & x"0C"; 	-- STA R0, @ADDR_COUNTER_CENTENA | 
tmp (24) := STA & R0 & '0' & x"0D"; 	-- STA R0, @ADDR_COUNTER_MILHAR | 
tmp (25) := STA & R0 & '0' & x"0E"; 	-- STA R0, @ADDR_COUNTER_DEZ_MILHAR | 
tmp (26) := STA & R0 & '0' & x"0F"; 	-- STA R0, @ADDR_COUNTER_CEN_MILHAR | 
tmp (27) := STA & R0 & '0' & x"10"; 	-- STA R0, @ADDR_LIMIT_COUNTER_UNIDADE | 
tmp (28) := STA & R0 & '0' & x"11"; 	-- STA R0, @ADDR_LIMIT_COUNTER_DEZENA | 
tmp (29) := STA & R0 & '0' & x"12"; 	-- STA R0, @ADDR_LIMIT_COUNTER_CENTENA | 
tmp (30) := STA & R0 & '0' & x"13"; 	-- STA R0, @ADDR_LIMIT_COUNTER_MILHAR | 
tmp (31) := STA & R0 & '0' & x"14"; 	-- STA R0, @ADDR_LIMIT_COUNTER_DEZ_MILHAR | 
tmp (32) := STA & R0 & '0' & x"15"; 	-- STA R0, @ADDR_LIMIT_COUNTER_CEN_MILHAR | 
tmp (33) := STA & R0 & '0' & x"16"; 	-- STA R0, @ADDR_FLAG_OVERFLOW | 
tmp (34) := STA & R0 & '0' & x"17"; 	-- STA R0, @ADDR_FLAG_INIBICAO | 
tmp (35) := STA & R0 & '1' & x"64"; 	-- STA R0, @FPGA_RESET | 
tmp (36) := STA & R0 & '1' & x"FF"; 	-- STA R0, @CLEAR_KEY0 | 
tmp (37) := STA & R0 & '1' & x"FE"; 	-- STA R0, @CLEAR_KEY1 | 
tmp (38) := STA & R0 & '1' & x"00"; 	-- STA R0, @LEDR | 
tmp (39) := RET & R1 & '0' & x"00";
-- %LABEL SR_ATUALIZAR_DISPLAY  
tmp (40) := LDA & R3 & '0' & x"0A"; 	-- LDA R3, @ADDR_COUNTER_UNIDADE | -- LOAD UNIDADE
tmp (41) := STA & R3 & '1' & x"20"; 	-- STA R3, @HEX0 | -- ARMAZENA EM HEX0
tmp (42) := LDA & R3 & '0' & x"0B"; 	-- LDA R3, @ADDR_COUNTER_DEZENA | -- LOAD DEZENA 
tmp (43) := STA & R3 & '1' & x"21"; 	-- STA R3, @HEX1 | -- ARMAZENA EM HEX1
tmp (44) := LDA & R3 & '0' & x"0C"; 	-- LDA R3, @ADDR_COUNTER_CENTENA | -- LOAD CENTENA
tmp (45) := STA & R3 & '1' & x"22"; 	-- STA R3, @HEX2 | -- ARMAZENA EM HEX2
tmp (46) := LDA & R3 & '0' & x"0D"; 	-- LDA R3, @ADDR_COUNTER_MILHAR | -- LOAD MILHAR
tmp (47) := STA & R3 & '1' & x"23"; 	-- STA R3, @HEX3 | -- ARMAZENA EM HEX3
tmp (48) := LDA & R3 & '0' & x"0E"; 	-- LDA R3, @ADDR_COUNTER_DEZ_MILHAR | -- LOAD DEZ.MILHAR 
tmp (49) := STA & R3 & '1' & x"24"; 	-- STA R3, @HEX4 | -- ARMAZENA EM HEX4
tmp (50) := LDA & R3 & '0' & x"0F"; 	-- LDA R3, @ADDR_COUNTER_CEN_MILHAR | -- LOAD CEN.MILHAR 
tmp (51) := STA & R3 & '1' & x"25"; 	-- STA R3, @HEX5 | -- ARMAZENA EM HEX5
-- ATUALIZA LEDS OVERFLOW, INIBICAO
tmp (52) := LDA & R3 & '0' & x"16"; 	-- LDA R3, @ADDR_FLAG_OVERFLOW | -- LOAD FLAG OVERFLOW
tmp (53) := STA & R3 & '1' & x"01"; 	-- STA R3, @LED_F_OVERFLOW | -- ARMAZENA NO LED
tmp (54) := LDA & R3 & '0' & x"17"; 	-- LDA R3, @ADDR_FLAG_INIBICAO | -- LOAD FLAG INIBICAO
tmp (55) := STA & R3 & '1' & x"01"; 	-- STA R3, @LED_F_OVERFLOW | -- ARMAZENA NO LED
tmp (56) := RET & R1 & '0' & x"00";


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
