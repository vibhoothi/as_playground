/*
C Declaration

    int a[100];
    struct my_struct {
        char f0;
        int f1;
    }b;

*/
.data

.balign 4
a: .skip 400 /* 4*100 = 400 bytes */

.balign 4
b: .skip 8 /* Extra 3 unused bytes b/w f0 and f1 called padding.
              padding is to fulfill alignment*/

.global main

main:
    bx lr
