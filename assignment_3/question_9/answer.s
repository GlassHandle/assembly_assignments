.data
my_array:
	.word 12, 45, 78, 23, 91, 56, 34, 67, 89, 10, 54, 32, 77

.text
.global _start
_start:
	ldr r0,=my_array
	mov r1,#0
	mov r2,#13
	ldr r4,[r0,#0]
	loop:
		ldr r3,[r0,r1]
		CMP r4,r3
		movmi r4,r3
		ADD r1,r1,#4
		SUBS r2,r2,#1
		BNE loop
halt:
	B halt