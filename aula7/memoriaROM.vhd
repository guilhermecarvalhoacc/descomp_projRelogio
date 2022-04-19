library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  	constant NOP  : std_logic_vector(3 downto 0) := "0000";
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant SOMA : std_logic_vector(3 downto 0) := "0010";
	constant SUB  : std_logic_vector(3 downto 0) := "0011";
	constant LDI : std_logic_vector(3 downto 0) := "0100";
	constant STA : std_logic_vector(3 downto 0) := "0101";
	constant JMP : std_logic_vector(3 downto 0) := "0110";
	constant JSR : std_logic_vector(3 downto 0) := "1001";
	constant RET : std_logic_vector(3 downto 0) := "1010";
	constant JEQ : std_logic_vector(3 downto 0) := "0111";
	constant CEQ : std_logic_vector(3 downto 0) := "1000";

  
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

--		tmp(0) := LDI & "0" & "00000001";
--		tmp(1) := STA & "0" & "00000000"; 
--		tmp(2) := SOMA & "0" & "00000000"; 
--		tmp(3) := STA & "0" & "00000001"; 
--		tmp(4) := LDA & "0" & "00000000"; 
--		tmp(5) := STA & "1" & "00000001"; 
--		tmp(6) := STA & "1" & "00000010";
--		tmp(7) := LDI & "0" & "01010101";
--		tmp(8) := STA & "1" & "00000000";
--		tmp(9) := LDI & "0" & "10101010";
--		tmp(10) := STA & "1" & "00000000";
--		tmp(11):= LDI & "0" & "00000000"; 
--		tmp(12) := STA & "1" & "00000001";
--		tmp(13) := STA & "1" & "00000000";
--		tmp(14) := STA & "1" & "00000010";
--		tmp(15) := JMP & "0" & "00000000";
--		


--teste do sevenseg da aula 8:
--
--		tmp(0) := LDI & "0" & "00000001";
--		tmp(1) := STA & "0" & "00000000"; 
--		tmp(2) := SOMA & "0" & "00000000"; 
--		tmp(3) := STA & "1" & "00100000"; 
--		tmp(4) := SOMA & "0" & "00000000"; 
--		tmp(5) := STA & "1" & "00100001"; 
--		tmp(6) := SOMA & "0" & "00000000";
--		tmp(7) := STA & "1" & "00100010";
--		tmp(8) := SOMA  & "0" & "00000000";
--		tmp(9) := STA  & "1" & "00100011";
--		tmp(10) := SOMA  & "0" & "00000000";
--		tmp(11) := STA  & "1" & "00100100";
--		tmp(12) := SOMA  & "0" & "00000000";
--		tmp(13) := STA  & "1" & "00100101";
--		tmp(14) := JMP  & "0" & "00000010";


-- testando keys e sw da aula8 :

		tmp(0)  := LDA 	& "101000000";  -- LDA @320
		tmp(1)  := STA 	& "100100000";  -- STA @288
		tmp(2)  := LDA 	& "101000001";  -- LDA @321
		tmp(3)  := STA 	& "100100001";  -- STA @289
		tmp(4)  := LDA 	& "101000010";  -- LDA @322 
		tmp(5)  := STA 	& "100100010";  -- STA @290
		tmp(6)  := LDA    & "101100000";  -- LDA @352
		tmp(7)  := STA 	& "100100011";  -- STA @291
		tmp(8) :=  LDA    & "101100001";  -- LDA @353
		tmp(9) :=  STA 	& "100100100";  -- STA @292
		tmp(10) := LDA    & "101100010";  -- LDA @354
		tmp(11) := STA 	& "100100101";  -- STA @293 
		tmp(12) := LDA    & "101100011";  -- LDA @355
		tmp(13) := STA 	& "100000001";  -- STA @257 
		tmp(14) := LDA    & "101100100";  -- LDA @356
		tmp(15) := STA 	& "100000010";  -- STA @258 
		tmp(16) := JMP    & "000000000";  -- JMP @0












--		tmp(0) := LDA & "1" & "01000000";
--		tmp(1) := STA & "0" & "00000000"; 
--		tmp(2) := LDA & "0" & "00000000"; 
--		tmp(3) := STA & "1" & "00100000"; 
--		tmp(4) := LDA & "0" & "00000000"; 
--		tmp(5) := STA & "1" & "00100001"; 
--		tmp(6) := LDA & "0" & "00000000";
--		tmp(7) := STA & "1" & "00100010";
--		tmp(8) := LDA  & "0" & "00000000";
--		tmp(9) := STA  & "1" & "00100011";
--		tmp(10) := LDA  & "0" & "00000000";
--		tmp(11) := STA  & "1" & "00100100";
--		tmp(12) := LDA  & "0" & "00000000";
--		tmp(13) := STA  & "1" & "00100101";
--		tmp(14) := JMP  & "0" & "00000010";

		
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;