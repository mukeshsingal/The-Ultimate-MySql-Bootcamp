-- The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert

-- CODE: Your First 5 Minutes of SQL
-- Your First 5 Minute of SQL CODE
-- Resources:

-- SQL Try-It Editor

-- Lecture Slides

-- Step 1.

SELECT * FROM customers; 

-- Step 2.

SELECT * FROM orders; 

-- Step 3.

SELECT * 
FROM products
ORDER BY Price DESC;

-- Step 4.

SELECT 
 customerName,
 COUNT(*) AS 'number of orders'
FROM customers
INNER JOIN orders
 ON orders.customerID = customers.customerID
GROUP BY customers.customerID;

-- Note: Step 4 may give you errors if you're using firefox or any other browser other than Chrome, Safari, or Opera. This is because the SQL Try-It Editor is using WebSQL. See here for further discussion of errors that could occur when using firefox. You can use the query below in place of step 4, if you're using firefox:

SELECT
    customerName,
    COUNT(*) AS 'number of orders'
FROM customers
INNER JOIN orders
ON orders.customerID = customers.customerID
GROUP BY customerName;

-- ================== Databases ================== --

-- LIST ALL DATABSES
SHOW DATABASES; 

-- CREATE NEW DATABASES
CREATE DATABASE <name>;
CREATE DATABASE hello_world;

-- DELETE DATABASE
DROP DATABASE <name>

-- USING DATABASES
USE <database name>

-- CURRENTLY SELECTED DATABASE
SELECT database() 


-- ================== TABLESS ================== --

SHOW TABLES;

SHOW COLUMNS FROM <name>;
DESC <name>;

CREATE TABLE <name> 
(
    <column_name> <data_type>,
    <column_name> <data_type>,
)

CREATE TABLE cat 
(
  name VARCHAR(100),
  age INT
)

DROP TABLE <tablename>; 
DROP TABLE cats; 


