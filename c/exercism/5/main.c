#include "hamming.h"

int compute(const char *lhs, const char *rhs)
{
    if (!lhs || !rhs)
    {
        return -1;
    }
    int jarak = 0;
    for (; *lhs && *rhs; lhs++, rhs++)
    {
        if (*lhs != *rhs)
        {
            jarak++;
        }
    }
    return (*lhs || *rhs) ? -1 : jarak;
}

int main()
{
    char lhs[22] = "GAGCCTACTAACGGGAT";
    char rhs[22] = "CATCGTAATGACGGCCT";

    printf("%d\n", compute(lhs, rhs)); // 7

    return 0;
}