###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/m1/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/m1/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/m1/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/m2/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/m2/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/m2/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/m3/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/m3/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/m3/mem/mem -design rtl 



##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 

