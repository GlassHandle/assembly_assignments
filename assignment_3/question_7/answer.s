.data
str: .asciz "THIS IS THE string to be checked length for"
.text
.global _start
_start:
	ldr r0,=str
	mov r1,#0
	loop:
		ldrb r2,[r0,r1]
	 	cmp r2,#0
		BEQ DONE
		ADD R1,R1,#1
		B loop
DONE:

HALT:
	B HALT