-- Linear Feedback Shift Register
-- Jesse Wilson (2014) syrex314@gmail.com
-- Warren Lab, Chemistry Department, Duke University
--
-- A LFBR generates a pseudo-random sequence

-- See description on Wikipedia for more info:
-- http://en.wikipedia.org/wiki/Linear_feedback_shift_register
-- Modified by Ayush on Feb 19,2016 for DE2-115 Board

library ieee;
	use ieee.std_logic_1164.all;
	
entity top is
	port (
		OSC_50	: in	std_logic;
		SMA_CLKOUT : out std_logic

	);
end top;

architecture behavior of top is
	
	component PLL 
    port
    (
        inclk0        : IN STD_LOGIC  := '0';
        c0            : OUT STD_LOGIC 
    );
   end component;

signal state	: std_logic_vector(15 downto 0) := x"ACE1";
signal c0_out  : std_logic;

begin
		PLL_inst : PLL PORT MAP (
 
  inclk0	 => OSC_50,
  c0	    => c0_out
);
   
	main : process( c0_out )
	begin	
		if rising_edge( c0_out ) then
			
			state <= state(14 downto 0) 
						& (((state(15) xor state(13)) xor state(12)) xor state(10));
			
			SMA_CLKOUT <= state(15);
			
		end if;
	end process;
	
end behavior;

