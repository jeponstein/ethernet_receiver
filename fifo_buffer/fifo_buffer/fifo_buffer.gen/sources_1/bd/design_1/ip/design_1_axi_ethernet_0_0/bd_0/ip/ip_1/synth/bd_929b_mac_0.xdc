
# PART is zynq xc7z020clg400

############################################################
# Clock Period Constraints                                 #
############################################################

############################################################
# RX Clock period Constraints (per instance)               #
############################################################
# Receiver clock period constraints: please do not relax
create_clock -period 8 [get_ports gmii_rx_clk]

############################################################
# MII TX Clock period Constraints (per instance)               #
############################################################
create_clock -period 8 [get_ports mii_tx_clk]

#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS

############################################################
# Physical Interface Constraints
############################################################

############################################################
# External GMII Constraints                                #
############################################################

# GMII Transmitter/Receiver Constraints:  place flip-flops in IOB
set_property IOB TRUE  [get_cells {tri_mode_ethernet_mac_i/gmii_interface/gmii_txd*reg[*]}]
set_property IOB TRUE  [get_cells {tri_mode_ethernet_mac_i/gmii_interface/gmii_tx_e*reg}]
set_property IOB TRUE  [get_cells {tri_mode_ethernet_mac_i/gmii_interface/rx*_to_mac*reg}]
set_property IOB TRUE  [get_cells {tri_mode_ethernet_mac_i/gmii_interface/rx*_to_mac*reg[*]}]

############################################################
# The following are required to maximise setup/hold        #
############################################################

set_property SLEW FAST [get_ports {gmii_tx_en gmii_tx_er gmii_txd[7] gmii_txd[6] gmii_txd[5] gmii_txd[4] gmii_txd[3] gmii_txd[2] gmii_txd[1] gmii_txd[0]}]
set_property SLEW FAST [get_ports {gmii_tx_clk}]


############################################################
# GMII: IODELAY Constraints
############################################################
# Please modify the value of the IDELAY_VALUE
# according to your design.
# For more information on IDELAYCTRL and IODELAY, please
# refer to the Series-7 User Guide.
# apply the same IDELAY_VALUE to all GMII RX inputs
set_property IDELAY_VALUE 28 [get_cells {tri_mode_ethernet_mac_i/gmii_interface/delay_gmii_rx* tri_mode_ethernet_mac_i/gmii_interface/rxdata_bus[*].delay_gmii_rxd}]


# Group IODELAY components
set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp [get_cells {tri_mode_ethernet_mac_i/gmii_interface/delay_gmii_rx* tri_mode_ethernet_mac_i/gmii_interface/rxdata_bus[*].delay_gmii_rxd}]
set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp [get_cells  {tri_mode_ethernet_mac_idelayctrl_common_i}]


#
####
#######
##########
#############
#################
#CORE CONSTRAINTS



############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################

# control signal is synced separately so we want a max delay to ensure the signal has settled by the time the control signal has passed through the synch
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/flow/tx_pause/count_set*reg}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/flow/tx_pause/pause_count*reg[*]}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/flow/rx_pause/pause_req_to_tx_int_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/flow/tx_pause/sync_good_rx/data_sync_reg0}] 6 -datapath_only


# ignore paths from the speed control
set_false_path -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/speed*speed_is*100_reg}] -to [get_cells {tri_mode_ethernet_mac_i/clock_inst/BUFGMUX_SPEED_CLK}]
set_false_path -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/speed*speed_is*100_reg}] -to [get_cells {tri_mode_ethernet_mac_i/*xspeedis10100gen/data_sync_reg0}]

# set a false path for the clock path from the address filter dist rams
# the paths we care about timing are either the write interface OR the read interface
# this path is from the write to the read which should be ignored
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *tri_mode_ethernet_mac_i/bd_929b_mac_0_core/addr_filter_top/address_filter_inst/*/DP}] -to  [get_cells -hierarchical -filter {NAME =~ *tri_mode_ethernet_mac_i/bd_929b_mac_0_core/addr_filter_top/address_filter_inst/*addr*/bit_match*reg[*]}]

# false path due to synced control path
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/rd_data_ref_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/ip2bus_data_reg[*]}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/response_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/sync_response/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/request_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/sync_request/data_sync_reg0}] 6 -datapath_only
# CDC from the Tx and Rx statistics to the statistic counter logic
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[18]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[18].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[19]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[19].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[20]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[20].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[21]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[21].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[22]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[22].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[23]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[23].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[24]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[24].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[25]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[25].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[26]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/general_statisic_control[26].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only

