## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The raw dataset had inconsistent date formats such as DD-MM-YYYY and MM/DD/YYYY.  
Resolution: All dates were converted into a standard YYYY-MM-DD format to ensure consistency and compatibility with SQL date functions.

---

### Decision 2 — Handling NULL Values
Problem: Some rows had missing values in important fields like product category and revenue.  
Resolution: Missing categorical values were filled using default labels like "Unknown", and missing numeric values were either removed or replaced with 0 based on context.

---

### Decision 3 — Fixing Category Casing
Problem: Product categories had inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".  
Resolution: All category values were standardized to proper case (e.g., "Electronics") to ensure accurate grouping and reporting in analytical queries.