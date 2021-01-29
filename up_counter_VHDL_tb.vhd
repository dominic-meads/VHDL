library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity up_counter_VHDL_tb is  -- testbench has no ports
end up_counter_VHDL_tb; 

architecture dataflow of up_counter_VHDL_tb is 
	
	component up_counter_VHDL
	port (
		clk : in std_logic;
		o_count : out std_logic_vector (3 downto 0)
		);
	end component;

	constant num_cycles : integer := 20;
	signal clk : std_logic := '0';
	signal o_count : std_logic_vector (3 downto 0);       -- output
	
begin 
	
	uut: up_counter_VHDL PORT MAP (
		clk => clk,
        o_count => o_count
        );
		
	clk_gen: process  
	begin
		for i in 1 to num_cycles loop
			clk <= not clk;
			wait for 5 ns;
			clk <= not clk;
			wait for 5 ns;
			-- clock period = 10 ns
		end loop;
		wait;
	end process;  -- clk_gen
	
	stim_proc: process
	begin 
	   wait for 500 ns;
	   wait;
	end process;
	
end dataflow;