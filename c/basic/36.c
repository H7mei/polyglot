#include <stdio.h>
#include <string.h>

int main(void) 
{
	int i;
	char IPAddress[20];
	char IPAddressLast3[20];
	char IPAddressLast2[10];
	char IPAddressLast1[5];
	int part3Count = 0;
	int part2Count = 0;
	int part1Count = 0;
	int partsCount = 0;
	int actualCount = 0;
	scanf("%s", IPAddress);
	int isError = 0;
	for (i=0 ; i<strlen(IPAddress) ; i++)
	{
		char c = IPAddress[i];
		if (c >= '0' && c <= '9' || c == '.')
		{
			if (c=='.')
			{
				if(actualCount>3)
				{
					isError = 1;
					break;
				}
				partsCount++;
				if (partsCount>3)
				{
					isError = 1;
					break;
				}
				if (partsCount == 2)
				{
					IPAddressLast3[part3Count] = c;
					part3Count++;
				}
				if (partsCount == 3)
				{
					IPAddressLast3[part3Count] = c;
					part3Count++;
					IPAddressLast2[part2Count] = c;
					part2Count++;
				}
				actualCount = 0;
			}
			else
			{
				if(partsCount==1)
				{
					IPAddressLast3[part3Count] = c;
					part3Count++;
				}
				if (partsCount == 2)
				{
					IPAddressLast3[part3Count] = c;
					part3Count++;
					IPAddressLast2[part2Count] = c;
					part2Count++;
				}
				if (partsCount == 3)
				{
					IPAddressLast3[part3Count] = c;
					part3Count++;
					IPAddressLast2[part2Count] = c;
					part2Count++;
					IPAddressLast1[part1Count] = c;
					part1Count++;
				}
				actualCount++;
			}

		}
		else
		{
			isError = 1;
			break;
		}
	}
	if (isError)
		puts("Error: not a valid address.");
	else
	{
		IPAddressLast3[part3Count] = '\0';
		IPAddressLast2[part2Count] = '\0';
		IPAddressLast1[part1Count] = '\0';
		printf("Last 3 parts: %s\n", IPAddressLast3);
		printf("Last 2 parts: %s\n", IPAddressLast2);
		printf("Last 1 part: %s\n", IPAddressLast1);
	}
	return 0;
}

/*
memisahkan part
inputnya ip address
*/