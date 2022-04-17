const mysql = require('mysql');
const config = require('../../config');

const conn = mysql.createConnection({
    host: config.dbHost,
    user: config.dbUser,
    password: config.dbPass,
    database: config.dbName
});

// open the MySql Connection
conn.connect(err => {
    if (err) {
        console.log('error connecting to Db', err);
        throw err;
    }
    console.log('Successfully connected to the database');
});