"use strict";

const userRouter = require("express-promise-router")();

const UserController = require("../controller/userController");

const userController = new UserController();

userRouter
  .post("/registro", userController.registerUser)
  .post("/login", userController.loginUser)
  .get("/:id", userController.getUserById);

module.exports = userRouter;
