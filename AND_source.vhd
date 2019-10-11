library IEEE;
use IEEE.std_logic_1164.all;

entity AND_gate is port(
	a: in STD_LOGIC;
    b: in STD_LOGIC;
    y: out STD_LOGIC);
end AND_gate;

architecture behavior of AND_gate is 
begin
	process(a,b) is
    begin
    	y <= a and b;
    end process;
end behavior;
