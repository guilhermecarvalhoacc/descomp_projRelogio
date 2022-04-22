library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aula7 is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  9;
    simulacao   : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );

  port   (
  CLOCK_50        : in  std_logic;
  FPGA_RESET_N    : in  std_logic;
  HabilitaRam     : out std_logic;
  read_ram        : out std_logic;
  LEDR            : out std_logic_vector(9 downto 0);
  PC_OUT          : out std_logic_vector(8 downto 0);
  ulaB_verifica   : out std_logic_vector(7 downto 0);
  ulaA_verifica   : out std_logic_vector(7 downto 0);
  DadoInRAM       : out std_logic_vector(7 downto 0);
  KEY             : in  std_logic_vector(3 downto 0);
  SW              : in  std_logic_vector(9 downto 0);
  HEX0,HEX1,HEX2  : out std_logic_vector(6 downto 0);
  HEX3,HEX4,HEX5  : out std_logic_vector(6 downto 0)
  );

end entity;


architecture arch_name of aula7 is
  signal clk                      : std_logic;
  signal dadoROM                  : std_logic_vector (12 downto 0);
  signal enderecoROM              : std_logic_vector (8 downto 0);
  signal leituraRAM               : std_logic;
  signal EscritaRAM               : std_logic;

  signal flag_flipflop1           : std_logic;
  signal flag_flipflop2           : std_logic;
  signal habilita_registrador     : std_logic;

  signal dadolidoRAM              : std_logic_vector (7 downto 0);
  signal dadoEscritoRAM           : std_logic_vector (7 downto 0);
  signal enderecoRAM              : std_logic_vector (8 downto 0);
  signal saidas_decoder           : std_logic_vector (7 downto 0);
  signal data_in_bus              : std_logic_vector (7 downto 0);
  signal saidas_decoder_end       : std_logic_vector (7 downto 0);

  signal saida_reg4_bit0          : std_logic_vector (3 downto 0);
  signal saida_reg4_bit1          : std_logic_vector (3 downto 0);
  signal saida_reg4_bit2          : std_logic_vector (3 downto 0);
  signal saida_reg4_bit3          : std_logic_vector (3 downto 0);
  signal saida_reg4_bit4          : std_logic_vector (3 downto 0);
  signal saida_reg4_bit5          : std_logic_vector (3 downto 0);
  
  signal habilita_reg4bit0        : std_logic;
  signal habilita_reg4bit1        : std_logic;
  signal habilita_reg4bit2        : std_logic;
  signal habilita_reg4bit3        : std_logic;
  signal habilita_reg4bit4        : std_logic;
  signal habilita_reg4bit5        : std_logic;
  signal habilita_buffer          : std_logic;
  signal habilita_sw8             : std_logic;
  signal habilita_sw9             : std_logic;
  signal habilita_KEY0            : std_logic;
  signal habilita_KEY1            : std_logic;
  signal habilita_KEY2            : std_logic;
  signal habilita_KEY3            : std_logic;
  signal habilita_FPGA_RESET      : std_logic;

begin

--gravar:  if simulacao generate
--clk <= KEY(0);
--else generate
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => clk);
--end generate;

clk<=CLOCK_50;


ROM_instrucao : entity work.memoriaROM 
          port map (Endereco => enderecoROM, Dado => dadoROM);

MemoriaRAM : entity work.memoriaRAM 
	port map (
		 addr     => enderecoRAM(5 downto 0),
		 re       =>leituraRAM,
		 we       =>EscritaRAM,
		 habilita => saidas_decoder(0),
		 dado_in  => dadoEscritoRAM,
		 dado_out => dadolidoRAM,
		 clk      => clk);
			 
processador : entity work.processador_aula
	port map (
		CLK           => clk, 
		rst           => FPGA_RESET_N,
		data_in_bus   => dadolidoRAM,
		data_out_bus  => dadoEscritoRAM,
		dataAddress   => enderecoRAM,
		Instrution_in => dadoROM,
		ROM_address   => enderecoROM,
		RD            => leituraRAM,
		WR            => EscritaRAM,
		ulaB_verifica => ulaB_verifica,
		ulaA_verifica => ulaA_verifica
		);
		
decoder_blocos : entity work.decoder3x8 
          port map (entrada => enderecoRAM(8 downto 6), saida => saidas_decoder);
			 
decoder_end    : entity work.decoder3x8 
          port map (entrada => enderecoRAM(2 downto 0), saida => saidas_decoder_end);


			 
flipflop1 : entity work.flipflop generic map (larguraDados => 1)
          port map (DIN => dadoEscritoRAM(0), DOUT => LEDR(9), ENABLE => flag_flipflop1, CLK => clk, RST => '0');
			 
flipflop2 : entity work.flipflop generic map (larguraDados => 1)
          port map (DIN => dadoEscritoRAM(0), DOUT => LEDR(8), ENABLE => flag_flipflop2, CLK => clk, RST => '0');
			 
registrador_8bits : entity work.registradorGenerico generic map (larguraDados => 8)
          port map (DIN => dadoEscritoRAM, DOUT => LEDR(7 downto 0), ENABLE => habilita_registrador, CLK => clk, RST => '0');

-- Binary decoders

decoder_binario0 : entity work.conversorHex7Seg 
          port map (dadoHex => saida_reg4_bit0, apaga => '0', negativo => '0', overFlow => '0', saida7seg => HEX0);		 

