	component sram_access is
		port (
			clk_clk                          : in    std_logic                     := 'X';             -- clk
			sram_conduit_DQ                  : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
			sram_conduit_ADDR                : out   std_logic_vector(19 downto 0);                    -- ADDR
			sram_conduit_LB_N                : out   std_logic;                                        -- LB_N
			sram_conduit_UB_N                : out   std_logic;                                        -- UB_N
			sram_conduit_CE_N                : out   std_logic;                                        -- CE_N
			sram_conduit_OE_N                : out   std_logic;                                        -- OE_N
			sram_conduit_WE_N                : out   std_logic;                                        -- WE_N
			bridge_input_conduit_address     : in    std_logic_vector(20 downto 0) := (others => 'X'); -- address
			bridge_input_conduit_byte_enable : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byte_enable
			bridge_input_conduit_read        : in    std_logic                     := 'X';             -- read
			bridge_input_conduit_write       : in    std_logic                     := 'X';             -- write
			bridge_input_conduit_write_data  : in    std_logic_vector(15 downto 0) := (others => 'X'); -- write_data
			bridge_input_conduit_acknowledge : out   std_logic;                                        -- acknowledge
			bridge_input_conduit_read_data   : out   std_logic_vector(15 downto 0)                     -- read_data
		);
	end component sram_access;

	u0 : component sram_access
		port map (
			clk_clk                          => CONNECTED_TO_clk_clk,                          --                  clk.clk
			sram_conduit_DQ                  => CONNECTED_TO_sram_conduit_DQ,                  --         sram_conduit.DQ
			sram_conduit_ADDR                => CONNECTED_TO_sram_conduit_ADDR,                --                     .ADDR
			sram_conduit_LB_N                => CONNECTED_TO_sram_conduit_LB_N,                --                     .LB_N
			sram_conduit_UB_N                => CONNECTED_TO_sram_conduit_UB_N,                --                     .UB_N
			sram_conduit_CE_N                => CONNECTED_TO_sram_conduit_CE_N,                --                     .CE_N
			sram_conduit_OE_N                => CONNECTED_TO_sram_conduit_OE_N,                --                     .OE_N
			sram_conduit_WE_N                => CONNECTED_TO_sram_conduit_WE_N,                --                     .WE_N
			bridge_input_conduit_address     => CONNECTED_TO_bridge_input_conduit_address,     -- bridge_input_conduit.address
			bridge_input_conduit_byte_enable => CONNECTED_TO_bridge_input_conduit_byte_enable, --                     .byte_enable
			bridge_input_conduit_read        => CONNECTED_TO_bridge_input_conduit_read,        --                     .read
			bridge_input_conduit_write       => CONNECTED_TO_bridge_input_conduit_write,       --                     .write
			bridge_input_conduit_write_data  => CONNECTED_TO_bridge_input_conduit_write_data,  --                     .write_data
			bridge_input_conduit_acknowledge => CONNECTED_TO_bridge_input_conduit_acknowledge, --                     .acknowledge
			bridge_input_conduit_read_data   => CONNECTED_TO_bridge_input_conduit_read_data    --                     .read_data
		);

