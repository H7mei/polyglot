#include <stdio.h>

int main(void) 
{
	char board[8][8];
	board[0][0] = 'R';
	board[0][1] = 'N';
	board[0][2] = 'B';
	board[0][3] = 'Q';
	board[0][4] = 'K';
	board[0][5] = 'B';
	board[0][6] = 'N';
	board[0][7] = 'R';
	board[7][0] = 'R';
	board[7][1] = 'N';
	board[7][2] = 'B';
	board[7][3] = 'Q';
	board[7][4] = 'K';
	board[7][5] = 'B';
	board[7][6] = 'N';
	board[7][7] = 'R';
	int i;
	for (i = 0; i < 8; i++)
	{
		board[1][i] = 'P';
		board[2][i] = ' ';
		board[3][i] = ' ';
		board[4][i] = ' ';
		board[5][i] = ' ';
		board[6][i] = 'P';
	}
	int j;
	for (i = 0; i < 8; i++)
	{
		for (j = 0; j < 8; j++)
		{
			printf("%c ", board[i][j]);
		}
		printf("\n");
	}
	return 0;
}

// penerapan 2d array permainan carur 8x8