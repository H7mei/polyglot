#include "acronym.h"

char *abbreviate(const char *phrase)
{
  char *abc = malloc(128);
  char *temp = abc;

  if (!phrase || !*phrase)
  {
    return NULL;
  }

  *temp++ = *phrase++;

  while (*phrase)
  {
    if (*phrase == ' ' || *phrase == '-')
    {
      while (!isalpha(*phrase))
      {
        phrase++;
      }
      *temp++ = toupper(*phrase);
    }
    phrase++;
  }

  *temp = '\0';

  return abc;
}

int main()
{
  printf("%s\n", abbreviate("The Road _Not_ Taken"));

  return 0;
}