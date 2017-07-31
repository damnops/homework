'use strict';

require('dotenv').config();

var express = require('express');
var app = express();
var path = require('path');
var mysql = require('mysql');
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var routes = require('./api/routes/configRoutes.js');
routes(app);

app.get('/', function(err, res) {
    res.sendFile(path.join(__dirname+'/src/index.html'));
});

app.get('/index.js', function(err, res) {
    res.sendFile(path.join(__dirname+'/src/index.js'));
});

app.listen(3000);

console.log('running on 3000 port');
