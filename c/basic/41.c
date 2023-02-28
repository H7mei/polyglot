#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define maks 3

struct TMhs
{
  char nim[9];
  char nama[21];
  int UTS;
  int UAS;
  int Quis;
  float nilaiAkhir;
  char index;
};

int main()
{
  struct TMhs dt[maks];
  for (int i = 0; i < maks; i++)
  {
    printf("Pengisian Data Mahasiswa Ke-%d\n", i + 1);
    printf("NIM     : ");
    scanf("%s", dt[i].nim);
    printf("NAMA    : ");
    scanf("%s", dt[i].nama);
    printf("UTS     : ");
    scanf("%d", &dt[i].UTS);
    printf("QUIS    : ");
    scanf("%d", &dt[i].Quis);
    printf("UAS     : ");
    scanf("%d", &dt[i].UAS);
    dt[i].nilaiAkhir = 0.3 * dt[i].UTS + 0.2 * dt[i].Quis + 0.5 * dt[i].UAS;
    if (dt[i].nilaiAkhir >= 80)
      dt[i].index = 'A';
    else if (dt[i].nilaiAkhir >= 60)
      dt[i].index = 'B';
    else if (dt[i].nilaiAkhir >= 40)
      dt[i].index = 'C';
    else if (dt[i].nilaiAkhir >= 20)
      dt[i].index = 'D';
    else if (dt[i].nilaiAkhir >= 0)
      dt[i].index = 'E';
  }

  printf("Data yang telah di masukkan adalah : \n");
  printf("---------------------------------------------------------\n");
  printf("| NIM |    NAMA        | QUIS | UTS | UAS | N A | INDEX |\n");
  printf("---------------------------------------------------------\n");
  for (int i = 0; i < maks; i++)
  {
    printf("|%-5s|%-16s|%6d|%5d|%5d|%5.2f|%3c    |\n", dt[i].nim, dt[i].nama, dt[i].Quis, dt[i].UTS, dt[i].UAS, dt[i].nilaiAkhir, dt[i].index);
  }
  printf("---------------------------------------------------------\n");
  return 0;
}