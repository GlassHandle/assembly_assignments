.data
my_array:
	.word 1,2,3,4,5,6,7,8,9,10,11,12,13
final:
	.space 64
	.align 4
.text
.global _start
_start:
	ldr r0,=my_array
	ldr r1,=final
	mov r2,#0
	mov r5,#13
	loop:
		ldr r3,[r0,r2]
		str r3,[r1,r2]
		SUBS r5,r5,#1 
		add r2,r2,#4
		BEQ done
		B loop
done:
	B done