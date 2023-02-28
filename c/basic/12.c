# include <stdio.h>
# include <stdlib.h>

void prue_(char name[], int age){
    printf("Hello User %s Kamu BerUmur %d\n", name, age);
}


int main()
{
    printf("Hello Dunia\n");
    prue_ ("Mike", 40);
    prue_ ("Koma", 50);
    prue_ ("Kima", 89);
    return 0;
}

/*
functions dalam bahasa C
function pada dasarnya hanyalah code yang melakukan aktifitas khusus

yang main functions itu yang utama kalau kita mau meng aktifkan yang ke dua
harus di pangil dari variabel pertama

Void nya apa bila di bawah memiliki masalah
*/