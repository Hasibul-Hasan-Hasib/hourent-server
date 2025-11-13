const express = require('express');
const cors = require('cors');
require('dotenv').config();
const app = express();
const port = process.env.PORT || 3100;

// Import routes
const propertiesRoutes = require('./routes/propertiesRoutes');
const usersRoutes = require('./routes/usersRoutes');
const bookingsRoutes = require('./routes/bookingsRoutes');
const reviewsRoutes = require('./routes/reviewsRoutes');
const authRoutes = require('./routes/authRoutes');

// Middleware
app.use(cors());
app.use(express.json());

// Default route
app.get('/', (req, res) => {
    res.send('Server is running.');
});

// API Routes
app.use('/properties', propertiesRoutes);
app.use('/users', usersRoutes);
app.use('/bookings', bookingsRoutes);
app.use('/reviews', reviewsRoutes);
app.use('/', authRoutes); // /jwt and /admin-login

// Start server
app.listen(port, () => {
    console.log(`✅ App listening at http://localhost:${port}`);
});
