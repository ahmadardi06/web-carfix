var express = require('express');
var router = express.Router();

var Db = require('../configs/database');
var tSliders = Db.extend({tableName: "sliders"});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mSliders = new tSliders();
	mSliders.find((err, rows, fields)=>{
		res.render('sliders-index', {dataSliders: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mSliders = new tSliders();
	mSliders.find((err, rows, fields)=>{
		res.render('sliders-index', {dataSliders: rows});
	})
})

router.get('/form', (req, res, next)=>{
	var formData = {
		id_slider: '',
		title: '',
		description: '',
		file: '',
		action: 'http://localhost:3000/sliders-backend/add',
	};
	res.render('sliders-form', {formData: formData})
})

router.get('/form/:id', (req, res, next)=>{
	var mSliders = new tSliders();
	mSliders.find('all', {where: "id_slider = '"+req.params.id+"'"}, (err, rows, next)=>{
		var formData = {
			id_slider: rows[0].id_slider,
			title: rows[0].title,
			description: rows[0].description,
			file: rows[0].file,
			action: 'http://localhost:3000/sliders-backend/update',
		};
		res.render('sliders-form', {formData: formData})
	})
})

router.post('/add', (req, res, next)=>{
	var formData = {
		id_slider: req.body.id_slider,
		title: req.body.title,
		description: req.body.description,
		file: req.body.file,
	};

	var mSliders = new tSliders(formData);
	mSliders.save((err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index');
	});
})

router.post('/update', (req, res, next)=>{
	var formData = {
		id_slider: req.body.id_slider,
		title: req.body.title,
		description: req.body.description,
		file: req.body.file,
	};

	var mSliders = new tSliders();
	var sql = "UPDATE sliders SET title = '"+formData.title+"', description = '"+formData.description+"', file = '"+formData.file+"' WHERE id_slider = '"+formData.id_slider+"'";
	mSliders.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index');
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var mSliders = new tSliders();
	mSliders.remove("id_slider = '"+req.params.id+"'", (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index');
	})
})

router.get('/display/:id/:display', (req, res, next)=>{
	var mSliders = new tSliders();

	var display = req.params.display;
	if(display === 'n'){
		var sql = "UPDATE sliders SET display = 'y' WHERE id_slider = '"+req.params.id+"'";
	}
	else{
		var sql = "UPDATE sliders SET display = 'n' WHERE id_slider = '"+req.params.id+"'";
	}

	mSliders.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/sliders-backend/index')
	});
})

module.exports = router;
