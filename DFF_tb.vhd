library IEEE;
use IEEE.std_logic_1164.all;

entity DFF_tb is  -- testbench has no ports
end DFF_tb; 

architecture dataflow of DFF_tb is 
	
	component DFF
	port (
		i_clk : in std_logic;
		i_D   : in std_logic;
		o_Q   : out std_logic;
		o_nQ  : out std_logic
		);
	end component;

	constant num_cycles : integer := 10;
	signal i_clk : std_ulogic := '0';
	signal i_D   : std_logic := '0';  -- input stimulus
	signal o_Q   : std_logic;       -- output 
	signal o_nQ  : std_logic;       -- output
	
begin 
	
	uut: DFF PORT MAP (
		i_clk => i_clk,
        i_D => i_D,  
        o_Q => o_Q,
        o_nQ => o_nQ
        );
		
	clk_gen: process  
	begin
		for i in 1 to num_cycles loop
			i_clk <= not i_clk;
			wait for 5 ns;
			i_clk <= not i_clk;
			wait for 5 ns;
			-- clock period = 10 ns
		end loop;
		wait;
	end process;  -- clk_gen
		
	stim_proc: process
	begin 
		i_D <= '0';
		wait for 25 ns;
		
		i_D <= '1';
		wait for 10 ns;
		
		i_D <= '0';
		wait for 10 ns;
		
		i_D <= '1';
		wait;
	end process;  -- stim_proc
	
end dataflow;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


