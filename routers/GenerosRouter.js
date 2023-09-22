const express = require('express');
const router = express.Router();
const GenerosController = require('../controllers/GenerosController');

// Rutas para las categorías
router.get('/generos', GenerosController.listarGeneros);
router.post('/generos', GenerosController.crearGenero);
router.delete('/generos/:id', GenerosController.eliminarGenero);

module.exports = router;
