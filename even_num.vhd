library IEEE;
use IEEE.std_logic_1164.all;

entity even_num is 
	port (
    	i_num : in std_logic_vector(3 downto 0);
        o_true : out std_logic
        );
end even_num;

architecture rtl of even_num is 
begin 
	
    o_true <= '1' when i_num(0) = '0' else '0';
    
end rtl;






library IEEE;
use IEEE.std_logic_1164.all;

entity tb is 
end tb;

architecture sim of tb is 

	signal i_num : std_logic_vector(3 downto 0) := "0000";
    signal o_true : std_logic;


begin

	DUT : entity work.even_num(rtl) 
    port map(
    	i_num => i_num,
        o_true => o_true
        );

	STIM_PROC : process
    begin 
    	i_num <= "1010";
        wait for 5 ns;
        i_num <= "1011";
        wait for 5 ns;
        wait;
    end process;


end sim;
