// add,s

.text

.globl main_addr
/*
Addition of two numbers
*/
main_addr:
     mov w0, #2
     mov w1, #3
     add w0, w0, w1
     ret
