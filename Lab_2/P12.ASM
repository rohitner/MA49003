.MODEL SMALL
.CODE
MOV AH,1
INT 21H
ADD AL,30
CMP AL,100
JGE L1
MOV DL,"B"
JMP L2
L1:
MOV DL,"A"
L2:
MOV AH,2
INT 21H
MOV AH,76
INT 21H
END