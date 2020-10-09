const express = require('express');
const router = express.Router();
const pool = require('../models/db');

router.get('/:id', function (req, res, next) {
  let sql = 'SELECT * FROM story WHERE id = ?';

  console.log(req.params);

  pool.query(sql, [req.params.id], function (err, result, fields) {
    if (err) throw err;

    sql = 'SELECT * FROM links WHERE story_id = ?';

    let story = result;

    pool.query(sql, [req.params.id], function (err, result, fields) {
      if (err) throw err;
      // res.json({
      //   status: 200,
      //   id: req.params.id,
      //   story: story,
      //   links: result
      // });
      res.render('story', { 
        title: 'Story',
        id: req.params.id,
        story: story,
        links: result
      });
    });
  });
});

module.exports = router;
