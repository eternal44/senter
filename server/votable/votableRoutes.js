import votableController from './votableController';

export default app => {
  app.route('/')
    .get(votableController.fetchVotable)
    .post(votableController.newVotable);
};

