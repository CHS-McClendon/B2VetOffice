SELECT  
  customer.fname, customer.lname, animal.name, animal.species 
FROM customer 
INNER JOIN animal 
ON 
customer.IDcustomer = animal.IDcustomer 
WHERE animal.species LIKE 'horse';


SELECT  
customer.fname, customer.lname, animal.name, animal.species 
FROM customer 
INNER JOIN animal 
ON customer.IDcustomer = animal.IDcustomer 
WHERE animal.species LIKE 'horse' AND animal.name LIKE 'c%';


SELECT  
customer.fname, customer.lname, animal.name, animal.species, animal.yearBorn 
FROM customer 
INNER JOIN animal ON customer.IDcustomer = animal.IDcustomer 
WHERE animal.species LIKE 'horse' AND animal.name LIKE 'c%' AND animal.yearBorn > 2012;



SELECT
    customer.fname AS 'Customer First Name',
    customer.lname AS 'Customer Last Name',
    animal.name AS 'Pet Name',
    animal.species,
    animal.yearBorn,
    animal.gender
FROM
    customer
INNER JOIN
    animal
ON
    customer.IDcustomer = animal.IDcustomer
WHERE
    animal.species LIKE 'dog' AND animal.yearBorn > 2000 AND animal.gender LIKE 'F'
ORDER BY
    animal.yearBorn
DESC
    ;





SELECT
    customer.fname AS 'First Name',
    customer.lname AS 'Last Name',
    customer.state AS 'State',
    animal.name AS 'Pet\'s Name',
    animal.species,
    animal.yearBorn,
    animal.gender
FROM
    customer
INNER JOIN
    animal
ON
    customer.IDcustomer = animal.IDcustomer
WHERE
    customer.state LIKE 'id'
    AND animal.gender LIKE 'f' 
    AND animal.species LIKE 'cat'

    OR animal.species LIKE 'dog' AND animal.gender LIKE 'f' AND customer.state LIKE 'id'
    ORDER BY animal.species, animal.yearBorn ASC
;
 
---------------------------------------------------------   


var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "B2VetOffice"
});

con.connect(function(err) {
  if (err) throw err;


  var sql = "


";


  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
}); 

-----------------------------------------------------

var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "B2VetOffice"
});

con.connect(function(err) {
  if (err) throw err;


  var sql = "
SELECT
    customer.fname AS 'First Name',
    customer.lname AS 'Last Name',
    customer.state AS 'State',
    animal.name AS 'Pet\'s Name',
    animal.species,
    animal.yearBorn,
    animal.gender
FROM
    customer
INNER JOIN
    animal
ON
    customer.IDcustomer = animal.IDcustomer
WHERE
    customer.state LIKE 'id'
    AND animal.gender LIKE 'f' 
    AND animal.species LIKE 'cat'

    OR animal.species LIKE 'dog' AND animal.gender LIKE 'f' AND customer.state LIKE 'id'
    ORDER BY animal.species, animal.yearBorn ASC

";


  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
}); 













