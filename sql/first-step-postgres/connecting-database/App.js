const pg = require('pg');

const pool = new pg.Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'recipeguru',
  password: 'lol',
  port: 5432,
});

pool.query('SELECT * FROM recipes', (err, res) => {
  res.rows.forEach(({title}) => {
    console.log(title);
  });
  pool.end();
});
