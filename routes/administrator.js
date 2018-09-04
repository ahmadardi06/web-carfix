var express = require('express');
var router = express.Router();

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

module.exports = router;
