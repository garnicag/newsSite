const express = require('express');
const router = express.Router();
const mysqlConnection = require('../database.js');

router.get('/', (req, res) => {
  mysqlConnection.query('SELECT * FROM news_list ORDER BY date DESC', (err, rows, fields) => {
    if (!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });
});

module.exports = router;
