const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const actores = db.define('actores', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    nombre_apellido: {
      type: Sequelize.STRING(50),
      allowNull: false
    }
  }, { tableName: "actores", timestamps: false });

  module.exports = actores;

  