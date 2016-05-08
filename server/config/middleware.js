import morgan from 'morgan';
import votableRoutes from '../votable/votableRoutes';

export default (app, express, join) =>{
  const votableRouter = express.Router();

  app.use(express.static(join(__dirname, '../client')));
  app.use(morgan('dev'));

  app.use('/api/votables', votableRouter);

  votableRoutes(votableRouter);
}
