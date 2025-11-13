const { connectDB } = require('../../config/database');

// Create user
const createUser = async (req, res) => {
    const user = req.body;
    const userCollection = await connectDB('users');
    const result = await userCollection.insertOne(user);
    res.send(result);
};

module.exports = {
    createUser
};

