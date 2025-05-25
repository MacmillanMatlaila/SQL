--Retrieve each customer's name, country, and score.

--Start with select * to get a clear ciew of table
SELECT*
FROM customers

--Then Retrieve

SELECT
	first_name,
	country,
	score
FROM customers	

--Now add WHERE clause to filter based on a CONDITION

SELECT
	first_name,
	country,
	score
FROM customers
WHERE score != 0

--Retrieve based on location 

SELECT
	first_name,
	country,
	score
FROM customers	
WHERE country = 'Germany'

--Retrieve using ORDERBY to SORT in descending order

SELECT
	first_name,
	country,
	score
FROM customers
ORDER BY score DESC

--Retrieve using NESTED ORDERED BY coutry and highest score.

SELECT
	first_name,
	country,
	score
FROM customers
ORDER BY country ASC, score DESC


--Find the total score for each country
SELECT
	country,
	SUM(score) AS total_score --THIS GIVES THE SUMMED SCORES COLUMN A NAME SINCE IT IS NEW
FROM customers
GROUP BY country

--Find the total scores and total number of customers for each country

SELECT
	country,
	first_name,
	SUM(score) AS total_score,
	COUNT(first_name) AS total_customers
FROM customers
GROUP BY country, first_name

--Retrieve average score for each country, for customers with scores not equal to 0. Return countries with average score > 430

SELECT
	country,
	AVG(score) AS avg_score,
	COUNT(first_name) AS total_customers
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430

--Retrieve UNIQUE LIST OF ALL COUNTRYS

SELECT DISTINCT country
FROM customers 

--Retrieve TOP 3 CUSTOMERS

SELECT TOP 3 *
FROM customers

--Retrieve top 3 customers with highest score

SELECT *
FROM customers
ORDER BY score DESC

--RETRIVE LOWEST 3 CUSTOMERS BASED ON SCORE

SELECT TOP 2 *
FROM customers
ORDER BY score ASC

--RETRIEVE 2 RECENT ORDERS

SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC





