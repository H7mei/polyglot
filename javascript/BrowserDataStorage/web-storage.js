/* 
WEB STORAGE

"its not recommended because performance issues"

*/

/* 

localStorage:

- stores data with no expiration date
- it persists data between navigation and browser sessions
- Quota is 5MB
- String are stored in UTF-16 (in firefox is UTF-8)

"at the end, its around 2.5MB per origin"

*/

// set item
localStorage.setItem('name', 'John');

// get item
localStorage.getItem('name');

// remove item
localStorage.removeItem('name');

// clear local storage
localStorage.clear();

/* 

sessionStorage 

- stores data for one session (data is lost when the browser tab is closed)
- Quota is 5MB and 12MB in some browsers
*/

// set item
sessionStorage.setItem('name', 'John');

// get item
sessionStorage.getItem('name');

// remove item
sessionStorage.removeItem('name');

// clear local storage
sessionStorage.clear();

// note:

/* 

"to increase performance, quota and reachability, lets use IndexedDB, instead of web storage"
*/
