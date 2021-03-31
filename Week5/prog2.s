.data
	stringLength: .ASCIZ "Hello world"
.text
	ldr r0, =stringLength
	loop:
		ldrb r2, [r0]
		cmp r2, #0
		beq empty
		add r1, r1, #1
		add r0, r0, #1
		b loop
	empty:
		swi 0x11

