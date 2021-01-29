library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity up_counter_VHDL is 
	port (
		clk : in std_logic;
		o_count : out std_logic_vector (3 downto 0)
		);
	end up_counter_VHDL;
	
architecture behavioral of up_counter_VHDL is 
	signal r_count : std_logic_vector (3 downto 0) := x"0";
begin 
	process (clk)
	begin 
		if rising_edge (clk) then 
			if (r_count < x"FF") then 
				r_count <= r_count + '1';
			else 
				r_count <= x"0";
			end if;
		end if;
	end process;
	
	o_count <= r_count;
end behavioral;
		