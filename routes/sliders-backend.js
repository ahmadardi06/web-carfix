require('dotenv').config();

var express = require('express');
var router = express.Router();

var Db = require('../configs/database');

var multer = require('multer');
var storage = multer.diskStorage({
	destination: (req, file, cb) => {
		cb(null, 'public/assets/images/slider')
	},
	filename: (req, file, cb) => {
		var pecah = file.originalname.split('.');
		var ekstension = pecah[pecah.length-1];
		cb(null, 'slider-'+Date.now()+'.'+ekstension)
	}
})
var upload = multer({storage: storage});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mSliders = "select * from sliders";
	Db.query(mSliders, (err, rows, fields)=>{
		res.render('sliders-index', {dataSliders: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mSliders = "select * from sliders";
	Db.query(mSliders, (err, rows, fields)=>{
		res.render('sliders-index', {dataSliders: rows});
	})
})

router.get('/form', (req, res, next)=>{
	var formData = {
		id_slider: '',
		title: '',
		description: '',
		file: '',
		action: process.env.URL_HOST+'sliders-backend/add',
	};
	res.render('sliders-form', {formData: formData})
})

router.get('/form/:id', (req, res, next)=>{
	var mSliders = "select * from sliders where id_slider = '"+req.params.id+"'";
	Db.query(mSliders, (err, rows, next)=>{
		var formData = {
			id_slider: rows[0].id_slider,
			title: rows[0].title,
			description: rows[0].description,
			file: rows[0].file,
			action: process.env.URL_HOST+'sliders-backend/update',
		};
		res.render('sliders-form', {formData: formData})
	})
})

router.post('/add', upload.single('file'), (req, res, next)=>{
	var formData = "insert into sliders "
		+"(id_slider, title, description, file) values "
		+"('"+req.body.id_slider+"', '"+req.body.title+"', '"+req.body.description+"', '"+req.file.filename+"')";

	Db.query(formData, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index');
	});
})

router.post('/update', upload.single('file'), (req, res, next)=>{
	var formData = {
		id_slider: req.body.id_slider,
		title: req.body.title,
		description: req.body.description,
		file: req.file.filename,
	};

	var sql = "UPDATE sliders SET title = '"+formData.title+"', description = '"+formData.description+"', file = '"+formData.file+"' WHERE id_slider = '"+formData.id_slider+"'";
	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index');
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var sql = "delete from sliders where id_slider = '"+req.params.id+"'";
	Db.query(sql, (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index');
	})
})

router.get('/display/:id/:display', (req, res, next)=>{
	var display = req.params.display;
	if(display === 'n'){
		var sql = "UPDATE sliders SET display = 'y' WHERE id_slider = '"+req.params.id+"'";
	}
	else{
		var sql = "UPDATE sliders SET display = 'n' WHERE id_slider = '"+req.params.id+"'";
	}

	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index')
	});
})

router.get('/api/all', (req, res, next)=>{
	var sql = "select * from sliders where display='y'";
	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err)
		res.json(rows)
	})
})

module.exports = router;
