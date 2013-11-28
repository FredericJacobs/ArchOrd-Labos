
; Concatenate two string together
;
; Notes:
; - This is not really working, the two strings are copied to distinct
;   words and are padding with crap.
; - This either very hard, or we're doing it the wrong way.
;   We can't tell which one because this shitty nios2sim
;   doesn't handle half the Nios II spec...
;   -> http://www.altera.com/literature/hb/nios2/n2cpu_nii51017.pdf

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

        add s0, a0, zero    ; s0 = a0
        add s1, a1, zero    ; s1 = a1
        add s2, a2, zero    ; s2 = a2

        addi sp, sp, -4
        stw s0, 0(sp)           ; save s0 on the stack
        addi sp, sp, -4
        stw s1, 0(sp)           ; save s1 on the stack
        addi sp, sp, -4
        stw s2, 0(sp)           ; save s2 on the stack

        call strcopy            ; v0 = strcopy(a0, a1)

        ldw s0, 0(sp)           ;   pop s0 from the stack
        addi sp, sp, 4
        ldw s1, 0(sp)           ;   pop s1 from the stack
        addi sp, sp, 4
        ldw s2, 0(sp)           ;   pop s2 from the stack
        addi sp, sp, 4

        add s0, s0, v0          ; s0 += v0
        add a1, a2, zero        ; a1 = a2

        addi sp, sp, -4
        stw s0, 0(sp)           ; save s0 on the stack
        addi sp, sp, -4
        stw s1, 0(sp)           ; save s1 on the stack
        addi sp, sp, -4
        stw s2, 0(sp)           ; save s2 on the stack

        call strcopy            ; v0 = strcopy(a0, a1)

        ldw s0, 0(sp)           ;   pop s0 from the stack
        addi sp, sp, 4
        ldw s1, 0(sp)           ;   pop s1 from the stack
        addi sp, sp, 4
        ldw s2, 0(sp)           ;   pop s2 from the stack
        addi sp, sp, 4

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

        add s3, a0, zero ; s3 = a0
        add s4, a1, zero ; s4 = a1
        xor s5, s2, s2   ; s5 = 0
        addi t0, zero, 3 ; t0 = 3 (offset of the rightmost byte)

        loop:
            add a0, s4, zero        ; a0 = s4

        load:

            add a1, t0, zero        ; a1 = t0

            addi sp, sp, -4
            stw t0, 0(sp)           ; save t0 on the stack

            call ldb                ; v0 = mem[a0 (word) + a1 (offset)]

            beq v0, zero, return    ; while(v0 != 0) {

            ldw t0, 0(sp)           ;   pop t0 from the stack
            addi sp, sp, 4

            add a0, s3, zero        ;   a0 = s3
            add a1, v0, zero        ;   a1 = v0
            add a2, t0, zero        ;   a2 = t0

            addi sp, sp, -4
            stw t0, 0(sp)           ; save t0 on the stack

            call stb                ;   mem[a0] = a1

            ldw t0, 0(sp)           ;   pop t0 from the stack
            addi sp, sp, 4

            addi s3, s3, 1          ;   s4 += 1

            bne t0, zero, sub_t0    ;   if(t0 != 0) goto sub_t0
            addi t0, zero, 3        ;   t0 = 3
            br next                 ;   goto next

        sub_t0:
            addi t0, t0, -1          ;  t0 -= 1

        next:
            addi s4, s4, 1          ;   s4 += 1
            addi s5, s5, 1          ;   s5 += 1
            br loop                 ; }

        return:
            add v0, s5, zero        ; return s5
            ret

    ; Load a byte at the specified address into v0
    ;
    ; Arguments
    ; - a0: source address of the string to copy
    ; - a1: byte offset relative to the rightmost byte of the source word
    ;
    ; Return registers
    ; - v0: Loaded byte
    ldb:

        addi t1, zero, 8    ; t1 = 8
        mul t1, t1, a1      ; t1 = t1 * a1 (where the fuck is muli?!?)

        addi t0, zero, 0xFF ; Set the mask to 000000FF

        sll t0, t0, t1      ; Shift the mask by t1 bits

        ldw v0, 0(a0)       ; word = mem[a0]
        and v0, v0, t0      ; word = word & mask (only keep the byte at the given offset)
        srl v0, v0, t1      ; word = word >> t1 (move the byte at the end of the word)

        ret                 ; return v0

    ; Store the given byte at the specified address
    ;
    ; Arguments
    ; - a0: destination word address
    ; - a1: byte to store
    ; - a2: byte offset relative to the rightmost byte of the destination word
    stb:

        addi t1, zero, 8        ; t1 = 8
        mul t1, t1, a2          ; t1 = t1 * a2 (where the fuck is muli?!?)

        sll a1, a1, t1          ; byte = byte << t1

        addi t0, zero, 0xFFFFFF00 ; Set the mask to FFFFFF00
        rol t0, t0, t1          ; Rotate the mask left by t1 bits

        ldw t3, 0(a0)           ; word = mem[addr]

        and t3, t3, t0          ; word = word & mask (clear the specified byte)
        or t3, t3, a1           ; word = word | byte (set the byte at the specified offset)
        stw t3, 0(a0)           ; mem[addr] = word
        ret

    data:
        .word 0x46500000        ; "FP"
        .word 0x47410000        ; "GA"
                                ; "FPGA" = 0x4650474100
    .equ OUTPUT, 0x1000         ; Output address (RAM)
