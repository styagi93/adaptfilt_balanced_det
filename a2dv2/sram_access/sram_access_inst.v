	sram_access u0 (
		.bridge_input_conduit_address     (<connected-to-bridge_input_conduit_address>),     // bridge_input_conduit.address
		.bridge_input_conduit_byte_enable (<connected-to-bridge_input_conduit_byte_enable>), //                     .byte_enable
		.bridge_input_conduit_read        (<connected-to-bridge_input_conduit_read>),        //                     .read
		.bridge_input_conduit_write       (<connected-to-bridge_input_conduit_write>),       //                     .write
		.bridge_input_conduit_write_data  (<connected-to-bridge_input_conduit_write_data>),  //                     .write_data
		.bridge_input_conduit_acknowledge (<connected-to-bridge_input_conduit_acknowledge>), //                     .acknowledge
		.bridge_input_conduit_read_data   (<connected-to-bridge_input_conduit_read_data>),   //                     .read_data
		.clk_clk                          (<connected-to-clk_clk>),                          //                  clk.clk
		.sram_conduit_DQ                  (<connected-to-sram_conduit_DQ>),                  //         sram_conduit.DQ
		.sram_conduit_ADDR                (<connected-to-sram_conduit_ADDR>),                //                     .ADDR
		.sram_conduit_LB_N                (<connected-to-sram_conduit_LB_N>),                //                     .LB_N
		.sram_conduit_UB_N                (<connected-to-sram_conduit_UB_N>),                //                     .UB_N
		.sram_conduit_CE_N                (<connected-to-sram_conduit_CE_N>),                //                     .CE_N
		.sram_conduit_OE_N                (<connected-to-sram_conduit_OE_N>),                //                     .OE_N
		.sram_conduit_WE_N                (<connected-to-sram_conduit_WE_N>)                 //                     .WE_N
	);

