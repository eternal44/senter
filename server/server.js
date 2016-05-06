import express from 'express';
import {join} from 'path';
import middleware from './config/middleware';

const app = express();

middleware(app, express, join);

const port = process.env.PORT || 3000;

app.use(express.static(join(__dirname, '../client')));

app.listen(port, () => {
  console.log('Listening on port ', port)
})
