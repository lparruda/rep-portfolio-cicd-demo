const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Pipeline CI/CD funcionando com sucesso!');
});

if (require.main === module) {
  app.listen(port, () => console.log(`Rodando na porta ${port}`));
}

module.exports = app;
