# PureMILK Database Design SQL Project

A SQL database design project developed as part of an academic database assignment. The project models the business operations of PureMILK, a dairy production company in Sri Lanka with factories, chilling centres, farmers, dealers, and dairy products.

The database was designed to support structured storage, retrieval, and management of business data related to milk collection, factory operations, farmers, products, and dealer relationships.

## Project Overview

PureMILK is a large dairy producer operating multiple factories and chilling centres across Sri Lanka. The company depends on local farmers for milk supply and distributes dairy products through an island-wide dealer network.

The purpose of this project is to design a relational database system that can help manage PureMILK’s business data efficiently.

## Database Scope

The database includes the following main entities:

* Factories
* Chilling Centres
* Farmers
* Dealers
* Products
* Dealer-Product Relationships

## Database Tables

| Table            | Description                                                                                |
| ---------------- | ------------------------------------------------------------------------------------------ |
| `Factory`        | Stores factory details such as factory location and number of employees                    |
| `ChillingCenter` | Stores chilling centre details and links each centre to a factory                          |
| `Farmer`         | Stores farmer details, farm location, supplied milk quantity, and assigned chilling centre |
| `Dealer`         | Stores dealer information and contact details                                              |
| `Product`        | Stores dairy product details and unit prices                                               |
| `Dealer_Product` | Represents the relationship between dealers and the products they distribute               |

## Key SQL Concepts Used

* Database creation
* Table creation
* Primary keys
* Foreign keys
* Relational database design
* Many-to-many relationship handling
* Data insertion
* Data updating
* Data deletion
* Filtering using `WHERE`
* Sorting using `ORDER BY`
* Aggregation using `SUM`
* Grouping using `GROUP BY`
* Filtering grouped data using `HAVING`
* Range filtering using `BETWEEN`
* Table joins
* Subqueries
* Table alteration using `ALTER TABLE`

## Example Queries Included

The project includes SQL queries to:

* View farmer records
* Update supplied milk quantity
* Delete a farmer record
* Find farmers supplying more than a selected milk quantity
* Calculate total milk supplied by each chilling centre
* Sort factories by location
* Filter products by price range
* Join farmer records with chilling centre locations
* Find farmers supplying above-average milk quantities

## Learning Outcomes

This project helped strengthen my understanding of:

* Relational database design
* SQL table creation and data types
* Primary key and foreign key relationships
* Data modelling for business operations
* SQL queries for business data analysis
* Joins, aggregation, grouping, and subqueries
* Database structure planning based on real-world requirements

## Future Improvements

* Add more complete records for all 25 chilling centres
* Expand product records to cover the full PureMILK product range
* Add supplier payment and milk collection transaction tables
* Add dealer freezer facility tracking
* Add product inventory and factory production tables
* Create stored procedures for repeated business operations
* Improve database normalisation and add indexes for performance
