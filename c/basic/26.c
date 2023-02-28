# include <stdio.h>
# include <stdlib.h>

int main ()
{
    // membuat variabel
    int age = 182;
    float tinggi = 128.2;
    double gpa = 98.312;
    char grade = 'A';
    // membuat pointer
    int * pAge = &age;    /*pointer variabel mengubah alamat*/
    float * pTinggi = &tinggi;
    double * pGpa = &gpa;  // * asterik ini untuk membuat pointer
    char * pGrade = &grade;
    // alamat memory variabel ada %d/%p/%x
    printf("\n");
    printf("age's memory address  : %p\n", &age);
    printf("tinggi memory address : %p\n", &tinggi);
    printf("gpa memory address    : %p\n", &gpa);
    printf("grade memory address  : %p\n", &grade);
    // mencetak referensi alamat memori pointer
    printf("\n");
    printf("referensi alamat memori *poiner_umur   = %d\n", *pAge);
    printf("referensi alamat memori *poiner_tinggi = %.2f\n", *pTinggi);
    printf("referensi alamat memori *poiner_gpa    = %.2f\n", *pGpa);
    printf("referensi alamat memori *poiner_grade  = %d\n", *pGrade);
    // mencetak alamat memori pointer
    printf("\n");
    printf("alamat memori *poiner_umur   = %p\n", &pAge);
    printf("alamat memori *poiner_tinggi = %p\n", &pTinggi);
    printf("alamat memori *poiner_gpa    = %p\n", &pGpa);
    printf("alamat memori *poiner_grade  = %p\n", &pGrade);
    return 0;
}


/*
pointers type data program untuk alamat data alamat fisik di memory
"pointer berisi alamat memori"

Alamat memori pointer adalah alamat memori yang digunakan untuk menyimpan pointer.
sedangkan alamat reverensi adalah alamat yang akan menjadi referensi dari pointer

"pointer akan bisa mengakses isi data pada alamat referensi yang diberikanya"

Oleh sebab itu, diciptakanlah pointer agar mudah membuat struktur data 
tersebut, dan tentunya lebih hemat memori.

* = asterik
& = empasis(dalam pointer untuk melihat alamat memori)
*/