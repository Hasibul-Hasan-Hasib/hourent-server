const { connectDB } = require('../../config/database');
const { ObjectId } = require('mongodb');

// Get all properties
const getAllProperties = async (req, res) => {
    const postCollection = await connectDB('post');
    const result = await postCollection.find().toArray();
    res.send(result);
};

// Get single property by ID
const getPropertyById = async (req, res) => {
    const id = req.params.id;
    const postCollection = await connectDB('post');
    const query = { _id: new ObjectId(id) };
    const result = await postCollection.findOne(query);
    
    if (!result) {
        return res.status(404).send({ error: 'Property not found' });
    }
    res.send(result);
};

module.exports = {
    getAllProperties,
    getPropertyById
};

