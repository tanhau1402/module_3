CREATE DATABASE demo;
CREATE TABLE Products (
  id INT NOT NULL AUTO_INCREMENT,
  productCode VARCHAR(10) NOT NULL,
  productName VARCHAR(50) NOT NULL,
  productPrice DECIMAL(10,2) NOT NULL,
  productAmount INT NOT NULL,
  productDescription VARCHAR(255),
  productStatus VARCHAR(10) NOT NULL,
  PRIMARY KEY (id)
);
CREATE UNIQUE INDEX productCode_index ON Products (productCode);
CREATE INDEX productName_productPrice_index ON Products (productName, productPrice);
-- EXPLAIN SELECT * FROM Products WHERE productCode = 'ABC123';
CREATE VIEW ProductsView AS
SELECT productCode, productName, productPrice, productStatus
FROM Products;
UPDATE ProductsView SET productPrice = 100.00 WHERE productCode = 'ABC123';
DELIMITER $$

CREATE PROCEDURE GetAllProducts()
BEGIN
  SELECT * FROM Products;
END;

DELIMITER ;
DELIMITER $$

CREATE PROCEDURE AddProduct(productCode VARCHAR(10), productName VARCHAR(50), productPrice DECIMAL(10,2), productAmount INT, productDescription VARCHAR(255), productStatus VARCHAR(10))
BEGIN
  INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
  VALUES (productCode, productName, productPrice, productAmount, productDescription, productStatus);
END;

DELIMITER ;
DELIMITER $$

CREATE PROCEDURE UpdateProductById(id INT, productCode VARCHAR(10), productName VARCHAR(50), productPrice DECIMAL(10,2), productAmount INT, productDescription VARCHAR(255), productStatus VARCHAR(10))
BEGIN
  UPDATE Products
  SET productCode = productCode,
      productName = productName,
      productPrice = productPrice,
      productAmount = productAmount,
      productDescription = productDescription,
      productStatus = productStatus
  WHERE id = id;
END;

DELIMITER ;
DELIMITER $$

CREATE PROCEDURE DeleteProductById(id INT)
BEGIN
  DELETE FROM Products
  WHERE id = id;
END;

DELIMITER ;