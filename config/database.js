const { MongoClient, ServerApiVersion } = require('mongodb');

// Support both MONGO_URI and DATABASE_USER/DATABASE_PASSWORD
const uri = process.env.MONGO_URI || 
    `mongodb+srv://${process.env.DATABASE_USER}:${process.env.DATABASE_PASSWORD}@cluster0.fkohihs.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0`;

// Mongodb Client
const client = new MongoClient(uri, {
    serverApi: {
        version: ServerApiVersion.v1,
        strict: true,
        deprecationErrors: true,
    },
});

let isConnected = false;
const connectDB = async collection => {
    try {
        if (!isConnected) {
            await client.connect();
            isConnected = true;
            console.log('✅ Connected to MongoDB');
        }

        // Database
        const database = client.db('Hourent');

        return database.collection(collection);
    } catch (error) {
        console.error('❌ Database connection error:', error.message);
        process.exit(1);
    }
};

module.exports = { connectDB };