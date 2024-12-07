const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello, Better Software!');
});

app.listen(3000, () => console.log('Server running on port 3000'));
module.exports = app;
