const express = require('express');
const router = express.Router();
const { tryCatch } = require('../utils/tryCatch');
const { getAllUsers } = require('../controller/get/usersController');
const { createUser } = require('../controller/post/usersController');

// GET /users - Get all users
router.get('/', tryCatch(getAllUsers));

// POST /users - Create user
router.post('/', tryCatch(createUser));

module.exports = router;

