const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const peliculas = db.define('peliculas', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    poster: {
      type: Sequelize.STRING(50),
      allowNull: false
    },
    titulo: {
        type: Sequelize.STRING(100),
        allowNull: false
      },
      trailer: {
        type: Sequelize.STRING(300),
        allowNull: true
      },
      temporadas: {
        type: Sequelize.INTEGER,
        allowNull: true
      },
      resumen: {
        type: Sequelize.STRING(500),
        allowNull: false
      },
      idcategoria: {
        type: Sequelize.INTEGER,
        allowNull: false
      }
  }, { tableName: "peliculas", timestamps: false });

  module.exports = peliculas;

  