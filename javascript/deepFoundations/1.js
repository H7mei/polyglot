// Primitive Types

// in javascrit everything is not an object

// Types of Primitive Data Types
// 1. undefined
// 2. string
// 3. number
// 4. boolean
// 5. object        > object
// 6. symbol

// 7. undeclared
// 8. null
// 9. function      > object
// 10. array        > object
// 11. bigint

// typeof operator
var v;
typeof v; // undefined
typeof 'hello'; // string
typeof 1; // number
typeof true; // boolean
typeof {}; // object
typeof Symbol('foo'); // symbol
typeof function () {}; // function
typeof []; // object
typeof BigInt(1); // bigint
typeof null; // object >> bug

// undefined vs undeclared vs uninitialized (aka TDZ)
// is diferent concepts

// NaN vs isNaN()
// NaN is not a number
// isNaN() is a function that checks if something is not a number
var a = Number('0o46'); // 38
var b = Number('39'); // 39
var c = Number('n/a'); // NaN
a - 'myson age'; // NaN

c === c; // false

isNaN(a); // false
isNaN(c); // true
isNaN('Myson'); // true

Number.isNaN(a); // false
Number.isNaN(c); // true
Number.isNaN('Myson'); // true

// Negative Zero (Special Values -0)
var d = -0;
d === -0; // true

d.toString(); // "0"
d === 0;
d < 0;
d > 0;

// menentukan dua method yang sama
Object.is(d, -0); // true
Object.is(d, 0); // false

// untuk mengetahui bilangan yang di tentukan negatif atau positif
Math.sign(-3); // -1
Math.sign(3); // 1
Math.sign(-0); // -0 >> salah
Math.sign(0); // 0 >> salah

// "fix" Math.sign(...)
function sign(v) {
  return v !== 0 ? Math.sign(v) : Object.is(v, -0) ? -1 : 1;
}

sign(-3); // -1
sign(3); // 1
sign(-0); // -1
sign(0); // 1

function formatTrend(trendRate) {
  var direction = trendRate < 0 || Object.is(trendRate, -0) ? '˅' : '˄';
  return `${direction} ${Math.abs(trendRate)}`;
}

formatTrend(-3); // "˅ 3"
formatTrend(3); // "˄ 3"
formatTrend(-0); // "˅ 0"
formatTrend(0); // "˄ 0"

// Fundamental Object (aka: Built-in Object, Native Function)
// use new :
// 1. Array()
// 2. Date()
// 3. Function()
// 4. Object()
// 5. RegExp()
// 6. Error()

// dont use new :
// 1. Number()
// 2. String()
// 3. Boolean()

// ex
var yesterday = new Date('June 10, 2020');
yesterday.toUTCString(); // "Mon, 10 Jun 2020 00:00:00 GMT"

var myGPA = String(yesterday.toUTCString());
//
