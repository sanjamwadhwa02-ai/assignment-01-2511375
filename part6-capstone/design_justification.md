## Storage Systems

For this system, multiple storage technologies are used to handle different requirements. An OLTP database such as MySQL is used to store patient records and daily transactions because it ensures high consistency and reliability. A Data Lake or Lakehouse is used to store raw historical data, including patient history and ICU device data, as it can handle large volumes of structured and unstructured data. A Data Warehouse is used for generating monthly reports such as bed occupancy and department-wise costs because it is optimized for analytical queries. A Vector Database is used to support semantic search, allowing doctors to query patient history in natural language by matching meaning instead of keywords.

## OLTP vs OLAP Boundary

The OLTP system handles real-time transactional data such as patient admissions, treatments, and updates. This is where data is frequently inserted and updated. The OLAP system begins when this data is moved to the Data Lake or Data Warehouse through ETL processes. The Data Warehouse is used for analysis and reporting, where large datasets are queried for insights rather than transactions. Thus, OLTP is focused on operations, while OLAP is focused on analytics and decision-making.

## Trade-offs

One major trade-off in this design is increased system complexity due to the use of multiple storage systems. Managing and integrating data across OLTP, Data Lake, Data Warehouse, and Vector Database can be challenging. However, this can be mitigated by using a unified Data Lakehouse architecture and automated ETL pipelines. This reduces data duplication and simplifies data management while still providing flexibility and scalability for different use cases.