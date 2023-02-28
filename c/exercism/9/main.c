#include "binary.h"

int convert(const char *input)
{
  size_t jeje = strlen(input);
  int base = 1;
  int result = 0;
  for (size_t i = 0; i < jeje; i++)
  {
    if (input[jeje - 1 - i] < '0' || input[jeje - 1 - i] > '1')
    {
      return INVALID;
    }
    result += base * (input[jeje - 1 - i] - '0');
    base *= 2;
  }
  return result;
}

int main()
{
  printf("%d", convert("101")); // 5
  return 0;
}