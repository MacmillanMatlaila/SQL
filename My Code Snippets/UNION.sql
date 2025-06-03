/*Equal number of columns*/
/*Same data type*/
/*Order of columns in each query must be the same*/

SELECT
FirstName AS 'LEINA LA MATHOMO', /*Naming of this first query is controlled here, aliases of output columns can be done here*/
LastName AS 'LEINA LA MAFELELO'
FROM Sales.Customers

UNION

SELECT
FirstName,
LastName
FROM Sales.Employees

--COMBINE DATA FROM EMPLOYEES AND CUSTOMERS INTO ONE

SELECT 
FirstName,
LastName
FROM Sales.Customers

UNION --removes duplicates

SELECT 
FirstName,
LastName
FROM Sales.Employees

SELECT 
FirstName,
LastName
FROM Sales.Customers

UNION ALL --returns duplicates

SELECT 
FirstName,
LastName
FROM Sales.Employees