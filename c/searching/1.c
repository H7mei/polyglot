#include <stdio.h>
#include <string.h>

typedef struct{
    char nim[50];
    char nama[50];
    float nilai;
} nilaiMatKul;

nilaiMatKul table[5];

void isi(int i, char nim[], char nama[], float nilai){
    strcpy(table[i].nim, nim);
    strcpy(table[i].nama, nama);
    table[i].nilai = nilai;
}

int main(){
    char nim_cari[50];
    int ketemu;
    int i;

    isi(0, "12098341", "Nana", 64.75);
    isi(1, "12098321", "Rudi", 94.75);
    isi(2, "12098331", "Dea", 75.75);
    isi(3, "12098322", "Ratna", 94.05);
    isi(4, "12098222", "Tiara", 84.75);

    strcpy(nim_cari, "12098322");
    ketemu = 0;
    i = 0;

    while ((i < 5) && (ketemu == 0)){
        if (strcmp(table[i].nim, nim_cari) == 0){
            ketemu = 1;
        }else{
            i = i + 1;
        }
    }

    if (ketemu == 1){
        printf("nim  : %s\n", table[i].nim);
        printf("nama : %s\n", table[i].nama);
        printf("nilai: %f\n", table[i].nilai);
    }else{
        printf("Tidak Ditemukan\n");
    }

    return 0;
}