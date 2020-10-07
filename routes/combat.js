var express = require('express');
var router = express.Router();
const pool = require('../models/db');

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1) + min); //The maximum is inclusive and the minimum is inclusive 
}

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('combat', { title: 'Express' });
});

router.post('/resolve', function(req, res, next) {
  const roll = getRandomInt(1,10)

  const sql = `SELECT 
                combat_ratio.value AS cr,
                combat_numbers.value AS cn,
                enemy.endurance AS enemy,
                hero.endurance AS hero
              FROM
                combat
              JOIN combat_ratio ON combat.ratio = combat_ratio.id
                AND combat_ratio.value = ?
              JOIN combat_numbers ON combat.random = combat_numbers.id
                AND combat_numbers.value = ?
              JOIN combat_results enemy ON combat.enemy = enemy.id
              JOIN combat_results hero ON combat.hero = hero.id`;

  pool.query(sql, [req.body.ratio, roll], function (err, result, fields) {
    if (err) throw err;
    res.json({
      status: 200,
      roll: roll,
      result: result
    });
  });
});

module.exports = router;
