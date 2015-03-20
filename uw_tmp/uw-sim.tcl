source Y://lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim uw_tmp/kirsch_chip.v uw_tmp/kirsch_chip.vhd string_pkg.vhd kirsch_synth_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd
}

if { "kirsch_tb.sim" ne "" } {
  source kirsch_tb.sim
}

