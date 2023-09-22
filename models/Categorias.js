const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const categorias = db.define('categorias', {
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
  }, { tableName: "categorias", timestamps: false });

  module.exports = categorias;

  