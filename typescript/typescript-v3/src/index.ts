/**
 * Create a promise that resolves after some time
 * @param n number of milliseconds before promise resolves
 */
function timeout(n: number) {
  return new Promise((res) => setTimeout(res, n));
}

/**
 * Add three numbers
 * @param a first number
 * @param b second
 */
export async function addNumbers(a: number, b: number) {
  await timeout(500);
  return a + b;
}

(async () => {
  // console.log(await addNumbers(3, 4));
})();

// print infotmation from car
function printCar(car: {
  make: string;
  model: string;
  year: number;
  chargeVoltage?: [number, string];
}) {
  const chargeVoltage = car.chargeVoltage?.join('').replace('.', '');
  console.log(`${car.make} ${car.model} (${car.year}) ${chargeVoltage ?? ''}`);
}

printCar({make: 'Toyota', model: 'Corolla', year: 2020});
printCar({
  make: 'Tesla',
  model: 'Model 3',
  year: 2020,
  chargeVoltage: [240, 'V'],
});

// object type
const pabric: {
  [k: string]: {
    country: string;
    area: string;
    number: string;
  };
} = {
  Tesla: {
    country: 'USA',
    area: 'California',
    number: 'Tesla, Inc.',
  },
};

pabric['Toyota'] = {
  country: 'Japan',
  area: 'Aichi',
  number: 'Toyota Motor Corporation',
};

console.log(pabric['Toyota'].country, pabric['Tesla'].country);
console.log(pabric['Toyota'].area, pabric['Tesla'].area);
console.log(pabric['Toyota'].number, pabric['Tesla'].number);

// flip coin
function flipCoin(): 'heads' | 'tails' {
  return Math.random() > 0.5 ? 'heads' : 'tails';
}

console.log(flipCoin());

// make intercetion type
type Car = {
  make: string;
  model: string;
  year: number;
};

type Country = {
  country: string;
  area: string;
  number: string;
};

function carBuild(car: Car & Country) {
  console.log('type', car);
}

carBuild({
  make: 'Toyota',
  model: 'Corolla',
  year: 2020,
  country: 'Japan',
  area: 'Aichi',
  number: 'Toyota Motor Corporation',
});

// make interface example
interface CarInterface {
  make: string;
  model: string;
  year: number;
}

interface CountryInterface {
  country: string;
  area: string;
  number: string;
}

function carBuildInterface(car: CarInterface & CountryInterface) {
  console.log('interface', car);
}

carBuildInterface({
  make: 'Toyota',
  model: 'Corolla',
  year: 2020,
  country: 'Japan',
  area: 'Aichi',
  number: 'Toyota Motor Corporation',
});

// make recrusive array algorithm
function flatten<T>(arr: T[]): T[] {
  return arr.reduce<T[]>((acc, val) => {
    if (Array.isArray(val)) {
      return acc.concat(flatten(val));
    }
    return acc.concat(val);
  }, []);
}

console.log(flatten([1, 2, [3, 4, [5, 6, [7, 8, [9, 10]]]]]));

// make nested array
const nestedArray = [1, 2, [3, 4, [5, 6, [7, 8, [9, 10]]]]];

type JSONvalue =
  | string
  | number
  | boolean
  | null
  | JSONvalue[]
  | {[key: string]: JSONvalue};
// for sting, number, boolean, null, array, object

function jsonArray(arr: JSONvalue[]) {
  return arr.reduce<JSONvalue[]>((acc, val) => {
    if (Array.isArray(val)) {
      return acc.concat(jsonArray(val));
    }
    return acc.concat(val);
  }, []);
}

console.log(jsonArray(nestedArray));

// make api post to server with formData
// const formData = new FormData();

// formData.append('name', 'John');
// formData.append('age', '20');

// fetch('https://httpbin.org/post', {
//   method: 'POST',
//   body: formData,
// });

// make api post to server with json
// const json = JSON.stringify({
//   name: 'John',
//   age: 20,
// });

// fetch('https://httpbin.org/post', {
//   method: 'POST',
//   headers: {
//     'Content-Type': 'application/json',
//   },
//   body: json,
// });

// make function to get data from server with error handling
async function getDataErrorHandling() {
  try {
    const response = await fetch('https://httpbin.org/get');
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.log(error);
  }
}

// getDataErrorHandling();

// make readonlly type
type ReadonlyCar = {
  readonly make: string;
  readonly model: string;
  readonly year: number;
};

const car: ReadonlyCar = {
  make: 'Toyota',
  model: 'Corolla',
  year: 2020,
};

// car.make = 'Tesla'; // error

// class super example
class CarE {
  constructor(public make: string, public model: string, public year: number) {}
}

class ElectricCar extends CarE {
  constructor(
    make: string,
    model: string,
    year: number,
    public chargeVoltage: [number, string],
  ) {
    super(make, model, year);
  }
}

const tesla = new ElectricCar('Tesla', 'Model 3', 2020, [240, 'V']);

console.log(tesla);

// make function to return void type
function printCarVoid(car: {make: string; model: string; year: number}): void {
  console.log(car);
}

printCarVoid({make: 'Toyota', model: 'Corolla', year: 2020});

// make function to return never type
function printCarNever(car: {
  make: string;
  model: string;
  year: number;
}): never {
  throw new Error('error');
}

// printCarNever({make: 'Toyota', model: 'Corolla', year: 2020});

// example for used not null assertion operator
function printCarNotNull(car: {
  make: string;
  model: string;
  year: number;
}): void {
  console.log(car);
}

const carNotNull = {
  make: 'Toyota',
  model: 'Corolla',
  year: 2020,
};

printCarNotNull(carNotNull!);

// example for use type parameter
function printCarTypeParameter<T>(car: T): T {
  console.log(car);
  return car;
}

printCarTypeParameter({make: 'Toyota', model: 'Corolla', year: 2020});

// what is type parameter
// 1. type parameter is a placeholder for a type
// 2. type parameter is a generic type
// 3. type parameter is a type variable

// make exaple to use reduce method
const numbers = [1, 2, 3, 4, 5];

const sum = numbers.reduce((acc, val) => acc + val, 0);

console.log(sum);

// make example to use filter method
const cars = [
  {make: 'Toyota', model: 'Corolla', year: 2020},
  {make: 'Tesla', model: 'Model 3', year: 2020},
  {make: 'Toyota', model: 'Camry', year: 2020},
  {make: 'Tesla', model: 'Model X', year: 2020},
  {make: 'Toyota', model: 'Prius', year: 2020},
  {make: 'Tesla', model: 'Model S', year: 2020},
  {make: 'Toyota', model: 'Yaris', year: 2020},
  {make: 'Tesla', model: 'Model Y', year: 2020},
  {make: 'Toyota', model: 'Avalon', year: 2020},
  {make: 'Tesla', model: 'Roadster', year: 2020},
  {make: 'Toyota', model: 'C-HR', year: 2020},
];

const teslaCars = cars.filter((car) => car.make === 'Tesla');

console.log(teslaCars);

// make example to use map method
const carModels = cars.map((car) => car.model);

console.log(carModels);

// dictionary for map, reduce, filter
// 1. map: transform each element in an array
// 2. reduce: reduce an array to a single value
// 3. filter: filter an array based on a condition

// example to T extends and class extends
class CarT {
  constructor(
    public make: string,
    public model: string,
    public year: number,
    public rem?: number,
  ) {}
}

class ElectricCarT extends CarT {
  constructor(
    make: string,
    model: string,
    year: number,
    public chargeVoltage: [number, string],
  ) {
    super(make, model, year);
  }
}

function printCarT<T extends CarT>(car: T): T {
  console.log(car);
  return car;
}

printCarT(new CarT('Toyota', 'Corolla', 2020));

// make type guard
function isCarT(car: CarT | ElectricCarT): car is CarT {
  return (car as ElectricCarT).chargeVoltage === undefined;
}

function printCarTGuard(car: CarT | ElectricCarT): void {
  if (isCarT(car)) {
    console.log(car);
  }
}

printCarTGuard(new CarT('Toyota', 'Corolla', 2020, 90));

// type guard
function isDefined<T>(val: T | undefined): val is T {
  return val !== undefined;
}

let x = 3 as number | undefined;

if (isDefined(x)) {
  console.log(x);
}
