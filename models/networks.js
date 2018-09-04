var db = require('../configs/database');
var dNetworks = db.extend({tableName: "networks"});

exports.getAllNetworks = (req, res, next) => {
	var networks = new dNetworks();
	networks.find((err, rows, fields) => {
		if(err) throw new Error(err)
		res.json(rows)
	})
}

exports.getOneNetwork = (req, res, next) => {
	var networks = new dNetworks();
	networks.find('all', {where: "id = '" + req.params.id + "'"}, (err, rows, fields) => {
		if(err) throw new Error(err)
		res.json(rows)
	})
}

exports.createNetwork = (req, res, next) => {
	var create = new dNetworks({
		title: "Title",
		link: "Link"
	})

	create.save((err, rows, fields)=>{
		if(err) throw new Error(err)
		res.json({message: "INSERT_SUCCESS"})
	})
}

exports.updateNetwork = (req, res, next) => {
	var networks = new dNetworks();
	var sql = "UPDATE networks SET title = 'Title Updated', link = 'Link Updated' WHERE id = '1'";
	networks.query(sql, (err, rows, fields)=>{
		if(err) throw new Error(err);
		res.json(rows);
	})
}

exports.removeOneNetwork = (req, res, next) => {
	var networks = new dNetworks();
	networks.remove("id = '" + req.params.id + "'", (err, results)=>{
		if(err) throw new Error(err);
		res.json({message: 'DELETE_SUCCESS'})
	});
}

exports.removeAllNetworks = (req, res, next) => {
	var networks = new dNetworks();
	networks.remove((err, results)=>{
		if(err) throw new Error(err);
		res.json({message: 'DELETE_ALL_SUCCESS'})
	});
}