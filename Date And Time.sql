CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)          /* Date(1,17) */
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT * FROM people;

SELECT CURTIME();
                                                            /* current date and current time (19,28)*/
SELECT CURDATE();
 
SELECT NOW();
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;

SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM people;
                                               /* Date Functions  (30,41) */
SELECT 
    birthdate,
    MONTHNAME(birthdate),
    YEAR(birthdate)
FROM people;

SELECT 
    birthtime,
    HOUR(birthtime),
    MINUTE(birthtime)
FROM people;
                                            /* Time Functions (43,55)*/
SELECT 
    birthdt,
    MONTH(birthdt),
    DAY(birthdt),
    HOUR(birthdt),
    MINUTE(birthdt)
FROM people;

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;               /* Date Format (57,61) */
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;

CREATE TABLE captions (
  text VARCHAR(150),
  created_at TIMESTAMP default CURRENT_TIMESTAMP
);
                                                              /* TimeStamp (63,72)*/
CREATE TABLE captions2 (
  text VARCHAR(150),
  created_at TIMESTAMP default CURRENT_TIMESTAMP,
  updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- What's a good use case for CHAR?
 
-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.

-- What's the difference between DATETIME and TIMESTAMP?
 
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.

