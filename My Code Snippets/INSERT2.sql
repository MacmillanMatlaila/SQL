--INSERTING DATA FROM ONE TABLE TO ANOTHER

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers
