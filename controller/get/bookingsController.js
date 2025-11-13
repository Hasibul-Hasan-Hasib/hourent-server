const { connectDB } = require('../../config/database');

// Get all bookings
const getAllBookings = async (req, res) => {
    const bookingCollection = await connectDB('bookings');
    const result = await bookingCollection.find().toArray();
    res.send(result);
};

module.exports = {
    getAllBookings
};

