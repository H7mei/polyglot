#include "grains.h"

uint64_t kotak(uint8_t index)
{
  if (index < 1 || index > 64)
  {
    return 0;
  }
  /*
  Jumlah butir di setiap kotak sesuai dengan pangkat 2:

  kotak pertama memiliki 1=2^0 butir,
  kotak kedua memiliki 2=2^1 butir,
  kotak ketiga memiliki 4=2^2 butir, dan seterusnya.

  Jadi untuk setiap kotak kita memiliki jumlah butir yang sama dengan 2^(indeks-1).

  Kita bisa mendapatkan pangkat 2 hanya dengan menyetel bit ke-n dari bilangan biner menjadi 1.
  kami mencapai ini dengan mengambil nomor 1 (yang memiliki set bit paling tidak signifikan
  1 dan semua bit lainnya diatur ke 0) dan menggeser bit ke kanan.
  */

  return (uint64_t)1 << (index - 1);
}

uint64_t total()
{
  return ~(uint64_t)0;
}

int main()
{
  printf("%ld\n", kotak(6));
  printf("%ld\n", total());
}