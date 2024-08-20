const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { MongoClient, ServerApiVersion, ObjectId } = require('mongodb');
const app = express();
const port = process.env.PORT || 3100;




app.use(cors());
app.use(express.json());



const uri = `mongodb+srv://${process.env.DATABASE_USER}:${process.env.DATABASE_PASSWORD}@cluster0.fkohihs.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0`;



// Connect to MongoDB using Mongoose
const client = new MongoClient(uri, {
    serverApi: {
        version: ServerApiVersion.v1,
        strict: true,
        deprecationErrors: true,
    }
})





const server = async () => {
    try {
        // Connection to Database
        await client.connect();
        console.log('Connected to MongoDB');

        const database = await client.db("Hourent")
        const postCollection = await database.collection("post")


        // Default route
        app.get('/', (req, res) => {
            res.send('Server is running.');
        });

        // Admin login route
        app.post('/admin-login', async (req, res) => {
            
        });

        // Get all posts
        app.get('/posts', async (req, res) => {
            const result = await postCollection.find().toArray();
            res.send(result);
        });

        // Get all users
        app.get('/users', async (req, res) => {
            res.send([])
        });
        
        // Get all bookings
        app.get('/bookings', async (req, res) => {
            res.send([])
        });
        
        // Delete a booking
        app.delete('/bookings', async (req, res) => {
        });
        
        // Add a booking
        app.post('/bookings', async (req, res) => {

        });
        
        // Add a review
        app.post('/reviews', async (req, res) => {
            
        });
        
        // Get all reviews
        app.get('/reviews', async (req, res) => {
            res.send([])

        });






        app.listen(port, () => {
            console.log(`App listening at http://localhost:${port}`);
        });


    } catch (err) {
        client.close();
        console.error(err);
    }
}


server()







