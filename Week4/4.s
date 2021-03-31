.text
LDR R0,=A
LDR R1,=B

MOV R2,#2   ;col number
MOV R3,#1   ;row number

MOV R4,#3

MLA R6,R3,R4,R2
LDR R7,[R0,R6,LSL #2]
STR R7,[R1]

.data
A: .WORD 1,2,3,4,5,6,7,8,9
B: .WORD 0

.end
