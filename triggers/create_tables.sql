-- Creating table "Customers"
CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);
--Creating a table "Orders"
CREATE TABLE Orders (
    ID INT PRIMARY KEY,
    Order_date DATE,
    Amount DECIMAL(10, 2),
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(ID)
);
-- Creating table "Products"
CREATE TABLE Products (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);
-- Creating a table "Order_Details"
CREATE TABLE Order_Details (
    ID INT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    FOREIGN KEY (Order_ID) REFERENCES Orders(ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(ID)
);
