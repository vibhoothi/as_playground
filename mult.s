/*
 42 = 7*3*2
    8-1 = 7
    (4-1) / (2+1) = 3
    
*/
.global main

main:
    mov r1, #1
    rsb r1, r1, r1, LSL #3  /* r1 = ( r1 * 2^3) - r1 => 7*r1 */
    rsb r1, r1, r1, LSL #2  /* r1= ( r1 * 2^4) - r1 => 3*r1 */
    add r1, r1, r1          /* r1=   r1 + r1               */
    bx lr
