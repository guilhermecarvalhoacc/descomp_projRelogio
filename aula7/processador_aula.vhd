library ieee;
use ieee.std_logic_1164.all;

entity processadoR_aula is
  generic ( larguraDados : natural := 8;
            larguraEnderecos : natural := 9;
				tamanhoROM: natural := 9;
				dadoROM: natural := 13;
				dadoRAM: natural := 8
  );
  port   (
    CLK : in std_logic;
	 rst: in std_logic;
	 data_in_bus: in std_logic_vector(larguraDados - 1 downto 0);
	 data_out_bus: out std_logic_vector(larguraDados - 1 downto 0);
	 dataAddress: out std_logic_vector(larguraEnderecos - 1 downto 0);
	 Instrution_in: in std_logic_vector(dadoROM-1 downto 0);
	 ROM_address: out std_logic_vector(tamanhoROM - 1 downto 0);
	 RD, WR : out std_logic;
	 ulaB_verifica: out std_logic_vector(7 downto 0);
	 ulaA_verifica: out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of processador_aula is

  signal proxPC : std_logic_vector (8 downto 0);
  signal Endereco : std_logic_vector (8 downto 0);
  signal saida_dados_RAM : std_logic_vector (7 downto 0);
  signal saida_dados_ROM : std_logic_vector (12 downto 0);
  signal Sinais_Controle : std_logic_vector (9 downto 0);
  signal SelMUX : std_logic;
  signal saidaUla_flag : std_logic;
  signal saida_flag : std_logic;
  signal entrada_flag : std_logic;
  signal Habilita_A : std_logic;
  signal jump : std_logic;
  signal Operacao_ULA :std_logic_vector (1 downto 0);
  signal hab_leitura : std_logic;
  signal hab_escrita : std_logic;
  signal SelMuxRetorno :std_logic_vector (1 downto 0);
  signal hab_escrita_retorno : std_logic;
  signal hab_flag : std_logic;
  signal saida_MUX : std_logic_vector (7 downto 0);
  signal saida_MUX_JMP : std_logic_vector (8 downto 0);
  signal saida_ULA : std_logic_vector (7 downto 0);
  signal REG1_ULA_A : std_logic_vector (7 downto 0);
  signal saida_end_retorno : std_logic_vector (8 downto 0);


begin


MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => data_in_bus,
                 entradaB_MUX => Instrution_in(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => saida_MUX);


					  
					  
MUXJMP :  entity work.muxGenerico4x1  generic map (larguraDados => 9)
        port map(entradaA_MUX => proxPC,
                 entradaB_MUX => saida_dados_ROM(8 downto 0),
					  entradaC_MUX => saida_end_retorno,
					  entradaD_MUX => "000000000",
                 seletor_MUX => SelMuxRetorno,
                 saida_MUX => saida_MUX_JMP);
					  
--OK
REGA : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

			 
flipflop : entity work.flipflop   generic map (larguraDados => 1)
          port map (DIN => saida_flag, DOUT => entrada_flag,ENABLE => hab_flag, CLK => CLK, RST => '0');

			 
			 
End_retorno : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => proxPC, DOUT => saida_end_retorno, ENABLE => hab_escrita_retorno,CLK => CLK, RST => '0');
			 
--OK
PC : entity work.registradorGenerico   generic map (larguraDados => tamanhoROM)
          port map (DIN => saida_MUX_JMP, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

--OK
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => saida_MUX, saida => Saida_ULA, saidaUla_flag => saida_flag, seletor => Operacao_ULA);

	 
decoder :  entity work.decoder
        port map( opcode => saida_dados_ROM(12 downto 9),
						entrada_flag => entrada_flag,
                 saida => Sinais_Controle);
		  

hab_escrita_retorno <= Sinais_Controle(9);
SelMuxRetorno <= Sinais_Controle(8 downto 7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
hab_flag <= Sinais_Controle(2);
hab_leitura <= Sinais_Controle(1);
hab_escrita <= Sinais_Controle(0);
data_out_bus <= REG1_ULA_A;
WR <= hab_escrita;
RD <= hab_leitura;
saida_dados_ROM <= Instrution_in;
dataAddress <= Instrution_in(8 downto 0) ;
ROM_address <= Endereco;
ulaB_verifica <= saida_MUX;
ulaA_verifica <= REG1_ULA_A;


end architecture;