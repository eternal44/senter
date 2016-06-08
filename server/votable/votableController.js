import db from './../db/config/init';

export default {
  newVotable: function(req, res) {
    res.send('Make new votable item');
  },

  fetchVotable: function(req, res) {
    const votableID = req.params.votableID;

    db.oneOrNone(['SELECT votables.id, name, SUM(upvote) AS upvotes, ',
                 'SUM(downvote) AS downvotes from votables LEFT JOIN votes ',
                 'ON votables.id = votes.votable_id where votables.id=${votableID} ',
                 'GROUP BY votables.id, name'].join(''), {votableID: votableID})
    .then(function(row) {
      res.send(row);
    })
    .catch(function(error) {
      console.log('#fetchVotable Error: ', error);
    });
  },

  fetchUnvotedVotables: function(req, res) {
    const userID = req.params.userID;
    db.many(['SELECT name, make, photo_url, votable_id FROM votables LEFT JOIN votes ',
            'ON votables.id = votes.votable_id ',
            'WHERE voter IS null OR voter !=$1 LIMIT 20'].join(''), userID)
    .then(data => {
      res.send(data);
    })
    .catch (error => {
      console.log('No votables found. Error: ', error);
      res.send('No votables found!');
    });
  }
};
