.text 
ldr r0, =A
ldr r1, =B 
ldr r2, =C 
ldr r3, [r0]
ldr r4, [r1]
add r5, r3, r4
mov r6, r4, lsl#1
add r6, r6, r4
add r7, r6, r5
str r7, [r2]
swi 0x11

.data
A: .word 2
B: .word 1
C: .word 0