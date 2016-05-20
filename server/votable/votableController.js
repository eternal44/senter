import db from './../db/config/init'

export default {
  newVotable: function(req, res, next){
    res.send('Make new votable item');
  },

  fetchVotable: function(req, res, next){
    const votableID = req.params.votableID;

    db.oneOrNone("SELECT votables.id, name, SUM(upvote) AS upvotes, SUM(downvote) AS downvotes from votables left JOIN votes ON votables.id = votes.votable_id where votables.id=${votableID} GROUP BY votables.id, name", {votableID: votableID})
    .then(function (row){
      res.send(row)
    })
    .catch(function(error){
      console.log('#fetchVotable Error: ', error)
    })
  },

  fetchUnvotedVotables: function( req, res, next ){
    // TODO: change out hard coded user id to req.param._____
    db.many("SELECT * FROM votables LEFT JOIN votes ON votables.id = votes.votable_id WHERE voter IS null OR voter !=1 LIMIT 10")
    .then((data) => {
      res.send(data);
    })
    .catch((error) => {
      console.log('No votable found. Error: ', error);
    })
  },

  upvote: function (req, res, next ){
    const data = {
      votableID: req.params.votableID,
      voter: req.body.voter,
      upvote: req.body.upvote
    }

    db.none('INSERT INTO votes (votable_id, voter, upvote) VALUES (${votableID}, ${voter}, ${upvote})', data)
    .then(() => {
      res.sendStatus(201);
    })
    .catch((error) => {
      console.log('Item couldn\'t be upvoted');
      res.sendStatus(500)
    })
  },

  downvote: function (req, res, next ){
    const data = {
      votableID: req.params.votableID,
      voter: req.body.voter,
      downvote: req.body.downvote
    }
    db.none('INSERT INTO votes (votable_id, voter, downvote) VALUES (${votableID}, ${voter}, ${downvote})', data)
    .then(() => {
      res.sendStatus(201);
    })
    .catch((error) => {
      console.log('Item couldn\'t be downvoted');
      res.sendStatus(500)
    })
  }
}
