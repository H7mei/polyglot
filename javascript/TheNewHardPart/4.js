/*
GENERATORS

Generators are functions that can be exited and later re-entered. Their context (variable bindings) will be saved across re-entrances.
*/

function* range(start, end, step) {
  while (start < end) {
    yield start;
    start += step;
  }
}

const it = range(0, 10, 2);
// console.log(it.next()); // { value: 0, done: false }
// console.log(it.next()); // { value: 2, done: false }
// console.log(it.next()); // { value: 4, done: false }
// console.log(it.next()); // { value: 6, done: false }
// return
// console.log(it.return(10)); // { value: 10, done: true }
// console.log(it.next()); // { value: undefined, done: true }

// Generator Functions with Dynamic Data
function* createFlow() {
  const num = 10;
  const newNum = yield num;
  yield 5 + newNum;
  yield 6;
}

const returnNextElement = createFlow();
// console.log(returnNextElement.next()); // { value: 10, done: false }
// console.log(returnNextElement.next(2)); // { value: 7, done: false }
// console.log(returnNextElement.next()); // { value: 6, done: false }
// console.log(returnNextElement.next()); // { value: undefined, done: true }

// Async Generators
async function* createFlow() {
  const num = 10;
  const newNum = await Promise.resolve(5);
  yield num + newNum;
  const otherNum = await Promise.resolve(10);
  yield otherNum;
}

const returnXA = createFlow();
// console.log(returnXA.next()); // { value: Promise { 15 }, done: false }
// console.log(returnXA.next()); // { value: Promise { 10 }, done: false }
// console.log(returnXA.next()); // { value: undefined, done: true }

/* yeild
function doWhenDataReceived(value) {
  returnNextElement.next(value);
}

function* createFlow() {
  const data = yield fetch('https://swapi.co/api/people/1');
  console.log(data);
}

const returnD = createFlow();
const futureData = returnD.next();

futureData.then(doWhenDataReceived);
*/

/* clean up version
async function* createFlow() {
  console.log('Me First');
  const data = await fetch('https://swapi.co/api/people/1');
  console.log(data);
}

createFlow();

console.log('Me Second');
*/