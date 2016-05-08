import dotenv from 'dotenv';
dotenv.config();

var pgp = require('pg-promise')(/*options*/);
let connectionString;

if(process.env.NODE_ENV === 'test'){
  connectionString = process.env.TEST_DATABASE_URL;
} else {
  connectionString = process.env.DATABASE_URL || 'postgres://localhost:5432/senter';
}

const db = pgp(connectionString);

export default db;
