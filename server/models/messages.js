var db = require('../db').connection;

module.exports = {
  getAll: function (callback) {

    // make a query for all columns in table messages
    let messagesQuery = 'SELECT * FROM messages';
    // pass into query function
    db.query(messagesQuery, [], (err, results) => {
      callback(err, results);
    });
  },

  create: function (params, callback) {
    let textInsert = 'INSERT INTO messages (text,username,roomname) VALUES (?, ?, ?)';
    db.query(textInsert, params, (err, results) => {
      callback(err, results);
    });
  }
};
