/* 

Call Stack & Event Loop


*/

// Code

setTimeout(() => console.log('1'));

Promise.resolve().then(() => console.log('2'));

Promise.resolve().then(() => setTimeout(() => console.log('3')));

new Promise(() => console.log('4'));

setTimeout(() => console.log('5'));

// Answer
// 4
// 2
// 1
// 5
// 3

// Event Loop Visualizer
// http://latentflip.com/loupe/
