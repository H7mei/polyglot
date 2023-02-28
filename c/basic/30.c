#include <stdio.h>

int main(void) 
{
	int month;
	scanf("%d", &month);
	int daysBefore = 0;
	int isCorrectlyComputed = 0;
	switch(month)
	{
		case 12: daysBefore += 30;
		case 11: daysBefore += 31;
		case 10: daysBefore += 30;
		case 9:  daysBefore += 31;
		case 8:  daysBefore += 31;
		case 7:  daysBefore += 30;
		case 6:  daysBefore += 31;
		case 5:  daysBefore += 30;
		case 4:  daysBefore += 31;
		case 3:  daysBefore += 29;
		case 2:  daysBefore += 31;
		case 1:	isCorrectlyComputed = 1;  break;
		default: puts("Error: no such month in my calendar.");
	}
	if (isCorrectlyComputed)
		printf("There are %d days before the given month.\n", daysBefore);
	return 0;
}