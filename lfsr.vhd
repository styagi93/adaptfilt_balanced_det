-- Linear Feedback Shift Register
-- Jesse Wilson (2014) syrex314@gmail.com
-- Warren Lab, Chemistry Department, Duke University
--
-- A LFBR generates a pseudo-random sequence

-- See description on Wikipedia for more info:
-- http://en.wikipedia.org/wiki/Linear_feedback_shift_register

library ieee;
	use ieee.std_logic_1164.all;
	
entity LFSR is
	port (
		clk		: in	std_logic;
		output	: out std_logic
	);
end LFSR;

architecture behavior of LFSR is
	signal state	: std_logic_vector(15 downto 0) := x"ACE1";

begin
	
	main : process( clk )
	begin
			
		if rising_edge( clk ) then
			
			state <= state(14 downto 0) 
						& (((state(15) xor state(13)) xor state(12)) xor state(10));
			
			output <= state(15);
			
		end if;
	end process;
	
end behavior;
	
	