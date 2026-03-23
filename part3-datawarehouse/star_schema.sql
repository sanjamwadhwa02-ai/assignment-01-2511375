
 DIMENSION TABLE: Date
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    month_name VARCHAR(20)
);

INSERT INTO dim_date VALUES
('2023-01-01',2023,1,'January'),
('2023-02-01',2023,2,'February'),
('2023-03-01',2023,3,'March');


 DIMENSION TABLE: Store
CREATE TABLE dim_store (
    store_id VARCHAR(10) PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO dim_store VALUES
('S001','Store A','Mumbai'),
('S002','Store B','Delhi'),
('S003','Store C','Bangalore');


 DIMENSION TABLE: Product
CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

INSERT INTO dim_product VALUES
('P001','Laptop','Electronics'),
('P002','Shirt','Clothing'),
('P003','Milk','Groceries');


 FACT TABLE: Sales
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id DATE,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

INSERT INTO fact_sales VALUES
(1,'2023-01-01','S001','P001',2,110000),
(2,'2023-01-01','S002','P002',5,5000),
(3,'2023-02-01','S003','P003',10,600),
(4,'2023-02-01','S001','P002',3,3000),
(5,'2023-03-01','S002','P001',1,55000),
(6,'2023-03-01','S003','P003',8,480),
(7,'2023-01-01','S001','P003',6,360),
(8,'2023-02-01','S002','P001',2,110000),
(9,'2023-03-01','S003','P002',4,4000),
(10,'2023-01-01','S002','P003',7,420);