var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('networks-index', { title: 'Express' });
});

router.get('/index', function(req, res, next){
  res.render('networks-index');
});

module.exports = router;
