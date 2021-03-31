
.text
	ldr r0, =string
	ldr r1, =copy
	loop:
		ldrb r2, [r0]
		cmp r2, #0
		beq empty
		strb r1, [r2]
		add r0, r0, #1
		add r1, r1, #1
		b loop
	empty:
		swi 0x11

.data
	string: .ASCIZ "Hello world"
	copy: .ASCIZ ""
