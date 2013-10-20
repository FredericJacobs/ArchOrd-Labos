restart -f

force A 16#AA#
force B 16#55#
run 20 ns

force A 16#FF# 
force B 16#01#
run 20 ns

force A 16#03# 
force B 16#05#
run 20 ns