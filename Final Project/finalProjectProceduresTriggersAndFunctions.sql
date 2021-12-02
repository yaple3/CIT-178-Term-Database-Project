/* Final Project Procedures 

-- Retrieves and displays data:

USE finalProjectTables;
GO
CREATE PROC spClients
AS
SELECT * FROM Clients
ORDER BY LastName;
GO

EXEC spClients;

-- Takes an input parameter:

USE finalProjectTables;
GO
CREATE PROC spClientSearch
@LastName nvarchar(20),
@FirstName nvarchar(20)
AS
SET NOCOUNT ON;
SELECT ClientID, FirstName, LastName, Email
FROM Clients
WHERE FirstName = @FirstName AND LastName = @LastName
GO

EXEC spClientSearch @FirstName = 'Matt', @LastName = 'Alan';

-- Stored procedure that takes 1 input parameter and includes 1 output parameter:

USE finalProjectTables;
GO
CREATE PROC spTimeSpentOnItem
	@Item nvarchar(30),
	@TimeSpent int OUTPUT
AS
BEGIN
  SELECT @Item = Item,
		 @TimeSpent = TimeSpent
  FROM Stock
  WHERE Item = @Item
END
GO

DECLARE @TimeSpent int;
EXEC spTimeSpentOnItem 1, @TimeSpent OUTPUT;
SELECT @TimeSpent AS 'Time Spent';

--Stored procedure that has a return value:

USE finalProjectTables;
GO
CREATE PROC spClientCount
AS
DECLARE @ClientCount int;
SELECT @ClientCount = COUNT(*)
FROM Clients
RETURN @ClientCount;
GO

DECLARE @ClientCount int;
EXEC @ClientCount = spClientCount;
PRINT 'There are ' + CONVERT(varchar, @ClientCount) + ' clients in your database';
GO*/

/*Final Project User Defined Functions

--Create a scalar function that accepts an argument:

USE finalProjectTables;
GO
CREATE FUNCTION fnClientID
	(@FirstName varchar(30))
	RETURNS int
BEGIN
	RETURN (SELECT ClientID FROM Clients WHERE FirstName = @FirstName);
END;

--Uses the function:

GO
SELECT Date, ClientID
FROM Orders
WHERE ClientID = dbo.fnClientID('Rory');

USE finalProjectTables;
GO
CREATE FUNCTION fnStock
	(@Item nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Stock WHERE Item LIKE (@Item);
GO
SELECT * FROM dbo.fnStock('%A%');



USE finalProjectTables;
GO
CREATE FUNCTION fnGetLocation
	(@Name nvarchar(20) = '%')
	RETURNS int
BEGIN
	RETURN (SELECT ID FROM Locations WHERE Name LIKE @Name);
END;

--uses the function
GO
SELECT ID, Name FROM Locations
WHERE ID = dbo.fnGetLocation('Red%');*/

/* Final Project Triggers

--Create archive table  by copying Clients table:

USE finalProjectTables;
SELECT ClientID, FirstName, LastName, Zipcode INTO ClientTransactions
FROM Clients;

--Update ClientsTransactions table 

ALTER TABLE ClientTransactions
ADD Activity varchar(50);
GO */


--Create insert trigger
/* 
CREATE TRIGGER ClientTransactions_INSERT ON ClientTransactions
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ClientID nchar(5)
		DECLARE @FirstName nvarchar(30)
		DECLARE @LastName nvarchar(50)
		DECLARE @Zipcode nvarchar(20)
		DECLARE @Activity nvarchar(50)
		
	SELECT @ClientID =INSERTED.ClientID, @FirstName = INSERTED.FirstName, @LastName = INSERTED.LastName, @Zipcode = INSERTED.Zipcode, @Activity = INSERTED.Activity
	FROM INSERTED
	
	INSERT INTO ClientTransactions
	VALUES(@ClientID, @FirstName, @LastName, @Zipcode, @Activity, 'Inserted')
END 
GO


--Add row into Clients to test insert trigger

INSERT INTO ClientTransactions VALUES(6, 6, 'Howard', 'Montgomery', '90210', 'NULL');
GO 


--View data in Clients archive

SELECT * FROM ClientTransactions;
GO


--Create delete trigger

CREATE TRIGGER ClientTransactions_DELETE ON Clients
	AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ClientID int
		DECLARE @FirstName nvarchar(30)
		DECLARE @LastName nvarchar(50)
		DECLARE @Zipcode nvarchar(20)
		DECLARE @Activity nvarchar(50)

	SELECT @ClientID = DELETED.ClientID, @FirstName = DELETED.FirstName, @LastName = DELETED.LastName, @Zipcode = DELETED.Zipcode, @Activity = DELETED.Activity
		FROM DELETED
	INSERT INTO ClientTransactions VALUES(@ClientID, @FirstName, @LastName, @Zipcode, @Activity, 'Deleted' )
END
GO


--Delete row from Clients to test delete trigger

DELETE FROM Clients WHERE ClientID = 6;
GO

--view data in clients archive

SELECT * FROM ClientTransactions;

--create update trigger

CREATE TRIGGER ClientTransactions_UPDATE ON Clients
	AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @ClientID int
		DECLARE @FirstName nvarchar(30)
		DECLARE @LastName nvarchar(50)
		DECLARE @Zipcode nvarchar(20)
		DECLARE @Activity nvarchar(50)

	SELECT @ClientID = INSERTED.ClientID, @FirstName = INSERTED.FirstName, @LastName = INSERTED.LastName, @Zipcode = INSERTED.Zipcode, @Activity = INSERTED.Activity
	FROM INSERTED

	INSERT INTO ClientTransactions VALUES(@ClientID, @FirstName, @LastName, @Zipcode, @Activity, 'UPDATED' )
END
GO

--insert a new row and then update the row

INSERT INTO Clients VALUES(15, 'Johnny', 'Depp', '87878', 'NULL');
GO
UPDATE Clients
SET FirstName = 'Junie'
WHERE ClientID = 15;
GO

--view data in Clients archive

SELECT * FROM ClientTransactions;*/