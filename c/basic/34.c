#include <stdio.h>

int main(void) 
{
	float numbers[10] = {5.6, 4.3, 6.2, 6.4, 7.3, 2.3, 8.3, 9.2, 0.1, 1.9};
	int i, swapped;
	do
	{
		swapped = 0;
		for (i = 0; i < 10; i++)
		{
			if (numbers[i] < numbers[i + 1])
			{
				swapped = 1;
				float number= numbers[i];
				numbers[i] = numbers[i + 1];
				numbers[i + 1] = number;
			}
		}
		for (i = 0; i < 10; i++)
			printf("%.2f ", numbers[i]);
		printf("\n");
	} while (swapped);

	for (i = 0; i < 10; i++)
		printf("%.2f ", numbers[i]);
	printf("\n");
	return 0;
}

