-- switch debouncer
-- Jesse Wilson (2015) jesse.wilson@duke.edu
-- Warren Lab, Chemistry Dept, Duke Univ
--
-- when a change in the switch is detected, start counting
-- if stable for ~10 ms (2^19 clock cycles at 50 MHz), then 
-- pass the switch's current value to the output

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

entity debouncer is
	port( clk :  in std_logic;
			i   :  in std_logic;
			o   : out std_logic := '0'  );
end debouncer;

architecture behavior of debouncer is

	signal counter_active : std_logic := '0';
	signal count 			 : unsigned( 19 downto 0 ) := to_unsigned(0, 20);
	signal i_prev			 : std_logic := '0';

begin

	main : process( clk, counter_active )
	begin
		if rising_edge( clk ) then
			
			i_prev <= i;
			
			if counter_active = '0' then
				if i_prev = not( i ) then -- switch changed
					counter_active <= '1';
					count <= to_unsigned(0,20);
				end if;
			else
				if i_prev = not( i ) then
					count <= to_unsigned(0,20);
				end if;
			
				count <= count + 1;
				
				if count(19) = '1' then
					o <= i;
					counter_active <= '0';
				end if;
				
			end if;
			
			
			
		end if;
		
		
	end process;

end behavior;