// pure function
function add(a, b) {
  return a + b;
}

// impure function
let c = 10;

function add2() {
  return c;
}

// imperative
const a = 10;

console.log(a, 'is a number');

// functional
function log(x) {
  console.log(x, 'is a number');
}

log(10);

// side effect
const x = {nama: 'John', age: 20};

function changeName(obj) {
  x.nama = obj;
  console.log('renamed from', x.nama, 'to', obj);
}

changeName('Doe'); // renamed from John to Doe
x; // {nama: 'Doe', age: 20}

// no side effect
const s = {nama: 'John', age: 20};

function rename(oldName, newName) {
  return {
    nama: newName,
    age: oldName.age,
  };
}

const s2 = rename(s, 'Doe');
s2; // {nama: 'Doe', age: 20}
s; // {nama: 'John', age: 20}
