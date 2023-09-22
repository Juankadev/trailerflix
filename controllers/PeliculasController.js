const { Pelicula } = require('../config/associations');
const { Op } = require('sequelize');
const PeliculaView = require('../models/PeliculasView');

// Controlador para listar todas las peliculas con la vista SQL
const listarPeliculas = async (req, res) => {
  try {
    const peliculas = await PeliculaView.findAll(
      { order: [['id', 'ASC']] }
    );

    peliculas.forEach(p => {
      p.poster = `${req.protocol}://${req.get('host')}/img${p.poster}`;
    });
    
    res.json(peliculas);
  } catch (error) {
    console.error("Error al listar las peliculas:", error);
    res.status(500).json({ error: "Error al listar las peliculas " + error });
  }
};

// Controlador para listar una pelicula por su ID usando la vista SQL
const listarPelicula = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    const pelicula = await PeliculaView.findOne({ where: { id } });
    res.json(pelicula);
  } catch (error) {
    console.error("Error al listar la pelicula:" + id, error);
    res.status(500).json({ error: "Error al listar la pelicula " + error });
  }
};


// Controlador para listar todas las peliculas por categoria
const listarPeliculasPorCategoria = async (req, res) => {
  try {
    const categoria = req.params.categoria;
    const peliculas = await PeliculaView.findAll({ where: { categoria } });
    res.json(peliculas);
  } catch (error) {
    console.error("Error al listar las peliculas por categoria: ", error);
    res.status(500).json({ error: "Error al listar las peliculas por categoria: " + error });
  }
};


// Controlador para listar todas las peliculas por genero
const listarPeliculasPorGenero = async (req, res) => {
  try {
    const genero = req.params.genero;
    const peliculas = await PeliculaView.findAll({where:{generos:{[Op.like]: `%${genero}%`}}});
    res.json(peliculas);
  } catch (error) {
    console.error("Error al listar las peliculas:", error);
    res.status(500).json({ error: "Error al listar las peliculas " + error });
  }
};


// Controlador para listar todas las peliculas por parte de su nombre
const listarPeliculasPorNombre = async (req, res) => {
  try {
    const nombre = req.params.nombre;
    const peliculas = await PeliculaView.findAll(
      { where: { titulo: { [Op.like]: `%${nombre}%` } } }
    );
    res.json(peliculas);
  } catch (error) {
    console.error("Error al listar las peliculas por nombre: ", error);
    res.status(500).json({ error: "Error al listar las peliculas por nombre: " + error });
  }
};

module.exports = {
  listarPeliculas,
  listarPelicula,
  listarPeliculasPorCategoria,
  listarPeliculasPorNombre,
  listarPeliculasPorGenero
}