require('dotenv').config();
var express = require('express');
var router = express.Router();

var Db = require('../configs/database');

/* GET home page. */
router.get('/', function(req, res, next) {
  var mNetworks = "select * from networks";
	Db.query(mNetworks, (err, rows, fields)=>{
		res.render('networks-index', {dataNetworks: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mNetworks = "select * from networks";
	Db.query(mNetworks, (err, rows, fields)=>{
		res.render('networks-index', {dataNetworks: rows});
	})
})

router.get('/form', (req, res, next)=>{
	var formData = {
		id: '',
		title: '',
		link: '',
		action: process.env.URL_HOST+'networks-backend/add',
	};
	res.render('networks-form', {formData: formData})
})

router.get('/form/:id', (req, res, next)=>{
	var mNetworks = "select * from networks where id = '"+req.params.id+"'";
	Db.query(mNetworks, (err, rows, next)=>{
		var formData = {
			id: rows[0].id,
			title: rows[0].title,
			link: rows[0].link,
			action: process.env.URL_HOST+'networks-backend/update',
		};
		res.render('networks-form', {formData: formData})
	})
})

router.post('/add', (req, res, next)=>{
	var formData = {
		title: req.body.title,
		link: req.body.link,
	};

	var mNetworks = "insert into networks (title, link) values ('"+formData.title+"','"+formData.link+"')";
	Db.query(mNetworks, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/networks-backend/index');
	});
})

router.post('/update', (req, res, next)=>{
	var formData = {
		id: req.body.id,
		title: req.body.title,
		link: req.body.link,
	};

	var sql = "UPDATE networks SET title = '"+formData.title+"', link = '"+formData.link+"' WHERE id = '"+formData.id+"'";
	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/networks-backend/index');
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var mNetworks = "delete from networks where id = '"+req.params.id+"'";
	Db.query(mNetworks, (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/networks-backend/index');
	})
})

router.get('/api/all', (req, res, next)=>{
	var mNetworks = "select * from networks";
	Db.query(mNetworks, (err, rows, fields)=>{
		if(err) throw new Error(err)
		res.json(rows)
	})
})

module.exports = router;
