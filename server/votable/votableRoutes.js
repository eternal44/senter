import votableController from './votableController';

export default app => {
  app.route('/')
    .get(votableController.dummy)
    .post(votableController.newVotable);

};

