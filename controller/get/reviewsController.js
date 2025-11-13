const { connectDB } = require('../../config/database');

// Get all reviews
const getAllReviews = async (req, res) => {
    const reviewCollection = await connectDB('reviews');
    const result = await reviewCollection.find().toArray();
    res.send(result);
};

module.exports = {
    getAllReviews
};

