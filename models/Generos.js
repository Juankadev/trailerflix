const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const generos = db.define('generos', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    descripcion: {
      type: Sequelize.STRING(50),
      allowNull: false
    }
  }, { tableName: "generos", timestamps: false });

  module.exports = generos;

  