const votableController = require('./votableController');

module.exports = (app => {
  app.route('/')
    .get(votableController.dummy);
})

