-- Create the database
CREATE DATABASE ShopDB;
USE ShopDB;

-- !!!! word description is reserved word. Please take into account, it's important as for me, 
-- cause in my practice it can raise errors in future!!
CREATE TABLE Products (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    WarehouseAmount INT
);

-- Create Customers table
CREATE TABLE Customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(100)
);

-- Create Orders table
CREATE TABLE Orders (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Date DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

-- Create OrderItems table
CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);
 
