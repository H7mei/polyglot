#include "word_count.h"

#define STRING_SIZE (MAX_WORD_LENGTH + 1)

word_count_word_t actual_solution[MAX_WORDS];
word_count_word_t expected_solution[MAX_WORDS + 1];

int count_words(const char *sentence, word_count_word_t *words)
{
  unsigned char len = strlen(sentence);
  char *copy = (char *)malloc((len + 1) * sizeof(char));
  const char *exception = " ,.-\n:!!&@$%^&\"";
  char *token;
  unsigned char total = 0;
  unsigned char repeat = 0;
  unsigned char i = 0;

  for (i = 0; i < strlen(sentence); i++)
  {
    copy[i] = tolower(sentence[i]);
  }
  copy[i] = '\0';

  token = strtok(copy, exception);

  while (token != NULL)
  {
    if (('\'' == token[0]) && ('\'' == token[strlen(token) - 1]))
    {
      token[strlen(token) - 1] = '\0';
      token++;
    }

    if (total == 0)
    {
      strncpy(words[total++].text, token, strlen(token));
      words[total - 1].count++;
    }
    else
    {
      for (unsigned char i = 0; i < total; i++)
      {
        if (strncmp(words[i].text, token, strlen(token) + 1) == 0)
        {
          words[i].count++;
          repeat = 1;
          break;
        }
      }
      if (repeat == 0)
      {
        strncpy(words[total++].text, token, strlen(token));
        words[total - 1].count++;
      }
      repeat = 0;
    }
    token = strtok(NULL, exception);
  }

  return total;
}

int main()
{
  char *input_text = "Hole Isme Hanad";

  memset(actual_solution, 0, sizeof(actual_solution));

  printf("%d\n", count_words(input_text, actual_solution));

  return 0;
}