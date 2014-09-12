
# (C) 2001-2013 Altera Corporation. All rights reserved.
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

# ACDS 13.1 162 win32 2013.12.13.14:53:02

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="audio_nios"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/13.1/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
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
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/audio_nios_cpu_rf_ram_b.mif ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  $QSYS_SIMDIR/submodules/audio_nios_i2c_sda.v \
  $QSYS_SIMDIR/submodules/audio_nios_i2c_scl.v \
  $QSYS_SIMDIR/submodules/audio_nios_pio_led.v \
  $QSYS_SIMDIR/submodules/audio_nios_key.v \
  $QSYS_SIMDIR/submodules/audio_nios_jtag_uart.v \
  $QSYS_SIMDIR/submodules/audio_nios_cpu.vo \
  $QSYS_SIMDIR/submodules/audio_nios_cpu_jtag_debug_module_sysclk.v \
  $QSYS_SIMDIR/submodules/audio_nios_cpu_jtag_debug_module_tck.v \
  $QSYS_SIMDIR/submodules/audio_nios_cpu_jtag_debug_module_wrapper.v \
  $QSYS_SIMDIR/submodules/audio_nios_cpu_mult_cell.v \
  $QSYS_SIMDIR/submodules/audio_nios_cpu_oci_test_bench.v \
  $QSYS_SIMDIR/submodules/audio_nios_cpu_test_bench.v \
  $QSYS_SIMDIR/submodules/altera_avalon_mm_clock_crossing_bridge.v \
  $QSYS_SIMDIR/submodules/altera_avalon_dc_fifo.v \
  $QSYS_SIMDIR/submodules/altera_dcfifo_synchronizer_bundle.v \
  $QSYS_SIMDIR/audio_nios.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
