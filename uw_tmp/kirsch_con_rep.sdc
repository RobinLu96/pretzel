###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default m1/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance m1/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default m1/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default m2/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default m2/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance m2/mem/mem -design rtl 


set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default m3/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance m3/mem/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default m3/mem/mem -design rtl 



##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 

