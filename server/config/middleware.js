import morgan from 'morgan';
import votableRoutes from '../votable/votableRoutes';
import voteRoutes from '../vote/voteRoutes';
import bodyParser from 'body-parser';
import {join} from 'path';

export default (app, express) => {
  const votableRouter = express.Router();
  const voteRouter = express.Router();

  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({extended: true}));

  app.use(express.static(join(__dirname, './../../')));

  app.use('/', express.static('./../../src'));
  app.use('/scripts', express.static(join(__dirname, './../../node_modules')));
  app.use(morgan('dev'));

  // pathing correct?
  app.get('/', function(req, res){ res.sendfile(__dirname + './../../index.html', [], null);  });

  app.use('/api/votables', votableRouter);
  app.use('/api/votes', voteRouter);

  votableRoutes(votableRouter);
  voteRoutes(voteRouter);
};
