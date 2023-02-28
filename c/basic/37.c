#include <stdio.h>
#include <string.h>

int main(void)
{
	char word[256];
	int i;
	scanf("%s", word);
	int length = strlen(word);
	for(i=0 ; i < length/2 ; i++)
	{
		char c = word[i];
		word[i] = word[length - i - 1];
		word[length - i - 1] = c;
	}
	printf("%s\n", word);
	return 0;
}

// balik kata