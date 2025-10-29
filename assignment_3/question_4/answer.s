.global _start
_start:
	ldr r0,=0x45444444
	mov r1,#32
	mov r4,#0
	loop:
		AND r2,r0,#1
		ADD r4,r2,r4
		LSRS r0,r0,#1
		BNE loop
HALT:
    B HALT