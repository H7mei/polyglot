// This keyword

// Dynamic Programming

function ask(question) {
  console.log(this.name + ' says: ' + question);
}

function answare(question) {
  console.log(this.name + ' says: ' + question);
}

function otherClass() {
  var x = {
    name: 'John',
  };
  var y = {
    name: 'Jane',
  };
  ask.call(x, 'What is your name?');
  answare.call(y, 'My name is Jane');
  setTimeout(ask.bind(x, `nice to meet you ${y.name}`), 200);
}

otherClass(); // John says: What is your name?

// new keyword
// 1. Creates a new object
// 2. Link the new object to the constructor function
// 3. Call function with the new object as this
// 4. Return the new object

class Person {
  constructor(name) {
    this.name = name;
  }
  sayName() {
    console.log(this.name);
  }
}

var p = new Person('John');
// var p = Person('John'); // TypeError: Person is not a constructor

p.sayName(); // John

// arrow functions
var workshop = {
  name: 'JS workshop',
  start: (date) => {
    console.log(`${this.name} started on ${date}`);
  },
};

// workshop.start('10/10/2018'); // Uncaught TypeError
// workshop.start.call(workshop, '10/10/2018'); // Uncaught TypeError

/* 
gabisa karena karna object itu bukan scope
arrow function itu anonymous function

"Only use => when you need lexical this"
*/
