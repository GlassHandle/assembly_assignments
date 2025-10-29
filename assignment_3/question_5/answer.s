.data
str: .asciz "Hello World!"
.text
.global _start
_start:
	ldr r0,=str
	mov r1,#0
	loop:
		ldrb r2,[r0,r1]
		ADD R1,R1,#1
	 	cmp r2,#0
		BEQ DONE
		CMP r2,#'a'
		BLT loop
		CMP r2,#'z'
		BGT loop
		SUB r2,r2,#32
		sub r1,r1,#1
		STRB r2,[r0,r1]
		Add r1,r1,#1
		B loop
DONE:

HALT:
	B HALT