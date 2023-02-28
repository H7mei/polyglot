# include <stdio.h>
# include <stdlib.h>

int main()
{
    int age = 12;
    int *pAge = &age;

    printf("%d\n", *pAge);
    return 0;
}

/*
Dereferencing Pointers
pake tanda bintang * di depan variabel
*/