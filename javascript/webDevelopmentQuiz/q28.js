/* 

Event Loop


*/

// Event loop adalah konsep pemrograman yang sangat penting dalam banyak bahasa pemrograman yang berfokus pada asinkronus atau pemrograman berbasis event.

console.log('Mulai');

fetch('https://jsonplaceholder.typicode.com/posts/1')
  .then((response) => response.json()) // Konversi respons ke JSON
  .then((data) => {
    console.log('Data diterima:', data); // Menampilkan data yang diterima
  })
  .catch((error) => {
    console.error('Terjadi kesalahan:', error); // Menangani kesalahan
  });

console.log('Menunggu data...');

// Output:
// Mulai
// Menunggu data...
// Data diterima: { ...data dari server... }
