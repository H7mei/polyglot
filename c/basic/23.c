#include <stdio.h>

int main(void) 
{
	int input;
	int i, j;
    printf("masukkan angka : ");
	scanf("%d", &input);
	for (i = 0; i < input && i < 20; i++)
	{
		printf("*");
		for (j = 0; j < i; j++)
			printf(" ");
		printf("*\n");
	}
	if (input > 20)
		input = 20;
	for (i = input-1; i >= 0; i--)
	{
		printf("*");
		for (j = 0; j < i; j++)
			printf(" ");
		printf("*\n");
	}
	return 0;
}

