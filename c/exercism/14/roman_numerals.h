#ifndef ROMAN_NUMERALS_H
#define ROMAN_NUMERALS_H

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define MAX 21

char *to_roman_numeral(unsigned int number);

typedef struct
{
  unsigned int value;
  char roman[3];
} NUMBER;

#endif
