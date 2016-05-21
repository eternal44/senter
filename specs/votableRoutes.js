import test from 'tape';
import request from 'supertest';
import app from '../server/server.js';
const exec = require('child_process').exec;

test('SETUP: insert mocks  DB', t => {
  exec('npm run db:schema',
       (error, stdout, stderr) => {
         exec('npm run db:mock', function(err, res){
           t.end();
         })
       });
});

test('Fetch unvoted votables', assert => {
  request(app)
  .get('/api/votables/users/1')
  .expect(200)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    const actualVotablesCount = res.body.length;
    const expectedVotablesCount = 20;

    assert.error(err, 'No error');
    assert.same(actualVotablesCount, expectedVotablesCount, 'Retrieve unvoted votables');
    assert.end();
  })
})

test('BEFORE: votable ID#1', assert => {
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
    assert.same(downvotes, 2, 'Check downvotes total');
    assert.same(upvotes, 1, 'Check upvotes total');
    assert.end();
  })
})

test('Upvote votable ID#1', assert => {
  const requestBody = {
    voter: 1,
    upvote: 2
  }

  request(app)
  .post('/api/votables/1/upvote')
  .send(requestBody)
  .expect(201)
  .expect('Content-Type', "text/plain; charset=utf-8")
  .end((err, res) => {
    assert.error(err, 'No error');
    assert.end();
  })
})

test('Downvote votalbe ID#1', assert => {
  const requestBody = {
    voter: 2,
    downvote: 1
  }

  request(app)
  .post('/api/votables/1/downvote')
  .send(requestBody)
  .expect(201)
  .expect('Content-Type', "text/plain; charset=utf-8")
  .end((err, res) => {
    assert.error(err, 'No error');
    assert.end();
  })
})

test('AFTER: votable ID#1', assert => {
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
    assert.same(upvotes, 3, 'Check upvotes total');
    assert.end();
  })
})
