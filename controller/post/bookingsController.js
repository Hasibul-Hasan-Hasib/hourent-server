const { connectDB } = require('../../config/database');

// Add a booking
const createBooking = async (req, res) => {
    const booking = req.body;
    const bookingCollection = await connectDB('bookings');
    const result = await bookingCollection.insertOne(booking);
    res.send(result);
};

module.exports = {
    createBooking
};

