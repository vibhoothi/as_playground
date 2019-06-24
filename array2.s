/*
  C Declarations
  for( int i = 0; i<100; ++i)
    a[i] = i;
 */

.data

.balign 4 
a: .skip 400

.balign 4
b: .skip 8

.text

.global main

main:
    ldr r1, addr_a /* r1 = &a */
    mov r2, #0  /* r2 = 0 (i)  */
loop:
    cmp r2, #100
    beq end
    add r3, r1, r2, LSL #2
    str r2, [r3]
    add r2, r2, #1
    b loop
end:
    bx lr

/* Labels */
addr_a: .word a
