/*USE finalProjectTables;
GO
INSERT INTO Zipcode VALUES ('06074', 'Stars Hollow', 'CT')
INSERT INTO Zipcode VALUES ('10001', 'New York', 'NY')
INSERT INTO Zipcode VALUES ('48867', 'Owosso', 'MI')
INSERT INTO Zipcode VALUES ('49684', 'Traverse City', 'MI')
INSERT INTO Zipcode VALUES ('49685', 'Traverse City', 'MI')

INSERT INTO Stock VALUES (1, 'Crochet', 70.00, 400.00, 'Afghan')
INSERT INTO Stock VALUES (2, 'Knit', 40.00, 250.00, 'Sweater')
INSERT INTO Stock VALUES (3, 'Fabric', 50.00, 230.00, 'Quilt')
INSERT INTO Stock VALUES (4, 'Wood', 10.00, 25.00, 'Ornament')
INSERT INTO Stock VALUES (5, 'Paper', 10.00, 50.00, 'Dahlia Hanging')
INSERT INTO Stock VALUES (6, 'Needlework', 25.00, 85.00, 'Wall Hanging')
INSERT INTO Stock VALUES (7, 'Leatherwork', 50.00, 75.00, 'Purse')
INSERT INTO Stock VALUES (8, 'FlowerCrafts', 20.00, 60.00, 'Wreath')

SELECT * FROM Stock;

INSERT INTO Locations VALUES (1, 'etsy')
INSERT INTO Locations VALUES (2, 'Website')
INSERT INTO Locations VALUES (3, 'Craft Shows')
INSERT INTO Locations VALUES (4, 'Red Dresser')
INSERT INTO Locations VALUES (5, 'Empire Blu')
INSERT INTO Locations VALUES (6, 'Village Kupps')

INSERT INTO Clients VALUES (1, 'Rory', 'Gilmore', '1256 Peach Lane', '06074', 'rorygilmore@gmail.com', '555-755-8586')
INSERT INTO Clients VALUES (2, 'Matt', 'Alan', '261 W. 28th St.', '10001', 'mattalan@gmail.com', '555-256-7176')
INSERT INTO Clients VALUES (3, 'Wava', 'Smith', '3201 E. M21', '48867', 'wavasmith@gmail.com', '555-987-9807')
INSERT INTO Clients VALUES (4, 'Katie', 'Jane', '1701 W. Front St.', '49684', 'katiejane@gmail.com', '555-920-9021')
INSERT INTO Clients VALUES (5, 'Jackson', 'David', '337 Zimmerman Rd.', '49685', 'jacksondavid@gmail.com', '555-924-5643')

INSERT INTO Orders VALUES (1, '3/26/2021', 2, 5)
INSERT INTO Orders VALUES (2, '6/8/2021', 6, 2)
INSERT INTO Orders VALUES (3, '8/21/2021', 3, 1)
INSERT INTO Orders VALUES (4, '9/18/2021', 4, 3)
INSERT INTO Orders VALUES (5, '10/14/2021', 1, 4)

INSERT INTO OrderDetails VALUES (1, 1, 3, 1)
INSERT INTO OrderDetails VALUES (2, 1, 2, 1)
INSERT INTO OrderDetails VALUES (3, 2, 2, 1)
INSERT INTO OrderDetails VALUES (4, 2, 1, 1)
INSERT INTO OrderDetails VALUES (5, 3, 8, 2)
INSERT INTO OrderDetails VALUES (6, 3, 7, 2)
INSERT INTO OrderDetails VALUES (7, 3, 6, 1)
INSERT INTO OrderDetails VALUES (8, 4, 4, 5)
INSERT INTO OrderDetails VALUES (9, 5, 5, 1)
INSERT INTO OrderDetails VALUES (10, 5, 1, 1)

ALTER TABLE Stock
DROP COLUMN TimeSpent;

ALTER TABLE stock
ADD TimeSpent int;*/





