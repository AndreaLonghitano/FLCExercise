	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
L2 : 	.WORD 0
L3 : 	.WORD 0
	.text
	ADDI R1 R0 #0
	SHLI R1 R1 #16
	ADDI R1 R1 #1000
	STORE R1 L0
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #1
	STORE R2 L2
	ADDI R3 R0 #0
	SHLI R3 R3 #16
	ADDI R3 R3 #10
	STORE R3 L3
	BT L5
L4 : 	READ R1 0
	SUBI R4 R1 #99
	ADD R1 R0 R4
	STORE R1 L0
	BT L6
L7 : 	ADDI R4 R0 #0
	SHLI R4 R4 #16
	ADDI R4 R4 #27
	LOAD R3 L3
	SUB R5 R4 R3
	STORE R3 L3
	STORE R4 L1
	ADD R1 R0 R5
	MUL R5 R1 R1
	ADD R1 R0 R5
	STORE R1 L0
	BT L6
L5 : 	LOAD R2 L2
	MULI R5 R2 #27
	STORE R2 L2
	LOAD R1 L0
	SUB R2 R1 R5
	STORE R1 L0
	SGT R2 0
	ANDB R2 R2 R2
	BNE L4
	ANDB R2 R2 R2
	BEQ L7
L6 : 	LOAD R1 L0
	WRITE R1 0
	STORE R1 L0
	HALT
