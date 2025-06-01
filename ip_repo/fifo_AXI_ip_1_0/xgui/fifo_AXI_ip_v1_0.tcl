# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  set BUFFER_DEPTH_SET [ipgui::add_param $IPINST -name "BUFFER_DEPTH_SET"]
  set_property tooltip {Depth of the buffer. Needs to be a power of 2} ${BUFFER_DEPTH_SET}
  ipgui::add_param $IPINST -name "UTILIZE_SPITTER"
  ipgui::add_param $IPINST -name "DEBUG_ENABLED"

}

proc update_PARAM_VALUE.BUFFER_DEPTH_SET { PARAM_VALUE.BUFFER_DEPTH_SET } {
	# Procedure called to update BUFFER_DEPTH_SET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFER_DEPTH_SET { PARAM_VALUE.BUFFER_DEPTH_SET } {
	# Procedure called to validate BUFFER_DEPTH_SET
	return true
}

proc update_PARAM_VALUE.DEBUG_ENABLED { PARAM_VALUE.DEBUG_ENABLED } {
	# Procedure called to update DEBUG_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG_ENABLED { PARAM_VALUE.DEBUG_ENABLED } {
	# Procedure called to validate DEBUG_ENABLED
	return true
}

proc update_PARAM_VALUE.UTILIZE_SPITTER { PARAM_VALUE.UTILIZE_SPITTER } {
	# Procedure called to update UTILIZE_SPITTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UTILIZE_SPITTER { PARAM_VALUE.UTILIZE_SPITTER } {
	# Procedure called to validate UTILIZE_SPITTER
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.BUFFER_DEPTH_SET { MODELPARAM_VALUE.BUFFER_DEPTH_SET PARAM_VALUE.BUFFER_DEPTH_SET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_DEPTH_SET}] ${MODELPARAM_VALUE.BUFFER_DEPTH_SET}
}

proc update_MODELPARAM_VALUE.UTILIZE_SPITTER { MODELPARAM_VALUE.UTILIZE_SPITTER PARAM_VALUE.UTILIZE_SPITTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UTILIZE_SPITTER}] ${MODELPARAM_VALUE.UTILIZE_SPITTER}
}

proc update_MODELPARAM_VALUE.DEBUG_ENABLED { MODELPARAM_VALUE.DEBUG_ENABLED PARAM_VALUE.DEBUG_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEBUG_ENABLED}] ${MODELPARAM_VALUE.DEBUG_ENABLED}
}

