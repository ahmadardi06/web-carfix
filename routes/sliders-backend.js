var express = require('express');
var router = express.Router();

var Db = require('../configs/database');
var tSliders = Db.extend({tableName: "sliders"});

/* GET home page. */
router.get('/', function(req, res, next) {
  var mSliders = new tSliders();
	mSliders.find('all', {where: "display = 'y'"}, (err, rows, fields)=>{
		res.render('sliders-index', {dataSliders: rows});
	})
});

router.get('/index', (req, res, next)=>{
	var mSliders = new tSliders();
	mSliders.find('all', {where: "display = 'y'"}, (err, rows, fields)=>{
		res.render('sliders-index', {dataSliders: rows});
	})
})

module.exports = router;
