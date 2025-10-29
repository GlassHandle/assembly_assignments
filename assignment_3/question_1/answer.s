.global _start
_start:
	mov r0,#5
	mov r1,#1
	loop:
		ADDS r1,r1,#0
		BEQ DONE
		MUL r1,r1,r0
		SUB r0,r0,#1
		B loop
DONE:

HALT:
	B HALT