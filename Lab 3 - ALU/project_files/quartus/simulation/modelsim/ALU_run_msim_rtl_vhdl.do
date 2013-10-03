transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Y:/BA3/ArchOrd/3_ALU/vhdl/add_sub.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/3_ALU/vhdl/comparator.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/3_ALU/vhdl/logic_unit.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/3_ALU/vhdl/multiplexer.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/3_ALU/vhdl/shift_unit.vhd}

