	.data
L0 : 	.WORD 5
L1 : 	.WORD 7
L2 : 	.WORD 3
	.text
	ADDI R1 R0 #0
	LOAD R2 L1
	LOAD R3 L2
	SUB R4 R2 R3
	STORE R3 L2
	STORE R2 L1
	SEQ R4 0
	ANDB R4 R4 R4
	BNE L3
	ADDI R1 R0 #1
	LOAD R2 L1
	LOAD R3 L2
	SUB R4 R2 R3
	STORE R3 L2
	STORE R2 L1
	SGT R4 0
	ANDB R4 R4 R4
	BNE L3
	ADDI R1 R0 #-1
L3 : 	ADD R4 R0 R1
	WRITE R4 0
	STORE R4 L0
	HALT
