'use strict';

process.env.NODE_ENV = process.env.NODE_ENV || 'development';

import express from 'express';
import fs from 'fs'
import https from 'https'

import {join} from 'path';
import middleware from './config/middleware';

const app = express();

middleware(app, express, join);

const port = process.env.PORT || 3000;

if (require.main === module) {
  if(process.env.NODE_ENV === 'development'){
    https.createServer({
      key: fs.readFileSync('key.pem'),
      cert: fs.readFileSync('cert.pem')
    }, app).listen(port, () => {
      console.log('Listening on port ', port);
    })
  } else {
    // TODO: add SSL key & cert in production env
    app.listen(port, () => {
      console.log('Listening on port ', port);
    });
  }
}

export default app;
