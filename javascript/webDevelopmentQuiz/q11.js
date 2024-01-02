/* 

Event Propagation


*/

// <div class="outer">
//   <div class="inner">
//     <button>Click me!</button>
//   </div>
// </div>

// <script>
//   outer.addEventListener("click", () => log("A"), true);
//   outer.addEventListener("click", () => log("B"));
//   inner.addEventListener("click", () => log("C"), true);
//   inner.addEventListener("click", (e) => {
//     log("D");
//     e.stopPropagation();
//   });
//   button.addEventListener("click", () => log("E"));
//   button.addEventListener("click", () => log("F"));
//   button.addEventListener("click", () => log("G"), true);
// </script>

// output order: A C G F D E
