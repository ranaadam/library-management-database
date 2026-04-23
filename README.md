# Library Management System Database (SQL Project)

**Designed and implemented by Rana Adam**

## Overview
This project presents the design and implementation of a relational database for managing a library system. It handles books, authors, members, staff, and borrowing operations using SQL.

## Features
- Structured relational database design  
- Entity relationships (1-to-many, 1-to-1)  
- Borrowing and return tracking  
- 15+ SQL queries (joins, subqueries, aggregations)  

## Database Structure
Main entities:
- Author  
- Book  
- Member  
- Staff  
- Borrow  
- Return  

Key relationships:
- Author → Book (1-to-many)  
- Member → Borrow (1-to-many)  
- Book → Borrow (1-to-many)  
- Staff → Borrow (1-to-many)  
- Borrow → Return (1-to-1)  

## Project Structure
sql/
  schema.sql
  inserts.sql
  queries.sql

docs/
  er-diagram.png
  presentation.pptx

## Technologies
- SQL  
- Supabase  

## How to Use
1. Run schema.sql to create tables  
2. Run inserts.sql to add sample data  
3. Run queries.sql to test queries  

## Notes
This project was developed as part of a Database Management Systems course.
