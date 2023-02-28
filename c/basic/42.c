#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int size;
	scanf("%d", &size);
	if (size >= 1024 * 1024)
	{
		puts("Too much memory requested.");
	}
	else
	{
		char *values = (char *)malloc(sizeof(char) * size);
		/* sizeof(char) is defined in standard as 1 and you don't have to write it */
		int i;
		for (i = 0; i < size; i++)
		{
			values[i] = 'A' + (i % 26);
		}
		int boundaries = size;
		if (boundaries > 400)
			boundaries = 400;
		for (i = 0; i < boundaries; i++)
		{
			printf("%c", values[i]);
			if ((i + 1) % 40 == 0)
				printf("\n");
		}
		printf("\n");
	}
	return 0;
}