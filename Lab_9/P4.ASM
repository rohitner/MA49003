.MODEL SMALL
.CODE
LEA SI,L1
MOV CS:[SI],BYTE PTR 127
LEA DI,L2
ADD DI,1
MOV AH,1
INT 33
MOV DL,AL
INT 21H
MOV CL,AL
CMP CL,DL
L1:
	JMP L2
	ADD CS:[DI],BYTE PTR 1
L2:
	MOV DL,CL
	MOV AH,2
	INT 33
	MOV AH,76
	INT 33
END