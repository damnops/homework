'use strict';

var mysql = require('mysql');
var conn = mysql.createConnection({
    host: '10.202.129.176',
    user: 'root',
    password: 'P@ssword',
    database: 'pandora'
});

conn.connect();

exports.get_config = function(req, res) {
    conn.query('SELECT * from config', function(err, data, fields) {
        if (err)
          res.send(err);
        res.json(data);
    });
};
