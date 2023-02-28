#include <stdio.h>

int main(void)
{
	int input;
	int counter = 0;
    printf("masukkan angka : ");
	scanf("%d", &input);
	do
	{
		int innerCounter=-1;
		do
		{
			printf("*#");
			innerCounter++;
		} while (counter>innerCounter);
		printf("\n");
		counter++;
	} while (input > counter && counter<20);
	return 0;
}

/* 
contoh pengulangan
*/

