-- THE ULTIMATE MYSQL BOOTCAMP: GO FROM SQL BEGINNER TO EXPERT

-- CODE: YOUR FIRST 5 MINUTES OF SQL
-- YOUR FIRST 5 MINUTE OF SQL CODE
-- RESOURCES:

-- SQL TRY-IT EDITOR

-- LECTURE SLIDES

-- STEP 1.

SELECT * FROM CUSTOMERS; 

-- STEP 2.

SELECT * FROM ORDERS; 

-- STEP 3.

SELECT * 
FROM PRODUCTS
ORDER BY PRICE DESC;

-- STEP 4.

SELECT 
 CUSTOMERNAME,
 COUNT(*) AS 'NUMBER OF ORDERS'
FROM CUSTOMERS
INNER JOIN ORDERS
 ON ORDERS.CUSTOMERID = CUSTOMERS.CUSTOMERID
GROUP BY CUSTOMERS.CUSTOMERID;

-- NOTE: STEP 4 MAY GIVE YOU ERRORS IF YOU'RE USING FIREFOX OR ANY OTHER BROWSER OTHER THAN CHROME, SAFARI, OR OPERA. THIS IS BECAUSE THE SQL TRY-IT EDITOR IS USING WEBSQL. SEE HERE FOR FURTHER DISCUSSION OF ERRORS THAT COULD OCCUR WHEN USING FIREFOX. YOU CAN USE THE QUERY BELOW IN PLACE OF STEP 4, IF YOU'RE USING FIREFOX:

SELECT
    CUSTOMERNAME,
    COUNT(*) AS 'NUMBER OF ORDERS'
FROM CUSTOMERS
INNER JOIN ORDERS
ON ORDERS.CUSTOMERID = CUSTOMERS.CUSTOMERID
GROUP BY CUSTOMERNAME;

-- ================== DATABASES ================== --

-- LIST ALL DATABSES
SHOW DATABASES; 

-- CREATE NEW DATABASES
CREATE DATABASE <NAME>;
CREATE DATABASE HELLO_WORLD;

-- DELETE DATABASE
DROP DATABASE <NAME>

-- USING DATABASES
USE <DATABASE NAME>

-- CURRENTLY SELECTED DATABASE
SELECT DATABASE() 


-- ================== TABLESS ================== --

SHOW TABLES;

SHOW COLUMNS FROM <NAME>;
DESC <NAME>;

CREATE TABLE <NAME> 
(
    <COLUMN_NAME> <DATA_TYPE>,
    <COLUMN_NAME> <DATA_TYPE>,
)

CREATE TABLE CAT 
(
  NAME VARCHAR(100),
  AGE INT
)

DROP TABLE <TABLENAME>; 
DROP TABLE CATS; 

-- ================== INSERT ================== --
INSERT INTO <TABLE NAME> (COLUMN1, COLUMN2)
VALUES ('COLUMN1VALUE', 'COLUMN2VALUE')

INSERT INTO CATS (NAME, AGE)
VALUES ('BOB', 7);

-- MULTIPLE INSERT
INSERT INTO TABLE_NAME 
            (COLUMN_NAME, COLUMN_NAME) 
VALUES      (VALUE, VALUE), 
            (VALUE, VALUE), 
            (VALUE, VALUE);


-- CHECK WARNINGS
SHOW WARNINGS;

--  CODE: Setting Default Values

-- Define a table with a DEFAULT name specified:

CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
-- Notice the change when you describe the table:

DESC cats3; 

-- Insert a cat without a name:

INSERT INTO cats3(age) VALUES(13); 

-- Or a nameless, ageless cat:

INSERT INTO cats3() VALUES(); 

-- Combine NOT NULL and DEFAULT:

CREATE TABLE cats4
  (
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
  );
  
-- Notice The Difference:

INSERT INTO cats() VALUES();
 
SELECT * FROM cats;
 
INSERT INTO cats3() VALUES();
 
SELECT * FROM cats3;
 
INSERT INTO cats3(name, age) VALUES('Montana', NULL);
 
SELECT * FROM cats3;
 
INSERT INTO cats4(name, age) VALUES('Cali', NULL);



-- CODE: A Primer on Primary Keys
-- Define a table with a PRIMARY KEY constraint:

CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );

DESC unique_cats; 

-- Insert some new cats:

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23);
 
INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'Louise', 3);
 
INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'James', 3);
-- Notice what happens:

SELECT * FROM unique_cats; 

-- Adding in AUTO_INCREMENT:

CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);
-- INSERT a couple new cats:

INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
-- Notice the difference:

SELECT * FROM unique_cats2; 




-- Table Constraints Exercise Solution
Defining The employees table:

CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);
Another way of defining a primary key:



CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);
A test INSERT:

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);
Fullscreen
