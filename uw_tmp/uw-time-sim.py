#------------------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#------------------------------------------------------------------------
# compile source files

# xsys( "vcom -93 +acc -work work-msim  kirsch_chip.vho string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

xsys( "uw-msim-com  kirsch_chip.vho string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

#------------------------------------------------------------------------
# run simulation
xsys( "vsim -lib work-msim   -sdfmax uut/chip=kirsch_chip.sdo -wlf uw_tmp/vsim.wlf -do uw_tmp/uw-sim.tcl kirsch_tb")
