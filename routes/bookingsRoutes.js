const express = require('express');
const router = express.Router();
const { tryCatch } = require('../utils/tryCatch');
const { getAllBookings } = require('../controller/get/bookingsController');
const { createBooking } = require('../controller/post/bookingsController');
const { deleteBooking } = require('../controller/delete/bookingsController');

// GET /bookings - Get all bookings
router.get('/', tryCatch(getAllBookings));

// POST /bookings - Add a booking
router.post('/', tryCatch(createBooking));

// DELETE /bookings/:id - Delete a booking
router.delete('/:id', tryCatch(deleteBooking));

module.exports = router;

