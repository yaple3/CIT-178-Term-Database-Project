CREATE DATABASE finalProjectTables;

GO
USE finalProjectTables;
CREATE TABLE Stock(
StockID int NOT NULL,
ItemType varchar(200) NOT NULL,
MyCost money,
SellingPrice money,
TimeSpent time,
Item varchar(200),
PRIMARY KEY(StockID)
);
GO
CREATE TABLE Clients(
ClientID int NOT NULL,
FirstName varchar(20) NOT NULL,
LastName varchar(30) NOT NULL,
Address varchar(75) NOT NULL,
Zipcode varchar(10) NOT NULL,
Email varchar(30),
Phone# varchar(15),
PRIMARY KEY(ClientID)
);
GO
CREATE TABLE Zipcode(
Zipcode varchar(10) NOT NULL,
City varchar(30) NOT NULL,
State varchar(2) NOT NULL,
PRIMARY KEY(Zipcode)
);
GO
CREATE TABLE Locations(
ID int NOT NULL,
Name varchar(20) NOT NULL,
PRIMARY KEY(ID)
);
GO
CREATE TABLE Orders(
ID int NOT NULL,
Date datetime,
LocationID int NOT NULL,
ClientID int NOT NULL,
PRIMARY KEY(ID)
);
GO
CREATE TABLE OrderDetails(
ID int NOT NULL,
OrderID int NOT NULL,
Stock# int NOT NULL,
Qty int,
PRIMARY KEY(ID)
);

