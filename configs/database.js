require('dotenv').config()
var mysql = require('mysql-model')
var pool = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
})

module.exports = pool