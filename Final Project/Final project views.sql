/* Final Project Views */

USE finalProjectTables;
GO

/* View #1
-- updatable view --
CREATE VIEW ItemsForSale
AS
SELECT StockID, Item, ItemType, SellingPrice
FROM Stock;
GO

-- original data --
SELECT * FROM Stock; 

-- updating price--
GO
UPDATE Stock
SET SellingPrice = 300.00
WHERE StockID=3;
GO

-- displaying new data --
SELECT * FROM Stock;*/

/* View #2 

-- creating view --

GO 
CREATE VIEW ClientOrders
AS
SELECT Clients.ClientID, FirstName, LastName, Phone#, ID, Date
FROM Clients JOIN Orders ON Clients.ClientID = Orders.ClientID;
GO

-- using the view to display the data --
SELECT * FROM ClientOrders;*/

/* View #3

-- creating view --
GO
CREATE VIEW LargeOrder
AS
SELECT MAX(Qty) AS LargestOrder
FROM OrderDetails;

-- using the view to display the data --
SELECT * FROM LargeOrder;
/* View #4 */
-- creating view --
GO
CREATE VIEW ClientContact
AS
SELECT FirstName, LastName, Phone# FROM Clients;
GO

-- using view to display the data --
SELECT * FROM ClientContact; */

