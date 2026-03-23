-- TABLE: Customers
INSERT INTO customers VALUES
('C002','Priya Sharma','priya@gmail.com','Delhi'),
('C001','Rohan Mehta','rohan@gmail.com','Mumbai'),
('C006','Neha Gupta','neha@gmail.com','Delhi'),
('C003','Amit Verma','amit@gmail.com','Bangalore'),
('C005','Vikram Singh','vikram@gmail.com','Mumbai');


-- TABLE: Products

INSERT INTO products VALUES
('P004','Notebook','Stationery',120),
('P007','Pen Set','Stationery',250),
('P005','Headphones','Electronics',3200),
('P003','Desk Chair','Furniture',8500),
('P006','Standing Desk','Furniture',22000);


-- TABLE: Sales Representatives
INSERT INTO sales_reps VALUES
('SR02','(from CSV)','(from CSV)','Delhi Office, Connaught Place, New Delhi - 110001'),
('SR01','(from CSV)','(from CSV)','Mumbai HQ, Nariman Point, Mumbai - 400021'),
('SR03','(from CSV)','(from CSV)','South Zone, MG Road, Bangalore - 560001');


-- TABLE: Orders
INSERT INTO orders VALUES
('ORD1027','C002','SR02','2023-11-02'),
('ORD1114','C001','SR01','2023-08-06'),
('ORD1153','C006','SR01','2023-02-14'),
('ORD1002','C002','SR02','2023-01-17'),
('ORD1118','C006','SR02','2023-11-10');

-- TABLE: Order Details

INSERT INTO order_details VALUES
('ORD1027','P004',4),
('ORD1114','P007',2),
('ORD1153','P007',3),
('ORD1002','P005',1),
('ORD1118','P007',5),
('ORD1132','P007',5);