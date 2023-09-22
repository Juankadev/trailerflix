const { Genero } = require('../config/associations');

// Controlador para listar todas las categorías
const listarGeneros = async (req, res) => {
  try {
    const generos = await Genero.findAll();
    res.json(generos);
  } catch (error) {
    console.error("Error al listar los generos:", error);
    res.status(500).json({ error: "Error al listar los generos "+ error });
  }
};


// Controlador para crear una nueva categoría
const crearGenero = async (req, res) => {
  const { descripcion } = req.body;
  try {
    const generos = await Genero.create({ descripcion });
    res.status(201).json(generos);
  } catch (error) {
    console.error("Error al crear el genero:", error);
    res.status(500).json({ error: "Error al crear el genero" });
  }
};


const eliminarGenero = async (req, res) => {
  const id = req.params.id;
  try {
    const genero = await Genero.findByPk(id);
    if (!genero) {
      return res.status(404).json({ error: "Genero no encontrado" });
    }
    await genero.destroy();
    res.json({ mensaje: "Genero eliminado con éxito" });
  } catch (error) {
    console.error("Error al eliminar el genero: ", error);
    res.status(500).json({ error: "Error al eliminar el genero" });
  }
};

module.exports = {
    listarGeneros,
    crearGenero,
    eliminarGenero,
}