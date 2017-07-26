'use strict';

var express = require('express');
var app = express();
var path = require('path');

var mysql = require('mysql');
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());

var routes = require('./api/routes/configRoutes.js');
routes(app);

app.get('/', function(err, res) {
    res.sendFile(path.join(__dirname+'/index.html'));
});

app.get('/test.js', function(err, res) {
    res.sendFile(path.join(__dirname+'/test.js'));
});

app.listen(3000);

console.log('running on localhost:3000');
