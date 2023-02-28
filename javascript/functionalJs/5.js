// function composition example
const compose = (f, g) => (x) => f(g(x));

const add1 = (x) => x + 1;

const double = (x) => x * 2;

const add1AndDouble = compose(double, add1);

console.log(add1AndDouble(5)); // 12

// function composition example2
var ender = (ending) => (input) => input + ending;

var exclaim = ender('!');
var adore = ender(' is the best!');
var anouncer = ender('... and now, a word');

var hypeUp = (x) => exclaim(adore(anouncer(x)));

console.log(hypeUp('Functional programming')); // Functional programming is the best!... and now, a word!
console.log(hypeUp('JavaScript')); // JavaScript is the best!... and now, a word!

// make example for pipelining
const pipe =
  (...fns) =>
  (x) =>
    fns.reduce((v, f) => f(v), x);

const pip = pipe(add1, double);

console.log(pip(5)); // 12

// make filter to make string to snake_case
const snakeCase = (str) => {
  return str
    .split(' ')
    .map((word) => word.toLowerCase())
    .join('_');
};

console.log(snakeCase('Hello World')); // hello_world
