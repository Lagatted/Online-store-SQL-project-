
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Address VARCHAR(100) NOT NULL
);

CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Description VARCHAR(200) NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  QuantityInStock INT NOT NULL
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  OrderDate DATE NOT NULL,
  TotalPrice DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  Quantity INT NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (OrderID, ProductID),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

 CREATE TABLE Inventory (
  ProductID INT PRIMARY KEY,
  QuantityInStock INT NOT NULL,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES
  (1, 'John Smith', 'john.smith@example.com', '123-456-7890', '123 Main St'),
  (2, 'Jane Doe', 'jane.doe@example.com', '555-555-1212', '456 Maple Ave'),
  (3, 'Bob Johnson', 'bob.johnson@example.com', '555-123-4567', '789 Oak Blvd'),
  (4, 'Sara Lee', 'sara.lee@example.com', '555-987-6543', '321 Elm St'),
  (5, 'Tom Jones', 'tom.jones@example.com', '555-555-5555', '555 Cedar Rd'),
  (6, 'Emily Smith', 'emily.smith@example.com', '555-555-1234', '444 Birch Ln'),
  (7, 'David Lee', 'david.lee@example.com', '555-123-4567', '777 Pine St'),
  (8, 'Jessica White', 'jessica.white@example.com', '555-555-1212', '888 Oak Ave'),
  (9, 'Mike Davis', 'mike.davis@example.com', '555-555-5555', '999 Maple St'),
  (10, 'Karen Johnson', 'karen.johnson@example.com', '555-987-6543', '111 Walnut Ave');
  
 INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES
  (11, 'Daniel Kim', 'daniel.kim@example.com', '555-555-5555', '222 Chestnut St'),
  (12, 'Sarah Hernandez', 'sarah.hernandez@example.com', '555-123-4567', '333 Oak Dr'),
  (13, 'Ryan Garcia', 'ryan.garcia@example.com', '555-555-1212', '444 Maple Rd'),
  (14, 'Nancy Lee', 'nancy.lee@example.com', '555-987-6543', '555 Elm Ave'),
  (15, 'William Smith', 'william.smith@example.com', '555-555-1234', '666 Pine Blvd');
 
 INSERT INTO Products (ProductID, Name, Description, Price, QuantityInStock)
VALUES
  (1, 'T-Shirt', 'Cotton T-Shirt', 19.99, 100),
  (2, 'Hoodie', 'Fleece Hoodie', 39.99, 50),
  (3, 'Jeans', 'Straight Leg Jeans', 49.99, 75),
  (4, 'Sneakers', 'Canvas Sneakers', 29.99, 125),
  (5, 'Sweatpants', 'Cotton Sweatpants', 24.99, 100),
  (6, 'Sweatshirt', 'Crewneck Sweatshirt', 34.99, 50),
  (7, 'Jacket', 'Lightweight Jacket', 59.99, 25),
  (8, 'Dress', 'Sleeveless Dress', 49.99, 20),
  (9, 'Blouse', 'Silk Blouse', 39.99, 30),
  (10, 'Shorts', 'Denim Shorts', 29.99, 50),
  (11, 'Polo Shirt', 'Cotton Polo Shirt', 24.99, 75),
  (12, 'Skirt', 'Midi Skirt', 39.99, 25),
  (13, 'Swimsuit', 'One-Piece Swimsuit', 54.99, 15),
  (14, 'Sandals', 'Leather Sandals', 44.99, 50),
  (15, 'Socks', 'Cotton Socks', 9.99, 200);
 
 INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalPrice)
VALUES
  (1, 1, '2022-02-28', 119.95),
  (2, 1, '2022-03-01', 179.94),
  (3, 3, '2022-03-02', 99.99),
  (4, 2, '2022-03-02', 44.97),
  (5, 4, '2022-03-03', 84.97),
  (6, 5, '2022-03-03', 174.95),
  (7, 3, '2022-03-04', 44.97),
  (8, 4, '2022-03-04', 119.95),
  (9, 2, '2022-03-05', 134.97),
  (10, 5, '2022-03-05', 89.98),
  (11, 2, '2022-03-06', 54.98),
  (12, 3, '2022-03-07', 74.97),
  (13, 4, '2022-03-08', 59.98),
  (14, 5, '2022-03-09', 104.97),
  (15, 1, '2022-03-10', 124.95);
 
 INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
VALUES
  (1, 1, 2, 19.99),
  (1, 2, 3, 39.99),
  (1, 3, 1, 49.99),
  (2, 3, 2, 49.99),
  (2, 4, 1, 29.99),
  (2, 5, 2, 24.99),
  (3, 6, 1, 34.99),
  (3, 7, 1, 59.99),
  (3, 8, 1, 49.99),
  (4, 9, 3, 39.99),
  (4, 10, 2, 29.99),
  (5, 11, 1, 24.99),
  (5, 12, 1, 39.99),
  (5, 13, 1, 54.99),
  (6, 14, 2, 44.99);
 
 INSERT INTO Inventory (ProductID, QuantityInStock)
VALUES
  (1, 100),
  (2, 50),
  (3, 75),
  (4, 200),
  (5, 150),
  (6, 100),
  (7, 50),
  (8, 75),
  (9, 200),
  (10, 150),
  (11, 100),
  (12, 50),
  (13, 75),
  (14, 200),
  (15, 150);
