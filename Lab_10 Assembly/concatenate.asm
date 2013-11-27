
.equ MEMORY_TOP, 0x1FF0

main:
    addi sp, zero, MEMORY_TOP       ; set the stack pointer at the top of RAM

    addi a1, zero, data             ; a1: First string address
    addi a2, a1, 4                  ; a2: Second string address
    addi a0, zero, OUTPUT           ; a0: Concatenated string address

    call concatenate                ; concatenate(a0, a1, a2)

    break                           ; end of the program

; Concatenate two strings together
;
; Arguments
; - a0: Address of the destination
; - a1: Address of the 1st string
; - a2: Address of the 2nd string
concatenate:
    addi sp, sp, -8     ; make an 8 byte frame
    stw ra, 4(sp)       ; store the return address
    stw fp, 0(sp)       ; store the frame pointer

    add s0, a0, zero    ; s0 = a0
    add s1, a1, zero    ; s1 = a1
    add s2, a2, zero    ; s2 = a2

    call strcopy        ; v0 = strcopy(a0, a1)

    add s0, s0, v0      ; s0 += v0
    add a1, a2, zero    ; a1 = a2

    call strcopy        ; v0 = strcopy(a0, a1)

    add s0, s0, v0      ; s0 += v0
    add a0, s0, zero    ; a0 = s0
    xor a1, a1, a1      ; a1 = 0
    call stb            ; mem[a0] = a1
    ret

; Copy a string from an address to another,
; without padding the result with a zero.
;
; Arguments
; - a0: destination address (word aligned)
; - a1: source address of the string to copy (word aligned)
;
; Return registers
; - v0: Number of bytes copied (set it to 0 before calling it)
strcopy:

    addi sp, sp, -8     ; make an 8 byte frame
    stw ra, 4(sp)       ; store the return address
    stw fp, 0(sp)       ; store the frame pointer

    add s0, a0, zero ; s0 = a0
    add s1, a1, zero ; s1 = a1
    xor s2, s2, s2   ; s2 = 0

    loop:
        add a0, s1, zero        ; a0 = s1
        call ldb                ; v0 = mem[a0]

        beq v0, zero, return    ; while(v0 != 0) {

        add a0, s0, zero        ;   a0 = s0
        add a1, v0, zero        ;   a1 = v0
        call stb                ;   mem[a0] = a1

        addi s1, s1, 1          ;   a1 += 1
        addi s0, s0, 1          ;   a0 += 1
        addi s2, s2, 1          ;   s2 += 1
        br loop                 ; }

    return:
        add v0, s2, zero        ; return s2
        ret

; Load a byte at the specified address into v0
;
; Arguments
; - a0: source address of the string to copy
; - a1: byte offset relative to the rightmost byte of the source word
;       will be modulo 4
;
; Return registers
; - v0: Loaded byte
ldb:
    addi sp, sp, -8     ; make an 8 byte frame
    stw ra, 4(sp)       ; store the return address
    stw fp, 0(sp)       ; store the frame pointer
    
    addi t1, zero, 8
    mul t1, t1, a1      ; t1 = t1 * a1s

    addi t0, zero, 0xFF ; Set the mask to 000000FF

    sll t0, t0, t1      ; Shift the mask by a1 bytes (= a1 * t1 bits)

    ldw v0, 0(a0)       ; word = mem[a0]
    and v0, v0, t0      ; word = word & mask (only keep the byte at the given offset)

    ret                 ; return v0

; Store the given byte at the specified address
;
; Arguments
; - a0: destination word address
; - a1: byte to store
; - a2: offset (in bytes) relative to a0's right at which to store the given byte
stb:
    addi sp, sp, -8         ; make an 8 byte frame
    stw ra, 4(sp)           ; store the return address
    stw fp, 0(sp)           ; store the frame pointer

    slli a1, a1, 24         ; byte = byte << 24
    ldw t0, 0(a0)           ; word = mem[addr]
    andi t0, t0, 0x00FF     ; word = word & 0x00FF (clear the first byte of the loaded word)
    or t0, a1, t0           ; word = word & byte (set the byte at the beginning of word)
    stw t0, 0(a0)           ; mem[addr] = word
    ret

data:
    .word 0x00465000        ; "FP"
    .word 0x00474100        ; "GA"
                            ; "FPGA" = 0x4650474100
.equ OUTPUT, 0x1000         ; Output address (RAM)

