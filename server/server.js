import express from 'express';
import {join} from 'path';

const app = express();

require('./config/middleware.js')(app, express, join);
require('./votable/votableRoutes.js')(app);

const port = process.env.PORT || 3000;

app.use(express.static(join(__dirname, '../client')));

app.listen(port, () => {
  console.log('Listening on port ', port)
})
