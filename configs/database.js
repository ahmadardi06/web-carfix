require('dotenv').config()
// var mysql = require('mysql-model')
var mysql = require('mysql')
var pool = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
})

pool.connect(function(err) {
  if (err) throw new Error(err);
  console.log("Connected...");
});

module.exports = pool