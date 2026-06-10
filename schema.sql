-- ============================================================
-- PureMILK Database Design Project
-- File: schema.sql
-- Purpose: Create the PureMILK database structure
-- ============================================================

CREATE DATABASE IF NOT EXISTS puremilk;
USE puremilk;

-- Drop tables in reverse dependency order for clean re-runs
DROP TABLE IF EXISTS Dealer_Product;
DROP TABLE IF EXISTS Farmer;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Dealer;
DROP TABLE IF EXISTS ChillingCenter;
DROP TABLE IF EXISTS Factory;

-- ============================================================
-- Factory table
-- Stores details of PureMILK factories located across Sri Lanka
-- ============================================================
CREATE TABLE Factory (
    FactoryID INT PRIMARY KEY,
    Location VARCHAR(100) NOT NULL,
    NumberOfEmployees INT CHECK (NumberOfEmployees >= 0)
);

-- ============================================================
-- ChillingCenter table
-- Each chilling centre is attached to one factory
-- ============================================================
CREATE TABLE ChillingCenter (
    ChillingCenterID INT PRIMARY KEY,
    FactoryID INT NOT NULL,
    Location VARCHAR(100) NOT NULL,
    FOREIGN KEY (FactoryID) REFERENCES Factory(FactoryID)
);

-- ============================================================
-- Farmer table
-- Stores farmer details and links farmers to chilling centres
-- ============================================================
CREATE TABLE Farmer (
    FarmerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    FarmLocation VARCHAR(100) NOT NULL,
    ChillingCenterID INT NOT NULL,
    MilkQuantitySupplied DECIMAL(10,2) CHECK (MilkQuantitySupplied >= 0),
    Phone VARCHAR(20),
    FOREIGN KEY (ChillingCenterID) REFERENCES ChillingCenter(ChillingCenterID)
);

-- ============================================================
-- Dealer table
-- Stores dealer details for PureMILK's distribution network
-- ============================================================
CREATE TABLE Dealer (
    DealerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ContactInfo VARCHAR(100)
);

-- ============================================================
-- Product table
-- Stores dairy product details and unit prices
-- ============================================================
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PricePerUnit DECIMAL(10,2) CHECK (PricePerUnit >= 0)
);

-- ============================================================
-- Dealer_Product table
-- Resolves the many-to-many relationship between dealers and products
-- ============================================================
CREATE TABLE Dealer_Product (
    DealerID INT NOT NULL,
    ProductID INT NOT NULL,
    PRIMARY KEY (DealerID, ProductID),
    FOREIGN KEY (DealerID) REFERENCES Dealer(DealerID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
