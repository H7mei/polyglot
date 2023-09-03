// Data Structure Array

// javascript memory allocation
const a = new ArrayBuffer(16)
// array int 8 bit 0 - 255 value 
const a16 = new Uint8Array(a);

a16[1] = 123
a16[2] = 221

console.log(a16[1])
console.log(a)

// O1 for time complexcity
// in memory array berdekatan [[A1][A2]] 
//
//
// pada dasarnya array ga punya metod push or pop
//
// ukuran array dapat di sesuaikan sesuai kebutuhan
// di beberapa bahasa pemprograman seperti c ukuran array
// harus di isi dan di javascript array dapat grows 
//
// static
// dynamic
