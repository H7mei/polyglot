// Coercion

// string concatenation (number to string)
var a = 2;
console.log(`${String(a) + 2}`); // 22
console.log(`${String(a) - 2}`); // 0  (keep number non concat)

// Boxing (form of implicit coercion)
var b = [[2], [2]];
if (b.length === a) {
  console.log('true');
}

// corner case of javascript
Number(''); // 0
Number(' \t\n'); // 0
Number(null); // 0
Number(undefined); // NaN
Number([]); // 0
Number([1, 2, 3]); // NaN
Number([null]); // 0
Number([undefined]); // 0
Number({}); // NaN

String(-0); // "0"
String(null); // "null"
String(undefined); // "undefined"
String([null]); // ""
String([undefined]); // ""

Boolean(new Boolean(false)); // true
