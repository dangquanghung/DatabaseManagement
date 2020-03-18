-- Name: Dang Quang Hung
-- ID: ITDSIU18035
--Homework1

--Problem 1:
-- a. Create table Edges
CREATE TABLE "Edges" ("Sources" INT, "Destination" INT);
-- b. Insert the tuples
INSERT INTO Edges VALUES ('10','5');
INSERT INTO Edges VALUES ('6','25');
INSERT INTO Edges VALUES ('1','3');
INSERT INTO Edges VALUES ('4','4');

-- c. Return all tuples
SELECT * FROM Edges;
-- d. Return only column Sources
SELECT Sources FROM Edges;
-- e. Return tuples where Sources > Destination
SELECT * FROM Edges WHERE Sources > Destination;
-- f. Tricky Question
INSERT INTO Edges VALUES ('-1','2000');
--I didn't get the error. Because the range of INTEGER data type is from -2,147,483,648 to 2,147,483,647. '-1' and '2000' is within that interval.

--Problem 2: create table MyRestaurants
CREATE TABLE "MyRestaurants" (
	"Name"	varchar,
	"Type_of_Food"	VARCHAR,
	"Distance" INT,
	"Last_visit"	VARCHAR,
	"Like_or_not" INT
);

--Problem 3: Insert the tuples
INSERT INTO MyRestaurants VALUES ('China','Hotpot','15','2020-03-15','1');
INSERT INTO MyRestaurants VALUES ('Vietnam','Hotpot','30','2019-01-15','1');
INSERT INTO MyRestaurants VALUES ('Russia','BBQ','10','2019-12-21','0');
INSERT INTO MyRestaurants VALUES ('Kichi Kichi','Hotpot','45','2020-03-19',NULL);
INSERT INTO MyRestaurants VALUES ('King','Cafe','20','2019-12-21','0');

--Problem 4
--a. comma-separated form
--print headers:
.headers on
.mode csv
SELECT * FROM MyRestaurants;

--not print headers:
.headers off
.mode csv
SELECT * FROM MyRestaurants;

--b. list form, delimited by "|"
--print headers:
.headers on
.mode list
.separator "|"
SELECT * FROM MyRestaurants;

--not print headers:
.headers off
.mode list
.separator "|"
SELECT * FROM MyRestaurants;

--c. column form, width 15
--print headers:
.headers on
.mode column
.width 15 15 15 15 15
SELECT * FROM MyRestaurants;

--not print headers:
.headers off
.mode column
.width 15 15 15 15 15
SELECT * FROM MyRestaurants;

--Problem 5:
--the name and distance of all restaurants within and including 20 minutes of your house
--alphabetical order of name
SELECT Name, Distance from MyRestaurants WHERE distance <=20 ORDER by Name ASC;


--Problem 6:
--the restaurants that you like but not visited more than 3 months
SELECT * FROM MyRestaurants WHERE Like_or_not = 1 and date(Last_visit) < date('now', '-3 months');
