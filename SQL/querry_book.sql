USE book_shop

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
REVERSE (
	author_lname
)
FROM books 
WHERE released_year >= 2000