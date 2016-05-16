import votableController from './votableController';

export default app => {
  app.get('/:votableID', votableController.fetchVotable);
  // add route for upvote & downvote
  app.get('/users/:user_id', votableController.fetchUnvotedVotables)
 };

