/*FUNCTIONS IN SQL ARE USED TO MANIPULATE, CLEAN AND TRANSFORM DATA*/
 --A FUNCTION IN A BUILT IN SQL CODE THAT ACCEPTS AN INPUT VALUE, PROCESSES IT THE SPITS OUT AN OUTPUT VALUE 

 --SINGLE ROW FUNCTIONS --ACCEPTS ONLY ONE VALUE  AND RETURNS ONE VALUE 
 --MULTI ROW FUCTIONS -- ACCEPTS MULTIPLE VALUES FROM MULTIPLE ROWS, PROCESSES THEM AND RETURNS A VALUE 
 --SQL ALSO ACCEPTS NESTED FUNCTIONS 

 /*STRING FUNCTIONS*/ -- MANIPULATON-- CONCAT
									-- UPPER
									-- LOWER
									-- TRIM
									-- REPLACE

					  -- CALCULATION-- LEN

					  --EXTRACTION  -- LEFT
									-- RIGHT 
									-- SUBSTRING



						
						
			/*CONCAT*/ --- COMBINES VALUES 
--USE CONCAT TO SHOW A LIST OF CUSTOMER FIRST NAMES TOGETHER WITH THEIR COUNTRY IN ONE COLUMN

SELECT -- RESULT OF THIS WILL BE IN DIFFERENT COLUMNS 
      first_name As "Name",
      country As "Country"
     
FROM customers

    --NOW CONCAT
SELECT
      first_name As "Name",
      country As "Country", -- now that you've combined the columns you can technically remove replace them with a star so not to show them as individual columns in resut
CONCAT(first_name, '  -  ' , country) As "Name/Country"    
FROM customers

/*BETTER RESULT*/
SELECT
      first_name As "Name",--you have to keep the first argument in your concat under SELECT but you can remove the scond and it will work fine 
CONCAT(first_name, '  -  ' , country) As "Name/Country"    
FROM customers


       /*UPPER/LOWER */ -- CONVERTS TO LOWERCASE OR UPPERCASE
--USE UPPER/LOWER TO TRANSFORM THE CUSTOMER'S FIRST NAME TO LOWERCASE THEN UPPERCASE

--TO LOWER
SELECT
      first_name As "Name",
      CONCAT(first_name, '  -  ' , country) As "Name/Country",
      LOWER(first_name) As LowerCase
FROM customers

--TO UPPER
SELECT
      first_name As "Name",
      CONCAT(first_name, '  -  ' , country) As "Name/Country",
      UPPER(first_name) As LowerCase
FROM customers

    /*TRIM*/-- REMOVES LEADING AND TRAILING SPACES---BASICALLY REMOVES THE WHITESPACE
---FIND CUSTOMERS WHOSE FIRST NAME CONTAINS LEADING OR TRAILING SPACES

SELECT
      first_name As "Name",
      LEN(first_name) len_name, --THIS WILL OUTPUT THE LENGTH OF THE NAME BEFORE TRIMMING
      LOWER(first_name) As LowerCase
FROM customers
WHERE first_name != TRIM(first_name)

 ---NOW NESTING THE TRIM INSIDE THE LEN 
SELECT
      first_name As "Name",
      LEN(first_name) len_name, --THIS WILL OUTPUT THE LENGTH OF THE NAME
	  LEN(TRIM(first_name)) len_trim_name, --THIS WILL OUTPUT THE LENGTH OF THE NAME AFTER TRIMMING
      LOWER(first_name) As LowerCase
FROM customers
WHERE first_name != TRIM(first_name)

--CONTINUATION

SELECT
      first_name As "Name",
      LEN(first_name) len_name, --THIS WILL OUTPUT THE LENGTH OF THE NAME
	  LEN(TRIM(first_name)) len_trim_name, --THIS WILL OUTPUT THE LENGTH OF THE NAME AFTER TRIMMING
	  LEN(first_name) - LEN(TRIM(first_name)) len_difference,
      LOWER(first_name) As LowerCase
FROM customers
WHERE first_name != TRIM(first_name)

--COMMENT OUT THE WHERE TO GET OVERVIEW OF ENTIRE RESULT NOT ONLY REULT FALLING WITHIN WHERE CONDITION

SELECT
      first_name As "Name",
      LEN(first_name) len_name, --THIS WILL OUTPUT THE LENGTH OF THE NAME
	  LEN(TRIM(first_name)) len_trim_name, --THIS WILL OUTPUT THE LENGTH OF THE NAME AFTER TRIMMING
	  LEN(first_name) - LEN(TRIM(first_name)) len_difference,
      LOWER(first_name) As LowerCase
FROM customers
--WHERE first_name != TRIM(first_name)


      /*REPLACE*/ -- REPLACES SOMETHING OLD WITH SOMETHING NEW
--REMOVE DASHES FROM PHONE NUMBER

SELECT
'071-183-4060'old_number,
REPLACE('071-183-4060', '-', '') AS newNumber  --THIS WILL OUTPUT A NUMBER ON A SEPARATE COLUMN WITHOUT ANY DASHES

SELECT
'071-183-4060' AS old_number,
REPLACE('071-183-4060', '-', '/') AS newNumber --THIS WILL OUTPUT A NUMBER ON A SEPARATE COLUMN WITHOUT ANY DASHES BUT WITH SLASHES

--CONVERT FILE FROM TXT TO CSV
SELECT
'report.txt' AS old_file_extension,
REPLACE('report.txt','.txt', '.csv') AS new_file_extension


/*LEN*/ -- COUNTS HOW MANY CHARACTERS A VALUE HAS
--CALCULATE THE LENGTH OF EACH CUSTOMER'S FIRST NAME

SELECT
	first_name,
	LEN(first_name) AS length_first_name
FROM customers


/*STRING EXTRACTION*/
/*LEFT*/ --EXTRACTS FROM THE START OF VALUE

SELECT
	first_name,
	LEFT(first_name, 2) AS first_2_char --OUTPUTS FIRST 2 CHAR PER NAME WITHOUT TRIMMING WHITESPACE
FROM customers


--MORE
SELECT
	first_name,
	LEFT(TRIM(first_name), 2) AS first_2_char --OUTPUTS FIRST 2 CHAR PER NAME AFTER WHITESPACE TRIMMING
FROM customers

/*RIGHT*/ --EXTRACTS FROM END OF VALUE
SELECT
	first_name,
	RIGHT(TRIM(first_name), 2) AS last_2_char --OUTPUTS FIRST 2 CHAR PER NAME AFTER WHITESPACE TRIMMING
FROM customers

/*SUBSTRING*/ -- EXTRACTS FROM STRING AT SPECIFIC POSITION 

SELECT
	first_name,
	SUBSTRING(TRIM(first_name), 2,4) AS chars_after_2nd_char --OUTPUTS 4 CHARACTERS AFTER THE STARTING 2ND POSITION PER NAME AFTER WHITESPACE TRIMMING
FROM customers

--RETRIEVE A LIST OF CUSTOMERS FIRST NAMES AFTER REMOVING THE FIRST CHARACTER

SELECT
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS sub_name --USE LEN WHEN THE VALUES ARE DIFFERENT LENGTHS SO PRETTY MUCH CONVENTIONAL USE
FROM customers