const express = require("express");
const app = express();
const path = require('path');
const { db } = require("./config/db");
const PORT = process.env.PORT || 3000;


app.use(express.json());

app.use(async (req, res, next) => {
  try {
    await db.authenticate();
    next();
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error en el servidor", description: error.message });
  }
});


// Configurar la carpeta "public" como directorio de archivos estáticos
app.use(express.static(path.join(__dirname, "public")));
app.set('view engine', 'ejs');


const peliculasView = require('./models/PeliculasView');

const CategoriaRouter = require("./routers/CategoriaRouter");
const GeneroRouter = require("./routers/GenerosRouter");
const PeliculaRouter = require("./routers/PeliculasRouter");


// app.get("/", (req, res) => {
//   res.status(200).end("Bienvenido a la API con MySQL y Sequelize");
// 	//res.render('index', {});
// });


app.get("/", async (req, res) => {
  try {
    const allPeliculasView = await peliculasView.findAll();
    //res.status(200).json(allPeliculasView);

    let data = {
          peliculas: allPeliculasView
    }
    res.render('index', {data:data});
  } catch (error) {
    res.status(500).json({error:"Error en el servidor",description: error.message});
  }

});


app.use("/api", CategoriaRouter);
app.use("/api", GeneroRouter);
app.use("/api", PeliculaRouter);

// Iniciar el servidor
app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});
