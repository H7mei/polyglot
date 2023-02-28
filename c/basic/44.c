#include <stdio.h>

int global;

void fun(void) {
    int local;

    local = 2;
    global++;
    printf("fun: local=%d global=%d\n", local, global);
    global++;
}

int main(void) {
    int local;

    local = 1;
    global = 1;
    printf("main: local=%d global=%d\n", local, global);
    fun();
    printf("main: local=%d global=%d\n", local, global);
    return 0;
}

/*
variabel diluar fungsi disebut global
variabel didalam fungsi disebut local

    int notmany = 5;
    hello2(100);             parameter sebenarnya adalah literal 
    hello2(notmany);         parameter sebenarnya adalah variabel 
    hello2(2 * notmany);     parameter sebenarnya adalah expresi(aritmatika) 

*/