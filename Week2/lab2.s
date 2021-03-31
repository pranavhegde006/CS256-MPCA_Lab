
.text
MOV R0,#10             
LDR R1,=array          
loop:
      LDR R2,[R1],#9        
      ADD R3,R3,R2           
      SUB R0,R0,#1           
      CMP R0,#00            
      bne loop

.data
array: .byte 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa
