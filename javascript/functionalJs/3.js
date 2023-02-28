// make filter, map, reduce higher order functions
// so that they can be called with a variable number of arguments

const filter = (f, ...args) => {
  return args.filter(f);
};

const map = (f, ...args) => {
  return args.map(f);
};

const reduce = (f, init, ...args) => {
  return args.reduce(f, init);
};

const add = (a, b) => a + b;
const isEven = (x) => x % 2 === 0;
const isOdd = (x) => x % 2 !== 0;
const isPrime = (x) => {
  if (x < 2) return false;
  for (let i = 2; i < x; i++) {
    if (x % i === 0) return false;
  }
  return true;
};

const sum = reduce(add, 0, 1, 2, 3, 4, 5);
const even = filter(isEven, 1, 2, 3, 4, 5, 6);
const double = map((x) => x * 2, 1, 2, 3, 4, 5);

console.log(sum); // 15
console.log(even); // [2, 4, 6]
console.log(double); // [2, 4, 6, 8, 10]
