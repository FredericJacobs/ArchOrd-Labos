restart -f

force clk 0 0 ns, 1 10ns -repeat 20ns

force datain  16#5A# 0ns,            16#0F# 80ns
force load         0 0ns, 1 20ns, 0 40ns, 1 80ns, 0 100ns
force shift_right  0 0ns,         1 40ns

run 200ns