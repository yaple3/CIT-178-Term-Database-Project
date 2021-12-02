USE finalProjectTables;
GO 
CREATE INDEX idx_Zipcode ON Clients(Zipcode);
GO
CREATE INDEX idx_Location ON Orders(LocationID);
GO
CREATE INDEX idx_Client ON Orders(ClientID);
GO
CREATE INDEX idx_OrderID ON OrderDetails(OrderID);
GO
CREATE INDEX idx_Stock# ON OrderDetails(Stock#);
GO