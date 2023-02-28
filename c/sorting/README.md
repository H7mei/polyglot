# Sorting (Pengurutan)

Pengurutan dapat dilakukan dengan urutan urut ke atas[1, 2, 3] (ascending) atau dengan urutan menurun[3, 2, 1] (descending)

Dalam memilih algoritma sorting atau pengurutan yang digunakan ada baiknya melihat sisi efisiensi penggunaan memori, sehingga didapatkan pengurutan dengan pemakaian sumber daya lebih sedikit.

dalam distribusi normal setiap algoritma memiliki kelebihan untuk menangani kasus kasus tertentu, berikut table berbandingan efisiensi algoritma dengan notasi big O;

|     | Algoritma      | Skenario terburuk | Skenario Rata-rata | skenario kasus terbaik |
| --- | -------------- | ----------------- | ------------------ | ---------------------- |
| 1.  | Insertion Sort | O(N^2)            | O(N^2)             | O(N)                   |
| 2.  | Selection Sort | O(N^2/2)          | O(N^2/2)           | O(N^2/2)               |
| 3.  | bubble Sort    | O(N^2)            | O(N^2/2)           | O(N^2)                 |
| 4.  | Quick Sort     | O(N^2)            | O(N^2 log N)       | O(N^2 log N)           |

biasanya rata rata algoritma sorting udah punya build in sorting di bahasa masing masing, dan selain yang di table ada beberapa algoritma sorting lainya, dibawah ini adalah contoh algortma Sorting;.

## 📦 Daftar Isi

