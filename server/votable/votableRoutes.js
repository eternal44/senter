import votableController from './votableController';

export default app => {
  app.get('/:votableID', votableController.fetchVotable);
  app.get('/users/:user_id', votableController.fetchUnvotedVotables);
  app.post('/:votableID/upvote', votableController.upvote);
  app.post('/:votableID/downvote', votableController.downvote);
 };

