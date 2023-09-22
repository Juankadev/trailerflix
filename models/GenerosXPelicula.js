//NO SE ESTA USANDO ESTE MODEL .....

const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const GenerosXPelicula = db.define('GenerosXPeliculas', {

  }, { tableName: "GenerosXPeliculas", timestamps: false });

  module.exports = GenerosXPelicula;

  