require("dotenv").config();
const express = require("express");
const path = require("path");
const router = require("./routes/index.js");

const app = express();

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

app.use(express.static(path.join(__dirname, "public")));
app.use(express.urlencoded({ extended: true }));

app.use("/", router);

const port = process.env.SERVER_PORT || 3003;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
