require('dotenv').config();
const {PORT, HOST, DB_CONNECTION, DB_HOST, DB_PORT, DB_DATABASE, DB_USER, DB_PASS} = process.env;
const mysql = require('mysql2');

// const conn = mysql.createConnection({
//     host: DB_HOST,
//     user: DB_USER,
//     password: DB_PASS,
//     database: DB_DATABASE
// });
const pool = mysql.createPool({
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASS,
    database: DB_DATABASE,
    // waitForConnections: true,
    // connectionLimit: 10,
    // queueLimit: 0
})


module.exports = {
    host: HOST,
    port: PORT,
    dbConn: pool,
    // dbConn: DB_CONNECTION,
    // dbHost: DB_HOST,
    // dbPort: DB_PORT,
    // dbName: DB_DATABASE,
    // dbUser: DB_USER,
    // dbPass: DB_PASS,
}