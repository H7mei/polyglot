/* 

Generators


*/

function hello() {
  return 'Hello';
}

function world() {
  return 'World';
}

function newyear() {
  return '20' + '24';
}

function* gen() {
  yield hello();
  yield world();
  yield newyear();
}

const g = gen();

// console.log(g.next()); // { value: 'Hello', done: false }
// console.log(g.next()); // { value: 'World', done: false }
// console.log(g.next()); // { value: '2024', done: false }
// console.log(g.next()); // { value: undefined, done: true }

console.log(g.next().value + ' ' + g.next().value + ' ' + g.next().value);

// ####

function* generatorFunc() {
  const result = yield 'My input!';
  console.log('In Log: ' + result);
  return 'All done!';
}

const it = generatorFunc();

console.log(it.next()); // { value: 'My input!', done: false }
console.log(it.next('An argument')); // In Log: An argument { value: 'All done!', done: true }
