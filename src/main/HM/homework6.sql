1
SELECT ProductName,CategoryID,
  AVG(price) as avg_price
FROM Products
WHERE CategoryID IN (1, 2, 5)
  AND ProductName LIKE 't%';


2
SELECT
Sum(Quantity*Price)as totalCost
FROM OrderDetails
Join Products on OrderDetails.ProductID = Products.ProductID
Where OrderID = '10248'


3
SELECT COUNT(ProductID) as count
FROM Products
WHERE Price BETWEEN 100 AND 250;


4
SELECT
Sum(Quantity*Price)as totalCost
FROM OrderDetails
Join Products on OrderDetails.ProductID = Products.ProductID
Join Orders on OrderDetails.OrderID = Orders.OrderID
Join Customers on Orders.CustomerID = Customers.CustomerID
Where Customers.Country = 'Germany'


5
https://dbdiagram.io/d/65af7692ac844320ae82c336