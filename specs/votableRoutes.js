import test from 'tape';
import request from 'supertest';
import app from '../server/server.js';

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
