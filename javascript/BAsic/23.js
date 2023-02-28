// functional fibonacci
function fibonacci(n) {
  if (n < 2) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// make fibonacci itterative
function fibonacci(n) {
  let a = 1,
    b = 0,
    temp;

  while (n >= 0) {
    temp = a;
    a = a + b;
    b = temp;
    n--;
  }

  return b;
}

/* 
use recursion fibonacci its more heavy on the stack
use itterative fibonacci its more faster
*/
