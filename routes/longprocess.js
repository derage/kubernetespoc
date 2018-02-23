var express = require('express');
var router = express.Router();
var sleep = require('system-sleep');

/* sleep 10s because docker waits this long before killing */
router.get('/', function(req, res, next) {
  sleep(5000);
  res.send('all done processing');
});

module.exports = router;