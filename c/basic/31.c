#include <stdio.h>

int main(void) 
{
	int fiboSequence[10], i;
	fiboSequence[0] = 1;
	fiboSequence[1] = 1;
	for (i = 2; i<10; i++)
	{
		fiboSequence[i] = fiboSequence[i - 1] + fiboSequence[i - 2];
	}
	for (i = 0; i<10; i++)
	{
		printf("%d\n", fiboSequence[i]);
	}
	for (i = 0; i<10; i += 2)
	{
		printf("%d\n", fiboSequence[i]);
	}
	for (i = 1; i<10; i += 2)
	{
		printf("%d\n", fiboSequence[i]);
	}
	return 0;
}

/*
Dalam matematika, bilangan Fibonacci 
adalah barisan yang didefinisikan secara rekursif
*/