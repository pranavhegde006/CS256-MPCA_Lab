;Lighting Up LED based on value in R0

.text
	mov r0,#1
	loop: swi 0x201
		  ldr r4,=A
		  ldr r4,[r4]
		  
		  delay: subs r4,r4,#1
				 bne delay
		  
		  add r0,r0,#1
		  cmp r0,#3
		  ble loop
		  
		  swi 0x011

.data
	A: .word 99999
