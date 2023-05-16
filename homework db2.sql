--Homework requirement 1/6

SELECT id, firstname, lastname
FROM employee
WHERE firstname = 'Marko';

SELECT firstname,lastname,dateofbirth
FROM employee
WHERE dateofbirth > '1979-01-01';

SELECT firstname,lastname,gender
FROM employee
WHERE gender = 'M';

SELECT id, firstname, lastname
FROM employee
WHERE lastname LIKE 'T%';

--SELECT firstname, lastname, hiredate
--FROM employee
--WHERE hiredate BETWEEN '1988-01-01' AND '1988-01-31';

--Ova sporde datata vo moite tabeli 

SELECT firstname, lastname, hiredate
FROM employee
WHERE hiredate BETWEEN '2012-01-01' AND '2012-01-31';

--SELECT firstname, lastname, hiredate
--FROM employee
--WHERE lastname LIKE 'J%'
--AND hiredate BETWEEN '1988-01-01' AND '1988-01-31';

--Ova sporde datata vo moite tabeli 
SELECT firstname, lastname, hiredate
FROM employee
WHERE lastname LIKE 'M%'
AND hiredate BETWEEN '2012-01-01' AND '2012-01-31';

--Homework requirement 2/6

SELECT *
from employee
WHERE firstname = 'Marko'
ORDER BY lastname;

SELECT *
from employee
ORDER BY firstname;

SELECT *
from employee
WHERE gender = 'M'
ORDER BY hiredate DESC;

--Homework requirement 3/6

SELECT region
FROM businessentity
UNION ALL
SELECT regionname
FROM customer;

SELECT region
FROM businessentity
UNION
SELECT regionname
FROM customer;

SELECT region
FROM businessentity
INTERSECT
SELECT regionname
from customer;

--Homework requirement 4/6

CREATE TABLE IF NOT EXISTS order_table
( id integer NOT NULL,
 orderdate date check (orderdate > '2010-01-01'),
 status smallint
 businessentityid integer 
 customerid integer
 employeeid integer 
 totalprice real
 coment varchar(500));

CREATE TABLE IF NOT EXISTS product
( id integer NOT NULL,
 code varchar(50),
 name varchar(100),
 description varchar(5000),
 weight real,
 price real check (price > cost+(cost*0.2)),
 cost real)

 CREATE TABLE IF NOT EXISTS product
( id integer NOT NULL,
 code varchar(50),
 name varchar(100),
 description varchar(5000) UNIQUE,
 weight real,
 price real check (price > cost+(cost*0.2)),
 cost real)


