set_results_dir uw_tmp
setup_design \
  -manufacturer Altera \
  -family {Cyclone II} \
  -part EP2C35F672C \
  -speed 7 
setup_design -frequency 250
setup_design -design top_kirsch
if { {main} != {} } {
  setup_design -architecture main
  echo "USING DESIGN ARCH"
}
setup_design -generics {  }
# setup_design -2004c_compile_mode  !!MDA: breaks when run quartus



# add_input_file -search_path $VHDL_PATH
# add_input_file [list [concat {  } { mem.vhd kirsch_synth_pkg.vhd kirsch.vhd lib_kirsch.vhd top_kirsch.vhd }] ]
foreach file [concat {  } { mem.vhd kirsch_synth_pkg.vhd kirsch.vhd lib_kirsch.vhd top_kirsch.vhd }] {
  add_input_file $file
}  

compile


set clocks [ find_clocks ] 
if { [ llength $clocks ] != 0 } { 
  set clock [ lindex $clocks 0 ] 
  set_input_delay 0 [ all_inputs ] -clock $clock
  set_output_delay 0 [ all_outputs ] -clock $clock
}

auto_write top_kirsch_gate.vho
synthesize
auto_write top_kirsch_logic.vho
# below needed for vgencomp_to_arch
auto_write top_kirsch_logic.v 
report_area -hierarchy top_kirsch_area.txt
if { [ llength $clocks ] != 0 } { 
  report_timing top_kirsch_speed.txt \
    -summary -num_paths 20 -clock_frequency
}

puts "*** logic synthesis succeeded ***"

if { "-shell" == " -shell" } {
  exit
}
