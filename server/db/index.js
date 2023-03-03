var mysql = require('mysql2');

// create connection to the database with host as local host, username root, database chat

// export connection

const connection = mysql.createConnection( {
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'chat'
});

exports.connection = connection;


// Create a database connection and export it from this file.
// Confirm that the credentials supplied for the connection are correct.
// On your personal computer supply the correct credentials for your mySQL account -- likely
// user: 'root', password: ''
// OR
// user: 'root', password: 'some_password_you_created_at_install'


