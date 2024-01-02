/* 

OPENING A DB

*/

/* 

Standart API (non-event based)

*/

let db;
const request = indexedDB.open('coffeemasters', 1);

request.onupgradeneeded = (event) => {
  db = event.target.result;
  db.createObjectStore('products', {keyPath: 'id'});
  db.createObjectStore('cart', {keyPath: 'id'});
};

request.onsuccess = (event) => {
  db = event.target.result;
  console.log('DB opened');
  Menu.load();
  Order.render();
};

request.onerror = (event) => {
  console.error('DB error', event.target.error);
};

/* 

Using Wraper the idb Promised-based wrapper

*/

// open a DB and handle upgrades
const dbPromise = idb.openDB('coffeemasters', 1, {
  upgrade(db) {
    db.createObjectStore('products', {keyPath: 'id'});
    db.createObjectStore('cart', {keyPath: 'id'});
  },
});

/* 

Creating an Object Store

*/

// No key
db.createObjectStore('products');

// With key
db.createObjectStore('products', {keyPath: 'id'});

// With key and autoincrement
db.createObjectStore('products', {keyPath: 'id', autoIncrement: true});

/* 

Quick Transaction

*/

//  New value/object
const tx = db.transaction('products', 'value');

// define a value/object in a store with a key
tx.store.put({id: 1, name: 'Espresso', price: 1.99});

// define a value/object in a store without a key
tx.store.add({name: 'Espresso', price: 1.99});

// delete a value/object in a store with a key
tx.store.delete(1);

// delete all value
tx.store.clear();

// get count of value/object in a store
tx.store.count('storeName');

// get all value/object in a store
tx.store.getAll('storeName');

// get one value/object in a store with a key
tx.store.get('storeName', 'key');

/* 

Creating an Index

*/

// Index without unique values
objectStore.createIndex('name', 'name', {unique: false});

// Index with unique values
objectStore.createIndex('name', 'name', {unique: true});

/* 

Quick Transactions from indexes

*/

// get all value/object in a store from an index
await db.getAllFromIndex('storeName', 'indexName', 'valueFromIndex');

// get one value/object in a store from an index
await db.getFromIndex('storeName', 'indexName', 'valueFromIndex');
