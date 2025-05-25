SELECT *
FROM customers;

SELECT *
FROM orders;


SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id

SELECT
id,
first_name,
country,
customer_id,
order_date,
sales
FROM customers
INNER JOIN orders
ON id = customer_id

SELECT
customers.id, --Specifies that the id must be come from customers table
first_name,
country,
customer_id,
order_date,
sales
FROM customers
INNER JOIN orders
ON id = customer_id

SELECT
c.id, --Specifies that the id must be come from customers table
first_name,
country,
customer_id,
order_date,
sales
FROM customers AS  c --This gives the tables an  aliases therefore you can write c.id instead of customers.id
INNER JOIN orders AS o
ON c.id = o.customer_id