decoder_binario1 : entity work.conversorHex7Seg 
          port map (dadoHex => saida_reg4_bit1, apaga => '0', negativo => '0', overFlow => '0', saida7seg => HEX1);		 

decoder_binario2 : entity work.conversorHex7Seg 
          port map (dadoHex => saida_reg4_bit2, apaga => '0', negativo => '0', overFlow => '0', saida7seg => HEX2);		 

decoder_binario3 : entity work.conversorHex7Seg 
          port map (dadoHex => saida_reg4_bit3, apaga => '0', negativo => '0', overFlow => '0', saida7seg => HEX3);		 

decoder_binario4 : entity work.conversorHex7Seg 
          port map (dadoHex => saida_reg4_bit4, apaga => '0', negativo => '0', overFlow => '0', saida7seg => HEX4);		 

decoder_binario5 : entity work.conversorHex7Seg 
          port map (dadoHex => saida_reg4_bit5, apaga => '0', negativo => '0', overFlow => '0', saida7seg => HEX5);		 

-- Bits of register

REG_4bit0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => dadoEscritoRAM(3 downto 0), DOUT => saida_reg4_bit0, ENABLE => habilita_reg4bit0, CLK => clk, RST => '0');

REG_4bit1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => dadoEscritoRAM(3 downto 0), DOUT => saida_reg4_bit1, ENABLE => habilita_reg4bit1, CLK => clk, RST => '0');

REG_4bit2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => dadoEscritoRAM(3 downto 0), DOUT => saida_reg4_bit2, ENABLE => habilita_reg4bit2, CLK => clk, RST => '0');

REG_4bit3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => dadoEscritoRAM(3 downto 0), DOUT => saida_reg4_bit3, ENABLE => habilita_reg4bit3, CLK => clk, RST => '0');

REG_4bit4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => dadoEscritoRAM(3 downto 0), DOUT => saida_reg4_bit4, ENABLE => habilita_reg4bit4, CLK => clk, RST => '0');

REG_4bit5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => dadoEscritoRAM(3 downto 0), DOUT => saida_reg4_bit5, ENABLE => habilita_reg4bit5, CLK => clk, RST => '0');

-- Buffers

buffer_3state : entity work.buffer_3_state_8portas
          port map (entrada => SW(7 downto 0) , habilita => habilita_buffer, saida => dadolidoRAM);
			 
buffer_3state_1SW8 : entity work.buffer_3_state_1porta
          port map (entrada =>SW(8) , habilita => habilita_sw8, saida => dadolidoRAM);
			 
buffer_3state_1SW9 : entity work.buffer_3_state_1porta
          port map (entrada =>SW(9), habilita => habilita_sw9, saida => dadolidoRAM);

buffer_3state_KEY0 : entity work.buffer_3_state_1porta
          port map (entrada =>KEY(0), habilita => habilita_KEY0, saida => dadolidoRAM);

buffer_3state_KEY1 : entity work.buffer_3_state_1porta
          port map (entrada =>KEY(1), habilita => habilita_KEY1, saida => dadolidoRAM);		 
			
buffer_3state_KEY2 : entity work.buffer_3_state_1porta
          port map (entrada =>KEY(2), habilita => habilita_KEY2,saida => dadolidoRAM);		 


buffer_3state_KEY3 : entity work.buffer_3_state_1porta
          port map (entrada =>KEY(3), habilita => habilita_KEY3, saida => dadolidoRAM);		 
 
 
buffer_FPGA_RESET : entity work.buffer_3_state_1porta
          port map (entrada => FPGA_RESET_N, habilita => habilita_FPGA_RESET, saida => dadolidoRAM);		

 
	
-- para os LEDS:
flag_flipflop1       <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(2) and not enderecoRAM(5);
flag_flipflop2       <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(1) and not enderecoRAM(5);	
habilita_registrador <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(0) and not enderecoRAM(5);

-- para os displays de 7 segmentos:

habilita_reg4bit0 <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(0) and  enderecoRAM(5);					 
habilita_reg4bit1 <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(1) and  enderecoRAM(5);	
habilita_reg4bit2 <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(2) and  enderecoRAM(5);					 
habilita_reg4bit3 <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(3) and  enderecoRAM(5);	
habilita_reg4bit4 <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(4) and  enderecoRAM(5);					 
habilita_reg4bit5 <= saidas_decoder(4) and EscritaRAM and saidas_decoder_end(5) and  enderecoRAM(5);	
-- para os switches:

habilita_buffer <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(0)  and not enderecoRAM(5);	
habilita_sw8    <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(1)  and not enderecoRAM(5);	
habilita_sw9    <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(2)  and not enderecoRAM(5);	


-- para as chaves e reset da FPGA: 
habilita_KEY0       <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(0)  and  enderecoRAM(5);
habilita_KEY1       <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(1)  and  enderecoRAM(5);
habilita_KEY2       <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(2)  and  enderecoRAM(5);
habilita_KEY3       <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(3)  and  enderecoRAM(5);
habilita_FPGA_RESET <= saidas_decoder(5) and leituraRAM and saidas_decoder_end(4)  and  enderecoRAM(5);

PC_OUT        <= enderecoROM;
ulaB_verifica <= ulaB_verifica;
ulaA_verifica <= ulaA_verifica;

DadoInRAM     <= dadolidoRAM;
HabilitaRam   <= saidas_decoder(0);
read_ram      <= leituraRAM;

end architecture;
