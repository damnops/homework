'use strict';

module.exports = function(app) {
    var crud = require('../controllers/configController.js');
    app.route('/config').get(crud.get_config);
};
