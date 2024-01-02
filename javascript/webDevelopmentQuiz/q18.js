/* 

Promise Methods


*/

// Promise di JavaScript adalah objek yang digunakan untuk menangani operasi asinkron. Sebuah Promise memiliki tiga keadaan:

// 1. **Pending**: Keadaan awal, belum terpenuhi atau ditolak.
// 2. **Fulfilled**: Artinya operasi asinkron selesai sukses.
// 3. **Rejected**: Artinya operasi asinkron gagal.

// Promise digunakan untuk menangani hasil dari operasi asinkron, seperti permintaan jaringan. Anda dapat menetapkan tindakan yang dilakukan ketika Promise terpenuhi (`.then()`) atau ditolak (`.catch()`). Terdapat juga metode `.finally()` yang dieksekusi terlepas dari hasil Promise, baik terpenuhi atau ditolak.

// Contoh penggunaan Promise:

```javascript
let promise = new Promise(function(resolve, reject) {
  // kode asinkron di sini
  if (/* kondisi sukses */) {
    resolve("berhasil");
  } else {
    reject("gagal");
  }
});

promise.then(
  function(value) { /* dijalankan jika terpenuhi */ },
  function(error) { /* dijalankan jika ditolak */ }
);
```;

// Dengan Promise, kode asinkron menjadi lebih terstruktur dan mudah untuk diurus, mengurangi masalah seperti "callback hell".
