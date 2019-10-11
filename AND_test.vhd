library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is

end testbench;

architecture tb of testbench is

component AND_gate is port(
	a: in STD_LOGIC;
    b: in STD_LOGIC;
    y: out STD_LOGIC);
end component;

signal a_in, b_in, y_in: STD_LOGIC;

begin 

DUT: AND_gate port map(a_in,b_in,y_in);

process
begin 

	a_in <= '0';
    b_in <= '0';
    wait for 1 ns;
    
    a_in <= '1';
    b_in <= '0';
    wait for 1 ns;
    
    a_in <= '1';
    b_in <= '1';
    wait for 1 ns;
    wait;
end process;
end tb;
    
