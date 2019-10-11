library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is

end testbench; 

architecture tb of testbench is

component OR_gate is port(
a: in STD_logic;
b: in STD_logic;
y: out STD_logic);
end component;


signal A,B,Y:
STD_logic;

begin

DUT: OR_gate port map(A,B,Y)
;


process
begin 

A<='0';
B<='0';
wait for 1 ns;

A<='0';
B<='1';
wait for 1 ns;
wait;
end process;
end tb;
