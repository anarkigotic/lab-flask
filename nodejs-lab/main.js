const express = require('express');

const app = express();
const port = 5000;

// Ruta principal
app.get('/', (req, res) => {
  res.send('Hola Mundo! Juan latest');
});

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});
