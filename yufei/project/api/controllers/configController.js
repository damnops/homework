'use strict';

var mysql = require('mysql');
var conn = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
});

conn.connect();

exports.get_config = function(req, res) {
    conn.query('SELECT * from config', function(err, data, fields) {
        if (err)
          res.send(err);
        res.json(data);
    });
};
