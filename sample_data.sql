-- ============================================================
-- PureMILK Database Design Project
-- File: sample_data.sql
-- Purpose: Insert sample records into the PureMILK database
-- ============================================================

USE puremilk;

-- ============================================================
-- Factory sample data
-- ============================================================
INSERT INTO Factory (FactoryID, Location, NumberOfEmployees)
VALUES 
    (1, 'Colombo', 150),
    (2, 'Nuwara Eliya', 200),
    (3, 'Digana', 120),
    (4, 'Polonnaruwa', 180),
    (5, 'Kilinochchi', 130);

-- ============================================================
-- Chilling centre sample data
-- Each chilling centre is connected to a relevant factory
-- ============================================================
INSERT INTO ChillingCenter (ChillingCenterID, FactoryID, Location)
VALUES 
    (101, 1, 'Gampaha'),
    (102, 1, 'Colombo'),
    (103, 1, 'Kalutara'),
    (104, 1, 'Puttalam'),
    (105, 1, 'Ratnapura'),

    (201, 2, 'Nuwara Eliya'),
    (202, 2, 'Badulla'),
    (203, 2, 'Monaragala'),
    (204, 2, 'Hambantota'),
    (205, 2, 'Matara'),
    (206, 2, 'Galle'),

    (301, 3, 'Matale'),
    (302, 3, 'Kandy'),
    (303, 3, 'Kegalle'),
    (304, 3, 'Kurunegala'),

    (401, 4, 'Anuradhapura'),
    (402, 4, 'Polonnaruwa'),
    (403, 4, 'Trincomalee'),
    (404, 4, 'Batticaloa'),
    (405, 4, 'Ampara'),

    (501, 5, 'Jaffna'),
    (502, 5, 'Kilinochchi'),
    (503, 5, 'Mannar'),
    (504, 5, 'Mullaitivu'),
    (505, 5, 'Vavuniya');

-- ============================================================
-- Farmer sample data
-- ============================================================
INSERT INTO Farmer (FarmerID, Name, FarmLocation, ChillingCenterID, MilkQuantitySupplied, Phone)
VALUES 
    (1, 'Lal Perera', 'Colombo', 102, 100.00, '0711111111'),
    (2, 'Ashan Silva', 'Vavuniya', 505, 150.00, '0712222222'),
    (3, 'Malik Azwer', 'Matara', 205, 200.00, '0713333333'),
    (4, 'Shantha Fernando', 'Matale', 301, 175.00, '0714444444'),
    (5, 'Roshan Devon', 'Trincomalee', 403, 220.00, '0715555555');

-- ============================================================
-- Dealer sample data
-- ============================================================
INSERT INTO Dealer (DealerID, Name, ContactInfo)
VALUES 
    (1, 'Fresh Dairy Distributors', 'contact@freshdairy.com'),
    (2, 'Island Milk Dealers', 'info@islandmilk.lk'),
    (3, 'Dairy Supplies Lanka', 'sales@dairysupplies.lk'),
    (4, 'Quality Milk Traders', 'support@qualitymilk.lk'),
    (5, 'Organic Dairy Mart', 'hello@organicdairy.lk');

-- ============================================================
-- Product sample data
-- Based on the PureMILK product range in the assignment scenario
-- ============================================================
INSERT INTO Product (ProductID, Name, PricePerUnit)
VALUES 
    (1, 'Bottled Fresh Milk', 200.00),
    (2, 'Packeted Fresh Milk', 180.00),
    (3, 'Flavoured Milk', 250.00),
    (4, 'Yoghurt', 120.00),
    (5, 'Butter', 450.00),
    (6, 'Sterilized Milk', 300.00),
    (7, 'Ice Cream', 500.00);

-- ============================================================
-- Dealer-product relationship sample data
-- ============================================================
INSERT INTO Dealer_Product (DealerID, ProductID)
VALUES 
    (1, 1),
    (1, 2),
    (1, 4),
    (2, 1),
    (2, 3),
    (2, 7),
    (3, 4),
    (3, 5),
    (4, 5),
    (4, 6),
    (5, 3),
    (5, 7);
