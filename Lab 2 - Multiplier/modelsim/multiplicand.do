restart -f

force clk 0 0 ns, 1 10 ns -repeat 20 ns

force datain 16#DF# 0 ns, 16#A5# 80 ns
force load 0 0 ns, 1 20 ns, 0 40 ns, 1 80 ns

run 120ns