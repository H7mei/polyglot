// closure example
var add = function (x) {
  return function (y) {
    return x + y;
  };
};

var add5 = add(5);
var add10 = add(10);

console.log(add5(2)); // 7
console.log(add10(2)); // 12

// currying example
var sayHello = function (greeting) {
  return (name) => greeting + ', ' + name;
};

var sayHelloTo = sayHello('Hello');
var sayHiTo = sayHello('Hi');

console.log(sayHelloTo('John')); // Hello, John
console.log(sayHiTo('John')); // Hi, John

// partial application example
var sayThanks = function (greeting, name) {
  return greeting + ', ' + name;
};

var sayThanksTo = sayThanks.bind(null, 'Thanks');

console.log(sayThanksTo('John')); // Thanks, John

// currying nested functions with arrow functions
var add = (x) => (y) => (z) => x + y + z;

var add5 = add(5);
var add10 = add(10);

console.log(add5(2)(3)); // 10

// lamda calculus example
// λx.x
var id = (x) => x;

// λx.λy.x
var fst = (x) => (y) => x;

// λx.λy.y
var snd = (x) => (y) => y;

// λx.λy.λz.xz(yz)
var s = (x) => (y) => (z) => x(z)(y(z));

// λx.λy.λz.x(yz)
var k = (x) => (y) => (z) => x(y)(z);

// λx.λy.λz.x(yz)(xz)
var i = (x) => (y) => (z) => x(y)(z)(y)(z);
