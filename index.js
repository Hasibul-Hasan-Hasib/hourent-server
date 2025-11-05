const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { MongoClient, ServerApiVersion, ObjectId } = require('mongodb');
const { generateJwtToken } = require('./jwt/generateJwtToken');
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

        const database = await client.db("Hourent");
        const postCollection = await database.collection("post");
        const userCollection = await database.collection("users");
        const bookingCollection = await database.collection("bookings");
        const reviewCollection = await database.collection("reviews");


        // Default route
        app.get('/', (req, res) => {
            res.send('Server is running.');
        });

        // jwt
        app.post('/jwt', generateJwtToken);

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
            const result = await userCollection.find().toArray();
            res.send(result);
        });

        app.post('/users', async (req, res) => {
            const user = req.body;
            const result = await userCollection.insertOne();
            res.send(result);
        })
        
        // Get all bookings
        app.get('/bookings', async (req, res) => {
            const result = await postCollection.find().toArray();
            res.send(result);res.send([])
        });
        
        // Delete a booking
        app.delete('/bookings', async (req, res) => {

        });
        
        // Add a booking
        app.post('/bookings', async (req, res) => {
            const booking = req.body;
            const result = await bookingCollection.insertOne(booking)
            res.send(result);
        });
        
        // Get Reviews
        app.get('/reviews', async (req, res) => {
            const result = await reviewCollection.find().toArray();
        });

        // Add a review
        app.post('/reviews', async (req, res) => {
            const review = req.body;
            const result = await reviewCollection.insertOne(review);
            res.send(result);
        });
        






        app.listen(port, () => {
            console.log(`App listening at http://localhost:${port}`);
        });


    } catch (err) {
        console.error(err);
        process.exit(1);
    }
}


server()







