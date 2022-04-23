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
        -- Inicializa os endereços:
--		tmp(0) := JSR & "0" & "00001110"; --
--		tmp(1) := JMP & "0" & "00000101"; --
--		tmp(2) := JEQ & "0" & "00001001"; --
--		tmp(3) := NOP & "0" & "00000000"; --
--		tmp(4) := NOP & "0" & "00000000";--
--		tmp(5) := LDI & "0" & "00000101";--
--		tmp(6) := STA & "1" & "00000000"; --
--		tmp(7) := CEQ & "0" & "00000000"; --
--		tmp(8) := JMP & "0" & "00000010"; --
--		tmp(9) := NOP & "0" & "00000000"; --
--		tmp(10):= LDI & "0" & "00000100"; --
--		tmp(11):= CEQ & "0" & "00000000"; --
--		tmp(12):= JEQ & "0" & "00000011"; --
--		tmp(13):= JMP & "0" & "00001101"; --
--		tmp(14):= NOP & "0" & "00000000"; --
--		tmp(15):= RET & "0" & "00000000"; --
--		tmp(0) := JSR & "0" & "00001110"; --
--		tmp(1) := JMP & "0" & "00000101"; --
--		tmp(2) := JEQ & "0" & "00001001"; --
--		tmp(3) := NOP & "0" & "00000000"; --
--		tmp(4) := NOP & "0" & "00000000";--
--		tmp(5) := LDI & "0" & "00000101";--
--		tmp(6) := STA & "0" & "00000000"; --
--		tmp(7) := CEQ & "0" & "00000000"; --



--teste da aula7:

--		tmp(0)  := LDI  & "0" & "00000001";
--		tmp(1)  := STA  & "0" & "00000000"; 
--		tmp(2)  := SOMA & "0" & "00000000"; 
--		tmp(3)  := STA  & "0" & "00000001"; 
--		tmp(4)  := LDA  & "0" & "00000000"; 
--		tmp(5)  := STA  & "1" & "00000001"; 
--		tmp(6)  := STA  & "1" & "00000010";
--		tmp(7)  := LDI  & "0" & "01010101";
--		tmp(8)  := STA  & "1" & "00000000";
--		tmp(9)  := LDI  & "0" & "10101010";
--		tmp(10) := STA  & "1" & "00000000";
--		tmp(11) := LDI  & "0" & "00000000"; 
--		tmp(12) := STA  & "1" & "00000001";
--		tmp(13) := STA  & "1" & "00000000";
--		tmp(14) := STA  & "1" & "00000010";
--		tmp(15) := JMP  & "0" & "00000000";
--		

--teste do sevenseg da aula 8:
--
--		tmp(0)  := LDI  & "0" & "00000001";
--		tmp(1)  := STA  & "0" & "00000000"; 
--		tmp(2)  := SOMA & "0" & "00000000"; 
--		tmp(3)  := STA  & "1" & "00100000"; 
--		tmp(4)  := SOMA & "0" & "00000000"; 
--		tmp(5)  := STA  & "1" & "00100001"; 
--		tmp(6)  := SOMA & "0" & "00000000";
--		tmp(7)  := STA  & "1" & "00100010";
--		tmp(8)  := SOMA & "0" & "00000000";
--		tmp(9)  := STA  & "1" & "00100011";
--		tmp(10) := SOMA & "0" & "00000000";
--		tmp(11) := STA  & "1" & "00100100";
--		tmp(12) := SOMA & "0" & "00000000";
--		tmp(13) := STA  & "1" & "00100101";
--		tmp(14) := JMP  & "0" & "00000010";


-- testando keys e sw da aula8 :
			tmp(0) := "0001101000000";	-- LDA @320			#Carrega o acumulador com a leitura das chaves SW0 até SW7
			tmp(1) := "0101100100000";	-- STA @288			#Armazena o valor do acumulador no display HEX0
			tmp(2) := "0001101000001";	-- LDA @321			#Carrega o acumulador com a leitura da chave SW8
			tmp(3) := "0101100100001";	-- STA @289			#Armazena o valor do acumulador no display HEX1
			tmp(4) := "0001101000010";	-- LDA @322			#Carrega o acumulador com a leitura da chave SW9
			tmp(5) := "0101100100010";	-- STA @290			#Armazena o valor do acumulador no display HEX2
			tmp(6) := "0001101100000";	-- LDA @352			#Carrega o acumulador com a leitura do botão KEY0
			tmp(7) := "0101100100011";	-- STA @291			#Armazena o valor do acumulador no display HEX3
			tmp(8) := "0001101100001";	-- LDA @353			#Carrega o acumulador com a leitura do botão KEY1
			tmp(9) := "0101100100100";	-- STA @292			#Armazena o valor do acumulador no display HEX4
			tmp(10) := "0001101100010";	-- LDA @354			#Carrega o acumulador com a leitura do botão KEY2
			tmp(11) := "0101100100101";	-- STA @293			#Armazena o valor do acumulador no display HEX5
			tmp(12) := "0001101100011";	-- LDA @355			#Carrega o acumulador com a leitura do botão KEY3
			tmp(13) := "0101100000001";	-- STA @257			#Armazena o valor do bit0 do acumulador no LDR8
			tmp(14) := "0001101100100";	-- LDA @356			#Carrega o acumulador com a leitura do botão FPGA_RESET
			tmp(15) := "0101100000010";	-- STA @258			#Armazena o valor do bit0 do acumulador no LDR9
			tmp(16) := "0110000000000";	-- JMP @0				#Desvia e continua atualizando os valores das entradas nas saídas

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
