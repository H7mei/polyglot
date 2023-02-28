#include <stdio.h>

int main(void) 
{
	char IPAddressPart1[4];
	char IPAddressPart2[4];
	char IPAddressPart3[4];
	char IPAddressPart4[4];
	char IPAddress[16];

	scanf("%s", IPAddressPart1);
	scanf("%s", IPAddressPart2);
	scanf("%s", IPAddressPart3);
	scanf("%s", IPAddressPart4);
	sprintf(IPAddress, "%s.%s.%s.%s", IPAddressPart1, IPAddressPart2, IPAddressPart3, IPAddressPart4);
	printf("%s\n", IPAddress);
	return 0;
}