.equ BALL, 0x1000 ; ball state 
.equ PADDLES, 0x1010 ; paddles pos 
.equ SCORES, 0x1018 ; scores
.equ LEDS, 0x2000 ; LEDs address 
.equ BUTTONS, 0x2030 ; Buttons address

clear_leds: Goal is to initialize all LEDs to 0
stw zero, LEDS(zero)

setPixel: The set_pixel procedure takes two coordinates as arguments and turns on the corresponding pixel on the display.
