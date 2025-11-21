const express = require("express");
const app = express();
const PORT = process.env.PORT || 41567;

app.get("/", (req, res) => {
  res.send("🚀 CI/CD funcionando vía AWS + Cloudways + Node.js");
});

app.listen(PORT, () => {
  console.log(`Servidor corriendo en puerto ${PORT}`);
});
