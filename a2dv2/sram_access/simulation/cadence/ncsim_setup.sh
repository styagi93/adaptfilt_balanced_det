
# (C) 2001-2017 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 16.0 211 win32 2017.09.08.03:38:15

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     sram_access
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify USER_DEFINED_COMPILE_OPTIONS.
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If sram_access is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 16.0 211 win32 2017.09.08.03:38:15
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="sram_access"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/altera_lite/16.0/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/jtag_master_master_rsp_width_adapter/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/sram_avalon_sram_slave_burst_adapter/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router/
mkdir -p ./libraries/sram_avalon_sram_slave_agent/
mkdir -p ./libraries/bridge_avalon_master_agent/
mkdir -p ./libraries/sram_avalon_sram_slave_translator/
mkdir -p ./libraries/bridge_avalon_master_translator/
mkdir -p ./libraries/p2b_adapter/
mkdir -p ./libraries/b2p_adapter/
mkdir -p ./libraries/transacto/
mkdir -p ./libraries/p2b/
mkdir -p ./libraries/b2p/
mkdir -p ./libraries/fifo/
mkdir -p ./libraries/timing_adt/
mkdir -p ./libraries/jtag_phy_embedded_in_jtag_master/
mkdir -p ./libraries/reset_from_locked/
mkdir -p ./libraries/video_pll/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/video_vga_controller/
mkdir -p ./libraries/video_rgb_resampler/
mkdir -p ./libraries/video_pixel_buffer_dma/
mkdir -p ./libraries/video_dual_clock_buffer/
mkdir -p ./libraries/sram/
mkdir -p ./libraries/jtag_master/
mkdir -p ./libraries/bridge/
mkdir -p ./libraries/VGA_clock/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneive_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work error_adapter_0                      -cdslib ./cds_libs/error_adapter_0.cds.lib                     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_avalon_st_adapter.v"                  -work avalon_st_adapter                    -cdslib ./cds_libs/avalon_st_adapter.cds.lib                   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                     -work jtag_master_master_rsp_width_adapter -cdslib ./cds_libs/jtag_master_master_rsp_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                 -work jtag_master_master_rsp_width_adapter -cdslib ./cds_libs/jtag_master_master_rsp_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work jtag_master_master_rsp_width_adapter -cdslib ./cds_libs/jtag_master_master_rsp_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_rsp_mux.sv"                           -work rsp_mux                              -cdslib ./cds_libs/rsp_mux.cds.lib                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work rsp_mux                              -cdslib ./cds_libs/rsp_mux.cds.lib                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_rsp_demux.sv"                         -work rsp_demux                            -cdslib ./cds_libs/rsp_demux.cds.lib                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_cmd_mux.sv"                           -work cmd_mux                              -cdslib ./cds_libs/cmd_mux.cds.lib                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work cmd_mux                              -cdslib ./cds_libs/cmd_mux.cds.lib                             
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_cmd_demux.sv"                         -work cmd_demux                            -cdslib ./cds_libs/cmd_demux.cds.lib                           
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                     -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                              -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                 -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                     -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                     -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                  -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                 -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                 -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work sram_avalon_sram_slave_burst_adapter -cdslib ./cds_libs/sram_avalon_sram_slave_burst_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_router_003.sv"                        -work router_003                           -cdslib ./cds_libs/router_003.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_router_002.sv"                        -work router_002                           -cdslib ./cds_libs/router_002.cds.lib                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0_router.sv"                            -work router                               -cdslib ./cds_libs/router.cds.lib                              
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                       -work sram_avalon_sram_slave_agent         -cdslib ./cds_libs/sram_avalon_sram_slave_agent.cds.lib        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work sram_avalon_sram_slave_agent         -cdslib ./cds_libs/sram_avalon_sram_slave_agent.cds.lib        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                      -work bridge_avalon_master_agent           -cdslib ./cds_libs/bridge_avalon_master_agent.cds.lib          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                  -work sram_avalon_sram_slave_translator    -cdslib ./cds_libs/sram_avalon_sram_slave_translator.cds.lib   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                 -work bridge_avalon_master_translator      -cdslib ./cds_libs/bridge_avalon_master_translator.cds.lib     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_jtag_master_p2b_adapter.sv"                             -work p2b_adapter                          -cdslib ./cds_libs/p2b_adapter.cds.lib                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_jtag_master_b2p_adapter.sv"                             -work b2p_adapter                          -cdslib ./cds_libs/b2p_adapter.cds.lib                         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v"                                  -work transacto                            -cdslib ./cds_libs/transacto.cds.lib                           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v"                                -work p2b                                  -cdslib ./cds_libs/p2b.cds.lib                                 
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v"                                -work b2p                                  -cdslib ./cds_libs/b2p.cds.lib                                 
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                            -work fifo                                 -cdslib ./cds_libs/fifo.cds.lib                                
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/sram_access_jtag_master_timing_adt.sv"                              -work timing_adt                           -cdslib ./cds_libs/timing_adt.cds.lib                          
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"                                  -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                                         -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                                             -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                                            -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                   -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                    -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"                                    -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"                                   -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                 -work jtag_phy_embedded_in_jtag_master     -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v"                        -work reset_from_locked                    -cdslib ./cds_libs/reset_from_locked.cds.lib                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_up_altpll.v"                                                 -work video_pll                            -cdslib ./cds_libs/video_pll.cds.lib                           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                          -work rst_controller                       -cdslib ./cds_libs/rst_controller.cds.lib                      
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                        -work rst_controller                       -cdslib ./cds_libs/rst_controller.cds.lib                      
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_mm_interconnect_0.v"                                    -work mm_interconnect_0                    -cdslib ./cds_libs/mm_interconnect_0.cds.lib                   
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                                -work video_vga_controller                 -cdslib ./cds_libs/video_vga_controller.cds.lib                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_video_vga_controller.v"                                 -work video_vga_controller                 -cdslib ./cds_libs/video_vga_controller.cds.lib                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_video_rgb_resampler.v"                                  -work video_rgb_resampler                  -cdslib ./cds_libs/video_rgb_resampler.cds.lib                 
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_video_pixel_buffer_dma.v"                               -work video_pixel_buffer_dma               -cdslib ./cds_libs/video_pixel_buffer_dma.cds.lib              
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_video_dual_clock_buffer.v"                              -work video_dual_clock_buffer              -cdslib ./cds_libs/video_dual_clock_buffer.cds.lib             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_sram.v"                                                 -work sram                                 -cdslib ./cds_libs/sram.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_jtag_master.v"                                          -work jtag_master                          -cdslib ./cds_libs/jtag_master.cds.lib                         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_bridge.v"                                               -work bridge                               -cdslib ./cds_libs/bridge.cds.lib                              
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/sram_access_VGA_clock.v"                                            -work VGA_clock                            -cdslib ./cds_libs/VGA_clock.cds.lib                           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/sram_access.v"                                                                                                                                                                           
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
