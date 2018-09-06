var express = require('express');
var router = express.Router();

var mSliders = require('../models/sliders')
var mNetworks = require('../models/networks')

/* GET home page. */
router.get('/login', function(req, res, next) {
  res.render('login-backend', { title: 'Sign in to start your session' });
});

router.post('/login', (req, res, next)=>{
	var userEmail 		= req.body.userEmail;
	var userPassword 	= req.body.userPassword;

	var check = {email: userEmail, password: userPassword};
	console.log(check)

	// if success login
	if(userEmail && userPassword) {
		res.redirect('/administrator/dashboard');
	}

	// error login
	else{
		res.render('login-backend', { title: "<span class='label label-danger'>User email or password incorrect !</span>" })
	}
})

router.get('/dashboard', (req, res, next)=>{
	res.render('dashboard-backend')
})

router.get('/sliders/all', mSliders.getAllSliders);
router.get('/slider/one/:id', mSliders.getOneSlider);
// router.get('/sliders/create', mSliders.createSlider);
// router.get('/sliders/remove/:id', mSliders.removeOneSlider);
// router.get('/sliders/update/:id', mSliders.updateSlider);

router.get('/networks/all', mNetworks.getAllNetworks);
router.get('/network/one/:id', mNetworks.getOneNetwork);
// router.get('/networks/create', mNetworks.createNetwork);
// router.get('/networks/remove/:id', mNetworks.removeOneNetwork);
// router.get('/networks/update/:id', mNetworks.updateNetwork);

module.exports = router;
