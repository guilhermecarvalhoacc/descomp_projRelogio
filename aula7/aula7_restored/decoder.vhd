library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port ( opcode       : in std_logic_vector(3 downto 0);
	 entrada_flag : std_logic;
         saida        : out std_logic_vector(9 downto 0)
  );

end entity;

architecture comportamento of decoder is
	
	constant NOP  : std_logic_vector(3 downto 0) := "0000";
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant SOMA : std_logic_vector(3 downto 0) := "0010";
	constant SUB  : std_logic_vector(3 downto 0) := "0011";
	constant LDI  : std_logic_vector(3 downto 0) := "0100";
	constant STA  : std_logic_vector(3 downto 0) := "0101";
	constant JMP  : std_logic_vector(3 downto 0) := "0110";
	constant JEQ  : std_logic_vector(3 downto 0) := "0111";
	constant CEQ  : std_logic_vector(3 downto 0) := "1000";
	constant JSR  : std_logic_vector(3 downto 0) := "1001";
	constant RET  : std_logic_vector(3 downto 0) := "1010";
	
	
	alias habEscritaRetorno      : std_logic is saida (9);
	alias sel_mux_logica_desvio  : std_logic_vector(1 downto 0) is saida(8 downto 7);
	alias SelMUX                 : std_logic is saida (6);
	alias HabilitaA              : std_logic is saida (5);
	alias operacao               : std_logic_vector(1 downto 0) is saida(4 downto 3);
	alias habflagigual           : std_Logic is saida(2);
	alias HabLeitura             : std_Logic is saida(1); 
	alias HabEscrita             : std_Logic is saida(0); 
  
begin

		habEscritaRetorno <= '1' when (opcode = JSR) else '0';
		
		sel_mux_logica_desvio <= "01" when (opcode = JMP) OR (opcode = JSR) OR ( (opcode = JEQ) and (entrada_flag = '1') ) else
			"10" when (opcode = 	RET) else "00";
			
		SelMUX    <= '1'  when (opcode = LDI) else '0';
		HabilitaA <= '1'  when (opcode = LDA) or (opcode = SOMA) or (opcode = SUB) or (opcode = LDI) else '0';
		operacao  <= "10" when (opcode = LDA) or (opcode = LDI) else
							"00" when (opcode = SOMA)  else
							"01" when (opcode = CEQ) or (opcode = SUB) else "00";

		habflagigual <= '1' when (opcode = CEQ) else '0';
		HabLeitura   <= '1' when (opcode = LDA) or (opcode = SOMA) or (opcode = SUB) or (opcode = CEQ) else '0';
		HabEscrita   <= '1' when (opcode = STA) else '0';

end architecture;
