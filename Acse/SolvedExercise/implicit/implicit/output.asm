	.data
L0 : 	.WORD 0
L1 : 	.WORD 4
	.text
	LOAD R1 L0
	ADD R2 R1 R1
	ADD R1 R0 R2
	STORE R1 L0
	HALT
