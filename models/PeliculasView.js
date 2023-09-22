//VISTA DEL PUNTO 2)

const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const peliculasView = db.define('peliculasView', {
    id: { //id de la pelicula
      type: Sequelize.INTEGER,
      primaryKey: true,
    },
    poster: {
      type: Sequelize.STRING(50),
    },
    resumen: {
        type: Sequelize.STRING(500),
      },
      temporadas: {
        type: Sequelize.INTEGER,
      },
    titulo: {
        type: Sequelize.STRING(100),
      },
      trailer: {
        type: Sequelize.STRING(300),
      },
      categoria: {
        type: Sequelize.STRING(50),
      },
      generos: {
        type: Sequelize.STRING,
      },
      actores: {
        type: Sequelize.STRING,
      },
  }, { tableName: "peliculasView", timestamps: false });

  module.exports = peliculasView;

  