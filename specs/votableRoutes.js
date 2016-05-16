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

// extract repeated code for these post requests 
test('Upvote', assert => {
  const voteParameters = {
    voter: 1,
    upvote: 1
  }

  request(app)
  .post('/api/votables/1')
  .send(voteParameters)
  .expect(201)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    let expectedItems = voteParameters;
    let actualItems = res.body;

    assert.error(err, 'No error');
    assert.same(actualItems, expectedItems, 'Retrieve unvoted votables');
    assert.end();
  })
})

test('Downvote', assert => {
  const voteParameters = {
    voter: 1,
    downvote: 1
  }

  request(app)
  .post('/api/votables/1')
  .send(voteParameters)
  .expect(201)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    let expectedItems = voteParameters;
    let actualItems = res.body;

    assert.error(err, 'No error');
    assert.same(actualItems, expectedItems, 'Retrieve unvoted votables');
    assert.end();
  })
})

test('Upvote with weighted vote', assert => {
  const voteParameters = {
    voter: 1,
    upvote: 3
  }

  request(app)
  .post('/api/votables/1')
  .send(voteParameters)
  .expect(201)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    let expectedItems = voteParameters;
    let actualItems = res.body;

    assert.error(err, 'No error');
    assert.same(actualItems, expectedItems, 'Retrieve unvoted votables');
    assert.end();
  })
})
