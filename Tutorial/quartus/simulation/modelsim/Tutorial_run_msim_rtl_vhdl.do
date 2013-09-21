transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/ArchOrd/Tutorial/VHDL/multiplexer.vhd}
vcom -93 -work work {Z:/ArchOrd/Tutorial/VHDL/counter.vhd}
vcom -93 -work work {Z:/ArchOrd/Tutorial/VHDL/alu.vhd}
vcom -93 -work work {Z:/ArchOrd/Tutorial/VHDL/ExtLED.vhd}

