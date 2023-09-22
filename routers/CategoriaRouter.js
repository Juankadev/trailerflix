const express = require('express');
const router = express.Router();
const CategoriaController = require('../controllers/CategoriasController');

// Rutas para las categorías
router.get('/categorias', CategoriaController.listarCategorias);
router.post('/categorias', CategoriaController.crearCategoria);
router.delete('/categorias/:id', CategoriaController.eliminarCategoria);

module.exports = router;
