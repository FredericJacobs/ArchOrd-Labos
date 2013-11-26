
main:                               ; :main
    addi a0, zero, data             ; a0: Array address
    addi a1, zero, 8                ; a1: Number of elements
    call count                      ; proc()
    break                           ; end of the program

; v0: number of positive elements
; t0: current element address
; t1: current element index
count:
    add v0, zero, zero              ; v0 = 0
    add t0, a0, zero                ; t0 = a0
    add t1, zero, zero              ; t1 = 0

; t4: current element, then its first bit
loop:
    bgeu t1, a1, return             ; if (t1 >= a1) goto return
    ldw t4, 0(t0)                   ; t4 = mem[t0]
    srli t4, t4, 31                 ; t4 = first bit of t4
    xori t4, t4, 1                  ; t4 = 1 if t4 is positive, 0 otherwise
    add v0, v0, t4                  ; v0 = v0 + t4

next:
    addi t1, t1, 1                   ; t1 = t1 + 1
    addi t0, t0, 4                   ; t0 = t0 + 4
    br loop

return:
    ret

; 5 positive numbers, 8 in total
data:
    .word 9
    .word 3
    .word -4
    .word 7
    .word 32
	.word -2
    .word -10
    .word 42
