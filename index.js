const express = require('express');
const cors = require('cors');
const mysql = require("mysql");
const app = express();
const port = 3100;




app.use(cors());
app.use(express.json());






const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "hourent",
});


// const db = mysql.createConnection({
//     host: "btiot11do4ppnyrcgk4b-mysql.services.clever-cloud.com",
//     user: "umwf88dbyqxjyapk",
//     password: "4mifPJ6salRwz7tXqVQZ",
//     database: "btiot11do4ppnyrcgk4b",
// });


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
    db.query("SELECT * FROM users", (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})
app.get('/bookings', async (req, res) => {
    db.query("SELECT * FROM booking", (err, result) => {
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