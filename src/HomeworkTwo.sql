Вывести данные о товарах (название товара, ценасоскидкой_0.5%)

SELECT
ProductName ,
Price,
Price * 0.5 AS "Цена со скидкой 50%"
FROM Products;

Вывести заказы клиентов не из France  (номерзаказа, имяклиента, страна_клиента)
SELECT Orders.OrderID,
Customers.CustomerName,
Customers.Country
FROM Orders
Join Customers on Orders.CustomerID = Customers.CustomerID
Where Customers.Country not in ('France');


Вывести список стран, которые поставляют морепродукты

SELECT *
FROM Suppliers
Where SupplierName Like '%fisch%'
or SupplierName Like '%sea%'

Вывести название и стоимость в USD одного самого дорогого проданного товара (не используя агрегацию)

SELECT
Price as PriseInUsd
FROM Products
Order by Price DESC
Limit 1

Вывести два самых дорогих товара из категории Beverages из USA


SELECT *
FROM Products
Join Categories on Products.CategoryID = Categories.CategoryID
Join Suppliers on Products.SupplierID = Suppliers.SupplierID
Where Categories.CategoryName = 'Beverages'
and Suppliers.Country = 'USA'