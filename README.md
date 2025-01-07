# SQL-Training 

HISTORY AND EVOLUTION OF DATABASE
- Early Data Storage (Pre-1960s)
- The 1960s: The Advent of the First Databases
  Hierarchical Model (IBM's IMS): In 1966, IBM developed the Information Management System (IMS), one of the first hierarchical database systems. In a hierarchical model, data is 
  stored in a tree-like structure, with each record having a parent-child relationship.
- The 1970s: Emergence of Relational Databases
  
RELATIONAL(SQL) AND NON-RELATIONAL(No SQL) DATABASES
- Relational means tabular structure, well defined schema, strict on ACID properties
- Non relational means more flexible schema like document-based, key-value stores, columnar dbs, graph dbs
- Various Types of NoSQL Databases: MongoDB (Document-based), Cassandra (Column-family), Redis (Key-value), Neo4j (Graph-based)

Normalization
- To reduce redundancy of data, easy update operations.
- Dataset is small to medium and doesn't require heavy read performance.
- Queries involve complex relationships between tables (e.g., joins).

Denormalization 
- Better read performance, reduces number of joins.
- Heavy queries on large datasets.
- Data redundancy acceptable for better performance.

BASIC SQL COMMANDS					
- Data Definition Language (DDL): CREATE, ALTER, DROP 					
- Data Manipulation Language (DML): SELECT, INSERT, UPDATE, DELETE
- Data Control Language (DCL): GRANT, REVOKE                                                          
- Transaction Control Language (TCL): BEGIN, COMMIT, ROLLBACK
  
WINDOW FUNCTIONS: ROW_NUMBER(), RANK(), DENSE_RANK()
- The LAG() function is used to get value from the row that precedes the current row.
- The LEAD() function is used to get value from a row that succeeds the current row.
- The NTILE() function in SQL server is used to distribute rows of an ordered partition into a specified number of approximately equal groups, or buckets.
