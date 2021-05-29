--*************************************************
-- DISTINCT
--*************************************************
-- WORKS WITH BOTH INT AND VARCHAR
SELECT DISTINCT author_fname from books;

SELECT DISTINCT released_year from books;

SELECT DISTINCT CONCAT(author_fname, author_lname) from books;

SELECT DISTINCT author_fname, author_lname from books;



--*************************************************
-- ORDER BY
--*************************************************
-- DEFAULT ORDER IS RECORD CREATE DATE
-- SORT RESULT BASED ON COLUMN

SELECT author_fname from books;

SELECT author_fname from books ORDER By author_fname;

SELECT author_fname from books ORDER By author_fname DESC;

SELECT DISTINCT released_year from books ORDER BY released_year ASC;

SELECT DISTINCT released_year from books ORDER BY released_year DESC;

SELECT title, released_year, pages from books ORDER BY released_year DESC;

-- SORT BY RELEASED_YEAR, 2 HERE IS SHORTCUT.
SELECT title, released_year, pages from books ORDER BY 2 DESC;


SELECT author_fname, author_lname from books ORDER By author_fname, author_lname;



--*************************************************
-- LIMIT
--*************************************************
-- RETURN 3 RECORDS, COMES IN LAST IN QUERY
-- CAN IMPLEMENT PAGINATION USING LIMIT 

SELECT author_fname from books LIMIT 3;

SELECT title, released_year, pages from books ORDER BY released_year DESC LIMIT 3;

-- GIVE 5 RECORDS FROM 1 ROW
SELECT title, released_year, pages from books ORDER BY released_year DESC LIMIT 1, 5;



--*************************************************
-- LIKE
--*************************************************
-- BETTER SEARCH OF DATA
-- % matches anything and any number of character

-- CONTAINS
SELECT title, author_fname from books WHERE author_fname LIKE '%da%'

-- STARTS WITH
SELECT author_fname from books WHERE author_fname LIKE 'da%'

-- ENDS WITH
SELECT author_fname from books WHERE author_fname LIKE '%da'

-- _ MATACHES ONLY ONE CHARATER 
-- AUTHOR NAME WITH ONE CHARACTER
SELECT author_fname from books WHERE author_fname LIKE '_'

-- USE ESCAPE CHARACTER TO MATCH WILDCARD
-- TWO CHARACTER AND ENDS WITH %
SELECT author_fname from books WHERE author_fname LIKE '_\%'


