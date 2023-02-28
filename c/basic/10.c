# include <stdio.h>
# include <stdlib.h>


int main()
{
    char nama[20];
    char nama2[20];
    char warna[20];
    char daerah[20];

    printf("masukkan nama kalian        : ");
    scanf("%s%s", nama, nama2);
    printf("masukkan warna kalian       : ");
    scanf("%s", warna);
    printf("masukkan asal daerah kalian : ");
    scanf("%s", daerah);
    
    printf("\n");
    printf("karakter kamu bernama %s %s\n", nama, nama2);
    printf("menyukai warna %s\n", warna);
    printf("asal daerah %s\n", daerah);

    return 0;
}


/*
dalam bahasa c kita harus mengetahui dengan spesifik apa yang di inginkan
agar program dapat berjalan dengan baik
*/