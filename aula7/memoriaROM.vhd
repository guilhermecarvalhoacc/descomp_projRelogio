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

tmp(0) := "0100000000001";	-- LDI $1
tmp(1) := "0101000000001";	-- STA @ADDR_CTE1
tmp(2) := NOP & '0' & x"00"; 	 --%LABEL TESTE_BUTONS
tmp(3) := "0001101100000";	-- LDA @KEY0
tmp(4) := "0101100100000";	-- STA @HEX0
tmp(5) := "0001101100001";	-- LDA @KEY1
tmp(6) := "1000000000001";	-- CEQ @ADDR_CTE1
tmp(7) := "0111000001011";	-- JEQ @LIMPA
tmp(8) := "0000000000000";	-- NOP
tmp(9) := "0110000000010";	-- JMP @TESTE_BUTONS
tmp(10) := "0000000000000";	-- NOP
tmp(11) := NOP & '0' & x"00"; 	 --%LABEL LIMPA
tmp(12) := "0101111111111";	-- STA @CLEAR_KEY0
tmp(13) := "0101111111110";	-- STA @CLEAR_KEY1
tmp(14) := "0110000000010";	-- JMP @TESTE_BUTONS
tmp(15) := "0000000000000";	-- NOP
			
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