1. [Metode Penyisipan (Insertion Sort)](#insertion-Sort)
2. [Metode Seleksi (Selection Sort)](#Selection-Sort)
3. [Metode Gelembung (bubble Sort)](#bubble-Sort)
4. [Metode Urut Cepat (Quick Sort)](#Quick-Sort)

## Insertion Sort

Metode penyisipan langsung (stright insertion) adalah metode yang mengambil sebuah data sisip pada data yang di urutkan dan mengeser data yang lebih besar dari data sisip agar data sisip di tempatkan di tempat yang benar.

Dicari Lalu Di insert Ke depan, membandingkan setiap element yang di lewatinya apabila menemukan data yang kurang dari data_sisip dia akan mengeser sampai tempat yang tepat lalu indexnya baru pindah.

```bash
for (i = 1; i < 10; i++){
    data_sisip = tabInt[i];
    j = i - 1;
    while((data_sisip < tabInt[j]) && (j >= 0)){
        tabInt[j + 1] = tabInt[j];
        j = j - 1;
    }
    tabInt[j + 1] = data_sisip;
}
```

Untuk Menganti Dari (ascending) menjadi (descending) cukup mengganti

```bash
while((data_sisip < tabInt[j]) && (j >= 0)) (ascending)

# menjadi

while((data_sisip > tabInt[j]) && (j >= 0)) (descending)
```

## Selection Sort

Metode seleksi adalah metode pengurutan yang mencari nilai terkecil atau terbesar bergantung pada pengurutan menaik atau menurun kemudian di tempatkan pada tempat paling depan, index paling depan nya terus bertambah.

dia akan melakukan pertukaran dengan membandingakn nilai Minimum, lalu di tukar tempat ama yang membandingkan,

```bash
for (i = 0; i < (10 - 1); i++){
    minIndex = i;
    for (j = (i + 1); j < 10; j++){
        if(tabInt[minIndex] > tabInt[j]){
            minIndex = j;
        }
    }
    temp = tabInt[i];
    tabInt[i] = tabInt[minIndex];
    tabInt[minIndex] = temp;
}
```

Untuk Menganti Dari (ascending) menjadi (descending) cukup mengganti

```bash
if(tabInt[minIndex] > tabInt[j]) (ascending)

# menjadi

if(tabInt[minIndex] < tabInt[j]) (descending)
```

## bubble Sort

Metode Gelembung adalah metode pengurutan yang menukarkan dua element secara terus menerus sampai pengurutan selesai.

menukar element berulang memiliki dua pointer yang membandingkan nilai, setelah sampe element terakhir angka paling besar akan di lock.

```bash
do
{
    tukar = 0;
    for (i = 0; i < (10 - 1); i++){
        if (tabInt[i] > tabInt[i + 1]){
            temp = tabInt[i];
            tabInt[i] = tabInt[i + 1];
            tabInt[i + 1] = temp;
            tukar = 1;
        }
    }
} while (tukar == 1);
```

Untuk Menganti Dari (ascending) menjadi (descending) cukup mengganti

```bash
if (tabInt[i] > tabInt[i + 1]) (ascending)

# menjadi

if (tabInt[i] < tabInt[i + 1]) (descending)
```

## Quick Sort

Metode quick sort adalah metode pengurutan yang menjadikan sebuah table data yang akan diurutkan menjadi dua buah sub bagian yang ditelusuri dari kiri dan dari kanan.

Inti dari metode ini adalah mengumpulkan angka yang kecil dibagian depan atau kiri, dan angka yang lebih besar di bagian belakang. Penelusuran tergantung Pivot(acuan) angka yang di pilih dalam quick sort dikenal beberapa pivot diantaranya adalah pivot pinggir dan pivot tengah;

1. Pivot Pinggir

```bash
void quickSortPivotPinggir(int l, int r){
    int i;
    int j;
    int temp;

    i = l;
    j = r;

    do{
        while ((tabInt[i] < tabInt[r]) && (i <= j)){
            i = i + 1;
        }
        while ((tabInt[j] > tabInt[l]) && (i <= j)){
            j = j - 1;
        }
        if(i < j){
            temp = tabInt[i];
            tabInt[i] = tabInt[j];
            tabInt[j] = temp;
            i = i + 1;
            j = j - 1;
        }
    }while (i <= j);

    if (l < j){
        quickSortPivotPinggir(l, j);
    }
    if (i < r){
        quickSortPivotPinggir(i, r);
    }
}
```

2. Pivot Tengah

```bash
void quickSortPivotTengah(int l, int r){
    int i;
    int j;
    int temp;
    int pivot;

    i = l;
    j = r;

    pivot = tabInt[l];

    do{
        while((tabInt[i] < pivot) && (i <= j)){
            i = i + 1;
        }
        while((tabInt[j] > pivot) && (i <= j)){
            j = j - 1;
        }
        if(i <= j){
            temp = tabInt[i];
            tabInt[i] = tabInt[j];
            tabInt[j] = temp;
            i = i + 1;
            j = j - 1;
        }
    }while (i <= j);

    if (l < j){
        quickSortPivotTengah(l, j);
    }
    if (i < r){
        quickSortPivotTengah(i, r);
    }
}
```

Antara kedua algoritma quick sort di atas hasil sangat bergantung pada nilai-nilai yang akan di urutkan.

Untuk Menganti Dari (ascending) menjadi (descending) cukup mengganti

```bash
while ((tabInt[i] < tabInt[r] / pivot) && (i <= j)){ (ascending)
    i = i + 1;
}
while ((tabInt[j] > tabInt[l] / pivot) && (i <= j)){
    j = j - 1;
}

# menjadi

while ((tabInt[i] > tabInt[r] / pivot) && (i <= j)){ (descending)
    i = i + 1;
}
while ((tabInt[j] < tabInt[l] / pivot) && (i <= j)){
    j = j - 1;
}
```

## reference

- [A.S, R., 2018. Logika Algoritma dan Pemrograman Dasar. Bandung: Modula.](http://rosa-as.id/buku/df.php?df=7)
- [Insertion, Selection sama Buble Sort (big O Notation)](https://www.youtube.com/watch?v=Un3qTGXU6sM&list=PL54Ypjb3VYvDS2yvvWr3hpnvVKDPh4Gg6&index=5)
- [Quick Sort (big O Notation)](https://informatika.stei.itb.ac.id/~rinaldi.munir/Matdis/2008-2009/Makalah2008/Makalah0809-019.pdf)
