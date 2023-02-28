#include <stdio.h>

int main()
{

  char huruf[1000], hasil[1000]; // menampung variabel berbentuk array
  int i, jumlahstring, jumlah = 0;

  printf("Masukkan sebuah string: ");
  fgets(huruf, sizeof(huruf), stdin); // melakuan input string ke variabel huruf

  while (huruf[jumlah] != '\0')
  { // menghitung huruf yang di inputkan user
    jumlah++;
  }

  jumlahstring = jumlah - 1;

  for (i = 0; i < jumlah; i++)
  { // melakukan perulangan sebayak varibael unutk membalikkan huruf
    hasil[i] = huruf[jumlahstring];
    jumlahstring--;
  }

  hasil[i] = '\0';
  printf("Hasil reverse string: %s \n", hasil); // hasil
  return 0;
}

/* balik kata menggunakan reverse*/