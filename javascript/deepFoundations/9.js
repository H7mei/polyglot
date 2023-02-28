// Module

var workShop = {
  teacher: 'Hasan',
  ask(question) {
    console.log(this.teacher + ': ' + question);
  },
};

workShop.ask('Is this a module?'); // Hasan: Is this a module?

// Module Pattern
function module(c) {
  var publicApi = {ask};
  return publicApi;

  // ******

  function ask(question) {
    console.log(c.teacher + ': ' + question);
  }
}

var d = module({teacher: 'Hasan'});

d.ask('Is this a module?'); // Hasan: Is this a module?

// ES6 Module Pattern
var s = 'Has';

export default function ask(question) {
  console.log(s + ': ' + question);
}

/* 
import {ask} from './module';
ask('Is this a module?'); // Has: Is this a module?

import * as module from './module';
module.ask('Is this a module?'); // Has: Is this a module?
*/
