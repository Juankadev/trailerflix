const Actor = require('../models/Actores');
const Categoria = require('../models/Categorias');
const Genero = require('../models/Generos');
const Pelicula = require('../models/Peliculas');
const GenerosXPelicula = require('../models/GenerosXPelicula');
const ActoresXPelicula = require('../models/ActoresXPelicula');

// Configurar relaciones
Categoria.hasMany(Pelicula, { foreignKey: 'id' });
Pelicula.belongsTo(Categoria, { foreignKey: 'id' });


// Configurar relación muchos a muchos

// Pelicula.belongsToMany(Genero, { through: GenerosXPelicula});
// Genero.belongsToMany(Pelicula, { through: GenerosXPelicula});

// Actor.belongsToMany(Pelicula, { through: ActoresXPelicula});
// Pelicula.belongsToMany(Actor, { through: ActoresXPelicula});


module.exports = {
    Actor,
    Categoria,
    Genero,
    Pelicula,
    GenerosXPelicula,
    ActoresXPelicula
};