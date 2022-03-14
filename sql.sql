--1- Creating tables
CREATE TABLE Product(
    Product_Id VARCHAR2(20) CONSTRAINT constr_1 PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT constr_2 NOT NULL,
    Price NUMBER CONSTRAINT constr_3 CHECK (Price > 0),
    
);

CREATE TABLE Customer(
    Customer_id VARCHAR2(20) CONSTRAINT constr_4 PRIMARY KEY, 
    Customer_Name VARCHAR2(20) CONSTRAINT constr_5 NOT NULL,
    Customer_Tel NUMBER,

);

CREATE TABLE Orders(
    Customer_id VARCHAR2(20),
    Product_Id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT fk_product FOREIGN KEY (Product_Id) REFERENCES Product (Product_Id),
    CONSTRAINT pk_orders PRIMARY KEY(Customer_id, Product_Id),
);

-- Updating Tables
ALTER TABLE Product ADD Category (VARCHAR2(20));
ALTER TABLE Orders ADD OrderDate (DATE) DEFAULT (SYSDATE);