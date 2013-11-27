.equ BALL, 0x1000 ; ball state 
.equ PADDLES, 0x1010 ; paddles pos 
.equ SCORES, 0x1018 ; scores
.equ LEDS, 0x2000 ; LEDs address 
.equ BUTTONS, 0x2030 ; Buttons address

clear_leds: Goal is to initialize all LEDs to 0
;The LED array has a size of 96 bits, or 3 words of 32 bits.
stw zero, LEDS(zero)
stw zero, LEDS+8 (zero)
stw zero, LEDS+16 (zero)

setPixel: The set_pixel procedure takes two coordinates as arguments and turns on the corresponding pixel on the display.
