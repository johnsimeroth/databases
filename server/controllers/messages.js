var models = require('../models');

module.exports = {
  get: function (req, res) {
    console.log('we made it');
    models.messages.getAll((err, results) => {
      console.log('logging results: ', results);
      if (err) {
        res.sendStatus(500);
      } else {
        res.json(results);
      }
    });

  }, // a function which handles a get request for all messages

  post: function (req, res) {
    const params = [req.body.message, req.body.username, req.body.roomname];
    models.messages.create(params, (err, results) => {
      if (err) {
        console.error('could not add message to db');
        res.sendStatus(500);
      }
      res.sendStatus(201);
    });
  }

};
