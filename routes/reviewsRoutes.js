const express = require('express');
const router = express.Router();
const { tryCatch } = require('../utils/tryCatch');
const { getAllReviews } = require('../controller/get/reviewsController');
const { createReview } = require('../controller/post/reviewsController');

// GET /reviews - Get all reviews
router.get('/', tryCatch(getAllReviews));

// POST /reviews - Add a review
router.post('/', tryCatch(createReview));

module.exports = router;

