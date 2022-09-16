var express = require('express');

const PORT = 9999;

var app = express();

app.get('/', function (req, res) {
  console.log(req);
  res.send('Bienvenido Virginia Aquino');
});

app.get('/:name', function (req, res) {
  console.log(req);
  res.send('Hola ' + req.params.name);
});

app.listen(process.env.PORT || 9999);
console.log('Running on http://localhost:' + PORT);
