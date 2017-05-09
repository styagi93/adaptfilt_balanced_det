	component CIC is
		port (
			in_error          : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			in_valid          : in  std_logic                     := 'X';             -- valid
			in_ready          : out std_logic;                                        -- ready
			in0_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in0_data
			in1_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in1_data
			in2_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in2_data
			in3_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in3_data
			in4_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in4_data
			in5_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in5_data
			in6_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in6_data
			in7_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in7_data
			in8_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in8_data
			in9_data          : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in9_data
			in10_data         : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in10_data
			in11_data         : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in11_data
			in12_data         : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in12_data
			in13_data         : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in13_data
			in14_data         : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in14_data
			in15_data         : in  std_logic_vector(15 downto 0) := (others => 'X'); -- in15_data
			out_data          : out std_logic_vector(15 downto 0);                    -- out_data
			out_error         : out std_logic_vector(1 downto 0);                     -- error
			out_valid         : out std_logic;                                        -- valid
			out_ready         : in  std_logic                     := 'X';             -- ready
			out_startofpacket : out std_logic;                                        -- startofpacket
			out_endofpacket   : out std_logic;                                        -- endofpacket
			out_channel       : out std_logic_vector(3 downto 0);                     -- channel
			clk               : in  std_logic                     := 'X';             -- clk
			reset_n           : in  std_logic                     := 'X'              -- reset_n
		);
	end component CIC;

	u0 : component CIC
		port map (
			in_error          => CONNECTED_TO_in_error,          --  av_st_in.error
			in_valid          => CONNECTED_TO_in_valid,          --          .valid
			in_ready          => CONNECTED_TO_in_ready,          --          .ready
			in0_data          => CONNECTED_TO_in0_data,          --          .in0_data
			in1_data          => CONNECTED_TO_in1_data,          --          .in1_data
			in2_data          => CONNECTED_TO_in2_data,          --          .in2_data
			in3_data          => CONNECTED_TO_in3_data,          --          .in3_data
			in4_data          => CONNECTED_TO_in4_data,          --          .in4_data
			in5_data          => CONNECTED_TO_in5_data,          --          .in5_data
			in6_data          => CONNECTED_TO_in6_data,          --          .in6_data
			in7_data          => CONNECTED_TO_in7_data,          --          .in7_data
			in8_data          => CONNECTED_TO_in8_data,          --          .in8_data
			in9_data          => CONNECTED_TO_in9_data,          --          .in9_data
			in10_data         => CONNECTED_TO_in10_data,         --          .in10_data
			in11_data         => CONNECTED_TO_in11_data,         --          .in11_data
			in12_data         => CONNECTED_TO_in12_data,         --          .in12_data
			in13_data         => CONNECTED_TO_in13_data,         --          .in13_data
			in14_data         => CONNECTED_TO_in14_data,         --          .in14_data
			in15_data         => CONNECTED_TO_in15_data,         --          .in15_data
			out_data          => CONNECTED_TO_out_data,          -- av_st_out.out_data
			out_error         => CONNECTED_TO_out_error,         --          .error
			out_valid         => CONNECTED_TO_out_valid,         --          .valid
			out_ready         => CONNECTED_TO_out_ready,         --          .ready
			out_startofpacket => CONNECTED_TO_out_startofpacket, --          .startofpacket
			out_endofpacket   => CONNECTED_TO_out_endofpacket,   --          .endofpacket
			out_channel       => CONNECTED_TO_out_channel,       --          .channel
			clk               => CONNECTED_TO_clk,               --     clock.clk
			reset_n           => CONNECTED_TO_reset_n            --     reset.reset_n
		);

