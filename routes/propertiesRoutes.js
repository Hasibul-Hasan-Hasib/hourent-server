const express = require('express');
const router = express.Router();
const { tryCatch } = require('../utils/tryCatch');
const {
    getAllProperties,
    getPropertyById
} = require('../controller/get/propertiesController');

// GET /properties - Get all properties
router.get('/', tryCatch(getAllProperties));

// GET /properties/:id - Get single property by ID
router.get('/:id', tryCatch(getPropertyById));

module.exports = router;

