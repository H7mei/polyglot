#include <stdio.h>
#include <stdlib.h>

int main()
{
    char line[255];
    char line2[255];

    FILE * DAt = fopen("main.txt", "r");
    
    fgets(line, 255, DAt); /* first line in the */
    fgets(line2, 255, DAt); /* second line in the */

    printf("%s", line);
    printf("%s", line2);
    

    fclose(DAt);
    return 0;
}

/*
membaca file
parameternya r 
*/