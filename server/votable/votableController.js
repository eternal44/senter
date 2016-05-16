import db from './../db/config/init'

export default {
  newVotable: function(req, res, next){
    res.send('Make new votable item');
  },

  fetchVotable: function(req, res, next){
    // change to query from redis
  },

  fetchUnvotedVotables: function( req, res, next ){
    db.many("SELECT * FROM votables LEFT JOIN votes ON votables.id = votes.votable_id WHERE voter IS null OR voter !=1 LIMIT 10")
    .then((data) => {
      res.send(data);
    })
    .catch((error) => {
      console.log('No votable found. Error: ', error);
    })
  }
}
