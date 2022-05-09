library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    

entity ULASomaSub is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0) ;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		saidaUla_flag:    out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		passa <= entradaB;
		
      saida <= soma when (seletor = "00") else
					subtracao when (seletor = "01") else passa;
		saidaUla_flag <= '1' when unsigned(saida) = unsigned(zero) else '0';
		
end architecture;