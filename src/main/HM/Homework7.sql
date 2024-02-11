SELECT OrderID as NummberOfOrder,
SUM(OrderDetails.Quantity * Products.Price) as costs
FROM OrderDetails
Join Products On OrderDetails.ProductID =Products.ProductID
Group by OrderID
Having  costs >=5000;




SELECT Customers.Country,Count(*)as Count_Of_Orders
FROM Orders
Join Customers ON Orders.CustomerID = Customers.CustomerID
Group By Customers.Country
Having
COUNT(Orders.OrderID) >=3
Order By Count_Of_Orders DESC
;


SELECT ProductName,
SUM(OrderDetails.Quantity) AS Total
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
Group By Products.ProductID
Order By Total DESC
LIMIT 10


SELECT
	Employees.LastName,
	Employees.FirstName,
	SUM(Products.Price * OrderDetails.Quantity) * .05 AS Salary

FROM Orders

JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Products ON OrderDetails.ProductID = Products.ProductID


GROUP BY Employees.EmployeeID




https://dbdiagram.io/d/65af7692ac844320ae82c336
