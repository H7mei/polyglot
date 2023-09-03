# Complete Intro to Computer Science: Algorithms and Data Structures

As taught by Brian Holt for Frontend Masters [See the course website][site]

## computational/spatial complexity

Algoritma             | Worst Case        | Average Case       | Best Case              | Space Complexity  |
--------------------- | ----------------- | ------------------ | ---------------------- | ----------------- |
Bubble Sort           | O(N^2) reverse    | O(N^2)             | O(N)                   | O(1)              |
Insertion Sort        | O(N^2) reverse    | O(N^2)             | O(N)                   | O(1)              |
Merge Sort            | O(N^log(N))       | O(N^log(N))        | O(N^log(N))            | O(N)              |
Quick Sort            | O(N^2) rev-sort   | O(N^log(N))        | O(N^log(N))            | O(log N)          |
Radix Sort            | O(N^2) [100, 1000]| O(Nk)              | O(Nk)                  | O(N + k)          |
Linear Search         | O(N)              | O(N)               | O(1)                   | O(1)              |
Binary Search         | O(log N)          | O(log N)           | O(1)                   | O(1)              |
Heap Sort             | O(N^log(N))       | O(N^log(N))        | O(N^log(N))            | O(1)              |

[src Big-O cheat sheet](https://www.bigocheatsheet.com/pdf/big-o-cheatsheet.pdf)

*k : number of digit

## data structure

Data Structure       | Add      | Remove     | Get      | Contains | Next |
---------------------|----------|------------|----------|----------|------|
Array List           | O(1)     |  O(N)      | O(1)     |   O(N)   | O(1) |
Linked List          | O(1)     |  O(1)      | O(N)     |   O(N)   | O(1) |
Binary Search Tree   | O(log N) |  O(log N)  | O(log N) |   O(N)   | O(N) |
AVL Tree             | O(log N) |  O(log N)  | O(log N) | O(log N) | O(N) |

## 📦 Daftar Isi

1. [Bubble Sort (iterative sort)](#bubble-sort)
2. [Insertion Sort (iterative sort)](#insertion-sort)
3. [Merge Sort (recursive sort)](#merge-sort)
4. [Quick Sort (recursive sort)](#quick-sort)
5. [Radix Sort (non-comparison)](#radix-sort)
6. [Linear Search](#linear-search)
7. [Binary Search](#binary-search)
8. [Array List](#arraylist)
9. [Linked List](#linkedlist)
10. [Binary Search Tree](#binary-search-tree)
11. [AVL Tree](#avl-tree)
12. [Depth-First Tree Traversals](#depth-first-tree-traversals)
13. [Breadth-First Tree Traversals](#breadth-first-tree-traversals)
14. [Heap Sort](#heap-sort)
15. [Graphs](#graphs)
16. [Pathfinding](#pathfinding)
17. [Tries](#tries-usefull-for-typeahead)
18. [Bloom Filters](#bloom-filters-probabilitic-data-structure)

## Bubble Sort

```js
function bubbleSort(nums) {
  let swapped = true;
  while (swapped) {
    swapped = false;
    for (let i = 0; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1]) {
        let temp = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = temp;
        swapped = true;
      }
    }
  }
  return nums;
}
```

## Insertion Sort

```js
function insertionSort(nums) {
  for (let i = 1; i < nums.length; i++) {
    let numberToInsert = nums[i];
    let j;
    for (j = i - 1; nums[j] > numberToInsert && j >= 0; j--) {
      nums[j + 1] = nums[j];
    }
    nums[j + 1] = numberToInsert;
  }
  return nums;
}
```

## Merge Sort

```js
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
```

## Quick Sort

```js
function quickSort(nums) {
  if (nums.length <= 1) return nums;

  const pivot = nums.pop();
  const left = [];
  const right = [];

  for (let i = 0; i < nums.length; i++) {
    if (nums[i] < pivot) {
      left.push(nums[i]);
    } else {
      right.push(nums[i]);
    }
  }

  return quickSort(left).concat(pivot, quickSort(right));
}
```

## Radix Sort

```js
function radixSort(array) {
  let longestNumber = 0;
  for (let i = 0; i < array.length; i++) {
    const currentLength = array[i].toString().length;
    longestNumber =
      currentLength > longestNumber ? currentLength : longestNumber;
  }

  const buckets = new Array(10).fill().map(() => []); // make an array of 10 arrays

  for (let i = longestNumber - 1; i >= 0; i--) {
    while (array.length) {
      const current = array.shift();
      const string = current.toString();
      const mod = longestNumber - string.length;
      buckets[string[i - mod] || 0].push(current);
    }

    for (let j = 0; j < 10; j++) {
      while (buckets[j].length) {
        array.push(buckets[j].shift());
      }
    }
  }

  return array;
}
```

## Linear Search

```js
function linearSearch(id, array) {
  for (let i = 0; i < array.length; i++) {
    if (id === array[i].id) return array[i];
  }
  return 0;
}
```

## Binary Search

```js
function binarySearch(id, array) {
  let min = 0;
  let max = array.length - 1;
  let index;

  while (min <= max) {
    index = Math.floor((min + max) / 2);

    if (array[index] < id) {
      min = index + 1;
    } else if (array[index] > id) {
      max = index - 1;
    } else {
      return array[index];
    }
  }

  return 0;
}
```

## ArrayList

```js
class ArrayList {
  constructor() {
    this.length = 0;
    this.data = {};
  }
  push(value) {
    this.data[this.length] = value;
    this.length++;
  }
  pop() {
    const ans = this.data[this.length - 1];
    delete this.data[this.length - 1];
    this.length--;
    return ans;
  }
  get(index) {
    return this.data[index];
  }
  delete(index) {
    const ans = this.data[index];
    this.#collapseTo(index);
    return ans;
  }
  // private methods
  #collapseTo(index) {
    for (let i = index; i < this.length; i++) {
      this.data[i] = this.data[i + 1];
    }
    delete this.data[this.length - 1];
    this.length--;
  }
  serialize() {
    return JSON.stringify(this);
  }
}
```

## LinkedList

```js
class Node {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
}

class LinkedList {
  constructor() {
    this.head = null;
    this.tail = null;
    this.length = 0;
  }
  push(value) {
    const node = new Node(value);
    this.length++;
    !this.head ? (this.head = node) : (this.tail.next = node);
    this.tail = node;
  }
  pop() {
    return this.delete(this.length - 1);
  }
  #find(index) {
    if (index >= this.length) return null;
    let current = this.head;
    for (let i = 0; i < index; i++) current = current.next;
    return current;
  }
  get(index) {
    const node = this.#find(index);
    if (!node) return void 0;
    return node.value;
  }
  delete(index) {
    if (index === 0) {
      const head = this.head;
      head ? (this.head = head.next) : ((this.head = null), (this.tail = null));
      this.length--;
      return head.value;
    }
    const node = this.#find(index - 1);
    const excise = node.next;
    if (!excise) return null;
    node.next = excise.next;
    if (!node.next) this.tail = node.next;
    this.length--;
    return excise.value;
  }
}
```

## Binary Search Tree

```js
class Node {
  constructor(value = null, left = null, right = null) {
    this.value = value;
    this.left = left;
    this.right = right;
  }
  serialize() {
    const ans = {value: this.value};
    ans.left = this.left ? this.left.serialize() : null;
    ans.right = this.right ? this.right.serialize() : null;
    return ans;
  }
}

class Tree {
  constructor() {
    this.root = null;
  }
  add(value) {
    if (this.root === null) this.root = new Node(value);
    else {
      let current = this.root;
      while (true) {
        if (current.value > value) {
          if (current.left) current = current.left;
          else {
            current.left = new Node(value);
            break;
          }
        } else {
          if (current.right) current = current.right;
          else {
            current.right = new Node(value);
            break;
          }
        }
      }
    }
    return this;
  }
  toJSON() {
    return JSON.stringify(this.root.serialize(), null, 4);
  }
  toObject() {
    return this.root.serialize();
  }
}
```

## AVL Tree

```js
class Tree {
  constructor() {
    this.root = null;
  }
  add(value) {
    if (!this.root) {
      this.root = new Node(value);
    } else {
      this.root.add(value);
    }
  }
  toJSON() {
    return JSON.stringify(this.root.serialize(), null, 4);
  }
  toObject() {
    return this.root.serialize();
  }
}

class Node {
  constructor(value = null, left = null, right = null) {
    this.left = left;
    this.right = right;
    this.value = value;
    this.height = 1;
  }
  add(value) {
    if (value < this.value) {
      // go left
      if (this.left) {
        this.left.add(value);
      } else {
        this.left = new Node(value);
      }
      if (!this.right || this.right.height < this.left.height) {
        this.height = this.left.height + 1;
      }
    } else {
      // go right
      if (this.right) {
        this.right.add(value);
      } else {
        this.right = new Node(value);
      }
      if (!this.left || this.right.height > this.left.height) {
        this.height = this.right.height + 1;
      }
    }
    this.balance();
  }
  balance() {
    const rightHeight = this.right ? this.right.height : 0;
    const leftHeight = this.left ? this.left.height : 0;

    if (leftHeight > rightHeight + 1) {
      const leftRightHeight = this.left.right ? this.left.right.height : 0;
      const leftLeftHeight = this.left.left ? this.left.left.height : 0;
      if (leftRightHeight > leftLeftHeight) this.left.rotateRR();
      this.rotateLL();
    } else if (rightHeight > leftHeight + 1) {
      const rightRightHeight = this.right.right ? this.right.right.height : 0;
      const rightLeftHeight = this.right.left ? this.right.left.height : 0;
      if (rightLeftHeight > rightRightHeight) this.right.rotateLL();
      this.rotateRR();
    }
  }
  rotateLL() {
    const valueBefore = this.value;
    const rightBefore = this.right;
    this.value = this.left.value;
    this.right = this.left;
    this.left = this.left.left;
    this.right.left = this.right.right;
    this.right.right = rightBefore;
    this.right.value = valueBefore;
    this.right.updateInNewLocation();
    this.updateInNewLocation();
  }
  rotateRR() {
    const valueBefore = this.value;
    const leftBefore = this.left;
    this.value = this.right.value;
    this.left = this.right;
    this.right = this.right.right;
    this.left.right = this.left.left;
    this.left.left = leftBefore;
    this.left.value = valueBefore;
    this.left.updateInNewLocation();
    this.updateInNewLocation();
  }
  updateInNewLocation() {
    if (!this.left && !this.right) {
      this.height = 1;
    } else if (
      !this.right ||
      (this.left && this.right.height < this.left.height)
    ) {
      this.height = this.left.height + 1;
    } else {
      this.height = this.right.height + 1;
    }
  }
  serialize() {
    const left = this.left ? this.left.serialize() : null;
    const right = this.right ? this.right.serialize() : null;
    return {value: this.value, left, right};
  }
}
```

## Depth-First Tree Traversals

```js
const preorderTraverse = (node, array) => {
  if (!node) return array;
  array.push(node.value);
  array = preorderTraverse(node.left, array);
  array = preorderTraverse(node.right, array);
  return array;
};

const inorderTraverse = (node, array) => {
  if (!node) return array;
  array = inorderTraverse(node.left, array);
  array.push(node.value);
  array = inorderTraverse(node.right, array);
  return array;
};

const postorderTraverse = (node, array) => {
  if (!node) return array;
  array = postorderTraverse(node.left, array);
  array = postorderTraverse(node.right, array);
  array.push(node.value);
  return array;
};
```

## Breadth-First Tree Traversals

```js
const breadthFirstTraverse = (queue, array) => {
  if (!queue.length) return array;
  const node = queue.shift();
  array.push(node.value);
  if (node.left) queue.push(node.left);
  if (node.right) queue.push(node.right);
  return breadthFirstTraverse(queue, array);
};
```

## Heap Sort

```js
const heapSort = (array) => {
  array = createMaxHeap(array);
  for (let i = array.length - 1; i > 0; i--) {
    swapPlace(0, i, array);
    heapify(array, 0, i);
  }
  return array;
};

const swapPlace = (index1, index2, array) => {
  let temp = array[index1];
  array[index1] = array[index2];
  array[index2] = temp;
  return array;
};

const createMaxHeap = (array) => {
  for (let i = Math.floor(array.length / 2) - 1; i >= 0; i--) heapify(array, i, array.length);
  return array;
};

const heapify = (array, index, heapSize) => {
  const left = 2 * index + 1;
  const right = 2 * index + 2;

  let largestValueIndex = index;

  if (heapSize > left && array[largestValueIndex] < array[left]) largestValueIndex = left;
  if (heapSize > right && array[largestValueIndex] < array[right]) largestValueIndex = right;

  if (largestValueIndex !== index) {
    swapPlace(index, largestValueIndex, array);
    heapify(array, largestValueIndex, heapSize);
  }
};
```

## Graphs

```js
const findMostCommonTitle = (myId, degreesOfSeparation) => {
  let queue = [myId];
  const seen = new Set(queue);
  const jobs = {};

  for (let i = 0; i <= degreesOfSeparation; i++) {
    const newQueue = [];
    while (queue.length) {
      // require from ./jobs.js
      const user = getUser(queue.shift());
      for (let j = 0; j < user.connections.length; j++) {
        const connection = user.connections[j];
        if (!seen.has(connection)) {
          newQueue.push(connection);
          seen.add(connection);
        }
      }

      jobs[user.title] = jobs[user.title] ? jobs[user.title] + 1 : 1;
    }
    queue = newQueue;
  }

  const jobKeys = Object.keys(jobs);

  let biggestNumber = jobs[jobKeys[0]];
  let jobName = jobKeys[0];
  for (let i = 1; i < jobKeys.length; i++) {
    if (jobs[jobKeys[i]] > biggestNumber) {
      biggestNumber = jobs[jobKeys[i]];
      jobName = jobKeys[i];
    }
  }

  return jobName;
};
```

## Pathfinding

```js
function findShortestPathLength(maze, [xA, yA], [xB, yB]) {
  const visited = maze.map((ron, y) => {
    return ron.map((origin, x) => {
      return {
        closed: origin === 1,
        length: 0,
        openedBy: 0,
        x,
        y,
      };
    });
  });
  visited[yA][xA].openedBy = 1;
  visited[yB][xB].openedBy = 2;

  let aQueue = [visited[yA][xA]];
  let bQueue = [visited[yB][xB]];
  let iteration = 0;

  while (aQueue.length && bQueue.length) {
    iteration++;
    const aNeighbors = aQueue.reduce((acc, neighbor) => {
      return acc.concat(getNeighbors(visited, neighbor.x, neighbor.y));
    }, []);
    aQueue = [];
    for (let i = 0; i < aNeighbors.length; i++) {
      const neighbor = aNeighbors[i];
      if (neighbor.openedBy === 2) {
        return neighbor.length + iteration;
      } else if (neighbor.openedBy === 0) {
        neighbor.length = iteration;
        neighbor.openedBy = 1;
        aQueue.push(neighbor);
      }
    }

    const bNeighbors = bQueue.reduce((acc, neighbor) => {
      return acc.concat(getNeighbors(visited, neighbor.x, neighbor.y));
    }, []);
    bQueue = [];
    for (let i = 0; i < bNeighbors.length; i++) {
      const neighbor = bNeighbors[i];
      if (neighbor.openedBy === 1) {
        return neighbor.length + iteration;
      } else if (neighbor.openedBy === 0) {
        neighbor.length = iteration;
        neighbor.openedBy = 2;
        bQueue.push(neighbor);
      }
    }
  }
  return -1;
}
```

[visual pathfinding][path]

## Tries (usefull for typeahead)

```js
class Node {
  constructor(string) {
    this.children = [];
    this.terminus = false;
    this.value = string[0] || '';
    if (string.length > 1) {
      this.children.push(new Node(string.substr(1)));
    } else {
      this.terminus = true;
    }
  }
  add(string) {
    const value = string[0];
    const next = string.substr(1);
    for (let i = 0; i < this.children.length; i++) {
      const child = this.children[i];
      if (child.value === value) {
        if (next) {
          child.add(next);
        } else {
          child.terminus = true;
        }
        return;
      }
    }

    this.children.push(new Node(string));
  }
  _complete(search, built, suggestions) {
    if (suggestions.length >= 3 || (search && search[0] !== this.value)) {
      return suggestions;
    }

    if (this.terminus) {
      suggestions.push(`${built}${this.value}`);
    }

    this.children.forEach((child) =>
      child._complete(search.substr(1), `${built}${this.value}`, suggestions),
    );

    return suggestions;
  }
  complete(string) {
    let completions = [];
    this.children.forEach((child) => {
      completions = completions.concat(child._complete(string, '', []));
    });
    return completions;
  }
}

const createTrie = (words) => {
  const trie = new Node('');

  for (let i = 0; i < words.length; i++) {
    const word = words[i];
    trie.add(word.toLowerCase());
  }

  return trie;
};
```

## Bloom Filters (Probabilitic: Data Structure)

```js
const XXH = require('xxhashjs');
const h1 = (string) =>
  Math.abs(XXH.h32(0xabcd).update(string).digest().toNumber() % 100);
const h2 = (string) =>
  Math.abs(XXH.h32(0x1234).update(string).digest().toNumber() % 100);
const h3 = (string) =>
  Math.abs(XXH.h32(0x6789).update(string).digest().toNumber() % 100);

class BloomFilter {
  constructor() {
    this._array = new Array(100).fill(0);
  }
  add(string) {
    this._array[h1(string)] = 1;
    this._array[h2(string)] = 1;
    this._array[h3(string)] = 1;
  }
  contains(string) {
    return !!(
      this._array[h1(string)] &&
      this._array[h2(string)] &&
      this._array[h3(string)]
    );
  }
}
```

[site]: https://btholt.github.io/complete-intro-to-computer-science
[path]: https://qiao.github.io/PathFinding.js/visual
