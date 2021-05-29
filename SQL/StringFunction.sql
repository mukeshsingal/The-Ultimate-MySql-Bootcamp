--****************** UPPER CASE ******************

SELECT CONCAT('MY FAV BOOK IS ', UPPER(TITLE)) FROM BOOKS;


--****************** LOWER CASE ******************
SELECT CONCAT('MY FAV BOOK IS ', LOWER(TITLE)) FROM BOOKS;


--****************** CONCAT CASE ******************
--   THIS FUNCTION CAN TAKE MORE THAN TWO PARAMS
SELECT CONCAT('MY FAV BOOK IS ', LOWER(TITLE)) FROM BOOKS;


--****************** SUBSTRING CASE ******************

-- SUBSTRING FROM INDEX 1 TO INDEX 4
SELECT SUBSTRING('Hello World', 1, 4);
 
-- SUBSTRING FROM INDEX 7 TILL THE END
SELECT SUBSTRING('Hello World', 7);
 
-- SUBSTRING FROM INDEX (TOTAL LEN - 3) TILL THE END
SELECT SUBSTRING('Hello World', -3);
 
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
 
-- SUBSTR ALSO WORKS
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
 
-- WE CLUB WITH OTHER STRING FUNCTIONS
SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;


--****************** REPLACE ******************
-- IT REPLACE ALL OCCRANCE OF THE INPUT
-- IT IS CASE SENSITIVE
SELECT REPLACE('Hello World', 'Hell', '%$#@');
 
SELECT REPLACE('Hello World', 'l', '7');
 
SELECT REPLACE('Hello World', 'o', '0');
 
SELECT REPLACE('HellO World', 'o', '*');
 
SELECT
  REPLACE('cheese bread coffee milk', ' ', ' and ');
 
SELECT REPLACE(title, 'e ', '3') FROM books;
 
SELECT
   CONCAT
   (
       SUBSTRING(title, 1, 10),
       '...'
   ) AS 'short title'
FROM books;
A 
SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;


--****************** REVERSE ******************

SELECT REVERSE('Hello World');
 
SELECT REVERSE('meow meow');
 
SELECT REVERSE(author_fname) FROM books;
 
SELECT CONCAT('woof', REVERSE('woof'));
 
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;



--****************** CHAR_LENGTH ******************

SELECT CHAR_LENGTH('Hello World');
 
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

