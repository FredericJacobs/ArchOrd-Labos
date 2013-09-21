 restart -f
 
 force clk 0 0ns, 1 10ns -repeat 20ns
 force clk_en 1 0ns
 force reset_n 0 0ns, 1 20ns
 
 run 200ns