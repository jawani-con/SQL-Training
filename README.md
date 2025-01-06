# SQL-Training (only whats not known)

HISTORY AND EVOLUTION OF DATABASE
Early Data Storage (Pre-1960s)
The 1960s: The Advent of the First Databases
Hierarchical Model (IBM's IMS): In 1966, IBM developed the Information Management System (IMS), one of the first hierarchical database systems. In a hierarchical model, data is stored in a tree-like structure, with each record having a parent-child relationship.
The 1970s: Emergence of Relational Databases
RELATIONAL AND NON-RELATIONAL DATABASES
Relational means tabular structure, well defined schema
Non relational means more flexible schema like document-based, key-value stores, columnar dbs, graph dbs
MongoDB (Document-based)
Cassandra (Column-family)
Redis (Key-value)
Neo4j (Graph-based)

BASIC SQL COMMANDS					
Data Definition Language (DDL): CREATE, ALTER, DROP 					
Data Manipulation Language (DML): SELECT, INSERT, UPDATE, DELETE
Data Control Language (DCL): GRANT, REVOKE                                                          
Transaction Control Language (TCL): BEGIN, COMMIT, ROLLBACK 
WINDOW FUNCTIONS: ROW_NUMBER(), RANK(), DENSE_RANK()
The LAG() function is used to get value from the row that precedes the current row.
The LEAD() function is used to get value from a row that succeeds the current row.
The NTILE() function in SQL server is used to distribute rows of an ordered partition into a specified number of approximately equal groups, or buckets.
