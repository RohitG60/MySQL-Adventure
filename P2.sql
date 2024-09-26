USE world;

# Task 1
-- Using count get the number of cities in the USA--

SELECT count(city) AS 'Total cities in USA'
FROM city 
INNER JOIN country  ON city.country_id = country.country_id
WHERE city = "USA";

-- Find out what the population and life expectancy for people in Argentina (ARG) is

SELECT Population,LifeExpectancy,Code,Name
FROM world.country
WHERE Code = 'ARG';

-- using ORDER BY LIMIT, What country has the hitghest life expectency?

SELECT Name, LifeExpectancy
FROM world.country
ORDER BY LifeExpectancy  DESC
LIMIT 1;

-- Select 25 cities around the world that start with the letter 'F' in a single SQL query.

SELECT Name
FROM city
WHERE Name LIKE 'F%'
ORDER BY Name
LIMIT 25;

-- Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT ID,Name,Population
FROM city
LIMIT 10;

-- Create a SQL statement to find only those cities from city table whose population is larger than 2000000.

SELECT ID, name, population
FROM city
WHERE population > 2000000;

-- Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.

SELECT Name
FROM city
WHERE Name LIKE 'Be%';

-- Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT Name
FROM city
WHERE Population BETWEEN 500000 AND 1000000;

-- Create a SQL statement to find a city with the lowest population in the city table

SELECT Name, Population
FROM city
ORDER BY Population ASC
LIMIT 1;

-- Create a SQL statement to show the population of Switzerland and all the languages spoken there

SELECT c.Name, GROUP_CONCAT(cl.Language SEPARATOR ', ') AS LanguagesSpoken
FROM country c
INNER JOIN countrylanguage cl ON c.Code = cl.CountryCode
WHERE c.Code = 'CHE';

-- Task 13: Create a SQL statement to find the capital of Spain (ESP).

SELECT c.Name, District AS 'Capital'
FROM country c
JOIN city ci ON c.Code = ci.CountryCode
WHERE District= 'Madrid'
LIMIT 1;

 -- Task 14: Create a SQL statement to find the country with the highest life expectancy.
 
 SELECT Name, LifeExpectancy
FROM world.country
ORDER BY LifeExpectancy  DESC
LIMIT 1;
 
 
 
 -- Task 15: Create a SQL statement to find all cities from the Europe continent.
 
SELECT c.Name AS 'Cities of Europe'
FROM city c
INNER JOIN country co ON c.CountryCode = co.Code
WHERE co.Continent = 'Europe'
LIMIT 1000;
 
 
-- Task 16: Create a SQL statement to find the most populated city in the city table

SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 1;

