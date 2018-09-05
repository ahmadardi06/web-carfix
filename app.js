var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var logger = require('morgan');

//Router for Frontend
var indexRouter = require('./routes/index');
var homeRouter = require('./routes/home');
var usersRouter = require('./routes/users');
var promoRouter = require('./routes/promo');
var productsRouter = require('./routes/products');
var contactRouter = require('./routes/contact');
var adminRouter = require('./routes/administrator');
var tipsntrickRouter = require('./routes/tipsntrick');
var eventnnewsRouter = require('./routes/eventnnews');
var articleRouter = require('./routes/article');

//Router for Backend
var slidersRouter = require('./routes/sliders-backend');
var networksRouter = require('./routes/networks-backend');
var promoRouter = require('./routes/promo-backend');
// var tipsntrickRouter = require('./routes/tipsntrick-backend');
// var eventnnewsRouter = require('./routes/eventnnews-backend');
var articlesRouter = require('./routes/articles-backend');
var productsRouter = require('./routes/products-backend');
var contactusRouter = require('./routes/contactus-backend');
var usersRouter = require('./routes/users-backend');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.static(path.join(__dirname, 'public')));

//Route for frontend
app.use('/', indexRouter);
app.use('/home', homeRouter);
app.use('/users', usersRouter);
app.use('/promo', promoRouter);
app.use('/products', productsRouter);
app.use('/contactus', contactRouter);
app.use('/administrator', adminRouter);
app.use('/tipsntrick', tipsntrickRouter);
app.use('/eventnnews', eventnnewsRouter);
app.use('/article', articleRouter);

//Route for backend
app.use('/sliders-backend', slidersRouter);
app.use('/networks-backend', networksRouter);
app.use('/promo-backend', promoRouter);
app.use('/articles-backend', articlesRouter);
// app.use('/tipsntrick-backend', tipsntrickRouter);
// app.use('/eventnnews-backend', eventnnewsRouter);
app.use('/products-backend', productsRouter);
app.use('/contactus-backend', contactusRouter);
app.use('/users-backend', usersRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
