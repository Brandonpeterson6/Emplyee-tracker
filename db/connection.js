// define the connections in the database
const mysql = require("mysql2");


// Create the connection to the database
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'bPeter$on6',
    database: 'employees'
});

connection.connect();

module.exports = connection;
