const { connectDB } = require('../../config/database');
const { ObjectId } = require('mongodb');

// Delete a booking
const deleteBooking = async (req, res) => {
    const id = req.params.id;
    const bookingCollection = await connectDB('bookings');
    const query = { _id: new ObjectId(id) };
    const result = await bookingCollection.deleteOne(query);
    
    if (result.deletedCount === 0) {
        return res.status(404).send({ error: 'Booking not found' });
    }
    res.send({ message: 'Booking deleted successfully', result });
};

module.exports = {
    deleteBooking
};

