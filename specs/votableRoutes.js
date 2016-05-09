import test from 'tape';
import request from 'supertest';
import app from '../server/server.js';

test('GET /api/votables', assert => {
  request(app)
  .get('/api/votables')
  .expect(200)
  .expect('Content-Type', /json/)
  .end((err, res)=> {
    let expectedItems = 'item1';
    let actualItems = res.body[0].name;

    assert.error(err, 'No error');
    assert.same(expectedItems, actualItems, 'Retreive votables');
    assert.end();
  })
});
