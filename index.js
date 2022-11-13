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




app.get('/post', async (req, res) => {
    db.query("SELECT * FROM post", (err, result) => {
        err ? console.log(err) : res.send(result);
    });
})



app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})