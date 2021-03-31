.text
LDR R0,=A
LDR R1,=B

MOV R5,#0
MOV R6,#0

MOV R3,#3
MOV R4,#3
MOV R9,#0

GO1:
    GO2:
        MLA R7,R5,R4,R6
        LDRB R8,[R0,R7]
        ADD R9,R9,R8
        ADD R6,R6,#1
        CMP R6,R4
        BLT GO2
    MOV R6,#0
    ADD R5,R5,#1
    CMP R5,R3

    BLT GO1

STRB R9,[R1]

SWI 0x011

.data
A: .BYTE 1,2,3,4,5,6,7,8,9
B: .BYTE 0

.end

