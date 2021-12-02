/*Task #1 (Count of clients in each state)

USE finalProjectTables;
SELECT Zipcode.State, COUNT(DISTINCT Clients.ClientID) AS [Clients per State]
FROM Clients JOIN Zipcode ON Clients.Zipcode = Zipcode.Zipcode
GROUP BY Zipcode.State
ORDER BY Zipcode.State ASC;

Task #2 --(Number of items ordered by item number along with item name and total price of the item sold (the total price is a calculation based on the result of an aggregate sum function used to get the total quantity multiplied by the unit price).

SELECT COUNT(OrderDetails.Stock#) AS [Total Items Ordered], Stock.Item, SUM(OrderDetails.Qty)* Stock.SellingPrice AS [Total Price]
FROM OrderDetails JOIN Stock ON OrderDetails.Stock# = Stock.StockID
GROUP BY Stock.Item, Stock.SellingPrice, OrderDetails.Stock#
ORDER BY OrderDetails.Stock#;

Task #3 -- Average price per item ordered along with the total number of items ordered

SELECT COUNT(OrderDetails.Stock#) AS [Total Items Ordered], AVG(Stock.SellingPrice) AS [Average per Item]
FROM OrderDetails JOIN Stock ON OrderDetails.Stock# = Stock.StockID;

Task #4 -- Smallest, Largest and Average price of stock

SELECT MIN(Stock.SellingPrice) AS [Minimum Selling Price],
		MAX(Stock.SellingPrice) AS [Maximum Selling Price],
		AVG(Stock.SellingPrice) AS [Average Selling Price]
FROM Stock;

Task #5 --How many clients are coming from each city
SELECT Zipcode.City, COUNT(Orders.ID) AS [Number of Orders]
FROM Clients JOIN Zipcode ON Zipcode.Zipcode = Clients.Zipcode
JOIN Orders ON Clients.ClientID = Orders.ClientID
GROUP BY Zipcode.City
ORDER BY Zipcode.City;*/
