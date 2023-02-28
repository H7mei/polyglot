/* 
iterators are objects that have a next method
that returns an object with a value and done property

the value property is the next value in the sequence
the done property is a boolean that tells us if we are done iterating
*/

// Return the next value in the sequence
function createFunction(array) {
  let i = 0;
  function inner() {
    const element = array[i];
    i++;
    return element;
  }
  return inner;
}

const returnNextElement = createFunction([4, 5, 6]);
const element1 = returnNextElement(); // 4
const element2 = returnNextElement(); // 5
const element3 = returnNextElement(); // 6

// ======= Challenge =======
// CHALLENGE 1

function sumFunc(arr) {
  return (sum = arr.reduce((a, b) => a + b));
  /* use for loop  
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum; 
  */
}

const array = [1, 2, 3, 4];
// console.log(sumFunc(array)); // 10

function returnIterator(arr) {
  let c;
  function inner() {
    c = arr.shift();
    return c;
  }
  return inner;
}

const array2 = ['a', 'b', 'c', 'd'];
const myIterator = returnIterator(array2);
// console.log(myIterator()); // 'a'
// console.log(myIterator()); // 'b'
// console.log(myIterator()); // 'c'
// console.log(myIterator()); // 'd'

// CHALLENGE 2

function nextIterator(arr) {
  let i = 0;
  return {
    next: function () {
      const element = arr[i];
      i++;
      return element;
    },
  };
}

const array3 = [1, 2, 3];
const iteratorWithNext = nextIterator(array3);
// console.log(iteratorWithNext.next()); //  1
// console.log(iteratorWithNext.next()); //  2
// console.log(iteratorWithNext.next()); //  3

// CHALLENGE 3

function sumArray(arr) {
  // use your nextIterator function
  let sum = 0;
  let next = nextIterator(arr);
  for (let i = 0; i < arr.length; i++) {
    sum += next.next();
  }
  return sum;
}

const array4 = [1, 2, 3, 4];
// console.log(sumArray(array4)); // 10

// CHALLENGE 4

function setIterator(set) {
  let i = 0;
  let arr = Array.from(set);
  return {
    next: function () {
      const element = arr[i];
      i++;
      return element;
    },
  };
}

const mySet = new Set('hey');
const iterateSet = setIterator(mySet);
// console.log(iterateSet.next()); // 'h'
// console.log(iterateSet.next()); // 'e'
// console.log(iterateSet.next()); // 'y'

// CHALLENGE 5

function indexIterator(arr) {
  let i = 0;
  return {
    next: function () {
      const element = arr[i];
      i++;
      return [i - 1, element];
    },
  };
}

const array5 = ['a', 'b', 'c', 'd'];
const iteratorWithIndex = indexIterator(array5);
// console.log(iteratorWithIndex.next()); // [0, 'a']
// console.log(iteratorWithIndex.next()); // [1, 'b']
// console.log(iteratorWithIndex.next()); // [2, 'c']

// CHALLENGE 6

function Words(string) {
  this.str = string;
}

Words.prototype[Symbol.iterator] = function () {
  let index = 0;
  const splitStr = this.str.split(/\s/);
  return {
    next: function () {
      if (index < splitStr.length) {
        const value = splitStr[index];
        index++;
        return {value: value, done: false};
      } else {
        return {done: true};
      }
    },
  };
};

// Uncomment the lines below to test your work
const helloWorld = new Words('Hello World');
// for (let word of helloWorld) {console.log(word);} // -> 'Hello' and 'World'

// CHALLENGE 7

function valueAndPrevIndex(array) {
  let i = 0;
  return {
    sentence: function () {
      const element = array[i];
      i++;
      return element;
    },
  };
}

const returnedSentence = valueAndPrevIndex([4, 5, 6]);
// console.log(returnedSentence.sentence()); // 4
// console.log(returnedSentence.sentence()); // 5
// console.log(returnedSentence.sentence()); // 6

//CHALLENGE 8

function* createConversation(string) {
  let arr = string.split(' ');
  for (let i = 0; i < arr.length; i++) {
    yield arr[i];
  }
}

// console.log(createConversation('english').next()); // { value: 'english', done: false }

//CHALLENGE 9
function waitForVerb(noun) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve(noun);
    }, 1000);
  });
}

async function f(noun) {
  let verb = await waitForVerb(noun);
  console.log(verb);
}

// f('dog'); // logs 'dog' after 1000ms
