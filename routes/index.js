var express = require('express');
var router = express.Router();
const pool = require('../models/db');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/:id', function (req, res, next) {
  let sql = 'SELECT * FROM story WHERE id = ?';

  console.log(req.params);

  pool.query(sql, [req.params.id], function (err, result, fields) {
    if (err) throw err;

    sql = 'SELECT * FROM links WHERE story_id = ?';

    let story = result;

    pool.query(sql, [req.params.id], function (err, result, fields) {
      if (err) throw err;
      res.json({
        status: 200,
        id: req.params.id,
        story: story,
        links: result
      });
    });
  });
});


module.exports = router;
