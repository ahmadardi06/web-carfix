require('dotenv').config();
var md5 = require('md5');
var express = require('express');
var router = express.Router();

var Db = require('../configs/database');
var TUsers = Db.extend({tableName: "users"});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mUsers = new TUsers();
	mUsers.find("all", {where: "role != 'superadmin'"}, (err, rows, fields)=>{
		res.render('users-index', {dataUsers: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mUsers = new TUsers();
	mUsers.find("all", {where: "role != 'superadmin'"}, (err, rows, fields)=>{
		res.render('users-index', {dataUsers: rows});
	})
})

router.get('/form', (req, res, next)=>{
	var formData = {
		id: '',
		name: '',
    email: '',
    username: '',
    role: '',
		action: process.env.URL_HOST+'users-backend/add',
	};
	res.render('users-form', {formData: formData})
})

router.get('/form/:id', (req, res, next)=>{
	var mUsers = new TUsers();
	mUsers.find('all', {where: "id = '"+req.params.id+"'"}, (err, rows, next)=>{
		var formData = {
			id: rows[0].id,
			name: rows[0].name,
      email: rows[0].email,
      username:rows[0].username,
      role: rows[0].role,
			action: process.env.URL_HOST+'users-backend/update',
		};
		res.render('users-form', {formData: formData})
	})
})

router.post('/add', (req, res, next)=>{
	var formData = {
		name: req.body.name,
    email: req.body.email,
    username: req.body.username,
    role: req.body.role,
    password: md5(req.body.password)
	};

	var mUsers = new TUsers(formData);
	mUsers.save((err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/users-backend/index');
	});
})

router.post('/update', (req, res, next)=>{
	var formData = {
		id: req.body.id,
		name: req.body.name,
    email: req.body.email,
    username: req.body.username,
    role: req.body.role,
    password: md5(req.body.password)
	};

	var mUsers = new TUsers();
  var sql = "UPDATE users SET name = '"+formData.name
              +"', email = '"+formData.email
              +"', username = '"+formData.username
              +"', role = '"+formData.role
              +"' WHERE id = '"+formData.id+"'";
	mUsers.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/users-backend/index');
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var mUsers = new TUsers();
	mUsers.remove("id = '"+req.params.id+"'", (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/users-backend/index');
	})
})

module.exports = router;
