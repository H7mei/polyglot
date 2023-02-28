#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE * DAt = fopen("main.txt", "w");
    
    fprintf(DAt, "Kara, marketing 22th\n");
    fprintf(DAt, "Kirana, sales 32th\n");
    fprintf(DAt, "Miya, sales 22th\n");


    fclose(DAt);
    return 0;
}

/*
ini adalah cara menulis file
parameter w = write
a = pen nambahin
*/
