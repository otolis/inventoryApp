const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  console.log("get info from db");
  res.render("index");
});

router.post("/", (req, res) => {
  console.log("add smth to the inv");
});

router.patch("/", (req, res) => {
  console.log("update the inv");
});

router.delete("/", (req, res) => {
  console.log("delete smth from inv");
});

module.exports = router;
