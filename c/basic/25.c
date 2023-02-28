# include <stdio.h>
# include <stdlib.h>

int main()
{
    int umur = 18;
    double gpa = 127.3;
    char grade = 'A';

    printf("age   : %p\n", &umur);
    printf("gpa   : %p\n", &umur);
    printf("grade : %p\n", &umur);
    
    return 0;
}


/*
%p ini artinya pointer (alamat penyimpanan di memory)/ alamat fisik di memory
dalam menggunakan %p gunakan juga (&)

output nya itu alamat memory addresses

*/