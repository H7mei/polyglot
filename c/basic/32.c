#include <stdio.h>

int main(void) 
{
	char alphabet[26], c;
	for (c = 'a'; c<='z'; c++)
	{
		alphabet[c-'a'] = c;
	}

	for (c = 'z'; c > 'a'; c--)
	{
		printf("%c\n", alphabet[c - 'a']);
	}
	printf("%c", alphabet['g'-'a']);
	printf("%c", alphabet['r' - 'a']);
	printf("%c", alphabet['e' - 'a']);
	printf("%c", alphabet['a' - 'a']);
	printf("%c\n", alphabet['t' - 'a']);
	return 0;
}

/*
array alphabet terbalik
*/