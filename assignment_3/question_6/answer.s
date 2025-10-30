.data
str: .asciz "This is the strings to be tested for"
vowels: .asciz "AEIOUaeiou"

.text
.global _start
_start:
	ldr r0,=str
	mov r1,#0
	ldr r2,=vowels
	mov r6,#0 @answer
	pass_char:
		mov r4,#0
		ldrb r3,[r0,r1]
		CMP r3,#0
		BEQ done
		add r1,r1,#1
		checker:
			ldrb r5,[r2,r4]
			CMP r5,#0
			BEQ pass_char
			CMP r3,r5
			BEQ found
			ADD r4,r4,#1
			b checker
		B pass_char
found:
	add r6,r6,#1
	B pass_char
done:
	
halt:
	B halt