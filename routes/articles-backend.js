require('dotenv').config();

var express = require('express');
var router = express.Router();

var Db = require('../configs/database');

var multer = require('multer');
var storage = multer.diskStorage({
	destination: (req, file, cb) => {
		cb(null, 'public/assets/images/article')
	},
	filename: (req, file, cb) => {
		var pecah = file.originalname.split('.');
		var ekstension = pecah[pecah.length-1];
		cb(null, 'article-'+Date.now()+'.'+ekstension)
	}
})
var upload = multer({storage: storage});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mArticles = "select * from articles";
	Db.query(mArticles, (err, rows, fields)=>{
		res.render('articles-index', {dataArticles: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mArticles = "select * from articles";
	Db.query(mArticles, (err, rows, fields)=>{
		res.render('articles-index', {dataArticles: rows});
	})
})

router.get('/tipsntrick-form', (req, res, next)=>{
	var formData = {
		id: '',
		title: '',
		body: '',
		file: '',
		tag: '',
		article_type: 'tt',
		account_id: '1',
		action: process.env.URL_HOST+'articles-backend/add',
	};
	res.render('tipsntrick-form', {formData: formData})
})

router.get('/eventnnews-form', (req, res, next)=>{
	var formData = {
		id: '',
		title: '',
		body: '',
		file: '',
		tag: '',
		article_type: 'en',
		account_id: '1',
		action: process.env.URL_HOST+'articles-backend/add',
	};
	res.render('eventnnews-form', {formData: formData})
})

router.get('/tipsntrick-form/:id', (req, res, next)=>{
	var mArticles = "select * from articles where id = '"+req.params.id+"'";
	Db.query(mArticles, (err, rows, next)=>{
		var formData = {
			id: rows[0].id,
			title: rows[0].title,
			body: rows[0].body,
			file: rows[0].file,
			tag: rows[0].tag,
			article_type: rows[0].article_type,
			account_id: rows[0].account_id,
			action: process.env.URL_HOST+'articles-backend/update',
		};
		res.render('tipsntrick-form', {formData: formData})
	})
})

router.get('/eventnnews-form/:id', (req, res, next)=>{
	var mArticles = "select * from articles where id = '"+req.params.id+"'";
	Db.query(mArticles, (err, rows, next)=>{
		var formData = {
			id: rows[0].id,
			title: rows[0].title,
			body: rows[0].body,
			file: rows[0].file,
			tag: rows[0].tag,
			article_type: rows[0].article_type,
			account_id: rows[0].account_id,
			action: process.env.URL_HOST+'articles-backend/update',
		};
		res.render('eventnnews-form', {formData: formData})
	})
})

router.post('/api/upload', upload.single('file'), (req, res, next)=>{
	res.json({link: process.env.URL_HOST+'assets/images/article/'+req.file.filename});
})

router.post('/add', upload.single('file'), (req, res, next)=>{
	var formData = {
		title: req.body.title,
		body: req.body.body,
		file: req.file.filename,
		tag: req.body.tag,
		article_type: req.body.article_type,
		account_id: req.body.account_id,
	};

	var mArticles = "insert into articles (title, body, file, tag, article_type, account_id)"
		+" values ('"+formData.title+"','"+formData.body+"','"+formData.file+"','"+formData.tag+"','"+formData.article_type+"','"+formData.account_id+"')";
	Db.query(mArticles, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/articles-backend/index');
	});
})

router.post('/update', upload.single('file'), (req, res, next)=>{
	var formData = {
		id: req.body.id,
		title: req.body.title,
		body: req.body.body,
		file: req.file.filename,
		tag: req.body.tag,
		article_type: req.body.article_type,
		account_id: req.body.account_id,
	};

	var sql = "UPDATE articles SET title = '"+formData.title
					+"', body = '"+formData.body
					+"', file = '"+formData.file
					+"', tag = '"+formData.tag
					+"', article_type = '"+formData.article_type
					+"', account_id = '"+formData.account_id
					+"' WHERE id = '"+formData.id+"'";
	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/articles-backend/index');
	});
})

router.get('/display/:id/:display', (req, res, next)=>{
	var display = req.params.display;
	if(display === 'n'){
		var sql = "UPDATE articles SET display = 'y' WHERE id = '"+req.params.id+"'";
	}
	else{
		var sql = "UPDATE articles SET display = 'n' WHERE id = '"+req.params.id+"'";
	}

	Db.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.redirect('/articles-backend/index')
	});
})

router.get('/remove/:id', (req, res, next)=>{
	var mArticles = "delete from articles where id = '"+req.params.id+"'";
	Db.query(mArticles, (err, result)=>{
		if(err) throw new Error(err);
		res.redirect('/articles-backend/index');
	})
})

router.get('/api/tt/all', (req, res, next)=>{
	var mArticles = "select * from articles where article_type = 'tt'";
	Db.query(mArticles, (err, rows, result)=>{
		if(err) throw new Error(err);
		res.json(rows);
	})
})

router.get('/api/en/all', (req, res, next)=>{
	var mArticles = "select * from articles where article_type = 'en'";
	Db.query(mArticles, (err, rows, result)=>{
		if(err) throw new Error(err);
		res.json(rows);
	})
})

module.exports = router;
