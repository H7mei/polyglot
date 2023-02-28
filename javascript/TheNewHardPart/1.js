/* 
Asychronicity is the backbone of modern web development.
JavaScript is a single-threaded language, which means that it can only do one thing at a time.
The browser provides web APIs that handle certain tasks (like network access and setTimeout),
and these run in parallel with the single thread of JavaScript.
When the task is complete, the web API calls a callback function to notify your code that the task has finished.
*/

function printHello() {
  console.log('Hello');
}

// Node backgroound threads
function nodeBackgroudThread() {
  setTimeout(printHello, 1000);
  console.log('mee too');
}

/* output
mee too
Hello
 */

// calling outside world
function blockFor1ms() {
  // blocks in the JavaScript thread for 1ms
}

function callingOutsideWorld() {
  // event loop to cek the stack is empty
  setTimeout(printHello, 0);
  // blocks for 1ms
  blockFor1ms();
  console.log('Me too! (first)');
}

/* output
Me too! (first)
Hello
*/

// same time

function sameTime() {
  setTimeout(() => {
    console.log('1');
  }, 2);
  setTimeout(() => {
    console.log('3');
  }, 2);
  setTimeout(() => {
    console.log('2');
  }, 2);
}

/* output
1
2
3
*/

// ====== Exercise ======

// Challenge 1

function sayHello() {
  setTimeout(() => {
    console.log('Hello');
  }, 1000);
}

/*  output
hello (after 1 second)
*/

// Challenge 2
function Challenge2() {
  var promise = new Promise(function (resolve, reject) {
    setTimeout(resolve, 300);
  });
  promise.then(() => console.log('Resolved!'));
}

/* output
Resolved!
 */

// Challenge 3
function Challenge3() {
  var promise = new Promise(function (resolve, reject) {
    reject();
  });
  promise.catch(() => console.log('Reject!'));
}

/* output
Reject!
*/

// Challenge 4
function Challenge4() {
  promise = new Promise(function (resolve, reject) {
    setTimeout(resolve, 300);
  });
  promise.then(() => console.log('Promise has been resolved!'));
  console.log("I'm not the promise!");
}

/* output
I'm not the promise!
Promise has been resolved!
*/

// Challenge 5
function Challenge5() {
  function delay() {
    return new Promise((resolve, reject) => {
      setTimeout(resolve, 1000);
    });
  }
  delay().then(sayHello);
}

/*  output
hello (after 1 second)
*/

// Challenge 6
// var secondPromise = Challenge2();
// var firstPromise = sayHello();

// Challenge 7
const fakePeople = [
  {name: 'Rudolph', hasPets: false, currentTemp: 98.6},
  {name: 'Zebulon', hasPets: true, currentTemp: 22.6},
  {name: 'Harold', hasPets: true, currentTemp: 98.3},
];

const fakeAPICall = (i) => {
  const returnTime = Math.floor(Math.random() * 1000);
  return new Promise((resolve, reject) => {
    if (i >= 0 && i < fakePeople.length) {
      setTimeout(() => resolve(fakePeople[i]), returnTime);
    } else {
      reject({message: 'index out of range'});
    }
  });
};

function getAllData() {
  Promise.all([fakeAPICall(0), fakeAPICall(1), fakeAPICall(2)]).then(
    (values) => {
      console.log(values);
    },
  );
}

/* output
[
  { name: 'Rudolph', hasPets: false, currentTemp: 98.6 },
  { name: 'Zebulon', hasPets: true, currentTemp: 22.6 },
  { name: 'Harold', hasPets: true, currentTemp: 98.3 }
]
*/
