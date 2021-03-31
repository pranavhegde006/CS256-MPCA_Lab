;Displaying a string from right to left

.text
	mov r0,#30 ;r0 =x
	mov r1,#7  ;r1 =y
	mov r7,#0
	ldr r8,=num;
	ldr r8,[r8];
	ldr r2,=str ;Hold the address of the start of the string to be displayed
	loop:
		swi 0x204 ;Displaying the string
		bl sum
		cmp r0,#0
		subne r0,r0,#1
		swieq 0x011
		b loop
		
	sum:
		cmp r7,r8
		addne r7,r7,#1
		bne sum
		
		swi 0x206 ;Clearing the lcd screen
		mov r7,#0
		mov pc,lr
		
.data
	str: .asciz "PES University RR campus"
	num: .word 18000
