// Prototypes

/* 
Object are built by "constructors calls" (via new)

A "constructor call" make an object "base on" its own
prototype.
*/

/* ES20115
class Workshop {
  constructor(teacher) {
    this.teacher = teacher;
  }
  start(date) {
    console.log(`${this.teacher} started on ${date}`);
  }
}
*/

function Workshop(teacher) {
  this.teacher = teacher;
}

Workshop.prototype.start = function (date) {
  console.log(`${this.teacher} started on ${date}`);
};

var workshop = new Workshop('John');

workshop.start('10/10/2018'); // John started on 10/10/2018

// __proto__
workshop.__proto__ === Workshop.prototype; // true
Object.getPrototypeOf(workshop) === Workshop.prototype; // true

/* Infnite Recursion
 workshop.start = function (date) {
  this.start(date.toUppqercase());
};

workshop.start('10/10/2018'); //  
*/

// object linked to prototype
function anotherWorkshop(teacher) {
  Workshop.call(this, teacher);
}

anotherWorkshop.prototype = Object.create(Workshop.prototype);

anotherWorkshop.prototype.speakUp = function (msg) {
  console.log(`${this.teacher} said: ${msg}`);
};

var x = new anotherWorkshop('John');

x.speakUp('Hello'); // John said: Hello

// javascript not "inheritance" but "Behavior delegation"
