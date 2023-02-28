# Pencarian (Searching)

pencarian atau searching sesuata pada sekumpulan data merupakan proses yang sangat penting dalam kehidupanyata. 

## 📦 Daftar Isi

1. [Pencarian Beruntun (Sequential Search)](#sequential-search)
2. [Pencarian Bagi Dua (Binary Search)](#binary-search)

## Sequential Search

Pencarian beruntun atau sequential search dapat dilakukan pada data yang belum terurut maupun yang sudah terurut

pencarian dilakukan dengan menyamakan angka yang di cari dengan yang tersedia di table

```bash
while ((i < 5) && (ketemu == 0)){
    if (strcmp(table[i].nim, nim_cari) == 0){
        ketemu = 1;
    }else{
        i = i + 1;
    }
}
```

## Binary Search

Pencarian bagi dua, atau pencarian biner hanya dapat dilakukan pada data yang sudah terurut.

proses pencarian di dasarkan pada kelompok bagian mana dari array yang lebih memungkinkan bilangan yang dicari berada sesuai urutan besar nilai element array

```bash
while ((ketemu == 0) && (i <= j)){
  k = (int)(i + j) / 2;
  if(tabInt[k] == bil_cari){
    ketemu = 1;
    do{
      printf("index ke %d = %d\n", k, tabInt[k]);
      k--;
    } while (tabInt[k] == bil_cari);
  }else{
    if (tabInt[k] > bil_cari){
      j = k - 1;
    }else{
      i = k + 1;
    }
  }
}
```

## reference

- [A.S, R., 2018. Logika Algoritma dan Pemrograman Dasar. Bandung: Modula.](http://rosa-as.id/buku/df.php?df=7)