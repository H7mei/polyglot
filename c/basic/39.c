#include <stdio.h>

int main(void)
{
	char days[7][10] = {"minggu", "senin", "selasa", "rabu", "kamis", "jumat", "sabtu"};
	int day;
	scanf("%d", &day);
	if (day >= 0 && day < 7)
	{
		printf("Pointer version: %s\n", days[day]);
		printf("Array index version: %s\n", days[day]);
	}
	else
		puts("Error, no such day.");
	return 0;
}