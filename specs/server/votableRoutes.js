import test from 'tape';
import request from 'supertest';
import app from '../../server/server.js';
import mockVotables from '../fixtures/mockVotables'

const exec = require('child_process').exec;

test('SETUP: insert mocks  DB', t => {
  exec('npm run db:schema',
       (error, stdout, stderr) => {
         exec('npm run db:mock', function(err, res) {
           t.end();
         });
       });
});

test('Fetch unvoted votables', assert => {
  request(app)
  .get('/api/votables/users/1')
  .expect(200)
  .expect('Content-Type', /json/)
  .end((err, res) => {
    assert.error(err, 'No error');

    const actualVotablesCount = res.body.length;
    const expectedVotablesCount = 20;
    assert.same(actualVotablesCount, expectedVotablesCount, 'Retrieve unvoted votables');

    // when #notEqual tests fail their expected value returns 'undefined'
    const firstItem = JSON.parse(res.text)[0];
    assert.notEqual(firstItem.name, 'item1', 'First item should not be "item1"')
    assert.end();
  });
});

test('Post new votables', assert => {
  request(app)
  .post('/api/votables/')
  .send(mockVotables)
  .expect(201)
  .expect('Content-Type', "text/plain;")
  .end((err, res) => {
    assert.error(err, 'No error')
    assert.end()
  })
})
