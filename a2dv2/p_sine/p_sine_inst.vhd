	component p_sine is
		port (
			source : out std_logic_vector(0 downto 0);                     -- source
			probe  : in  std_logic_vector(11 downto 0) := (others => 'X')  -- probe
		);
	end component p_sine;

	u0 : component p_sine
		port map (
			source => CONNECTED_TO_source, -- sources.source
			probe  => CONNECTED_TO_probe   --  probes.probe
		);

