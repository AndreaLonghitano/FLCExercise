	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
	.text
	ADDI R1 R0 #0
	SHLI R1 R1 #16
	ADDI R1 R1 #1
	STORE R1 L0
L2 : 	LOAD R1 L0
	SUBI R2 R1 #5
	STORE R1 L0
	SLT R2 0
	ANDB R2 R2 R2
	BNE L3
	BT L4
L5 : 	LOAD R1 L0
	ADDI R2 R1 #1
	ADD R1 R0 R2
	STORE R1 L0
	BT L2
L3 : 	LOAD R2 L1
	ADDI R3 R2 #1
	ADD R2 R0 R3
	WRITE R2 0
	STORE R2 L1
	LOAD R1 L0
	WRITE R1 0
	STORE R1 L0
	BT L5
L4 : 	HALT