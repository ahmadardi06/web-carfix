var Db = require('../configs/database');

exports.getAllSliders = (req, res, next) => {
	var sql = "select * from sliders";
	Db.quert(sql, (err, rows, fields) => {
		if(err) throw new Error(err)
		res.json(rows)
	})
}

exports.getOneSlider = (req, res, next) => {
	var sql = "select * from sliders where id_slider = '"+req.params.id+"'";
	Db.query(sql, (err, rows, fields) => {
		if(err) throw new Error(err)
		res.json(rows)
	})
}

// exports.createSlider = (req, res, next) => {
// 	var create = new dSliders({
// 		title: "Title",
// 		description: "Description",
// 		file: "slider-bg4.jpg"
// 	})

// 	create.save((err, rows, fields)=>{
// 		if(err) throw new Error(err)
// 		res.json({message: "INSERT_SUCCESS"})
// 	})
// }

// exports.updateSlider = (req, res, next) => {
// 	var Sliders = new dSliders();
// 	var sql = "UPDATE sliders SET title = 'Title Updated', description = 'Description Updated', file = 'slider-bg4-updated.jpg' WHERE id_slider = '5'";
// 	Sliders.query(sql, (err, rows, fields)=>{
// 		if(err) throw new Error(err);
// 		res.json(rows);
// 	})
// }

// exports.removeOneSlider = (req, res, next) => {
// 	var Sliders = new dSliders();
// 	Sliders.remove("id_slider = '" + req.params.id + "'", (err, results)=>{
// 		if(err) throw new Error(err);
// 		res.json({message: 'DELETE_SUCCESS'})
// 	});
// }

// exports.removeAllSliders = (req, res, next) => {
// 	var Sliders = new dSliders();
// 	Sliders.remove((err, results)=>{
// 		if(err) throw new Error(err);
// 		res.json({message: 'DELETE_ALL_SUCCESS'})
// 	});
// }
