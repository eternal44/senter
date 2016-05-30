import morgan from 'morgan';
import votableRoutes from '../votable/votableRoutes';
import voteRoutes from '../vote/voteRoutes';
import bodyParser from 'body-parser';
import {join} from 'path';

// //example code.  uncomment this line if page doesn't load
import React from 'react';

export default (app, express) => {
  const votableRouter = express.Router();
  const voteRouter = express.Router();

  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({extended: true}));

  app.use(express.static(join(__dirname, './../../')));

  app.use('/static', express.static(join(__dirname, './../../dclient')));
  app.use('/scripts', express.static(join(__dirname, './../../node_modules')));
  app.use(morgan('dev'));

  app.use('/api/votables', votableRouter);
  app.use('/api/votes', voteRouter);

  votableRoutes(votableRouter);
  voteRoutes(voteRouter);
};
