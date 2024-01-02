/* 

FILE SYSTEM ACCESS API

*/

/* 

Requesting a file system

*/

// have the user select a file
const [fileHandle] = await window.showOpenFilePicker();

// get the File object from the file handle
const file = await fileHandle.getFile();

// get the file content.
// Also available: file.text(), file.arrayBuffer(), file.stream()
const content = await file.text();

// Make a writable stream from the handle
const writable2 = await fileHandle.createWritable();

// Write the contents of the file to the stream
await writable.write(content);

// Close the file and write the contents to disk
await writable.close();

// writing to a new file
const handle = await window.showSaveFilePicker({
  types: [
    {
      description: 'Text file',
      accept: {'text/plain': ['.txt']},
    },
  ],
});
const writable = await handle.createWritable();
await writable.write('Hello World');
await writable.close();
