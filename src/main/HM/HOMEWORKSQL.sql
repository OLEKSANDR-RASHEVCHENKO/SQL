/* 1.Withdraw the penultimate order
SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 1 OFFSET 1;

/*2.Display the five oldest orders
SELECT *
FROM Orders
ORDER BY OrderDate ASC
LIMIT 5
/*3.Display phone numbers of suppliers, except those from UK and Brazil
SELECT Phone
FROM Suppliers
WHERE City NOT IN ('UK','Brazil')
/*4 Display products from categories 4 and 5 with prices up to 250 EUR (incl.)
SELECT *
FROM Products
WHERE CategoryID IN (4,5) AND Price <=250;