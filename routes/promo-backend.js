var express = require('express');
var router = express.Router();

var Db = require('../configs/database');
var TPromo = Db.extend({tableName: "promo"});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mPromo = new TPromo();
	mPromo.find((err, rows, fields)=>{
		res.render('promo-index', {dataPromo: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mPromo = new TPromo();
	mPromo.find((err, rows, fields)=>{
		res.render('promo-index', {dataPromo: rows});
	})
})

router.get('/form', (req, res, next)=>{
	var formData = {
		id: '',
		title: '',
		description: '',
		file: '',
		action: 'http://localhost:3000/promo-backend/add',
	};
	res.render('promo-form', {formData: formData})
})

router.get('/form/:id', (req, res, next)=>{
	var mPromo = new TPromo();
	mPromo.find('all', {where: "id = '"+req.params.id+"'"}, (err, rows, next)=>{
		var formData = {
			id: rows[0].id,
			title: rows[0].title,
			description: rows[0].description,
			file: rows[0].file,
			action: 'http://localhost:3000/promo-backend/update',
		};
		res.render('promo-form', {formData: formData})
	})
})

router.post('/add', (req, res, next)=>{
	var formData = {
		id: req.body.id,
		title: req.body.title,
		description: req.body.description,
		file: req.body.file,
	};

	var mPromo = new TPromo(formData);
	mPromo.save((err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index');
	});
})

router.post('/update', (req, res, next)=>{
	var formData = {
		id: req.body.id,
		title: req.body.title,
		description: req.body.description,
		file: req.body.file,
	};

	var mPromo = new TPromo();
	var sql = "UPDATE promo SET title = '"+formData.title+"', description = '"+formData.description+"', file = '"+formData.file+"' WHERE id = '"+formData.id+"'";
	mPromo.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index');
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var mPromo = new TPromo();
	mPromo.remove("id = '"+req.params.id+"'", (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index');
	})
})

router.get('/display/:id/:display', (req, res, next)=>{
	var mPromo = new TPromo();

	var display = req.params.display;
	var sql = "UPDATE promo SET display = '"+((display === 'n')? "y": "n")+"' WHERE id = '"+req.params.id+"'";

	mPromo.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index')
	});
})

module.exports = router;
