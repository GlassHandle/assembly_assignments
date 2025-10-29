.data
my_array:
	.word 10,20,30,40,50

.text
.global _start
_start:
	ldr r0,=my_array
	mov r1,#0
	mov r2,#5
	loop:
		ldr r3,[r0,r1]
		add r3,r3,#1
		str r3,[r0,r1]
		ADD r1,r1,#4
		SUBS r2,r2,#1
		BNE loop
halt:
	B halt