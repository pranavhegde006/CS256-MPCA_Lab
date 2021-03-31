.text
MOV R0,#6   ; size of the array
LDR R1,=A
LDR R2,=B
LDR R3,=C
MOV R4,#0 ;counter

GO:
    LDR R5,[R1],#4
    LDR R6, [R2],#4
    ADD R5,R5,R6
    STR R5,[R3],#4
    ADD R4,R4,#1
    CMP R4,R0
    BEQ JUMP
B GO

JUMP:
SWI 0x011

.data
A: .WORD 10,20,30,40,50,60
B: .WORD 10,20,30,40,50,60
C: .WORD 0,0,0,0,0,0

.end
; 00010100
