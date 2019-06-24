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
/*
If we want to do something like b.f1 += 5,
Assuming r1 has the base address of the struct b then
    ldr r2, [r1, #+4]!  // r1 -> r1+4; r2 -> *r1
    add r2, r2, #5
    str r2, [r1] // *r1 - > r2 
*/
.text

.global main

main:
    ldr r1, addr_a /* r1 = &a */
    mov r2, #0  /* r2 = 0 (i)  */
loop:
    cmp r2, #100
    beq end
    str r2, [r1], #4 /* *r1 = r2, r1= r1+4 */
    add r2, r2, r2 /* r2 = r2 + 1 */
/*
If we want to use pre-indexing it will be more useful when we want to 
reuse the registers.
For eg:
    ldr r2, [r1, #+12]! // r1 -> r1 +12; r2-> *r1
    add r2, r2, r2      // r2 -> r2+ r2
    str r2, [r1]        // *r1 -> r2 
*/
    b loop
end:
    bx lr

/* Labels */
addr_a: .word a
