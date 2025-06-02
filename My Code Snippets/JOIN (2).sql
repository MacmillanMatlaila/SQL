/*get all customers along with their orders but only customers who placed an order*/

SELECT *
FROM customers
INNER JOIN orders 
ON id = customer_id

/*choosing which columns to display*/

SELECT 
	id,
	first_name,
	order_id,
	sales
FROM customers
INNER JOIN orders 
ON id = customer_id

/*LEFT JOIN*/

/*GET AL CUSTOMERS , THEIR ORDERS AND THOSE WITHOUT ORDERS*/

SELECT 
	id,
	first_name,
	order_id,
	sales
FROM customers 
LEFT JOIN orders
ON id =customer_id

/*RIGHT JOIN*/

SELECT 
	id,
	first_name,
	order_id,
	sales
FROM customers 
RIGHT JOIN orders
ON id =customer_id

/*WE CAN GO FURTHER AND FILTER WITH WHERE*/

SELECT 
	id,
	first_name,
	order_id,
	sales
FROM customers 
LEFT JOIN orders
ON id =customer_id
WHERE customer_id IS NULL

/*GET ALL CUSTOMERS WITHOUT MATCHING CUSTOMERS USING RIGHT ANTI JOIN*/

SELECT 
	id,
	first_name,
	order_id,
	sales
FROM customers 
RIGHT JOIN orders
ON id =customer_id
WHERE ID IS NULL

/*USING CROSS JOIN*/

SELECT 
	id,
	first_name,
	order_id,
	sales
FROM customers 
CROSS JOIN orders


