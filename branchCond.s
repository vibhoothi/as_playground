.text
.global main

main:
     mov r1, #5
     mov r2, #2
     cmp r1, r2
     beq case_equal

case_notequal:
     mov r0, #1
     b end

case_equal:
     mov r0, #0

end: 
     bx lr
