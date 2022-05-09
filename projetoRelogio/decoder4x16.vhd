library ieee;
use ieee.std_logic_1164.all;

entity decoder4x16 is
  port ( entrada : in  std_logic_vector (3 downto 0);
         saida   : out std_logic_vector (15 downto 0)
  );
end entity;

architecture comportamento of decoder4x16 is
  begin
    saida(15) <= '1' when (entrada = "1111") else '0';
    saida(14) <= '1' when (entrada = "1110") else '0';
    saida(13) <= '1' when (entrada = "1101") else '0';
    saida(12) <= '1' when (entrada = "1100") else '0';
    saida(11) <= '1' when (entrada = "1011") else '0';
    saida(10) <= '1' when (entrada = "1010") else '0';
    saida(9)  <= '1' when (entrada = "1001") else '0';
    saida(8)  <= '1' when (entrada = "1000") else '0';
    saida(7)  <= '1' when (entrada = "0111") else '0';
    saida(6)  <= '1' when (entrada = "0110") else '0';
    saida(5)  <= '1' when (entrada = "0101") else '0';
    saida(4)  <= '1' when (entrada = "0100") else '0';
    saida(3)  <= '1' when (entrada = "0011") else '0';
    saida(2)  <= '1' when (entrada = "0010") else '0';
    saida(1)  <= '1' when (entrada = "0001") else '0';
    saida(0)  <= '1' when (entrada = "0000") else '0';

end architecture;

