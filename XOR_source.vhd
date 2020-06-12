library IEEE;
use IEEE.std_logic_1164.all;

entity XOR_gate is port(
	a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC);
end XOR_gate;

architecture behavioral of XOR_gate is 

	signal not_a, not_b, and_1, and_2 : STD_LOGIC;
    
    component OR_gate is port( a,b : in STD_LOGIC;
                                 y : out STD_LOGIC ); end component;
                                 
    component AND_gate is port( a,b : in STD_LOGIC;
                                 y : out STD_LOGIC ); end component;
    
    component NOT_gate is port(  a : in STD_LOGIC;
                                 y : out STD_LOGIC ); end component;
                                 
    begin 
    	
        u1 : NOT_gate PORT MAP( a => a,
                                  y => not_a);
                                  
        u2 : NOT_gate PORT MAP( a => b,
                                  y => not_b);
        
        u3 : AND_gate PORT MAP( a => a,
                                  b => not_b,
                                  y => and_1);
                                  
        u4 : AND_gate PORT MAP( a => b,
                                  b => not_a,
                                  y => and_2);
        
        u5 : OR_gate PORT MAP( a => and_1,
                                b => and_2,
                                y => y);
                          
end behavioral;



library IEEE;
use IEEE.std_logic_1164.all;

entity OR_gate is port(
a: in STD_logic;
b: in STD_logic;
y: out STD_logic);
end OR_gate;

architecture behavior of OR_gate is
begin
  process(a,b) is 
    begin 
      y<= a or b;
    end process;
end behavior;



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



library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_gate is port(
	a: in STD_LOGIC;
    y: out STD_LOGIC);
end NOT_gate;

architecture behavior of NOT_gate is 
begin
	process(a) is 
    begin 
    	y <= not a;
    end process;
end behavior;
