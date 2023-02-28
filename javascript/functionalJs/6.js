// no mutation (saver)
const oldCity = ['Delhi', 'Mumbai', 'Chennai', 'Kolkata', 'Bangalore'];

const newCities = oldCity.map((city) => {
  if (city === 'Delhi') return 'New Delhi';
  if (city === 'Mumbai') return 'New Mumbai';
  return city;
});

console.log(oldCity); // [ 'Delhi', 'Mumbai', 'Chennai', 'Kolkata', 'Bangalore' ]
console.log(newCities); // [ 'New Delhi', 'New Mumbai', 'Chennai', 'Kolkata', 'Bangalore' ]

// structural sharing example
const a = [1, 2, 3];
const b = [0, ...a, 4];
const c = [0, ...a, 4];

console.log(b[1] === c[1]); // true
console.log(b[2] === c[2]); // true
console.log(b[3] === c[3]); // true

// without mutation
function push(element, array) {
  return [...array, element];
}

const he = [1, 2, 3];

console.log(push(4, he)); // [ 1, 2, 3, 4 ]

// instead of myArray[index] = value
function update(index, value, array) {
  // TODO return a new copy of the array with the given value at index
  return array.map((item, i) => (i === index ? value : item));
}

const myArray = [1, 2, 3];

console.log(update(1, 4, myArray)); // [ 1, 4, 3 ]

// instead of myArray.pop();
function pop(array) {
  // TODO return a new array with the last old element removed
  return array.slice(0, -1);
}

const msoa = [1, 2, 3];

console.log(pop(msoa)); // [ 1, 2 ]
