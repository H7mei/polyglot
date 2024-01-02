/* 

Garbage Collection


*/

// Garbage Collection di dalam bahasa pemrograman adalah sebuah proses otomatis untuk mengelola memori.

function addMember(name) {
  return {
    name,
    created_at: Date.now(),
  };
}

let obj1 = addMember('John');
let obj2 = addMember('Jane');

iobj1 = null;
obj2 = null;
