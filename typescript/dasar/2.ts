// O(N^2)
function sum_char_codes(n: string): number {
    let sum = 0;
    for (let i = 0; i < n.length; ++i) {
        for (let j = 0; j < n.length; ++j) {
          sum += n.charCodeAt(i);
    }
    return sum;
}

// O(N^3)
function sum_char_codes(n: string): number {
    let sum = 0;
    for (let i = 0; i < n.length; ++i) {
        for (let j = 0; j < n.length; ++j) {
            for (let k = 0; k < n.length; ++k) {
              sum += n.charCodeAt(i);
        }
    }
    return sum;
}

// O(n log n)
// Quicksort

// O(log n)
// binary search tree


