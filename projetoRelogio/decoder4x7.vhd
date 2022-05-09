library ieee;
use ieee.std_logic_1164.all;

entity decoder4x7 is
  port ( entrada : in std_logic_vector(2 downto 0);
         saida : out std_logic_vector(6 downto 0)
  );
end entity;

architecture comportamento of decoder4x7 is
  begin
    saida(6) <= '1' when (entrada = "1100") else '0';
    saida(5) <= '1' when (entrada = "1010") else '0';
    saida(4) <= '1' when (entrada = "1000") else '0';
    saida(3) <= '1' when (entrada = "0011") else '0';
    saida(2) <= '1' when (entrada = "0010") else '0';
    saida(1) <= '1' when (entrada = "0001") else '0';
    saida(0) <= '1' when (entrada = "0000") else '0';
end architecture;