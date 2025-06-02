/*USING SalesDB, RETRIEVE A LIST OF ALL ORDERS, ALONG WITH THE RELATED CUSTOMER, PRODUCT, AND EMPLOYEE DETAILS. FOR EACH ORDER, DISPLAY:
ORDER ID, CUSTOMER'S NAME, PRODUCT NAME, SALES, PRICE, SLAES PERSON'S NAME*/

USE SalesDB

SELECT *
FROM Sales.Orders

/*EXECUTE ABOVE CODE TO GET AN OVERVIEW OF TABLE*/
/*THEN SELECT ONLY THE RELEVENT COLUMNS*/

SELECT
	o.OrderID,
	o.sales,
	c.FirstName,
	c.LastName,
	p.Price,
	Quantity,
	e.FirstName,
	e.LastName,
	p.Product AS ProductName
FROM Sales.Orders AS o /*Orders has new idetifier called o, so can use o instead of writing Orders in full*/
LEFT JOIN Sales.Customers AS c /*Customers has new idetifier called c, so can use c instead of writing Customers in full*/
ON o.CustomerID = c.CustomerID /*CustomerID from table Orders and table Custumers*/
LEFT JOIN Sales.Products AS p /*Products has new idetifier called p, so can use p instead of writing Products in full*/
ON o.ProductID = p.ProductID /*ProductId from table Orders and table Products*/
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID
