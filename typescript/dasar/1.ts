// Tipe Data Primitive
// Tipe Data Primitive adalah tipe data yang tidak memiliki properti atau method

// show all type in typescript
type AllType = string | number | boolean | null | undefined | symbol | object;

// Tipe Data String
let nama: string = 'John Doe'; // nama : "John Doe"

// Tipe Data Number
let umur: number = 20; // umur : 20

// Tipe Data Boolean
let isMarried: boolean = false; // isMarried : false

// Tipe Data Any
let data: any = 'John Doe'; // data : "John Doe"
data = 20; // data : 20
data = false; // data : false

// Tipe Data Array
let hobbies: string[] = ['Membaca', 'Menulis']; // hobbies : ["Membaca", "Menulis"]
let age: number[] = [20, 21, 22]; // age : [20, 21, 22]

// Tipe Data Tuple
let address: [string, number] = ['Jl. ABC', 123]; // address : ["Jl. ABC", 123]

// Tipe Data Enum
enum Color {
  Red,
  Green,
  Blue,
}
let warnaFavorit: Color = Color.Green; // warnaFavorit : 1

// Tipe Data Unknown
let value: unknown; // value : unknown

// Tipe Data Never
function error(message: string): never {
  throw new Error(message);
}

// Tipe Data Void
function sayHelloVoid(name: string): void {
  console.log(`Hello ${name}`);
}

// Tipe Data Null
let dataNull: null = null; // dataNull : null

// Tipe Data Undefined
let dataUndefined: undefined = undefined; // dataUndefined : undefined

// Tipe Data Object
let person: object = {
  name: 'John Doe',
  age: 20,
}; // person : {name: "John Doe", age: 20}

// Tipe Data Function
function sayHelloFunction(name: string): string {
  return `Hello ${name}`;
} // sayHello : (name: string) => string

// Tipe Data Type Assertion
let valueAssertion: any = 'John Doe';
let lengthOfString: number = (valueAssertion as string).length; // lengthOfString : 8

// Tipe Data Type Inference
let valueInference = 'John Doe'; // valueInference : string

// Tipe Data Union
let dataUnion: string | number = 'John Doe'; // dataUnion : "John Doe"
dataUnion = 20; // dataUnion : 20

// Tipe Data Literal
let dataLiteral: 'John Doe' = 'John Doe'; // dataLiteral : "John Doe"

// Tipe Data Type Alias
type StringOrNumber = string | number;
let dataAlias: StringOrNumber = 'John Doe'; // dataAlias : "John Doe"

// Tipe Data Date
let today: Date = new Date(); // today : 2021-07-20T07:00:00.000Z

// Tipe Data Array Generic
let hobbiesGeneric: Array<string> = ['Membaca', 'Menulis']; // hobbiesGeneric : ["Membaca", "Menulis"]

// Tipe Data Symbol
let symbol: symbol = Symbol('a'); // symbol : Symbol(a)

// Tipe Data Type Guard
function add(a: unknown, b: unknown) {
  if (typeof a === 'number' && typeof b === 'number') {
    return a + b;
  }
  return 0;
}

// Tipe Data Type Guard with Interface
interface Admin {
  role: string;
}

interface User {
  role: string;
  name: string;
}

function printRole(user: Admin | User) {
  if ('name' in user) {
    console.log(user.name);
  }
}

// Tipe Data Nullish Value
// 1. null : ada nilai, tapi kosong
// 2. undefined : nilai tidak lagi ada
// 3. void : untuk fungsi yang tidak mengembalikan nilai

// Tipe Data Optional Chaining
let dataOptional: {
  name: string;
  age: number;
  address: {
    street: string;
  };
} = {
  name: 'John Doe',
  age: 20,
  address: {
    street: 'Jl. ABC',
  },
};

let street = dataOptional?.address?.street; // street : "Jl. ABC"
