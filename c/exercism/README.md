# Exercism

Tempat latihan logika

## 📦 Daftar Isi

1. [hello_world](#hello-world)
2. [armstrong_numbers](#armstrong-numbers)
3. [Resistor Color](#resistor-color)
4. [Isogram](#isogram)
5. [Hamming](#hamming)
6. [Grains](#grains)
7. [Difference Of Squares](#difference-of-squares)
8. [Grade School](#grade-school)
9. [Binary](#binary)
10. [Binary Search](#binary-search)
11. [Sieve](#sieve)
12. [Robot Simulator](#robot-simulator)
13. [Space Age](#space-age)
14. [Roman Numerals](#roman-numerals)
15. [Acronym](#acronym)

## [Hello world](./1/main.c)

coma hello print hello world biasa tapi pake header file

## [Armstrong numbers](./2/main.c)

Bilangan Armstrong adalah bilangan yang merupakan jumlah dari angka-angkanya sendiri yang masing-masing dipangkatkan dengan jumlah angka, contoh;

- 153 is an Armstrong number, because: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
- 154 is not an Armstrong number, because: 154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190

## [Resistor color](./3/main.c)

memetakan warna ke angka, yang ketika disimpan sebagai larik, kebetulan memetakan ke indeksnya dalam larik: Lebih Baik Benar Atau Nilai Besar Anda Salah.

Electronic color code

## [Isogram](./4/main.c)

Menentukan apakah suatu kata atau frasa merupakan isogram.

Isogram merupakan kata tidak berpola kata atau prasa tampa pengulangan huruf, namun spasi dan tanda hubung diperbolehkan muncul beberapa kali, contoh

- lumberjacks
- six-year-old

Kata isograms, bagaimanapun, bukanlah isogram, karena s berulang.

## [Hamming](./5/main.c)

Menghitung Jarak Hamming antara dua untai DNA.

membaca DNA menggunakan huruf C,A,G dan T. Dua untaian mungkin terlihat seperti ini:

```text
GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^
```

Mereka memiliki 7 perbedaan, dan karena itu Jarak Hamming adalah 7.

## [Grains](./6/main.c)

Ada 64 kotak di papan catur (di mana kotak 1 memiliki satu butir, kotak 2 memiliki dua butir, dan seterusnya). output programnya

- berapa banyak biji-bijian pada kotak yang diberikan, dan
- the total number of grains on the chessboard

## [Difference Of Squares](./7/main.c)

selisih kuadrat jumlah dan jumlah kuadrat dari N bilangan asli pertama.

(1 + 2 + ... + 10)² = 55² = 3025
1² + 2² + ... + 10² = 385

hasil = 3025 - 385 = 2640

## [Grade School](./8/main.c)

Used Simple object, membuat daftar nama siswa dan nilainya.

Lalu megurutkan semua list berdasarkan nilainya. (langsung di urutkan saat data siswanya di masukkan)

## [Binary](./9/main.c)

Convert Binary(basis 2) Menjadi Desimal(basis 10)

101 => 1*2^2 + 0*2^1 + 1*2^0 => 1*4 + 0*2 + 1*1 => 4 + 1 => 5 Basis 10

## [Binary Search](./10/main.c)

Searching mengunakan binary search kalo ngak ketemu akan mengambalikan not found.

Pencarian biner membagi dua jumlah item untuk diperiksa dengan setiap iterasi.

## [Sieve](./11/main.c)

Saringan Eratosthenes, merupakan saringan untuk mendapatkan bilangan prima semuai dengan maksimun nilai yang di masukkan

tanpa mengunakan (pembagian, modulo)

[wikipedia](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) algoritm

## [Robot Simulator](./12/main.c)

Fasilitas pengujian pabrik robot membutuhkan program untuk memverifikasi pergerakan robot.

Robot ditempatkan pada grid hipotetis tak terbatas, menghadap ke arah tertentu (utara, timur, selatan, atau barat) pada satu set koordinat {x,y}, mis., {3,8}, dengan koordinat meningkat ke utara dan timur .

## [Space Age](./13/main.c)

Masukan usia berupa second lalu hitung berapa umur seseorang di planet yang berbeda.

Jadi, jika Anda diberi tahu bahwa seseorang berusia 1.000.000.000 detik, Anda seharusnya dapat mengatakan bahwa mereka berusia 31,69 tahun Bumi.

## [Roman Numerals](./14/main.c)

fungsi untuk mengkonversi dari angka normal ke Angka Romawi.

```text
 1  => I
10  => X
 7  => VII
```

Dalam angka Romawi 1990 adalah MCMXC:
1000=M 900=CM 90=XC

## [Acronym](./15/main.c)

Mengambil setiap huruf pertama dari sebuah kata

ex: Portable Network Graphics menjadi (PNG)

## [Word Count](./16/main.c)

Diberikan sebuah frasa, hitung kemunculan setiap kata dalam frasa itu.

Aturan :

- insensitive
- unordered
- selain tanda petik semua tanda baca di abaikan
- Kata-kata dapat dipisahkan dengan spasi putih apa pun (yaitu "\t", "\n", " ")

Keluaran Program banyak jumlah kata dalam sebuah kalimat, kalo ada yang dua katanya di hitung satu
