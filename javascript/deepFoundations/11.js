// class

class Animal {
  constructor(name) {
    this.name = name;
  }
  ask() {
    console.log(this.name + ' makes a noise.');
  }
}

class Dog extends Animal {
  speak() {
    console.log(this.name + ' barks.');
  }
}

var dog = new Dog('Fido');
dog.speak(); // Fido barks.
dog.ask(); // Fido makes a noise.

var animal = new Animal('Spot');
animal.ask(); // Spot makes a noise.
// animal.speak(); // Uncaught TypeError
