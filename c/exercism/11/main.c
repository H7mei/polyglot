#include "sieve.h"

uint32_t sieve(uint32_t limit, uint32_t *primes, size_t max_primes)
{
  int n[limit];
  uint32_t i, j, r = 0;

  memset(primes, 0, max_primes);
  memset(n, 0, limit);

  for (i = 2; i <= limit; i++)
  {
    for (j = i * 2; j <= limit; j += i)
    {
      n[j - 2] = -1;
    }
  }

  for (i = 2; i <= limit && r < max_primes; i++)
  {
    if (n[i - 2] != -1)
    {
      primes[r++] = i;
    }
  }

  return r;
}

#define RESULT_ARRAY_LEN (1000)
static uint32_t result_array[1000];

int main()
{
  int limit = 10;

  uint32_t i = 0;

  sieve(limit, result_array, RESULT_ARRAY_LEN);

  while (i < limit)
  {
    if (result_array[i] != 0)
    {
      printf("%d\n", result_array[i]);
    }
    i++;
  }

  return 0;
}