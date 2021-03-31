.text
    ldr R1,=A
    mov R2,#0
    str R2,[R1]
    add R1,R1,#4
    mov R3,#1
    str R3,[R1]
    mov R5,#8 ; 8 fibonacci numbers will be stored after 0 and 1(So,total=10) in the array
    L1:
        add R4,R2,R3
        add R1,R1,#4
        str R4,[R1]
        mov R2,R3
        mov R3,R4
        subs R5,R5,#1
        mov R4,#0
        bne L1
    swi 0x11
.data
    A:.WORD