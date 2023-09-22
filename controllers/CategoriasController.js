const { Categoria } = require('../config/associations');

// Controlador para listar todas las categorías
const listarCategorias = async (req, res) => {
  try {
    const categorias = await Categoria.findAll();
    res.json(categorias);
  } catch (error) {
    console.error("Error al listar las categorias:", error);
    res.status(500).json({ error: "Error al listar las categorias "+ error });
  }
};

// Controlador para crear una nueva categoría
const crearCategoria = async (req, res) => {
  const { descripcion } = req.body;
  try {
    const categoria = await Categoria.create({ descripcion });
    res.status(201).json(categoria);
  } catch (error) {
    console.error("Error al crear la categoría:", error);
    res.status(500).json({ error: "Error al crear la categoría" });
  }
};


const eliminarCategoria = async (req, res) => {
  const id = req.params.id;
  try {
    const categoria = await Categoria.findByPk(id);
    if (!categoria) {
      return res.status(404).json({ error: "Categoria no encontrada" });
    }
    await categoria.destroy();
    res.json({ mensaje: "Categoria eliminada con éxito" });
  } catch (error) {
    console.error("Error al eliminar la categoria: ", error);
    res.status(500).json({ error: "Error al eliminar la categoria" });
  }
};


module.exports = {
  listarCategorias,
  crearCategoria,
  eliminarCategoria
}