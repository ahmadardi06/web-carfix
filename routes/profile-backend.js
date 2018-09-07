var express = require('express');
var router = express.Router();

var Db = require('../configs/database');

// router.get('/index/:id', (req, res, next)=>{
//  var mUser = "select * from users where id = '"+req.params.id+"'";
router.get('/index/:id', (req, res, next)=>{
    var mUser = "select * from users where id = '"+req.params.id+"'";
    Db.query(mUser, (err, rows, next)=>{
        var userData = {
            id: rows[0].id,
            name: rows[0].name,
            email: rows[0].email,
            username: rows[0].username,
            role: rows[0].role,
            // action: process.env.URL_HOST+'networks-backend/update',
        };
        res.render('user-profile', {userData: userData})
    })
})

module.exports = router;