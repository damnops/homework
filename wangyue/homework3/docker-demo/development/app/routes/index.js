var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.render('index', {
        title: 'Express'
    });
});

router.get('/userlist', function(req, res) {
    var db = req.db;
    var collection = db.get('user');

    collection.find({}, {}, function(e, docs) {
        res.render('userlist', {
            "userlist": docs
        });
    });
});

router.get('/newuser', function(req, res) {
    res.render('newuser', {
        title: 'Add New User'
    });
});

router.post('/adduser', function(req, res) {
    var db = req.db;
    var user = req.body.user;
    var collection = db.get('user');

    collection.insert({
        "user": user
    }, function(err, doc) {
        if (err) {
            res.send("There was a problem adding the information to the database.");
        } else {
            res.redirect("userlist");
        }
    });
});

module.exports = router;
