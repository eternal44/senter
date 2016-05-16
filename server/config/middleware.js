import morgan from 'morgan';
import votableRoutes from '../votable/votableRoutes';
import bodyParser from 'body-parser';

export default (app, express, join) =>{
  const votableRouter = express.Router();

  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({extended: true}));

  app.use(express.static(join(__dirname, '../client')));
  app.use(morgan('dev'));

  app.use('/api/votables', votableRouter);

  votableRoutes(votableRouter);
}
