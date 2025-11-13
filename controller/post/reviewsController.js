const { connectDB } = require('../../config/database');

// Add a review
const createReview = async (req, res) => {
    const review = req.body;
    const reviewCollection = await connectDB('reviews');
    const result = await reviewCollection.insertOne(review);
    res.send(result);
};

module.exports = {
    createReview
};

