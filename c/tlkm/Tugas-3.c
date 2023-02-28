#include <stdio.h>
#include <string.h>

typedef struct
{
  int nim;
  char nama[20];
  char alamat[22];
  float IPK;
} Mhs;

Mhs table[10];

void menu(){
  printf("1. Lihat semua data mahasiswa\n");
  printf("2. Masukkan 1 data mahasiswa\n");
  printf("3. Masukkan 3 data mahasiswa\n");
  printf("4. Lihat data mahasiswa yang memiliki IPK < 3.00\n");
  printf("5. Lihat data mahasiswa berdasarkan urutan NIM ascending\n");
  printf("6. Edit data mahasiswa\n");
  printf("0. Exit\n");
}

void isi(int i, int nim, char nama[], char alamat[], float IPK){
  table[i].nim = nim;
  strcpy(table[i].nama, nama);
  strcpy(table[i].alamat, alamat);
  table[i].IPK = IPK;
}

void print(int jumlah){
  printf("Melihat semua data Mahasiswa \n");
  printf("---------------------------------------------------------\n");
  printf("| id |     NIM     |      NAMA       |   ALAMAT   | IPK |\n");
  printf("---------------------------------------------------------\n");
  for (int i = 0; i < jumlah; i++){
    printf("| %-3d|  %-11d|  %-15s|  %-10s|%-5.2f|\n", i + 1, table[i].nim, table[i].nama, table[i].alamat, table[i].IPK);
  }
  printf("---------------------------------------------------------\n");
}

void tambah(int i){
  printf("NIM    : ");
  scanf("%d", &table[i].nim);
  printf("NAMA   : ");
  scanf("%s", table[i].nama);
  printf("ALAMAT : ");
  scanf("%s", table[i].alamat);
  printf("IPK    : ");
  scanf("%f", &table[i].IPK);
}

void cekIPK(int jumlah){
  printf("Masiswa Yang memiliki IPK < 3.00\n");
  printf("---------------------------------------------------------\n");
  printf("| id |     NIM     |      NAMA       |   ALAMAT   | IPK |\n");
  printf("---------------------------------------------------------\n");
  for (int i = 0; i < jumlah; i++){
    if (table[i].IPK < 3){
      printf("| %-3d|  %-11d|  %-15s|  %-10s|%-5.2f|\n", i + 1, table[i].nim, table[i].nama, table[i].alamat, table[i].IPK);
    }
  }
  printf("---------------------------------------------------------\n");
}

struct temp{
  int nim;
  char nama[20];
  char alamat[22];
  float IPK;
}p1 ;

void sorting(int jumlah){
  int i;
  int data_sisip;
  int j;
  int g;
  int index;


  for (i = 1; i < jumlah; i++){
    data_sisip = table[i].nim;
    strcpy(p1.nama, table[i].nama);
    strcpy(p1.alamat, table[i].alamat);
    p1.IPK = table[i].IPK;
    j = i - 1;
    while((data_sisip < table[j].nim) && (j >= 0)){
        table[j + 1] = table[j];
        j = j - 1;
    }
    table[j + 1].nim = data_sisip;
    strcpy(table[j + 1].nama, p1.nama);
    strcpy(table[j + 1].alamat, p1.alamat);
    table[j + 1].IPK = p1.IPK;
  }

  print(jumlah);
}

void edit(int i){
  printf("Nama Sebelumnya\n");
  printf("Melihat semua data Mahasiswa \n");
  printf("---------------------------------------------------------\n");
  printf("| id |     NIM     |      NAMA       |   ALAMAT   | IPK |\n");
  printf("---------------------------------------------------------\n");
  printf("| %-3d|  %-11d|  %-15s|  %-10s|%-5.2f|\n", i + 1, table[i].nim, table[i].nama, table[i].alamat, table[i].IPK);
  printf("---------------------------------------------------------\n");
  printf("ganti jadi\n");
  printf("NIM    : ");
  scanf("%d", &table[i].nim);
  printf("NAMA   : ");
  scanf("%s", table[i].nama);
  printf("ALAMAT : ");
  scanf("%s", table[i].alamat);
  printf("IPK    : ");
  scanf("%f", &table[i].IPK);
}


int main(){
  int input;
  int jumlah = 2;
  int id;
  int sae = jumlah;

  isi(0, 12042003, "Dea", "Sumatra", 4.00);
  isi(1, 12042002, "Farhan", "Surabaya", 2.00);

  printf("menu tulis 911\n");
  do
  {
    printf("input : ");  
    scanf("%d", &input);
    switch (input)
    {
    case 0:
      printf("Terima Kasi ^-^\n");
      break;
    case 1:
      print(jumlah);
      break;
    case 2:
      printf("Masukkan Data 1 Mahasiswa\n");
      tambah(jumlah);
      jumlah++;
      printf("data berhasil di tambahakan\n");
      printf("\n");
      break;
    case 3:
      printf("Masukkan Data 3 Mahasiswa\n");
      printf("\n");
      for (int i = 0; i < 3; i++){
        sae++;
        if (sae <= 10){
          printf("Pengisan Data Mahasiswa Ke-%d\n", i + 1);
          tambah(jumlah + i);
        }
      }
      if (sae == 12){
        jumlah = sae - 2;
      }else if(sae == 11){
        jumlah = sae - 1;
      }else{
        jumlah = jumlah + 3;
      }
      printf("data berhasil di tambahakan\n");
      printf("\n");
      break;
    case 4:
      cekIPK(jumlah);
      break;
    case 5:
      printf("Sorting Asscending berdasarkan NIM\n");
      sorting(jumlah);
      break;
    case 6:
      printf("Edit data Mahasiswa \n");
      printf("Masukkan id : ");
      scanf("%d", &id);
      edit(id - 1);
      printf("\n");
      break;
    default:
      menu();
      break;
    }
    if (jumlah >= 10){
      printf("---------------\n");
      printf("|Data Penuh!!!|\n");
      printf("---------------\n\n");
    }
  } while (!input == 0 && jumlah <= 10);
  
  return 0;
}
