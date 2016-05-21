import db from './../db/config/init'

export default {
  recordVote: function (req, res, next ){
    // write a transaction that:
    // queries a user's vote weight and
    // generates a query that votes for or against a votable depending on the req.body.vote boolean

    return db.tx(function(t){
      const votes = req.body;

      votes.forEach(function(vote) {
        // rebuild the vote object here
        queries.push(t.none('INSERT INTO votes (votable_id, voter, upvote, downvote) VALUES (${votableID}, ${voter}, ${upvote}, ${downvote})', vote));
      });
      return t.batch(queries);
    })

    // refactor the code below
    .then(() => {
      res.sendStatus(201);
    })
    .catch((error) => {
      console.log('Item couldn\'t be upvoted');
      res.sendStatus(500)
    })
  }
}
