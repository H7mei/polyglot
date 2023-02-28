// Hoisting

// Hoisting is JavaScript's default
// behavior of moving all declarations to the top of the current scope.

// dia dapat mengakses fungsi sebelum kode itu di deklarasikan

sayHello();

function sayHello() {
  console.log('Hello');
}

// hoisting
var teacher;

teacher; // undefined

teacher = 'cortana';

// example
var ss = 'cortana';

console.log(s()); // output: undefined

function s() {
  console.log(ss); // output: undefined
  var ss = 'alexa';
}

// variabel hoisting?

console.log(x); // undefined
// console.log(m); // ReferenceError
// console.log(y); // ReferenceError

var x = 1;
const m = 'cortana';
let y = 2;
