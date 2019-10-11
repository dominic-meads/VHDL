library IEEE;
use IEEE.std_logic_1164.all;


entity OR_gate is port(
a: in STD_logic;
b: in STD_logic;
y: out STD_logic);
end OR_gate;

architecture rtl of OR_gate is
begin
  process(a,b) is 
    begin 
      y<= a or b;
    end process;
end rtl;
