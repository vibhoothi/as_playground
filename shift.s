.text
.global main

main:
	mov r1, #0
    mov r2, #2
    mov r3, #4
    mov r1, r2, LSL #1 /* r2*2 -> r1 */
    mov r1, r2, LSL #2 /* r2*4 -> r1 */
    mov r1, r3, ASR #3 /* r3/8 -> r1 */
    add r1, r2, r2, LSL #1 /* r1= r2 + r2*2 => r1 = r2*(3) */
    sub r2, r3, r3, LSL #2 /* r2= r3 - r3*2 => r2 = r2(-1) */
    mov r1, r2, LSL r3
    bx lr
