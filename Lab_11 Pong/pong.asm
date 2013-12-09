
; + -------+---------------------+
; | 0x1000 | Ball position on x  |
; | 0x1004 | Ball position on y  |
; | 0x1008 | Ball velocity on x  |
; | 0x100C | Ball velocity on y  |
; | 0x1010 | Paddle 1 y position |
; | 0x1014 | Paddle 2 y position |
; | 0x1018 | Score of player 1   |
; | 0x101C | Score of player 2   |
; | 0x2000 | LED 1               |
; | 0x2004 | LED 2               |
; | 0x2008 | LED 3               |
; + -------+---------------------+

.equ BALL,      0x1000 ; Ball state
.equ PADDLES,   0x1010 ; Paddles positions
.equ SCORES,    0x1018 ; Scores
.equ LEDS,      0x2000 ; LEDs address
.equ BUTTONS,   0x2030 ; Buttons address

.equ MEMORY_TOP, 0x1FF0 ; Top of the RAM

main:

    ; set the stack pointer at the top of RAM
    addi sp, zero, MEMORY_TOP

    new_round:

        call clear_leds
        call display_score

        call wait
        call wait
        call wait
        call wait

        ; place ball at (4,6)
        addi t0, zero, 4
        addi t1, zero, 6
        stw t0, BALL     (zero)
        stw t1, BALL + 4 (zero)

        ; set velocity to (1, 1)
        addi t0, zero, 1
        addi t1, zero, 1
        stw t0, BALL + 8  (zero)
        stw t1, BALL + 12 (zero)

        ; set paddle 1 to X = 2
        addi t0, zero, 2
        stw t0, PADDLES (zero)

        ; set paddle 2 to X = 2
        addi t0, zero, 2
        stw t0, PADDLES + 4(zero)

    game_loop:

        call display_game               ; display_game()
        call wait

        call move_ball                  ; move_ball()
        call move_paddles               ; move_paddles()

        call hit_test                   ; hit_test()

        beq v0, zero, game_loop_next    ; if(v0 == 0) goto game_loop_next
        addi t3, v0, -1                 ; t3 = v0 - 1
        slli t3, t3, 2                  ; t3 = v0 * 4
        ldw t4, SCORES + 0(t3)          ; t4 = SCORES[t3]
        addi t4, t4, 1                  ; t4 += 1
        stw t4, SCORES + 0(t3)          ; SCORES[t3] = t4

        br new_round                    ; goto new_round()

    game_loop_next:
        br game_loop                    ; goto game_loop

; This procedure slows down the program's execution speed,
; in order to make the game playabe on the FPGA.
wait:
    addi t0, zero, 0xFFFF

    wait_loop:
        addi t0, t0, -1
        bne t0, zero, wait_loop

    ret

; Display the game
;
; Arguments
; - None
;
; Return values
; - None
display_game:
    addi sp, sp, -4
    stw ra, 0(sp)

    call clear_leds   ; clear_leds()
    call draw_ball    ; draw_ball()
    call draw_paddles ; draw_paddles()

    ldw ra, 0(sp)
    addi sp, sp, 4
    ret


; Draw the ball at its current location
;
; Arguments
; - None
;
; Return values
; - None
draw_ball:
    addi sp, sp, -4
    stw ra, 0(sp)          ; save the return address

    ldw a0, BALL      (zero) ; a0 = ball's x position
    ldw a1, BALL + 4  (zero) ; a1 = ball's y position
    call set_pixel           ; set_pixel(a0, a1)

    ldw ra, 0(sp)
    addi sp, sp, 4
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
; Arguments
; - None
;
; Return values
; - v0: The winner’s ID, if there is any; otherwise 0
hit_test:
    ldw t1, BALL      (zero)            ; ballX = ball's x position
    ldw t2, BALL + 4  (zero)            ; ballY = ball's y position
    ldw t3, BALL + 8  (zero)            ; velX = ball's x velocity
    ldw t4, BALL + 12 (zero)            ; velY = ball's y velocity

    check_x_pos:                        ; if(ballX == 0 || ballX == 11) goto invert_x_velocity
        beq t1, zero, invert_x_velocity
        addi t0, zero, 11
        blt t1, t0, check_y_pos_1

    invert_x_velocity:
        sub t3, zero, t3                ; velX = -velX

    check_y_pos_1:
        bne t2, zero, check_y_pos_2     ; if(ballY != 0) goto check_y_pos_2
        ldw t7, PADDLES (zero)          ; paddleY = paddle 1 position
        blt t1, t7, winner_2            ; if(ballX < paddle1X) goto winner_2
        addi t7, t7, 4
        bge t1, t7, winner_2            ; if(ballX > paddle1X + 3) goto winner_2
        br invert_y_velocity

    check_y_pos_2:
        addi t0, zero, 7
        blt t2, t0, update_velocity     ; if(ballY != 7) goto update_velocity
        ldw t7, PADDLES + 4 (zero)      ; paddle2X = paddle 2 position
        blt t1, t7, winner_1            ; if(ballX < paddle2X) goto winner_1
        addi t7, t7, 4
        bge t1, t7, winner_1            ; if(ballX > paddle2X + 3) goto winner_1
        br invert_y_velocity

    invert_y_velocity:
        sub t4, zero, t4                ; velY = -velY
        br update_velocity

    winner_1:
        addi v0, zero, 1
        br update_velocity

    winner_2:
        addi v0, zero, 2

    update_velocity:
        stw t3, BALL + 8  (zero)
        stw t4, BALL + 12 (zero)
        ret

