#include "difference_of_squares.h"

unsigned int square_of_sum(const unsigned int n)
{
  int sum = (n * (n + 1)) / 2;
  return sum * sum;
}

unsigned int sum_of_squares(const unsigned int n)
{
  return n * (n + 1) * (2 * n + 1) / 6;
}

unsigned int difference_of_squares(const unsigned int num)
{
  return square_of_sum(num) - sum_of_squares(num);
}

int main()
{
  printf("%d", difference_of_squares(10));
}

// unsigned itu tidak boleh negatif