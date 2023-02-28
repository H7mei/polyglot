#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    // alokasi memory
    int *ptr, *ptr2; // variabel int bernama pointer ptr
    printf("%p\n", &ptr2);

    int n;
    scanf("%d", &n);
    // <NamaVariabel> = (<tipe_data_konversi>*) malloc(jumlah_byte)
    ptr = (int *)malloc(sizeof(int));  // memanggil fungsi malloc
    ptr2 = (int *)malloc(sizeof(int)); // memanggil fungsi malloc

    if (ptr != NULL)
    {
        *ptr = 200; // mengubah tipe casting void* menjadi int*
        printf("ptr points to value of %d\n", *ptr);
        free(ptr);
    }
    else
    {
        printf("allocation failed");
    }
    printf("memory allocated\n");
    printf("%p\n", &ptr2);
    for (int i = 0; i < n; i++)
    {
        ptr2[i] = i + 1;
    }
    for (int i = 0; i < n; i++)
    {
        printf("%d, ", ptr2[i]);
        printf("%p\n", &ptr2[i]);
    }

    return 0;
}

// penggunaan fungsi malloc() dan free()