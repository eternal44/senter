import test from 'tape';
import request from 'supertest';
import app from '../server.js';

test('GET /api/votables', assert => {
  request(app)
    .get('/api/votables')
    .expect(200)
    .expect('Content-Type', "text/html; charset=utf-8")
    .end((err, res) => {
      const expectedVotable = 'A votable item';
      const actualVotable = res.text;

      assert.error(err, 'No error');
      assert.same(actualVotable, expectedVotable, 'Get a votable item');
      assert.end();
    })
});
