--*************************************************
-- NOT EQUAL !=
--*************************************************

SELECT * from books where released_year = 2017;

SELECT * from books where released_year != 2017;

SELECT * from books where author_fname = 'Harris';

SELECT * from books where author_fname != 'Harris';


--*************************************************
-- NOT LIKE 
--*************************************************

SELECT * from books where author_fname LIKE 'H%';

SELECT * from books where author_fname NOT LIKE 'H%';


--*************************************************
-- GREATER THAN 
--*************************************************

SELECT * from books where released_year > 2000 ORDER BY released_year;

SELECT * from books where released_year >= 2000 ORDER BY released_year;

SELECT 99 > 0;
SELECT 0 > 99;

-- COMPARISION IS CASE INSENSITIVE
SELECT 'A' > 'a'


--*************************************************
-- LESS THAN
--*************************************************
SELECT * from books where released_year < 2000 ORDER BY released_year;

SELECT * from books where released_year <= 2000 ORDER BY released_year;


--*************************************************
-- AND && 
--*************************************************
SELECT * from books where released_year < 2000 AND author_fname LIKE 'H%'

SELECT * from books where released_year <= 2000 AND author_fname = 'Harris'


--*************************************************
-- OR || 
--*************************************************

SELECT * from books where released_year < 2000 OR author_fname LIKE 'H%'

SELECT * from books where released_year <= 2000 OR author_fname = 'Harris'

--*************************************************
-- BETWEEN
--*************************************************

SELECT * from books where year BETWEEN 2014 AND 2015;

SELECT * from books where year NOT BETWEEN 2014 AND 2015;


SELECT CAST('2017-05-02' AS DATETIME);

-- SLOWER  
SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';

-- FASTER
SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);


--*************************************************
-- IN / NOT IN 
--*************************************************

SELECT * from books where author_fname IN ('mukesh', 'raaj', 'kumar');

SELECT * from books where released_year IN (1995, 2000);
SELECT * from books where released_year NOT IN (1995, 2000);

SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year NOT IN  (2000,2002,2004,2006,2008,2010,2012,2014,2016);
 
SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 != 0;
 
SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 != 0 ORDER BY released_year;


--*************************************************
-- CASE STATEMENT
--*************************************************

SELECT title, released_year,
       CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;
 
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books; 



