--CHANGE CONTENT OF ALREADY EXISTING DATA
--CHABE SCORE OF CUSTOMER 10 TO 0 AND UPDATE COUNTRY TO UK

UPDATE customers
SET score = 0,
country = 'UK'
WHERE id = 6

SELECT *
FROM customers
WHERE id = 6


