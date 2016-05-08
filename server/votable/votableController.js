import db from './../db/config/init'

export default {
  newVotable: function(req, res, next){
    res.send('Make new votable item');
  },

  fetchVotable: function(req, res, next){
    db.any("select * from votables")
      .then((data) => {
        res.send(data);
      })
      .catch((error) => {
        console.log('No votable found.  Error: ', error);
      })
  }
}
