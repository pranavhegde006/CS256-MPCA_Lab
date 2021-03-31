mov r1,#11
and r3,r1,#1
cmp r3,#0
beq label
mov r2,#0
swi 0x11
label:
mov r2,#1
swi 0x11
