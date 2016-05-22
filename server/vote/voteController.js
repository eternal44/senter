import db from './../db/config/init'

export default {
  recordVote: function (req, res, next ){
    const userID = req.body[0].userID;
    let queries = [];
    const votes = req.body;

    return db.tx(function(t){
      // get a user's vote weight and
      return t.one('SELECT vote_weight FROM users WHERE id=$1', userID)
      .catch(function(err){
        console.log('Invalid user ID');
        res.status(404).send(err)
      })
      .then(function(data){
        votes.forEach(function(vote) {
          // console.log('promise:', vote, 'vote weight: ', userVoteWeight);
          let upvote = 0;
          let downvote = 0;

          if(vote.vote){
            upvote = data.vote_weight;
          } else {
            downvote = data.vote_weight;
          }

          const inputParam = {
            votableID: vote.votableID,
            voter: vote.userID,
            upvote: upvote,
            downvote: downvote
          };

          queries.push(t.none(['INSERT INTO votes (votable_id, voter, upvote, downvote) ',
                              'VALUES (${votableID}, ${voter}, ${upvote}, ${downvote})'].join('')
                              , inputParam));
        })
        return t.batch(queries);
      })
      .catch(function(err){
        console.log('Votes could not be stored');
        res.status(500).send(err);
      })
      .then(() => {
        res.sendStatus(201);
      })
    })
  }
}
