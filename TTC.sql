/*
DDL database creation
*/
DROP DATABASE IF EXISTS Triple;
CREATE DATABASE Triple;
USE Triple; 

CREATE table winner (
year int,
derbywinner varchar(60),
preakwinner varchar(60),
belmontwinner varchar(60),
PRIMARY KEY (year)
); 

/*
DML database inserts
*/

INSERT INTO winner (derbywinner, preakwinner, belmontwinner, year)
VALUES
('California Chrome', 'California Chrome', 'Tonalist', 2014),
('Orb', 'Oxbow', 'Palace Malice', 2013),
("I'll Have Another", "I'll Have Another", 'Union Rags', 2012),
('Animal Kingdom','Shackleford','Ruler on Ice', 2011),
('Super Saver', 'Lookin At Lucky', 'Drosselmeyer', 2010),
('Mine That Bird', 'Rachel Alexandra', 'Summer Bird', 2009),
('Big Brown', 'Big Brown', "Da' Tara", 2008),
('Street Sense', 'Curlin', 'Rags to Riches', 2007),
('Barbaro','Bernardini','Jazil',2006),
('American Pharoah', 'American Pharoah','American Pharoah',2015);

/*
CREATE VIEW STATEMENTS
*/

/* One called Derby containing the year and the derby winner. */
CREATE VIEW Derby AS (
    SELECT
        year,
        derbywinner AS winner
    FROM winner
);

/* One called Preakness containing the year and the Preakness winner. */
CREATE VIEW Preakness AS (
    SELECT
        year,
        preakwinner AS winner
    FROM winner
);

/* Once called Belmont containing the year and the Belmont winner. */
CREATE VIEW Belmont AS (
    SELECT
        year,
        belmontwinner AS winner
    FROM winner
);

/*
Query statements
*/

SELECT * FROM winner;

SELECT d.year, d.winner, p.winner, b.winner
FROM Derby AS d
LEFT JOIN Preakness AS p
ON d.year = p.year
LEFT JOIN Belmont AS b
on d.year = b.year
WHERE d.winner != p.winner or b.winner;


SELECT d.year, d.winner, p.winner, b.winner
FROM Derby as d
LEFT JOIN Preakness as p
on d.year = p.year
LEFT JOIN Belmont as b
on d.year = b.year
WHERE d.winner = p.winner and d.winner != b.winner;

SELECT d.year, d.winner, p.winner, b.winner
FROM Derby as d
LEFT JOIN Preakness as p
on d.year = p.year
LEFT JOIN Belmont as b
ON d.year = b.year
WHERE d.winner = p.winner and d.winner = b.winner;

/*test*/
