-- Numerically-controlled oscillator
-- Jesse Wilson (2015) jesse.wilson@colostate.edu
--
-- Lookup table oscillator.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nco is
	port( 
		clk : in std_logic;
		phase_incr : in unsigned( 19 downto 0 ) := to_unsigned(1048, 20); -- default to ~50 kHz
		cos_out    : out std_logic_vector( 11 downto 0 )
	);
end nco;

architecture behavior of nco is

	type rom_type is array(0 to 255) of integer range -1024 to 1024;

	-- cosine lookup table; 8-bit address, 12-bit contents
	constant cos_rom : rom_type := ( 1024,  1024,  1023,  1021,  1019,  1016,  1013,  1009,  1004,   999,   993,   987,   980,   972,   964,   955,   945,   935,   925,   914,   902,   890,   877,   864,   850,   836,   821,   806,   790,   774,   757,   740,   722,   704,   685,   666,   647,   627,   607,   586,   566,   544,   523,   501,   479,   456,   434,   411,   387,   364,   340,   316,   292,   268,   244,   219,   194,   170,   145,   120,    94,    69,    44,    19,    -6,   -32,   -57,   -82,  -107,  -132,  -157,  -182,  -207,  -231,  -256,  -280,  -304,  -328,  -352,  -376,  -399,  -422,  -445,  -468,  -490,  -512,  -534,  -555,  -576,  -597,  -617,  -637,  -657,  -676,  -695,  -713,  -731,  -748,  -765,  -782,  -798,  -813,  -828,  -843,  -857,  -871,  -884,  -896,  -908,  -919,  -930,  -941,  -950,  -959,  -968,  -976,  -983,  -990,  -996, -1002, -1007, -1011, -1015, -1018, -1020, -1022, -1023, -1024, -1024, -1023, -1022, -1020, -1018, -1015, -1011, -1007, -1002,  -996,  -990,  -983,  -976,  -968,  -959,  -950,  -941,  -930,  -919,  -908,  -896,  -884,  -871,  -857,  -843,  -828,  -813,  -798,  -782,  -765,  -748,  -731,  -713,  -695,  -676,  -657,  -637,  -617,  -597,  -576,  -555,  -534,  -512,  -490,  -468,  -445,  -422,  -399,  -376,  -352,  -328,  -304,  -280,  -256,  -231,  -207,  -182,  -157,  -132,  -107,   -82,   -57,   -32,    -6,    19,    44,    69,    94,   120,   145,   170,   194,   219,   244,   268,   292,   316,   340,   364,   387,   411,   434,   456,   479,   501,   523,   544,   566,   586,   607,   627,   647,   666,   685,   704,   722,   740,   757,   774,   790,   806,   821,   836,   850,   864,   877,   890,   902,   914,   925,   935,   945,   955,   964,   972,   980,   987,   993,   999,  1004,  1009,  1013,  1016,  1019,  1021,  1023,  1024,  1024 );

	--signal phase_acc : integer range 0 to 255 := 0;
	signal phase_acc : unsigned( 19 downto 0 ) := to_unsigned(0,20);
	
	signal phase_acc_msbs : unsigned(7 downto 0);
	
	begin
	
	-- connect most significant bits of phase accumulator
	phase_acc_msbs <= phase_acc( 19 downto (19-7) );
	
	ncoproc : process( clk )
	begin
		if rising_edge(clk) then
		
			phase_acc <= phase_acc + phase_incr;
		
			cos_out <= std_logic_vector(to_signed(cos_rom( to_integer(phase_acc_msbs) ),12));
		end if;
	end process;
end behavior;
