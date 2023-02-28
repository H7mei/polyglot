# include <stdio.h>
# include <stdlib.h>

int main()
{
    char nilai;
    scanf("%c", &nilai);
    switch (nilai)
    {
    case 'A':
        printf("You did great!\n");        
        break;
    case 'B':
        printf("You did alright\n");        
        break;
    case 'C':
        printf("You did poorly\n");        
        break;
    case 'D':
        printf("You did very bad\n");        
        break;
    case 'F':
        printf("You failed\n");    
        break;
    default :                           /*ini sama kaya else*/
        printf("Invalid Grade\n");
    }

    return 0;
}


/*
ini membuat switch statements sama kaya if statements
ini lebih mudah bagi kita kalo mau menghitung 1 value
*/