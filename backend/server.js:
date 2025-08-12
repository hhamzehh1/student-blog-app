const express = require('express');
const mysql = require('mysql2');
require('dotenv').config();
const app = express();
const PORT = process.env.PORT || 5000;
const db = mysql.createConnection({
 host: process.env.DB_HOST || 'db',
 user: process.env.DB_USER || 'root',
 password: process.env.DB_PASSWORD || 'rootpassword',
 database: process.env.DB_NAME || 'blogdb'
});
db.connect(err => {
 if (err) {
 console.error('Database connection failed:', err.stack);
 return;
 }
 console.log(' Connected to MySQL');
});
app.get('/api/posts', (req, res) => {
 db.query('SELECT * FROM posts', (err, results) => {
 if (err) {
 console.error('Error fetching posts:', err);
 res.status(500).json({ error: 'Failed to fetch posts' });
 return;
 }
 res.json(results);
 });
});
app.listen(PORT, () => {
 console.log(`Backend running on port ${PORT}`);
});
