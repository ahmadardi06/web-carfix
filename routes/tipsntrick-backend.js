require('dotenv').config();
var express = require('express');
var router = express.Router();

var Db = require('../configs/database');
var Ttipstrick = Db.extend({tableName: "tipsntrick"});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mNetworks = new TNetworks();
	mNetworks.find((err, rows, fields)=>{
		res.render('networks-index', {dataNetworks: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mNetworks = new TNetworks();
	mNetworks.find((err, rows, fields)=>{
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
	var mNetworks = new TNetworks();
	mNetworks.find('all', {where: "id = '"+req.params.id+"'"}, (err, rows, next)=>{
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

	var mNetworks = new TNetworks(formData);
	mNetworks.save((err, rows, fields)=>{
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

	var mNetworks = new TNetworks();
	var sql = "UPDATE networks SET title = '"+formData.title+"', link = '"+formData.link+"' WHERE id = '"+formData.id+"'";
	mNetworks.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/networks-backend/index');
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var mNetworks = new TNetworks();
	mNetworks.remove("id = '"+req.params.id+"'", (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/networks-backend/index');
	})
})

module.exports = router;
