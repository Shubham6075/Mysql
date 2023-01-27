Select * From books ;

Select Concat ('pi' , 'ckle') AS PICKLE;

SELECT CONCAT (author_fname , ' ' , author_lname ) AS AUTHOR_NAME FROM books ;

SELECT CONCAT_WS('-' , title, author_fname,author_lname) AS A FROM books ;

SELECT * FROM books ;

SELECT SUM(pages) FROM books;

SELECT AVG(pages) FROM books;

SELECT MIN(pages) FROM books;

SELECT MAX(pages) FROM books;

SELECT author_fname, SUM(pages) FROM books Group by author_fname;

SELECT COUNT(*) FROM books;

SELECT DISTINCT author_lname FROM books;

SELECT MAX(pages) FROM books ORDER BY pages DESC LIMIT 1;

SELECT title , author_fname , author_lname , pages
FROM books 
WHERE author_fname LIKE '%da%';

SELECT COUNT(*) FROM books;
 
SELECT released_year, COUNT(*) 
FROM books GROUP BY released_year;
 
SELECT AVG(released_year) 
FROM books GROUP BY author_lname, author_fname;
 
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
ORDER BY pages DESC LIMIT 1;
 
 
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;