set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[4]}]  -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/frame_size_bin_control1[4].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[5]}]  -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/frame_size_bin_control1[5].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[6]}]  -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/frame_size_bin_control1[6].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[7]}]  -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/frame_size_bin_control1[7].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[8]}]  -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/frame_size_bin_control1[8].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[9]}]  -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/frame_size_bin_control1[9].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/vector_decode_inst/inc_vector_reg[10]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/frame_size_bin_control1[10].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only

set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/rx_byte_counter/accumulator_gray_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/rx_byte_counter/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/rx_undersized_counter/accumulator_gray_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/rx_undersized_counter/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/rx_fragment_counter/accumulator_gray_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*statistics_counters/rx_fragment_counter*/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only


############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ CLR} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/reset_sync.*}]]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/addr_filter_top/addr_regs.promiscuous_mode_reg_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/addr_filter_top/addr_regs.filter_enable_reg_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/addr_filter_top/address_filter_inst/address_filters[*].sync_enable/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/conf/update_pause_ad_int_reg}] -to [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/addr_filter_top/address_filter_inst/sync_update/data_sync_reg0}] 6 -datapath_only

# the mdio interface is clocked from the axi clock but the clock is so slow it can be considered to be data
# the data related outputs are output on the falling edge of the MDC output so both can simply be considered to be multicycle paths
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_o]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_o]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_t]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_i/bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_t]
# mdio has timing implications but slow interface so relaxed
set_false_path  -to [get_cells -hier -filter {NAME =~ *managen/mdio_enabled.phy/mdio_in_reg1_reg}]

############################################################
# CDC Waivers
############################################################

create_waiver -internal -scope -quiet -type CDC -id {CDC-4} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */int_rx_pause_ad_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */tx/pause_source_shift_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "This data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */bus2ip_addr_*_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/ipic_rd_clear_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_crc_mode_wr_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_CRC_MODE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_ENABLE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_jumbo_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_JUMBO_ENABLE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_vlan_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_VLAN_ENABLE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */rx_pause/pause_value_to_tx_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */tx_pause/count_set_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "This data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored." -from [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/rd_data_ref_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/ip2bus_data_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/mdio_enabled.miim_clk_int_reg*}] -filter {name =~ *Q}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */sync_stats_reset/sync_rst1_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */SYNC_STATS_RESET/async_rst0_reg*}] -filter {name =~ *PRE}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */rxgen/ENABLE_REG_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_pause_ad_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */address_filter_inst/load_wr_data_reg[*]*}] -filter {name =~ *D}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Safe to ignore. This data-bus is read-date port of the LUT based RAM whose read address is generated in the destination clock domain" -from [get_pins -of [get_cells -hier -filter {name =~ */byte_wide_ram[*].header_*_dist_ram/DP*}] -filter {name =~ *CLK}] -to [get_pins -of [get_cells -hier -filter {name =~ */bit_match_gen[*].bit_match_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */*_speed_reg[1]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */data_sync_reg0*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_speed_reg[1]*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */alignment_err_reg_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */rx_dv_reg3_reg*}] -filter {name =~ *D}] ]

create_waiver -internal -scope -quiet -type CDC -id {CDC-12} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_speed_reg[1]*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */*_tx_e*_to_phy_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */*_txd_to_phy_reg[*]*}] -filter {name =~ *D}] ]

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Combi logic will be not result in glitched and thus safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_speed_reg[1]*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */*_tx_e*_to_phy_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */*_txd_to_phy_reg[*]*}] -filter {name =~ *D}] ]

create_waiver -internal -scope -quiet -type CDC -id {CDC-13} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored3" -from [get_pins -of [get_cells -hier -filter {name =~ */speed_host.speed_is_10_100_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */clock_inst/BUFGMUX_SPEED_CLK*}] -filter {name =~ *CE*}]

create_waiver -internal -scope -quiet -type METHODOLOGY -id {TIMING-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "The core has 2 clock domains which can be asynchronous to each other, so we have CDC logic and appropriate XDC maxdelay/false_path constraints between them.  However, in this permutation these two clocks are wired to the same clock source, and we get the TIMING 11 warning (note that it can depend upon how the customer wires up the core, so this warning should be suppressed in the tools for IP cores)" -objects [get_pins  -of [get_cells -hier -filter {name =~ */rd_data_*_reg[*]*}] -filter {name =~ *C}] -objects [get_pins -of [get_cells -hier -filter {name =~ */ip2bus_data_reg[*]*}] -filter {name =~ *D}]


