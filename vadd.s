.data

.balign 4

myvar1:
		.word 3

myvar2:
		.word 3

.text

.balign 4
.global main
main:
	ldr r0, add_myvar1
	ldr r1, add_myvar2
	vld1.32  {d0[]}, [r0]
	vld1.32  {d1[]}, [r1]
	vadd.i32 d3, d0, d1
	bx lr

add_myvar1: .word myvar1
add_myvar2: .word myvar2
