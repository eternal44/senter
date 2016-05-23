import voteController from './voteController';

export default app => {
  app.post('/', voteController.recordVote);
};

