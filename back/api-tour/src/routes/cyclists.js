const express = require('express');
const router = express.Router();

const mysqlConnection = require('../database.js');

// GET all Employees
router.get('/', (req, res) => {
    mysqlConnection.query('SELECT * FROM cyclists', (err, rows, fields) => {
        if (!err) {
            res.json(rows);
        } else {
            console.log(err);
        }
    });
});


// GET An Employee
router.get('/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT * FROM cyclists WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json(rows[0]);
        } else {
            console.log(err);
        }
    });
});


// DELETE An Employee
router.delete('/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('DELETE FROM cyclists WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json({ status: 'cyclists Deleted' });
        } else {
            console.log(err);
        }
    });
});


// INSERT An Employee
router.post('/', (req, res) => {
    const { id, name, Pais, Equipo, N_camiseta } = req.body;
    console.log(id, name, Pais, Equipo, N_camiseta);
    const query = ` CALL cyclistsAddOrEdit(?, ?, ?, ?, ?);
    `;
    mysqlConnection.query(query, [id, name, Pais, Equipo, N_camiseta], (err, rows, fields) => {
        if (!err) {
            res.json({ status: 'cyclists Saved' });
        } else {
            console.log(err);
        }
    });

});

router.put('/:id', (req, res) => {
    const { name, Pais, Equipo, N_camiseta } = req.body;
    const { id } = req.params;
    const query = ` CALL cyclistsAddOrEdit(?, ?, ?, ?, ?);
    `;
    mysqlConnection.query(query, [id, name, Pais, Equipo, N_camiseta], (err, rows, fields) => {
        if (!err) {
            res.json({ status: 'cyclists Updated' });
        } else {
            console.log(err);
        }
    });
});


module.exports = router;