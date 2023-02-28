#ifndef WORD_COUNT_H
#define WORD_COUNT_H

#define MAX_WORDS 20
#define MAX_WORD_LENGTH 50

#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

typedef struct word_count_word
{
  char text[MAX_WORD_LENGTH + 1];
  int count;
} word_count_word_t;

#define EXCESSIVE_LENGTH_WORD -1
#define EXCESSIVE_NUMBER_OF_WORDS -2

int count_words(const char *sentence, word_count_word_t *words);

#endif
