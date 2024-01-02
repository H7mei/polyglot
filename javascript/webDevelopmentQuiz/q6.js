/* 

Object Reference & Descructuring


*/

const member = {
  name: 'Sarah',
  address: {street: 'Jl. Jendral Sudirman', city: 'Jakarta'},
};

const member2 = {...member};

member.name = 'Jokowi';
member.address.street = 'Jl. Jendral Gatot Subroto';

console.log(member2);

// Answer
// { name: 'Sarah', address: { street: 'Jl. Jendral Sudirman', city: 'Jakarta' } }
