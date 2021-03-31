.TEXT
	ldr r1, =A
	loop:
		LDRB r0, [r1], #1
	cmp r0, #0
	swine 0x00
	bne loop
	swi 0x11

.DATA
	A: .ASCIZ "The result is: \n \t Subject Code \t\t Marks \n\t SUBJECT1 \t\t 90 \n\t SUBJECT2 \t\t 93 \n\t SUBJECT3 \t\t 78 \n\n TOTAL MARKS SCORED :  261 / 300 \n PERCENTAGE :  87% \n GRADE: A"

