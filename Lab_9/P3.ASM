.MODEL SMALL
.CODE
LEA SI,L1
ADD SI,1
MOV AH,1
INT 33
MOV DL,AL
INT 21H
MOV CL,AL
CMP CL,DL
JG L1
ADD CS:[SI],BYTE PTR 1
L1:
	MOV DL,CL
	MOV AH,2
	INT 21H
	MOV AH,76
	INT 21H
END