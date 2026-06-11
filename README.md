# PureMILK Database Design SQL Project

A SQL database design project developed as part of an academic database assignment. The project models the business operations of **PureMILK**, a large dairy production company in Sri Lanka that manages factories, chilling centres, farmers, dealers, and dairy products.

The database was designed to support structured storage, retrieval, and management of business data related to milk collection, factory operations, farmer records, product distribution, and dealer relationships.

## Project Overview

PureMILK is one of Sri Lanka’s largest dairy producers, operating multiple factories and chilling centres across the country. The company purchases milk from local farmers, processes dairy products, and distributes them through an island-wide dealer network.

The purpose of this project is to design and implement a relational database system that can help manage PureMILK’s business data efficiently.

## Database Scope

The database covers the following key business areas:

* Factory information
* Chilling centre records
* Farmer details and supplied milk quantities
* Dealer information
* Dairy product details
* Dealer-product distribution relationships

## ER Diagram

The ER diagram below shows the main entities, attributes, primary keys, foreign keys, and relationships used in the PureMILK database design.

![ER Diagram](ER%20Diagram.png)

## Database Tables

| Table            | Description                                                                                              |
| ---------------- | -------------------------------------------------------------------------------------------------------- |
| `Factory`        | Stores factory details such as factory location and number of employees                                  |
| `ChillingCenter` | Stores chilling centre details and links each chilling centre to a factory                               |
| `Farmer`         | Stores farmer details, farm location, supplied milk quantity, phone number, and assigned chilling centre |
| `Dealer`         | Stores dealer names and contact information                                                              |
| `Product`        | Stores dairy product names and unit prices                                                               |
| `Dealer_Product` | Junction table used to manage the many-to-many relationship between dealers and products                 |

## Relationships

The database includes the following relationships:

* One `Factory` can manage many `ChillingCenter` records
* One `ChillingCenter` can be linked to many `Farmer` records
* One `Dealer` can distribute many products
* One `Product` can be distributed by many dealers
* The many-to-many relationship between `Dealer` and `Product` is handled through the `Dealer_Product` table

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

## Example SQL Operations Included

The project includes SQL queries to:

* Display all farmer records
* View factories sorted by location
* Find farmers supplying more than a selected milk quantity
* Filter products within a price range
* Join farmers with their assigned chilling centres
* Join chilling centres with their responsible factories
* Calculate total milk supplied by each chilling centre
* Filter grouped milk supply results using `HAVING`
* Find farmers who supplied more than the average milk quantity
* View dealers and the products they distribute
* Count the number of products distributed by each dealer
* Update farmer milk supply records

## Screenshots

### Created Tables Output

![Created Tables Output](Created%20tables%20output.png)

### Factory Table Output

![Factory Table Output](Factory%20table%20output.png)

### Farmer Table Output

![Farmer Table Output](Farmer%20table%20output.png)

### Product Table Output

![Product Table Output](Product%20table%20format.png)

### Farmer and Chilling Centre JOIN Output

![Farmer and Chilling Centre JOIN Output](Farmer%20chilling%20center%20JOIN%20output.png)

### Dealer Product JOIN Output

![Dealer Product JOIN Output](Dealer%20product%20JOIN%20output.png)

### Total Milk by Chilling Centre Output

![Total Milk by Chilling Centre Output](Total%20milk%20by%20chilling%20center%20output.png)

### Farmers Above Average Milk Output

![Farmers Above Average Milk Output](Farmers%20above%20average%20milk%20output.png)

## How to Run

1. Download or clone this repository.
2. Open the SQL files in your preferred SQL environment.
3. Run the files in the following order:

```sql
schema.sql
sample_data.sql
queries.sql
```

The recommended order is important because the database tables must be created before inserting sample data and running queries.

## Learning Outcomes

This project helped strengthen my understanding of:

* Relational database design
* SQL table creation and data types
* Primary key and foreign key relationships
* Entity relationship modelling
* Database normalisation concepts
* Business data modelling
* SQL queries for data retrieval and analysis
* Joins, aggregation, grouping, filtering, and subqueries
* Structuring database scripts for a real-world business scenario

## Future Improvements

* Add milk collection transaction records
* Add supplier payment tracking
* Add dealer freezer facility management
* Add product inventory and production batch tracking
* Add factory production capacity details
* Add indexes to improve query performance
* Add stored procedures for repeated business operations
* Expand the database with more realistic operational records
