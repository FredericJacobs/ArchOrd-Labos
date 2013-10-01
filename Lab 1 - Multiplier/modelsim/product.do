restart -f

force clk 0 0 ns, 1 10ns -repeat 20ns

force reset       1 0ns, 0 20ns  
force datain 16#AB# 0ns,            16#FA# 80ns
force load        0 0ns, 1 20ns, 0 40ns, 1 80ns, 0 100ns
force shift_right 0 0ns,         1 40ns, 0 80ns, 1 100ns


run 300ns