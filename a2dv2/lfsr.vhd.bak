library ieee;
	use ieee.std_logic_1164.all;
	
entity lfsr is
	port (
		clk	: in	std_logic;
		outp : out std_logic

	);
end lfsr;

architecture behavior of lfsr is
	
	component PLL2 
    port
    (
        inclk0        : IN STD_LOGIC  := '0';
        c0            : OUT STD_LOGIC 
    );
   end component;

signal state	: std_logic_vector(15 downto 0) := x"ACE1";
signal c0_out  : std_logic;

begin
		PLL2_inst : PLL2 PORT MAP (
 
  inclk0	 => clk,
  c0	    => c0_out
);
   
	main : process( c0_out )
	begin	
		if rising_edge( c0_out ) then
			
			state <= state(14 downto 0) 
						& (((state(15) xor state(13)) xor state(12)) xor state(10));
			
			outp <= state(15);
			
		end if;
	end process;
	
end behavior;

