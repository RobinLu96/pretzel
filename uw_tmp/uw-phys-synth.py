# import shutil

#--------------------------------------------------------------

my_chdir("./uw_tmp")

# my_rm( ["LOG"] )
# 
# my_mv( "../LOG",  "LOG" )

xsys("quartus_sh -t uw-phys-synth.tcl top_kirsch")

xsys("quartus_sh -t /home/ece327/lib/pins-DE2.tcl top_kirsch")

# not using mif files (memory initialization)
# my_cp_nofail( "../*.mif", "." )

my_print("map... ")
xsys( "quartus_map top_kirsch --source top_kirsch_logic.edf --family=CycloneII")

my_print("fit... ")
xsys( "quartus_fit top_kirsch --effort=fast --part=EP2C35F672C7")

my_print("tan... ")
# xsys( "quartus_tan top_kirsch" )
xsys( "quartus_sta -t /home/ece327/skel/timing-quartus.tcl top_kirsch" )

my_print( "asm... ")
xsys( "quartus_asm top_kirsch" )

my_println( "eda..." )
xsys( "quartus_eda top_kirsch --simulation --tool=modelsim --format=vhdl")
xsys( "quartus_eda top_kirsch --simulation --tool=modelsim --format=verilog")

# my_mv( "LOG", "../LOG" )
my_chdir( ".." )

my_mv( "uw_tmp/simulation/modelsim/top_kirsch.vo"       , "top_kirsch_chip.v" )
my_mv( "uw_tmp/simulation/modelsim/top_kirsch.vho"       , "top_kirsch_chip.vho" )
my_mv( "uw_tmp/simulation/modelsim/top_kirsch_vhd.sdo" , "top_kirsch_chip.sdo" )
my_mv( "uw_tmp/top_kirsch.sof" , "top_kirsch.sof" )

# my_cp( "uw_tmp/top_kirsch.map.rpt"      , "top_kirsch.map.rpt" )
# my_cp( "uw_tmp/top_kirsch.tan.rpt"      , "top_kirsch.tan.rpt" )
# my_cp( "uw_tmp/top_kirsch.sof"          , "top_kirsch.sof" )

#------------------------------------------------------------------------
# generate no_generics architecture

#--------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#--------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#--------------------------------------------------------------
#

# get synthesized entity (std_logic vector and no generics)
xsys( "vlog -novopt -work work-msim top_kirsch_logic.v")

# fix up _chip.vho file
vgencomp_to_arch( "top_kirsch", "chip", [ "mem.vhd", "kirsch_synth_pkg.vhd", "kirsch.vhd", "lib_kirsch.vhd", "top_kirsch.vhd" ] )