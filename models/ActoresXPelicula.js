//NO SE ESTA USANDO ESTE MODEL .....

const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const ActoresXPeliculas = db.define('ActoresXPeliculas', {

  }, { tableName: "ActoresXPeliculas", timestamps: false });

  module.exports = ActoresXPeliculas;

  