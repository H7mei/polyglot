#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct
{
  char *name;
  char *address;
  int age;
} p1;

p1 table[1];

char print()
{
  printf("Nama   : %s\n", table[1].name);
  printf("Alamat : %s\n", table[1].address);
  printf("Umur   : %d\n", table[1].age);
}

int main()
{
  char nama[20];
  char alamat[30];

  printf("NAMA   : ");
  scanf("%s", nama);
  printf("ALAMAT : ");
  scanf("%s", alamat);

  table[1].name = nama;
  table[1].address = alamat;
  table[1].age = 123;

  print();

  return 0;
}