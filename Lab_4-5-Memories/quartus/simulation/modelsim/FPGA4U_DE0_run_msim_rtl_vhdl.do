transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Y:/BA3/ArchOrd/4_Memories/quartus/rgb_led96.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/4_Memories/vhdl/Controller.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/4_Memories/vhdl/decoder.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/4_Memories/vhdl/LEDs.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/4_Memories/vhdl/RAM.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/4_Memories/vhdl/ROM.vhd}
vcom -93 -work work {Y:/BA3/ArchOrd/4_Memories/vhdl/ROM_Block.vhd}

