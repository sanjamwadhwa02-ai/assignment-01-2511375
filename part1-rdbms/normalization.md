## Anomaly Analysis

### Insert Anomaly
- Columns involved: product_id, product_name, category, unit_price, order_id  
- Example: Row 0 (order_id = ORD1027), Row 1 (order_id = ORD1114)  

Explanation:  
A new product cannot be inserted without creating an order because product data is stored only within order records.

---

### Update Anomaly
- Rows: Row 20 (ORD1095), Row 119 (ORD1060)  
- Columns: customer_id, customer_name, customer_email, customer_city  

Explanation:  
Customer information is repeated across multiple rows. Updating customer details requires changes in multiple places, leading to inconsistency if missed.

---

### Delete Anomaly
- Row: Row 11 (ORD1185)  
- Columns: product_id, product_name, category  

Explanation:  
Deleting this row removes both the order and the only record of that product, resulting in loss of product information.

## Normalization Justification

Keeping all data in one flat table may seem simple, but it causes a lot of problems. In the given dataset, customer, product, and sales representative details are repeated in many rows for each order. For example, the same customer_id appears multiple times with the same name, email, and city. This leads to unnecessary data duplication and wastes storage.

Update problems can also occur. If a customer changes their email or city, the change must be updated in every row where that customer appears. If even one row is missed, the data becomes inconsistent. Similarly, delete problems can happen when removing an order also deletes important information about a product or customer, especially if that record exists only once. Insert problems are also present because new products or customers cannot be added without creating an order.

By normalizing the data into separate tables like customers, products, orders, sales representatives, and order_details, these issues are solved. Each type of data is stored only once, and tables are connected using foreign keys. This reduces duplication and keeps the data consistent.

Therefore, normalization is not over-engineering. It is an important step to make the database more accurate, organized, and easy to manage.