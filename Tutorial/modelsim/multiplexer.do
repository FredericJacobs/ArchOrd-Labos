restart -f

force I0 16#FF# 0ns, 16#AA# 10ns, 16#CE# 20ns, 16#01# 30ns
force I1 16#AF# 0ns, 16#01# 10ns, 16#A0# 20ns, 16#FF# 30ns
force I2 16#DE# 0ns, 16#FF# 10ns, 16#10# 20ns, 16#DA# 30ns
force I3 16#C1# 0ns, 16#1D# 10ns, 16#AB# 20ns, 16#9C# 30ns
force sel 00 0ns, 01 10ns, 10 20ns, 11 30ns

run 200ns