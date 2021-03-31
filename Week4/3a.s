.text
MOV R0,#6   ; size of the array
LDR R1,=A
LDR R2,=B
LDR R3,=C
MOV R4,#0 ;counter
MOV R7,#0
GO:
    LDR R5,[R1],#4
    LDR R6, [R2],#4
    MUL R6,R5,R6
    ADD R7,R7,R6
    ADD R4,R4,#1
    CMP R4,R0 
    BEQ JUMP
B GO

JUMP:
STR R7,[R3]
SWI 0x011

.data
A: .WORD 10,20,30,40,50
B: .WORD 10,20,30,40,50
C: .WORD 0

.end
