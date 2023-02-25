const express = require('express');
const cors = require('cors');
const mysql = require("mysql");
const app = express();
const port = 3100;




app.use(cors());
app.use(express.json());





//localhost
// const db = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "",
//     database: "hourent",
// });



//clever-cloud
// const db = mysql.createConnection({
//     host: "btiot11do4ppnyrcgk4b-mysql.services.clever-cloud.com",
//     user: "umwf88dbyqxjyapk",
//     password: "4mifPJ6salRwz7tXqVQZ",
//     database: "btiot11do4ppnyrcgk4b",
//     connectionLimit: 10,
//     acquireTimeout: 30000,
// });


//railway
const db = mysql.createConnection({
    host: "containers-us-west-50.railway.app",
    user: "root",
    password: "MkIgvNYCiL2gWIC3JdwZ",
    database: "railway",
    connectionLimit: 10,
    acquireTimeout: 30000,
    port: 5822
});


db.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL Server!');
});



app.get('/', async (req, res) => {
    res.send('server is running.')
})


app.post('/admin-login', async (req, res) => {
    const { name, password } = req.body;

    if (name && password) {
        db.query('select * from admin where admin_name=?', [name], async (err, result) => {
            if (err) {
                return res.status(500).send();
            }
            const user = result[0];
            console.log(user);
            if (user === null) {
                return res.send("user not found");
            }
            try {
                if (await bcrypt.compare(password, user.pass)) {
                    const payLoad = {
                        id: user.id,
                        email: user.email
                    };
                    const token = jwt.sign(payLoad, process.env.ACCESS_TOKEN_SECRET)
                    return res.status(200).json({ message: true, token: token })
                }
                else {
                    return res.json({ message: false })
                }
            }
            catch {
                res.send("Wrong User or Password")
            }
        })
    }
    else {
        res.send("Enter User Name And Password")
    }
})


app.get('/posts', async (req, res) => {
    db.query("SELECT * FROM post", (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})
app.get('/users', async (req, res) => {
    db.query("SELECT * FROM user", (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})

app.get('/bookings', async (req, res) => {
    db.query("SELECT * FROM booking", (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})

app.delete('/bookings', async (req, res) => {
    const { booking_id } = req.body;
    console.log(booking_id);
    db.query(`DELETE FROM booking WHERE 'booking_id'='${booking_id}'`, (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})

app.post('/bookings', async (req, res) => {
    const { user_id, vendor_id, post_id, status } = req.body;
    console.log(req.body)
    db.query(`INSERT INTO booking (user_id, vendor_id, post_id, booking_status) VALUES ('${user_id}', '${vendor_id}', '${post_id}', '${status}')`, (err, result) => {
        err ? console.log(err) : res.send(result);;
    });
})


app.post('/reviews', async (req, res) => {
    const { user_id, rating, review_com, postId, status } = req.body;
    console.log(req.body)
    db.query(`INSERT INTO review (user_id, review_rating, review_com, booking_status, post_id) VALUES ('${user_id}', '${rating}', '${review_com}', '${status}', '${postId}')`, (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})

app.get('/reviews', async (req, res) => {
    db.query("SELECT * FROM review", (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})



app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})