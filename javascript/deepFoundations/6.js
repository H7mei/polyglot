// Scope

// in javascript code runs in global scope

var teacher = 'John';

function otherClass() {
  var teacher = 'Jane';
  console.log('we are in otherClass', teacher);
}

function thisClass() {
  console.log('we are in thisClass', teacher);
}

otherClass(); // we are in otherClass Jane
thisClass(); // we are in thisClass John

// undefined vs undeclared
// undefined = variabel exist but not have value
// undeclared = variabel not exist (a is not defined)

// function declaration vs function expression

// function declaration = function can be called before it is defined
// function expression = function can be called after it is defined

// function declaration
function sayHello() {
  console.log('hello');
}

sayHello(); // hello

// function expression
var sayBye = function (b) {
  console.log(b);
};

sayBye('bye'); // bye

// IFFE Pattern
var teacher = 'cortana';

// IFFE is anonymous
(function (teacher) {
  console.log(teacher, 1); // alexa
})('alexa');

console.log(teacher, 2); // cortana

// try catch in function expression
var teacher = (function getTeacher(s) {
  try {
    return s;
  } catch (e) {
    return 'siri';
  }
})('cogito');

console.log(teacher); // siri

// Block Scoping: encapsulation (using let)
// Block scoping is a way to restrict the scope of a variable to a specific block of code.
{
  let ca = 'Suzy';
  console.log(ca); // Suzy
}

console.log(ca); // undefined

// choose between let and var
// let is block scoped
// var is function scoped

// let and var are not hoisted

{
  {
    console.log(ca, -1); // undefined
    {
      var ca = 'Suzy';
      let xa = 'Zuzy';
      const sd = 'Sudy';
    }
    console.log(ca, 1); // Suzy
    // console.log(xa, 2); // undeclared
    // console.log(sd, 3); // undeclared
  }
  console.log(ca, 2); // suzy
  // console.log(xa, 3); //  undeclared
  // console.log(sd, 4); //  undeclared
}

// const is block scoped
// const (costant variable) is a variable that cannot be reassigned

var ds = 'Sudy';
ds = 'John'; // okk

const sa = 'Sudy';
// sa = 'John'; // TypeError: Assignment to constant variable.

const sd = [1, 2, 3];
sd[2] = 4; // okk
