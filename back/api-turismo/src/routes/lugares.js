const express = require('express');
const router = express.Router();

const mysqlConnection = require('../database');

router.get('/', (req, res) => {
    mysqlConnection.query('SELECT * FROM lugaresColombia', (err, rows, fields) => {
        if(!err) {
            res.json(rows);
        } else {
            console.log(err);
        }
    });
});

router.get('/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT * FROM lugaresColombia WHERE id = ?', [id], (err,
    rows, fields) => {
        if(!err) {
            res.json(rows[0]);
        } else {
            console.log(err);
        }    
    });
});

router.post('/', (req, res) => {
    const { id, name, departamento, municipio, alturamsm, temperatura, actividades } = req.body;
    console.log(req.body)
    const query = `
        CALL lugaresColombiaaddoredit(?, ?, ?, ?, ?, ?, ?);
    `;
    mysqlConnection.query(query, [id, name, departamento, municipio, alturamsm, temperatura, actividades], (err, rows, fields) => {
        if(!err) {
            res.json({status: 'llugaresColombia Saved'});  
        } else {
            console.log(err);
        }
    }); 
});

router.put('/:id', (req, res) => {
    const {name, departamento, municipio, alturamsm, temperatura, actividades} = req.body;
    const { id } = req.params;
    const query = 'CALL lugaresColombiaaddoredit(?, ?, ?, ?, ?, ?, ?)';
    mysqlConnection.query(query, [id, name, departamento, municipio, alturamsm, temperatura, actividades], (err, rows, fields) => {
        if(!err) {
            res.json({ Status: 'lugaresColombia Updated' });
        } else {
            console.log(err);
        }
    });
});

router.delete('/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('DELETE FROM lugaresColombia WHERE id = ?', [id], (err,
        rows, fields) => {
            if (!err) {
                res.json({status: 'lugaresColombia Deleted'});
            } else {
                console.log(err);
            }
        })
})

module.exports =  router;
