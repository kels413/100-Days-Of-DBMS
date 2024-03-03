USE book_shop

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
  VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
          ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
          ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
-- CONCAT A SUBSTRING
SELECT 
    CONCAT(
        SUBSTRING(title, 1, 10),
        "..."
    ) AS 'short_title'
FROM books;

-- REVERSE AND UPPERCASE A STATEMENT
-- 'why does my cat look at me with such hatred'

SELECT
    REVERSE(
        UPPER('why does my cat look at  me with such hatred')
    );

-- replace and CONCAT

SELECT
    REPLACE(
        CONCAT('I', ' ', 'like', ' ', 'cats'),
        ' ',
        '_'
    );

-- replace every space with -> in book title

SELECT
    REPLACE(
        title, ' ', '->'
    ) AS 'title'
FROM books;

-- select author_lname and reverse them

SELECT author_lname AS 'forwards',
    REVERSE(author_lname) AS 'backwards'
FROM books;

-- authors fullname in caps

SELECT
    UPPER(
        CONCAT(author_fname, ' ', author_lname)
    ) AS 'full name in caps'
FROM books;

-- concat title with released date
SELECT 
    CONCAT(title, ' was released in ', released_year) AS 'blurb'
FROM books

-- book title with lenght of each title

SELECT title AS title,
    CHAR_LENGTH(title) AS 'character_count'
FROM books

SELECT 
    CONCAT(author_lname, ',', author_fname)
    FROM books
WHERE author_lname = 'Gaiman';


-- concat alot of strings.

SELECT 
    CONCAT(
        SUBSTR(title, 1, 10),
        '...'
    ) AS 'short title', 
    CONCAT(author_lname, ',', author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;


SELECT title, 
REVERSE (author_lname) as reversed_name
FROM books 
WHERE released_year >= 2000

SELECT DISTINCT author_lname
FROM books

-- ORDER BY

SELECT author_lname  
FROM books
ORDER BY author_lname

SELECT title
FROM books
ORDER BY title DESC

SELECT released_year
FROM books
ORDER BY
released_year


-- select stories

SELECT title
FROM books
WHERE title LIKE "%stories"

-- select book with longest pages.
SELECT title, pages 
FROM books
ORDER BY pages DESC LIMIT 1

-- summary

SELECT 
    CONCAT(
        title, " - ", released_year
    ) as "summary"
FROM books
WHERE released_year >= 2014


