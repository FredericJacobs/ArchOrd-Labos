.equ BALL, 0x1000 ; ball state 
.equ PADDLES, 0x1010 ; paddles pos 
.equ SCORES, 0x1018 ; scores
.equ LEDS, 0x2000 ; LEDs address 
.equ BUTTONS, 0x2030 ; Buttons address

clear_leds:
;Goal is to initialize all LEDs to 0
;The LED array has a size of 96 bits, or 3 words of 32 bits starting at 0x2000.
stw zero, LEDS(zero)
stw zero, LEDS+8 (zero)
stw zero, LEDS+16 (zero)

setPixel: 
;The set_pixel procedure takes two coordinates as arguments and turns on the corresponding pixel on the display.

;a0 = x coordinate of the pixel
;a1 = y coordinate of the pixel

add t0, a0, zero;
andi t1, a1, 

font_data:
.word 0x7E427E00 ; 0 
.word 0x407E4400 ; 1 
.word 0x4E4A7A00 ; 2 
.word 0x7E4A4200 ; 3 
.word 0x7E080E00 ; 4 
.word 0x7A4A4E00 ; 5 
.word 0x7A4A7E00 ; 6 
.word 0x7E020600 ; 7 
.word 0x7E4A7E00 ; 8 
.word 0x7E4A4E00 ; 9 
.word 0x7E127E00 ; A 
.word 0x344A7E00 ; B 
.word 0x42423C00 ; C 
.word 0x3C427E00 ; D 
.word 0x424A7E00 ; E 
.word 0x020A7E00 ; F

￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