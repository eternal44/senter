'use strict';

process.env.NODE_ENV = process.env.NODE_ENV || 'development';

import express from 'express';
import {join} from 'path';
import middleware from './config/middleware';

// connect to database

const app = express();

middleware(app, express, join);

const port = process.env.PORT || 3000;

app.use(express.static(join(__dirname, '../client')));

if(require.main === module) {
  app.listen(port, () => {
    console.log('Listening on port ', port)
  })
}

export default app;
