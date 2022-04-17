require('dotenv').config();
const {PORT, HOST, DB_CONNECTION, DB_HOST, DB_PORT, DB_DATABASE, DB_USER, DB_PASS} = process.env;

module.exports = {
    host: HOST,
    port: PORT,
    dbConn: DB_CONNECTION,
    dbHost: DB_HOST,
    dbPort: DB_PORT,
    dbName: DB_DATABASE,
    dbUser: DB_USER,
    dbPass: DB_PASS,
}