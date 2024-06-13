const express = require('express');
const cors = require('cors');
const mysql = require("mysql");
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');

dotenv.config();

const app = express();
const port = 3100;

app.use(cors());
app.use(express.json());

// Create a MySQL connection pool
const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
    connectionLimit: 10,
    acquireTimeout: 30000,
});

// Function to query the database
const queryDatabase = (query, params) => {
    return new Promise((resolve, reject) => {
        pool.query(query, params, (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Default route
app.get('/', async (req, res) => {
    res.send('Server is running.');
});

// Admin login route
app.post('/admin-login', async (req, res) => {
    const { name, password } = req.body;

    if (!name || !password) {
        return res.status(400).json({ message: 'Enter User Name and Password' });
    }

    try {
        const result = await queryDatabase('SELECT * FROM admin WHERE admin_name = ?', [name]);
        const user = result[0];

        if (!user) {
            return res.status(404).json({ message: 'User not found' });
        }

        const passwordMatch = await bcrypt.compare(password, user.pass);
        if (passwordMatch) {
            const payLoad = { id: user.id, email: user.email };
            const token = jwt.sign(payLoad, process.env.ACCESS_TOKEN_SECRET, { expiresIn: '1h' });
            return res.status(200).json({ message: true, token: token });
        } else {
            return res.status(401).json({ message: 'Wrong username or password' });
        }
    } catch (err) {
        console.error(err);
        return res.status(500).json({ message: 'Internal server error' });
    }
});

// Get all posts
app.get('/posts', async (req, res) => {
    try {
        const result = await queryDatabase('SELECT * FROM post');
        res.status(200).json(result);
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Internal server error' });
    }
});

// Get all users
app.get('/users', async (req, res) => {
    try {
        const result = await queryDatabase('SELECT * FROM user');
        res.status(200).json(result);
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Internal server error' });
    }
});

// Get all bookings
app.get('/bookings', async (req, res) => {
    try {
        const result = await queryDatabase('SELECT * FROM booking');
        res.status(200).json(result);
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Internal server error' });
    }
});

// Delete a booking
app.delete('/bookings', async (req, res) => {
    const { booking_id } = req.body;

    if (!booking_id) {
        return res.status(400).json({ message: 'Booking ID is required' });
    }

    try {
        const result = await queryDatabase('DELETE FROM booking WHERE booking_id = ?', [booking_id]);
        res.status(200).json(result);
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Internal server error' });
    }
});

// Add a booking
app.post('/bookings', async (req, res) => {
    const { user_id, vendor_id, post_id, status } = req.body;

    if (!user_id || !vendor_id || !post_id || !status) {
        return res.status(400).json({ message: 'All fields are required' });
    }

    try {
        const result = await queryDatabase('INSERT INTO booking (user_id, vendor_id, post_id, booking_status) VALUES (?, ?, ?, ?)', [user_id, vendor_id, post_id, status]);
        res.status(201).json(result);
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Internal server error' });
    }
});

// Add a review
app.post('/reviews', async (req, res) => {
    const { user_id, rating, review_com, postId, status } = req.body;

    if (!user_id || !rating || !review_com || !postId || !status) {
        return res.status(400).json({ message: 'All fields are required' });
    }

    try {
        const result = await queryDatabase('INSERT INTO review (user_id, review_rating, review_com, booking_status, post_id) VALUES (?, ?, ?, ?, ?)', [user_id, rating, review_com, status, postId]);
        res.status(201).json(result);
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Internal server error' });
    }
});

// Get all reviews
app.get('/reviews', async (req, res) => {
    try {
        const result = await queryDatabase('SELECT * FROM review');
        res.status(200).json(result);
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Internal server error' });
    }
});

app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
});
