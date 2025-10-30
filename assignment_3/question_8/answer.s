.data
str: .asciz "this is the string to be tested for"

.text
.global _start
_start:
	ldr r0,=str
	mov r2,#0
	find_len:
		ldrb r3,[r0,r2]
		CMP r3,#0
		BEQ reverse 
		add r2,r2,#1
		B find_len
	reverse:
		mov SP,#0x1000
		mov r1,#0
		mov r5,r2
		loop:
			ldrb r3,[r0,r1]
			push {r3}
			ADD r1,r1,#1
			SUBS r2,r2,#1
			BNE loop
		mov r1,#0
		mov r2,r5
		poper:
			pop {r3}
			strb r3,[r0,r1]
			add r1,r1,#1
			SUBS r2,r2,#1
			BNE poper
halt:
	B halt