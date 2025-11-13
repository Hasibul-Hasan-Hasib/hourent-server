const { connectDB } = require('../../config/database');

// Get all users
const getAllUsers = async (req, res) => {
    const userCollection = await connectDB('users');
    const result = await userCollection.find().toArray();
    res.send(result);
};

module.exports = {
    getAllUsers
};

