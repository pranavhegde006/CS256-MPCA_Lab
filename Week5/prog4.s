.TEXT
	ldr r2, =string
	ldr r3, =letter
	ldrb r3, [r3]
	mov r4, #0
	mov r5, #0
	loopProgram:
		ldrb r6, [r2]
		cmp r6, #0
		beq end
		add r5, r5, #1
		add r2, r2, #1
		cmp r6, r3
		beq found
		b loopProgram
		
		
	found:	
		add r4, r4, #1
		b loopProgram
	end:
		ldr r1, =A
		loop:
			LDRB r0, [r1], #1
		cmp r0, #0
		swine 0x00
		bne loop		
		swi 0x11

.DATA
	A: .ASCIZ "letter O found in the string"
	string: .ASCIZ "Hello world"
	letter: .ASCIZ "o"
