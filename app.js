"use strict";

const express = require("express");
const path = require("path");
const cors = require("cors"); // Importa el middleware CORS

const levelRouter = require("./routes/levelRouter");
const userRouter = require("./routes/userRouter");
const { runInNewContext } = require("vm");

const app = express();

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

app.use(cors()); // Usa el middleware CORS
app.use(express.static(path.join(__dirname, "public")));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api/level", levelRouter);
app.use("/api/user", userRouter);

app.get("/", function (request, response) {
  response.redirect("level/categories");
});

app.listen(3001, function (error) {
  if (error) console.log("The server could not be connected");
  else console.log("Server listening port", 3001);
});
