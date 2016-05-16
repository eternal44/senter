import votableController from './votableController';

export default app => {
  app.get('/:votableId', votableController.fetchVotable);
  app.get('/users/:user_id', votableController.fetchUnvotedVotables)
 };

