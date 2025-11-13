const express = require('express');
const router = express.Router();
const { tryCatch } = require('../utils/tryCatch');
const { generateJwtToken } = require('../jwt/generateJwtToken');
const { adminLogin } = require('../controller/post/adminController');

// POST /jwt - Generate JWT token
router.post('/jwt', generateJwtToken);

// POST /admin-login - Admin login
router.post('/admin-login', tryCatch(adminLogin));

module.exports = router;

