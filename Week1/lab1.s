.text
    mov r0, #0 ;considered z
    mov r1, #2 ;considered a
    mov r2, #3 ;considered b

    mov r3, #4 ;auxillary space 1
    mov r4, #0 ;auxillary space 2

    and r3, r2, #15
    mov r4, r1, LSL #2
    orr r0, r3, r4 
