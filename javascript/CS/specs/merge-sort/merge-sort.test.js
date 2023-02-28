/*
  Write a function that performs mergesort
  Name the function mergeSort
  It will take in a array of numbers and return a sorted array numbers

  You'll need to write more than just one function
*/

const mergeSort = (nums) => {
  if (nums.length < 2) return nums;

  const length = nums.length;
  const middle = Math.floor(length / 2);
  const sortedLeft = mergeSort(nums.slice(0, middle));
  const sortedRight = mergeSort(nums.slice(middle));

  const results = [];
  while (sortedLeft.length && sortedRight.length) {
    if (sortedLeft[0] <= sortedRight[0]) {
      results.push(sortedLeft.shift());
    } else {
      results.push(sortedRight.shift());
    }
  }
  return results.concat(sortedLeft, sortedRight);
};

// unit tests
// do not modify the below code
test('merge sort', function () {
  const nums = [10, 5, 3, 8, 2, 6, 4, 7, 9, 1];
  const ans = mergeSort(nums);
  expect(ans).toEqual([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
});
