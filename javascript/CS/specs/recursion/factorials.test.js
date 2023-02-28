/*
  Make a function that computes a factorial recursively.
  A factorial is when you take a number n and multiply by each preceding integer until you hit one.
  n * (n-1) * (n-2) ... * 3 * 2 * 1
  
  Call the function factorial
  
  factorial(1) = 1
  factorial(2) = 2
  factorial(3) = 6 
*/

function factorial(n) {
  // iterative solution
  let x = 1;
  for (let i = 1; i <= n; i++) {
    x *= i;
  }
  return x;
}

// unit tests
// do not modify the below code
test('factorials', () => {
  expect(factorial(1)).toEqual(1);
  expect(factorial(2)).toEqual(2);
  expect(factorial(3)).toEqual(6);
  expect(factorial(10)).toEqual(3628800);
});
