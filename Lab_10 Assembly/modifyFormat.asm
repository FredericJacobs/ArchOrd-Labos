main:
	addi a0, zero, data					; a0: Data address (where the Array starts)
	addi a1, zero, 5					; a1: Number of words in array
	call modifyFormat
	break								; end of the program

modifyFormat:							#Initializing Values - setting to 0
	add t0, a0, zero					; t0 = a0
	add t1, zero, zero					; t1 = 0 - Variable of the iterator

modifyFormatLoop:						#Looping through the array
	bgeu t1, a1, modifyFormatReturn		; If t1, the variable of the iterator is greater or equal than a1, we went through the array and are done here
	ldw t2, 0(t0)						; Else, we load into t2, the value at the index t0 (we add the offset at the end of the loop)
	srli t2, t2, 11						; We remove the 10 last numbers to get our frame adjusted on the numbers we want to keep
	ori	 t2, t2, 0xF800					; We use a OR bitmask(1111100000000000_2) to put the entries between 11 and 15 to 1
	andi t2, t2, 0x7fff					; We use a AND bitmask to set all bits to 0
	stw  t2, 0(t0)						;
	addi t1, t1, 1						; We increase our loop counter
	addi t0, t0, 4						; We increase the word loader
	br modifyFormatLoop					; goto modifyFormat_loop

modifyFormatReturn:						#Return Handler
	ret									; return to caller 
	
data:									; data initialization
	.word 0x8C280EB2 					; Randomly generated words for testing
	.word 0x97400E71 
	.word 0x25F0262A 
	.word 0xF124E514
	.word 0xEFE00630