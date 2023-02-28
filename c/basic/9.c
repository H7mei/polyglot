#include <stdio.h>

int main()
{
    int a[6] = {1, 2, 3, 4, 5, 6};
    int b[5];
    int n, i, index = -1;

    for (i = 0; i < 6; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\ningin di hapus \n");

    scanf("%d", &n);

    for (i = 0; i < 6; i++)
    {
        if (a[i] == n)
        {
            index = i;
            break;
        }
    }
    if (index != -1)
    {
        for (int j = 0; j < 6 - 1; j++)
        {
            if (j < i)
            {
                b[j] = a[j];
            }
            else
            {
                i++;
                b[j] = a[i];
            }
        }

        for (i = 0; i < 5; i++)
        {
            printf("%d ", b[i]);
        }
        printf("\n%d berhasil di hapus", n);
    }
    else
    {
        for (i = 0; i < 6; i++)
        {
            printf("%d ", a[i]);
        }
        printf("\nelement tidak di temukan");
    }

    return 0;
}