; The move_ball procedure moves the ball depending on its velocity vector.
; It computes the next posi- tion of the ball by adding the velocity vector
; to the current position vector of the ball.
;
; Arguments:
; - None
;
; Return values:
; - None
move_ball:
    ldw t1, BALL      (zero) ; ballX = ball's x position
    ldw t2, BALL + 4  (zero) ; ballY = ball's y position
    ldw t3, BALL + 8  (zero) ; velX = ball's x velocity
    ldw t4, BALL + 12 (zero) ; velY = ball's y velocity

    add t1, t1, t3           ; ballX += velX
    add t2, t2, t4           ; ballY += velY

    stw t1, BALL     (zero)
    stw t2, BALL + 4 (zero)

    ret

; The move_paddles procedure reads the state of the push buttons
; and moves the paddles correspondingly. The paddles move only along the y axis.
; Their current y position is stored in memory.
; Their x coordinates are constants: 0 for the first paddle and 11 for the second.
;
; Arguments:
; - None
;
; Return values:
; - None
move_paddles:
    ldw t0, BUTTONS     (zero) ; Buttons state (4 LSB)
    ldw t1, PADDLES     (zero) ; Paddle 1's Y position
    ldw t2, PADDLES + 4 (zero) ; Paddle 2's Y position

    andi  t3,  t0,   1   ; if 1st LSB bit (button 4) is set
    sub   t2,  t2,   t3  ; move paddle 2 up

    srli  t0,  t0,   1
    andi  t3,  t0,   1   ; if 2nd LSB bit (button 3) is set
    add   t2,  t2,   t3  ; move paddle 2 down

    srli  t0,  t0,   1
    andi  t3,  t0,   1   ; if 3rd LSB bit (button 2) is set
    add   t1,  t1,   t3  ; move paddle 1 down

    srli  t0,  t0,   1
    andi  t3,  t0,   1   ; if 4th LSB bit (button 1) is set
    sub   t1,  t1,   t3  ; move paddle 1 up

    addi  t5,  zero, 5   ; t5 = 5, set for upcoming comparisons

    check_paddle_1_gt_5: ; if(paddle1_Y > 5) paddle1_Y = 5
        bge  t5, t1, check_paddle_1_lt_0
        addi t1, zero, 5

    check_paddle_1_lt_0:  ; if(paddle1_Y < 0) paddle1_Y = 0
        bge t1, zero, check_paddle_2_gt_5
        add t1, zero, zero

    check_paddle_2_gt_5: ; if(paddle2_Y > 5) paddle2_Y = 5
        bge  t5, t2, check_paddle_2_lt_0
        addi t2, zero, 5

    check_paddle_2_lt_0:  ; if(paddle2_Y < 0) paddle2_Y = 0
        bge t2, zero, move_paddles_return
        add t2, zero, zero

    move_paddles_return:
        stw t1, PADDLES     (zero)
        stw t2, PADDLES + 4 (zero)
        ret


; The draw_paddles procedure draws the paddles on the display.
; Using the set_pixel procedure, it turns 3 pixels on for each paddle
; depending on their position. As Figure 4 shows, the coordinates refer
; to the top of the paddle.
;
; Arguments:
; - None
;
; Return values:
; - None
draw_paddles:
    addi sp, sp, -4
    stw ra, 0(sp)          ; save the return address

    ; s0: paddle index (0 or 1)
    ; s1: PADDLES offset (0 or 4)
    ; s2: paddle Y position (0 or 7)

    add s0, zero, zero
    add s1, zero, zero
    add s2, zero, zero

    draw_paddle:
        ; s3: pixel offset (0 to 2)
        ; s4: paddle's X position

        add s3, zero, zero                      ; s3 = 0
        ldw s4, PADDLES + 0(s2)                 ; s4 = PADDLES[s2]

        draw_paddle_pixel:
            add a0, s4, s3                      ; a0 = s4 + s3
            add a1, s2, zero                    ; a1 = s2
            call set_pixel                      ; set_pixel(a0, a1)
            addi s3, s3, 1                      ; s3 += 1

            addi t0, zero, 3                    ; t0 = 3
            bne s3, t0, draw_paddle_pixel       ; if(s3 != 3) goto draw_paddle_pixel

            addi t0, zero, 1                    ; t0 = 1
            beq s0, t0, draw_paddles_return     ; if(s0 == 1) goto draw_paddles_return

            addi s0, s0, 1                      ; s0 += 1
            addi s1, zero, 4                    ; s1 = 4
            addi s2, zero, 7                    ; s2 = 7
            br draw_paddle                      ; goto draw_paddle

    draw_paddles_return:
        ldw ra, 0(sp)
        addi sp, sp, 4
        ret

; The display_score procedure draws the current score on the display.
;
; Arguments:
; - None
;
; Return values:
; - None
display_score:
    ldw t1, SCORES     (zero) ; Player 1's score
    ldw t2, SCORES + 4 (zero) ; Player 2's score

                              ; Convert score to word offset
    slli t1, t1, 2            ; t1 = t1 * 4
    slli t2, t2, 2            ; t2 = t2 * 4

    ldw t3, font_data + 0(t1) ; Player 1's score character
    ldw t4, font_data + 0(t2) ; Player 2's score character

    stw t3, LEDS     (zero)   ; Display player 1's score
    stw t4, LEDS + 8 (zero)   ; Display player 2's score

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
