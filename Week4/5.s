.text

LDR R0,=A
LDR R1,=B
LDR R2,=C

MOV R5,#0
MOV R6,#0

MOV R3,#3
MOV R4,#3

GO1:
    GO2:
        MLA R7,R5,R4,R6
        LDRB R8,[R0,R7]
        LDRB R9,[R1,R7]
        ADD R8,R8,R9
        STRB R8,[R2,R7]
        ADD R6,R6,#1
        CMP R6,R4
        BLT GO2

    MOV R6,#0
    ADD R5,R5,#1
    CMP R5,R3
    BLT GO1

SWI 0x011



.data
A: .BYTE 1,2,3,4,2,3,1,2,1
B: .BYTE 1,1,1,2,2,2,3,3,3
C: .BYTE 0,0,0,0,0,0,0,0,0

.end
