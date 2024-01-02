/* 

WeakMap


*/

// WeakMap adalah sebuah struktur data yang merupakan bagian dari JavaScript standard library. Fitur utamanya adalah referensi "lemah" terhadap kunci-kunci objek yang terdapat di dalamnya.

// Membuat WeakMap baru
let weakMap = new WeakMap();

// Membuat beberapa objek
let obj1 = {};
let obj2 = function () {};
let obj3 = new Date();
let obj5 = obj3;

// Menyimpan data di WeakMap dengan objek sebagai kunci
weakMap.set(obj1, 'data untuk obj1');
weakMap.set(obj2, 'data untuk obj2');
weakMap.set(obj3, 'data untuk obj3');

// Mendapatkan nilai dari WeakMap
console.log(weakMap.get(obj1)); // Output: "data untuk obj1"
console.log(weakMap.get(obj2)); // Output: "data untuk obj2"

// Memeriksa keberadaan kunci di WeakMap
console.log(weakMap.has(obj3), 'obj3'); // Output: true

// Menghapus entri dari WeakMap

// weakMap.delete(obj3);
obj3 = null; // Menghilangkan referensi ke obj3
console.log(weakMap.has(obj3), 'obj3'); // Output: false
console.log(obj5, 'obj5'); // Output: true

// Objek yang tidak memiliki referensi lain di luar WeakMap dapat dihapus secara otomatis
let obj4 = {};
weakMap.set(obj4, 'data untuk obj4');
obj4 = null; // Menghilangkan referensi ke obj4

// Setelah garbage collection, obj4 akan dihapus dari WeakMap
// (tidak dapat ditunjukkan secara langsung karena proses garbage collection terjadi secara otomatis)
