--*************************************************
-- COUNT
--*************************************************

SELECT COUNT(*) from books;

SELECT COUNT(DISTINCT author_fname) from books;

SELECT COUNT(DISTINCT author_fname, author_lname) from books;

SELECT COUNT(*) from books where title LIKE '%ac';

--*************************************************
-- GROUP BY : summarizes identical data into single row
--*************************************************

SELECT title, author_fname from books GROUP BY author_fname;

SELECT author_fname, COUNT(*) from books GROUP BY author_lname;

-- BOTH AUTHOR FNAME AND AUTHOR LNAME SHOULD BE UNIQUE TO BE GROUPED
SELECT author_fname, author_lname, COUNT(*) from books GROUP BY author_fname, author_lname;

SELECT released_year, COUNT(*) from books GROUP BY released_year;

--*************************************************
-- MIN & MAX
--*************************************************

SELECT MIN(released_year) from books;

SELECT MAX(released_year) from books;


--*************************************************
-- SUBQUERIES
--*************************************************

-- TITLE WILL NOT BE OF MAX YEAR BOOK
SELECT MAX(released_year), title from books;

-- WILL BE SLOW
SELECT * from books where released_year = (
    SELECT MAX(released_year) from books
);

-- WILL BE FAST
SELECT * FROM books ORDER BY released_year ASC LIMIT 1;


SELECT author_fname, author_lname, MIN(released_year) AS FIRST_YEAR FROM books GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, MAX(released_year) AS FIRST_YEAR FROM books GROUP BY author_fname, author_lname;


--*************************************************
-- SUM
--*************************************************

SELECT SUM(pages) from books;

SELECT SUM(released_year) from books;

SELECT author_fname, SUM(pages) from books GROUP BY author_fname, author_lname;

--*************************************************
-- AVG
--*************************************************

SELECT AVG(pages) from books;

SELECT AVG(released_year) from books;

SELECT author_fname, AVG(pages) from books GROUP BY author_fname, author_lname;


SELECT released_year, AVG(stock_quanity) from books GROUP BY released_year;