#include "binary_search.h"

int *binary_search(int value, int *arr, size_t length)
{
  if ((!length) || (value < arr[0]) || (value > arr[length - 1]))
  {
    return NULL;
  }
  if (value == arr[0])
  {
    return &arr[0];
  }

  if (value == arr[length - 1])
  {
    return &arr[length - 1];
  }

  unsigned int pos = 0;
  signed int step = length;
  char odd = !(length % 2);

  while (step)
  {
    if (arr[pos += ((step = step >> 1) * ((value > arr[pos]) ? 1 : -1)) + odd] == value)
    {
      return &arr[pos];
    }
  }
  return NULL;
}

int main()
{
  int arr[] = {1, 3, 4, 6, 8, 9, 11};

  int k = 0;

  int search = 1;

  size_t length = sizeof(arr) / sizeof(arr[0]);

  for (int i = 0; i < length; i++)
  {
    k = &arr[i] == binary_search(search, arr, length);
    if (k == 1)
    {
      printf("You got It\n");
    }
  }

  return 0;
}