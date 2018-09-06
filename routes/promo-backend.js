require('dotenv').config();

var express = require('express');
var router = express.Router();

var Db = require('../configs/database');

var multer = require('multer');
var storage = multer.diskStorage({
	destination: (req, file, cb) => {
		cb(null, 'public/assets/images/promo')
	},
	filename: (req, file, cb) => {
		var pecah = file.originalname.split('.');
		var ekstension = pecah[pecah.length-1];
		cb(null, 'promo-'+Date.now()+'.'+ekstension)
	}
})
var upload = multer({storage: storage});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mPromo = "select * from promo";
	Db.query(mPromo, (err, rows, fields)=>{
		res.render('promo-index', {dataPromo: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mPromo = "select * from promo";
	Db.query(mPromo, (err, rows, fields)=>{
		res.render('promo-index', {dataPromo: rows});
	})
})

router.get('/form', (req, res, next)=>{
	var formData = {
		id: '',
		title: '',
		description: '',
		file: '',
		action: process.env.URL_HOST+'promo-backend/add',
	};
	res.render('promo-form', {formData: formData})
})

router.get('/form/:id', (req, res, next)=>{
	var mPromo = "select * from promo id = '"+req.params.id+"'";
	Db.query(mPromo, (err, rows, next)=>{
		var formData = {
			id: rows[0].id,
			title: rows[0].title,
			description: rows[0].description,
			file: rows[0].file,
			action: process.env.URL_HOST+'promo-backend/update',
		};
		res.render('promo-form', {formData: formData})
	})
})

router.post('/add', upload.single('file'), (req, res, next)=>{
	var formData = {
		title: req.body.title,
		description: req.body.description,
		file: req.file.filename,
	};

	var mPromo = "insert into promo (title, description, file) values ('"+formData.title+"','"+formData.description+"','"+formData.file+"')";
	Db.query(mPromo, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index');
	});
})

router.post('/update', upload.single('file'), (req, res, next)=>{
	var formData = {
		id: req.body.id,
		title: req.body.title,
		description: req.body.description,
		file: req.file.filename,
	};

	var sql = "UPDATE promo SET title = '"+formData.title+"', description = '"+formData.description+"', file = '"+formData.file+"' WHERE id = '"+formData.id+"'";
	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index');
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var mPromo = "delete from promo where id = '"+req.params.id+"'";
	Db.query(mPromo, (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index');
	})
})

router.get('/display/:id/:display', (req, res, next)=>{
	var display = req.params.display;
	var sql = "UPDATE promo SET display = '"+((display === 'n')? "y": "n")+"' WHERE id = '"+req.params.id+"'";

	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/promo-backend/index')
	});
})

router.get('/api/all', (req, res, next)=>{
	var mPromo = "select * from promo where display='y'";
	Db.query(mPromo, (err, rows, fields)=>{
		if(err) throw new Error(err)
		res.json(rows)
	})
})

module.exports = router;
