const express = require('express');
const router = express.Router();
const PeliculaController = require('../controllers/PeliculasController');

// Rutas para las categorías
router.get('/catalogo', PeliculaController.listarPeliculas);
router.get('/catalogo/:id', PeliculaController.listarPelicula);
router.get('/catalogo/nombre/:nombre', PeliculaController.listarPeliculasPorNombre);
router.get('/catalogo/genero/:genero', PeliculaController.listarPeliculasPorGenero);
router.get('/catalogo/categoria/:categoria', PeliculaController.listarPeliculasPorCategoria);

//router.post('/catalogo', PeliculaController.crearPost);

module.exports = router;

