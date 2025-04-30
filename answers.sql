-- Question 1
CREATE TABLE ProductDetail1NF (
 OrderID INT,
 CustomerName VARCHAR(100),
 Product VARCHAR(50)
);


INSERT INTO ProductDetail1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail1NF VALUES (103, 'Emily Clark', 'Phone');

-- Question 2
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

CREATE TABLE OrderItems (
  OrderID INT,
  Product VARCHAR(50),
  Quantity INT,
  PRIMARY KEY (OrderID, Product),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Orders VALUES 
  (101, 'John Doe'),
  (102, 'Jane Smith'),
  (103, 'Emily Clark');

INSERT INTO OrderItems VALUES 
  (101, 'Laptop', 2),
  (101, 'Mouse', 1),
  (102, 'Tablet', 3),
  (102, 'Keyboard', 1),
  (102, 'Mouse', 2),
  (103, 'Phone', 1);