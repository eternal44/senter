import test from 'tape';
import request from 'supertest';
import app from '../../server/server.js';
import mockVotes from '../fixtures/mockVotes';
const exec = require('child_process').exec;

test('SETUP: insert mocks  DB', t => {
  exec('npm run db:schema',
       (error, stdout, stderr) => {
         exec('npm run db:mock', function(err, res) {
           t.end();
         });
       });
});

test('Check votable votes before new votes', assert => {
  request(app)
  .get('/api/votables/1')
  .expect(200)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    const actualVotable = res.body.name;
    const downvotes = parseInt(res.body.downvotes, 10);
    const upvotes = parseInt(res.body.upvotes, 10);

    assert.error(err, 'No error');
    assert.same(actualVotable, 'item1', 'Retrieve first votable');
    assert.same(downvotes, 2, 'Check downvotes total');
    assert.same(upvotes, 1, 'Check upvotes total');
    assert.end();
  });
});

test('Process a batch of votes from client', assert => {
  const votes = mockVotes;

  request(app)
  .post('/api/votes/')
  .send(votes)
  .expect(201)
  .expect('Content-Type', "text/plain; charset=utf-8")
  .end((err, res) => {
    assert.error(err, 'No error');
    assert.end();
  });
});

test('Check votable votes after new votes', assert => {
  request(app)
  .get('/api/votables/1')
  .expect(200)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    const actualVotable = res.body.name;
    const downvotes = parseInt(res.body.downvotes);
    const upvotes = parseInt(res.body.upvotes);

    assert.error(err, 'No error');
    assert.same(actualVotable, 'item1', 'Retrieve first votable');
    assert.same(downvotes, 3, 'Check downvotes total');
    assert.same(upvotes, 1, 'Check upvotes total');
    assert.end();
  });
});
