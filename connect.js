const mysql = require("mysql");
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Asdfasdf123!",
  database: "blog_test",
});
connection.connect();
module.exports = {
  connection,
};
