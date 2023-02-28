// iteration ----
for (let i = 0; i < 10; i++) {
  console.log(i);
}
// - imperative
// - looping
// - stateful

// recursion ----
function loop(i) {
  if (i >= 10) return;
  console.log(i);
  loop(i + 1);
}
loop(0);
// - functional
// self-referential
// stateless

// make tail recursive
function loop(i, acc) {
  if (i >= 10) return acc;
  return loop(i + 1, acc.concat(i));
}

loop(0, []);

// make fibonaci iterative
function fib(n) {
  let a = 0;
  let b = 1;
  while (n-- > 0) {
    const c = a + b;
    a = b;
    b = c;
  }
  return a;
}

fib(10);

// make fibonaci recursive
function fib(n) {
  if (n <= 1) return n;
  return fib(n - 1) + fib(n - 2);
}

fib(10);
