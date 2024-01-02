/* 

CSS Specificity


*/

// inline style | id | class | tag

// h1.large-text#title
// 0 1 1 1

// h1.large-text[id="title"]
// 0 0 2 1

// .large-text:nth-child(1)
// 0 0 2 0

// div h1.large-text::before
// 0 0 1 3

// div h1:first-child
// 0 0 1 2

// h1:not(.small-text)
// 0 0 1 1

// ####

/* 

Priority of CSS Rules (highest to lowest)

1. !important in-line styles
2. !important styles files
3. in-line styles
4. Ids
5. Classes
6. Tags
7, Inheritance


*/
