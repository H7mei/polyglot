// Closure

// origin of closure

// menggunakan yang terdekat

/* 
fungsi yang dieksekusi oleh fungsi lainnya(nested functions)
sehingga fungsi tersebut dapat mengakses/merekam variable 
didalam lexical scope pada fungsi induk(parent function).
*/

function ask(question) {
  setTimeout(function () {
    console.log(question);
  }, 200);
}

ask('What is your name?');

const hello = 'Hello!!';

((e) => {
  console.log(e);
})(hello);

// closure loop
for (let i = 1; i <= 3; i++) {
  console.group();
  setTimeout(() => {
    console.log(i);
  }, i * 500);
  console.groupEnd();
}

setTimeout(() => {
  console.log('im hasan');
}, 3000);
