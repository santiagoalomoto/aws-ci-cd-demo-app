const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;
app.get("/", (req, res) => res.send("🚀 CI/CD con AWS funcionando"));
app.listen(PORT, ()=> console.log("Listening", PORT));
