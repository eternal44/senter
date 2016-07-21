import db from './../db/config/init';
import pgp from 'pg-promise'
import util from 'util'

function sqlQuery(file) {
  return new pgp.QueryFile(file, {minify: true})
}

let sqlInsertNewVotables = sqlQuery('./server/votable/insertVotables.sql')
let selectInsertUser = sqlQuery('./server/db/scripts/selectInsertUser.sql')

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
    db.many(['SELECT pinterest_note, image_url, pinterest_url, votables.id AS votable_id ',
            'FROM votables LEFT JOIN votes ON votables.id = votes.votable_id ',
            'WHERE votables.id NOT IN (SELECT votes.votable_id FROM votes ',
            'WHERE voter=$1) LIMIT 20'].join(''), userID)
    .then(data => {
      res.send(data);
    })
    .catch (error => {
      next(error)
      throw error
    });
  },

  postNewVotables: function(req, res) {
    // more properties on req.body available - just console log
    // them to see what else is available
    const userPinterestID = {
      user_pinterest_id: req.body.allPins[0].id
    }

    let queries = []

    return db.tx((t) => {
      return t.one(selectInsertUser, userPinterestID)
      .catch((err) => {
        console.log('User not found')
        res.status(404).send(err)
      })
      .then((data) => {
        req.body.allPins.forEach((votable) => {
          const insertParam = {
            user_id: data.id,
            pinterest_url: votable.url,
            image_url: votable.image.original.url,
            pinterest_note: votable.note
          }
          console.log(sqlInsertNewVotables, insertParam)
          queries.push(t.none(sqlInsertNewVotables, insertParam))
        })
        return t.batch(queries)
      })
      .catch(function(err) {
        console.log('Votables not stored')
        res.status(500).send(err)
      })
      .then(() => {
        res.sendStatus(201)
      })
    })
  }
}

