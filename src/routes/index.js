var express = require('express');
var router = express.Router();

const username = process.env.USERNAME || 'unknown';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Openshift World', name: username});
});

module.exports = router;
