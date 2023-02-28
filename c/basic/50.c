#include <stdio.h>

void main()
{
    printf("## Program Antrian C ##\n");
    char no_antrian[5] = {'A', 'B', 'C', 'D', 'E'};

    // mengunakan pointer
    char *ptr_antrian = no_antrian;

    for (int i = 0; i < 5; i++)
    {
        printf("📢 Pelanggan dengan no antrian %c silahkan ke loket!\n", *ptr_antrian);
        printf("Saat ini CS sedang melayani: %c\n", *ptr_antrian);
        printf("-------- Tekan Enter untuk Next --------");
        getchar();
        ptr_antrian++;
    }

    printf("✅ Selesai");
}