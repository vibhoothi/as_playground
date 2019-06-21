
.data

.balign 4

myvar1:
		.word 3

.balign 4

myvar2:
		.word 4

.text

.balign 4
.global main
main:
	 ldr r1, addr_myvar1
	 ldr r1, [r1]
	 add r0, r1, #2
	 bx lr

/* Labels */
addr_myvar1 : .word myvar1

