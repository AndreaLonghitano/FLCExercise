	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
L2 : 	.SPACE 8
	.text
	MOVA R1 L2
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #1
	ADD (R1) R0 R2
	MOVA R1 L2
	ADDI R1 R1 #1
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #2
	ADD (R1) R0 R2
	ADDI R1 R0 #0
	SHLI R1 R1 #16
	ADDI R1 R1 #10
	STORE R1 L1
	ADDI R2 R0 #0
	ADDI R3 R0 #2
L3 : 	MOVA R4 L2
	ADD R4 R4 R2
	ADD R5 R0 (R4)
	ADD R4 R0 R5
	LOAD R1 L1
	ADD R5 R1 R4
	STORE R4 L0
	ADD R1 R0 R5
	STORE R1 L1
	SUB R5 R3 R2
	BEQ L4
	ADDI R2 R2 #1
	BT L3
L4 : 	LOAD R1 L1
	WRITE R1 0
	STORE R1 L1
	HALT