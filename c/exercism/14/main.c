#include "roman_numerals.h"

static const NUMBER romans[] = {
    {1000, "M"}, {900, "CM"}, {500, "D"}, {400, "CD"}, {100, "C"}, {90, "XC"}, {50, "L"}, {40, "XL"}, {10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}};

char *to_roman_numeral(unsigned int number)
{
  char *result = calloc(MAX, sizeof(char));

  for (int i = 0; i < 13; i++)
  {
    while (number >= romans[i].value)
    {
      strcat(result, romans[i].roman);
      number -= romans[i].value;
    }
  }

  return result;
}

int main()
{
  printf("%s\n", to_roman_numeral(1666)); // MDCLXVI

  return 0;
}