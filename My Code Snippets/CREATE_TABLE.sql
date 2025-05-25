CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL
	CONSTRAINT pk_persons PRIMARY KEY (id)
)


--REMEMBER TO HIGHLIGHT SPECIFIC CODE BEFORE PRESSING EXECUTE OR 5
SELECT *
FROM persons

--Alter TO ADD

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

--Alter to REMOVE

ALTER TABLE persons
DROP COLUMN email

--Drop to Delete

DROP TABLE persons --check files to your left , table named persons is no longer there.