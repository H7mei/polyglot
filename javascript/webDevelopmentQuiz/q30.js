/* 

Invoking Object Methods Scope


*/

const objA = {
  type: 'A',
  foo() {
    console.log(this.type);
  },
};

const objB = {
  type: 'B',
  foo: objA.foo,
  bar: () => objA.foo(),
  baz() {
    objA.foo();
  },
};

objB.foo(); // Output: B
objB.bar(); // Output: A
objB.baz(); // Output: A
