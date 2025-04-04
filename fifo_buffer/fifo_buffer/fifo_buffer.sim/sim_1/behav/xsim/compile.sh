#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Tue Mar 25 16:14:20 CET 2025
# SW Build 5239630 on Fri Nov 08 22:34:34 MST 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail

# resolve compiled library path in xsim.ini
export RDI_DATADIR="/home/jesperp/.var/app/com.github.corna.Vivado/data/xilinx-install/Vivado/2024.2/data"

# compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -prj fifo_buffer_tb_vlog.prj"
xvlog --incr --relax -prj fifo_buffer_tb_vlog.prj 2>&1 | tee compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."
