	.data
L0 : 	.SPACE 8
L1 : 	.WORD 0
L2 : 	.SPACE 16
	.text
	MOVA R1 L0
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #10
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #1
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #3
	ADD (R1) R0 R2
	MOVA R1 L2
	ADDI R1 R1 #3
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #7
	ADD (R1) R0 R2
	ADDI R1 R0 #0
	ADDI R2 R0 #4
	ADDI R3 R0 #2
	SUB R4 R2 R3
	BEQ L3
	BMI L4
L6 : 	SUB R4 R3 R1
	BEQ L5
	MOVA R5 L0
	ADD R5 R5 R1
	ADD R6 R0 (R5)
	MOVA R5 L2
	ADD R5 R5 R1
	ADD (R5) R0 R6
	ADDI R1 R1 #1
	BT L6
L5 : 	SUB R4 R2 R1
	BEQ L7
	MOVA R6 L2
	ADD R6 R6 R1
	ADDI R5 R0 #0
	SHLI R5 R5 #16
	ADDI R5 R5 #0
	ADD (R6) R0 R5
	ADDI R1 R1 #1
	BT L5
L3 : 	SUB R3 R2 R1
	BEQ L7
	MOVA R3 L0
	ADD R3 R3 R1
	ADD R6 R0 (R3)
	MOVA R3 L2
	ADD R3 R3 R1
	ADD (R3) R0 R6
	ADDI R1 R1 #1
	BT L3
L4 : 	SUB R4 R2 R1
	BEQ L7
	MOVA R4 L0
	ADD R4 R4 R1
	ADD R6 R0 (R4)
	MOVA R4 L2
	ADD R4 R4 R1
	ADD (R4) R0 R6
	ADDI R1 R1 #1
	BT L4
L7 : 	MOVA R1 L2
	ADD R2 R0 (R1)
	WRITE R2 0
	MOVA R2 L2
	ADDI R2 R2 #1
	ADD R1 R0 (R2)
	WRITE R1 0
	MOVA R1 L2
	ADDI R1 R1 #3
	ADD R2 R0 (R1)
	WRITE R2 0
	HALT
