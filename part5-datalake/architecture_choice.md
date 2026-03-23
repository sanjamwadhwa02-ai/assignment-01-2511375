## Architecture Recommendation

I would recommend using a Data Lakehouse architecture for this system.

A food delivery startup collects different types of data such as GPS logs, text reviews, payment transactions, and images. This includes structured, semi-structured, and unstructured data. A Data Warehouse is not suitable because it mainly handles structured data, and it cannot efficiently store images or large raw logs. A Data Lake can store all types of data, but it lacks strong data management and query performance.

A Data Lakehouse combines the advantages of both Data Lake and Data Warehouse. It can store all types of data while also providing better query performance and data management. This makes it ideal for handling diverse data sources in one system.

First, it supports multiple data formats like text, images, and logs in a single platform. Second, it provides better performance for analytics and reporting compared to a Data Lake. Third, it allows both raw data storage and processed data analysis in one system, reducing complexity.

Therefore, a Data Lakehouse is the best choice because it offers flexibility, scalability, and efficient analytics for a fast-growing food delivery startup.