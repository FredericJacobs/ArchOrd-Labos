restart -f

force clk 0 0ns, 1 10ns -repeat 20ns

force A  16#03# 0ns
force B  16#F5# 0ns
force start_n 1 0ns, 0 40ns, 1 60ns
force reset_n 0 0ns, 1 20ns

run 500ns