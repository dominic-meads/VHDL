library IEEE;
use IEEE.std_logic_1164.all;

entity DFF is 
	port (
		i_clk : in STD_LOGIC; 
		i_D   : in STD_LOGIC;
		o_Q   : out STD_LOGIC;
		o_nQ  : out STD_LOGIC
		);
	enD DFF;
	
architecture behavioral of DFF is 
	signal r_Q : STD_LOGIC;  -- output register for "Q"
	signal r_nQ: STD_LOGIC;  -- output register for "nQ"
begin 
	process (i_clk)
	begin 
		if rising_edge (i_clk) then
			r_Q<= i_D;
			r_nQ<= not i_D; 
		end if;
	end process;
	-- output assignments
	o_Q  <= r_Q;
	o_nQ <= r_nQ;
end behavioral;
