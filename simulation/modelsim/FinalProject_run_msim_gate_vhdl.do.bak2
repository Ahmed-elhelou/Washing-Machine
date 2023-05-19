transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/maxv
vmap maxv ./vhdl_libs/maxv
vcom -93 -work maxv {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/maxv_atoms.vhd}
vcom -93 -work maxv {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/maxv_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {FinalProject.vho}

