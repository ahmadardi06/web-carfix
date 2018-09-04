var util = require('util')
var mysql = require('mysql-model')
var pool = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'web_carfix'
})

module.exports = pool