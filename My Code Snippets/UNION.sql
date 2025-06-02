/*Equal number of columns*/
/*Same data type*/
/*Order of columns in each query must be the same*/

SELECT
FirstName, /*Naming of this first query is controlled here, aliases of output columns can be done here*/
LastName
FROM Sales.Customers

UNION

SELECT
FirstName,
LastName
FROM Sales.Employees
