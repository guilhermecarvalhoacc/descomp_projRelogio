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
  
-- %LABEL INICIO
tmp (0) := LDI & R3 & '0' & x"00"; 	-- LDI R3, $0 |    Carrega o acumulador com o valor 0
tmp (1) := STA & R3 & '0' & x"00"; 	-- STA R3, @0 |    Armazena o valor do acumulador em MEM[0] (constante 0)
tmp (2) := STA & R3 & '0' & x"02"; 	-- STA R3, @2 |    Armazena o valor do acumulador em MEM[2] (contador)
tmp (3) := LDI & R3 & '0' & x"01"; 	-- LDI R3, $1 |    Carrega o acumulador com o valor 1
tmp (4) := STA & R3 & '0' & x"01"; 	-- STA R3, @1 |    Armazena o valor do acumulador em MEM[1] (constante 1)
tmp (5) := LDI & R0 & '0' & x"00"; 	-- LDI R0, $0 | 
tmp (6) := LDI & R1 & '0' & x"01"; 	-- LDI R1, $1 | 
tmp (7) := NOP & R0 & '0' & x"00";
-- %LABEL VERIFICA
tmp (8) := CEQ & R0 & '1' & x"62"; 	-- CEQ R0, @KEY2 |    Compara com o valor de MEM[0] (constante 0)
tmp (9) := JEQ & R0 & '0' & x"08"; 	-- JEQ @VERIFICA |    Desvia se igual a 0 (botão não foi pressionado)
tmp (10) := NOP & R0 & '0' & x"00";
tmp (11) := JSR & R0 & '0' & x"0F"; 	-- JSR @INCREMENTO |    O botão foi pressionado, chama a sub-rotina de incremento
tmp (12) := NOP & R0 & '0' & x"00";
tmp (13) := JMP & R0 & '0' & x"08"; 	-- JMP @VERIFICA |   Fecha o laço principal, faz uma nova leitura de KEY0
tmp (14) := NOP & R0 & '0' & x"00";
-- %LABEL INCREMENTO
tmp (15) := STA & R3 & '1' & x"FD"; 	-- STA R3, @CLEAR_KEY2 |   Limpa a leitura do botão
tmp (16) := LDA & R3 & '0' & x"02"; 	-- LDA R3, @2 |   Carrega o valor de MEM[2] (contador)
tmp (17) := SOMA & R3 & '0' & x"01"; 	-- SOMA R3, @1 |   Soma com a constante em MEM[1]
tmp (18) := STA & R3 & '0' & x"02"; 	-- STA R3, @2 |   Salva o incremento em MEM[2] (contador)
tmp (19) := STA & R3 & '1' & x"02"; 	-- STA R3, @LEDR9 |   Armazna o valor do bit0 do acumulador no LDR9
tmp (20) := STA & R3 & '1' & x"20"; 	-- STA R3, @HEX0 | 
tmp (21) := RET & R0 & '0' & x"00";

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
