transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {//vmware-host/Shared Folders/Desktop/ArchOrd-Labos/Lab 3 - ALU/project_files/vhdl/add_sub.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/Desktop/ArchOrd-Labos/Lab 3 - ALU/project_files/vhdl/comparator.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/Desktop/ArchOrd-Labos/Lab 3 - ALU/project_files/vhdl/logic_unit.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/Desktop/ArchOrd-Labos/Lab 3 - ALU/project_files/vhdl/multiplexer.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/Desktop/ArchOrd-Labos/Lab 3 - ALU/project_files/vhdl/shift_unit.vhd}

