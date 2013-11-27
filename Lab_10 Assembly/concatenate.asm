
main:
    addi sp, zero, 0x1FF0           ; set the stack pointer at the top of the memory

    addi a1, zero, data             ; a1: First string address
    addi a2, a1, 4                  ; a2: Second string address
    addi a0, a2, 4                  ; a0: Concatenated string address

    call concatenate                ; concatenate(a0, a1)
    break                           ; end of the program

; Concatenate two strings together
;
; Arguments
; - a0: Address of the destination
; - a1: Address of the 1st string
; - a2: Address of the 2nd string
concatenate:
    addi sp, sp, -8 ; make an 8 byte frame
    stw ra, 4(sp)   ; store the return address
    stw fp, 0(sp)   ; store the frame pointer

    xor v0, v0, v0 ; v0 = 0
    call strcopy   ; strcopy(a1, a0)
    add a3, a0, v0 ; a3 = a0 + v0

    call strcopy ; v0 = strcopy(a2, a3)
    add a3, a3, v0
    stw zero, 0(a3)
    ret

; Copy a string from an address to another,
; without padding the result with a zero.
;
; Arguments
; - a2: source address of the string to copy
; - a3: destination address
;
; Return registers
; - v0: Number of bytes copied (set it to 0 before calling it)
strcopy:

    addi sp, sp, -4
    stw ra, 0(sp)
    addi sp, sp, -4
    stw fp, 0(sp)

    loop:
        call ldb                ; t1 = mem[a2]
        add t1, v0, zero        ;

        beq t1, zero, return    ; while(t1 != 0) {

        call stb                ;   mem[s1] = t1

        addi a2, a2, 1          ;   s0 += 1
        addi a3, a3, 1          ;   s1 += 1
        addi v0, v0, 1          ;   v0 += 1
        br loop                 ; }

    return:
        ret

; Load a byte at the specified address into v0
;
; Arguments
; - a2: source address of the string to copy
;
; Return registers
; - v0: Loaded byte
ldb:
    addi sp, sp, -4
    stw ra, 0(sp)
    addi sp, sp, -4
    stw fp, 0(sp)

    ldw v0, 0(a2)           ; word = mem[addr]
    srli v0, v0, 6          ; word = word >> 6 (only keep the first byte)
    ret

; Store the given byte at the specified address
;
; Arguments
; - t0: destination address
; - t1: byte to store
stb:
    addi sp, sp, -4
    stw ra, 0(sp)
    addi sp, sp, -4
    stw fp, 0(sp)

    andi t1, t1, 0xFF00     ; byte = byte && 0xFF00 (only keep the first byte)
    ldw t2, 0(t0)           ; word = mem[addr]
    andi t2, t2, 0x00FF     ; word = word & 0x00FF (clear the first byte of the loaded word)
    or t2, t2, t1           ; word = word & byte (set the byte at the beginning of word)
    stw t2, 0(t0)           ; mem[addr] = word
    ret

data:
    .word 0x00465000                  ; "FP"
    .word 0x00474100                  ; "GA"
    .word 0x00000000                  ; "FPGA" = 0x4650474100
