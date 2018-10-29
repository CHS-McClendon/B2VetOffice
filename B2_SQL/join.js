var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "B2VetOffice"
});

con.connect(function(err) {
  if (err) throw err;


  
var sql = "SELECT customer.fname AS 'First Name', customer.lname AS 'Last Name', customer.state AS 'State', animal.name AS 'Pet\'s Name', animal.species, animal.yearBorn, animal.gender FROM customer INNER JOIN animal ON customer.IDcustomer = animal.IDcustomer WHERE customer.state LIKE 'id' AND animal.gender LIKE 'f' AND animal.species LIKE 'cat' OR animal.species LIKE 'dog' AND animal.gender LIKE 'f' AND customer.state LIKE 'id' ORDER BY animal.species, animal.yearBorn ASC";


  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
}); 




