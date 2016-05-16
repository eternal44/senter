import test from 'tape';
import request from 'supertest';
import app from '../server/server.js';
const exec = require('child_process').exec;

test('SETUP: insert mocks  DB', t => {
  exec('npm run db:schema',
       (error, stdout, stderr) => {
         exec('npm run db:mock')
       });
       t.end();
});

test('GET /api/votables/users/:user_id', assert => {
  request(app)
  .get('/api/votables/users/1')
  .expect(200)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    let expectedItems = null;
    let actualItems = res.body[1].downvote;

    assert.error(err, 'No error');
    assert.same(actualItems, expectedItems, 'Retrieve unvoted votables');
    assert.end();
  })
})

test('GET /api/votables/1', assert => {
  request(app)
  .get('/api/votables/1')
  .expect(200)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    let actualVotable = res.body.name;
    let downvotes = parseInt(res.body.downvotes);

    assert.error(err, 'No error');
    assert.same(actualVotable, 'item1', 'Retrieve first votable');
    assert.same(downvotes, 2, 'Check downvotes total');
    assert.end();
  })
})

// extract repeated code for these post requests 
test('Upvote', assert => {
  const voteParameters = {
    voter: 1,
    upvote: 1
  }

  request(app)
  .post('/api/votables/1/upvote')
  .send(voteParameters)
  .expect(201)
  .expect('Content-Type', /json/)
  .end((err, res) => {

    // in votables controller - res.send(/*new upvotes count*/)
    const actualUpvotesCount = parseInt(res.body.upvotes);

    assert.error(err, 'No error');
    assert.same(actualUpvotesCount, 2);
    assert.end();
  })
})

