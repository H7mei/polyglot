#include <stdio.h>

int main()
{
    int n, t = 0, h;
    scanf("%d", &n);
    int b[n];
    // input
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &b[i]);
    }
    // sorting
    for (int j = 0; j < n - 1; j++)
    {
        for (int i = 0; i < i - j; i++)
        {
            if (b[i] < b[i + 1])
            {
                t = b[i];
                b[i] = b[i + 1];
                b[i + 1] = t;
            }
        }
    }
    // median
    printf("%d", b[n / 2]);
    return 0;
}
