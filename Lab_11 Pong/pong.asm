
; + -------+--------------------+
; | 0x1000 | Ball position on x |
; | 0x1004 | Ball position on y |
; | 0x1008 | Ball velocity on x |
; | 0x100C | Ball velocity on y |
; | 0x1010 | Paddle 1 position  |
; | 0x1014 | Paddle 2 position  |
; | 0x1018 | Score of player 1  |
; | 0x101C | Score of player 2  |
; | 0x2000 | LED 1              |
; | 0x2004 | LED 2              |
; | 0x2008 | LED 3              |
; + -------+--------------------+

.equ BALL,      0x1000 ; Ball state
.equ PADDLES,   0x1010 ; Paddles positions
.equ SCORES,    0x1018 ; Scores
.equ LEDS,      0x2000 ; LEDs address
.equ BUTTONS,   0x2030 ; Buttons address

start:
    call clear_leds  ; clear_leds()
    ret

; Goal is to initialize all LEDs to 0
; The LED array has a size of 96 bits, or 3 words of 32 bits starting at 0x2000.
;
; Arguments:
; - None
;
; Return values:
; - None
clear_leds:
    stw zero, LEDS     (zero)
    stw zero, LEDS + 4 (zero)
    stw zero, LEDS + 8 (zero)
    ret

; The set_pixel procedure takes two coordinates as
; arguments and turns on the corresponding pixel on the display.
;
; Arguments:
; - a0: x coordinate of the pixel to turn on
; - a1: y coordinate of the pixel to turn on
;
; Return values:
; - None
set_pixel:
    andi t0, a0, 3         ; col = x % 4
    andi t1, a1, 7         ; row = y % 8
    add t2, zero, zero     ; bit = 0
    slli t2, t0, 3         ; bit = col * 8
    add t2, t2, t1         ; bit = bit + row
    srli t3, a0, 2         ; offset = x >> 2
    slli t3, t3, 2         ; offset = offset * 4
    addi t4, zero, 1       ; mask = 1
    sll t4, t4, t2         ; mask = mask << bit
    ldw t5, LEDS + 0(t3)   ; led = LEDS[offset]
    or t5, t5, t4          ; led = led | mask
    stw t5, LEDS + 0(t3)   ; LEDS[offset] = led
    ret

; The hit_test procedure checks whether or not the
; ball hits the table boundary. If it hits the table boundary,
; then it must modify the velocity vector to make the ball
; bounce on the border.
;
; Arguments:
; - None
;
; Return values:
; - None
hit_test:
    ldw t1, BALL      (zero)            ; ballX = ball's x position
    ldw t2, BALL + 4  (zero)            ; ballY = ball's y position
    ldw t3, BALL + 8  (zero)            ; velX = ball's x velocity
    ldw t4, BALL + 12 (zero)            ; velY = ball's y velocity

    check_y_pos:                        ; if(ballY == 0 || ballY == 7) goto invert_y_velocity
        beq t2, zero, invert_y_velocity
        addi t0, zero, 7
        blt t2, t0, check_x_pos

    invert_y_velocity:
        sub t4, zero, t3                ; velY = -velY

    check_x_pos:                        ; if(ballX == 0 || ballX == 11) goto invert_x_velocity
        beq t1, zero, invert_x_velocity
        addi t0, zero, 11
        blt t1, t0, update_velocity

    invert_x_velocity:
        sub t3, zero, t3                ; velX = -velX

    update_velocity:
        stw t3, BALL + 8  (zero)
        stw t4, BALL + 12 (zero)
        ret



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
