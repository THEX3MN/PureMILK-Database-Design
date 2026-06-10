-- ============================================================
-- PureMILK Database Design Project
-- File: queries.sql
-- Purpose: Demonstrate SQL operations for the PureMILK database
-- ============================================================

USE puremilk;

-- ============================================================
-- 1. View all farmer records
-- ============================================================
SELECT *
FROM Farmer;

-- ============================================================
-- 2. View all factories sorted by location
-- ============================================================
SELECT *
FROM Factory
ORDER BY Location ASC;

-- ============================================================
-- 3. Find farmers supplying more than 150 litres of milk
-- ============================================================
SELECT Name, FarmLocation, MilkQuantitySupplied
FROM Farmer
WHERE MilkQuantitySupplied > 150;

-- ============================================================
-- 4. Find products within a selected price range
-- ============================================================
SELECT ProductID, Name, PricePerUnit
FROM Product
WHERE PricePerUnit BETWEEN 200.00 AND 500.00
ORDER BY PricePerUnit ASC;

-- ============================================================
-- 5. Join farmers with their assigned chilling centre locations
-- ============================================================
SELECT 
    Farmer.Name AS FarmerName,
    Farmer.FarmLocation,
    ChillingCenter.Location AS ChillingCenter,
    Farmer.MilkQuantitySupplied
FROM Farmer
JOIN ChillingCenter 
    ON Farmer.ChillingCenterID = ChillingCenter.ChillingCenterID;

-- ============================================================
-- 6. Join chilling centres with their responsible factories
-- ============================================================
SELECT 
    ChillingCenter.ChillingCenterID,
    ChillingCenter.Location AS ChillingCenter,
    Factory.Location AS FactoryLocation
FROM ChillingCenter
JOIN Factory
    ON ChillingCenter.FactoryID = Factory.FactoryID
ORDER BY Factory.Location, ChillingCenter.Location;

-- ============================================================
-- 7. Calculate total milk supplied by each chilling centre
-- ============================================================
SELECT 
    ChillingCenterID,
    SUM(MilkQuantitySupplied) AS TotalMilkSupplied
FROM Farmer
GROUP BY ChillingCenterID;

-- ============================================================
-- 8. Show chilling centres where total milk supply is above 150 litres
-- ============================================================
SELECT 
    ChillingCenterID,
    SUM(MilkQuantitySupplied) AS TotalMilkSupplied
FROM Farmer
GROUP BY ChillingCenterID
HAVING SUM(MilkQuantitySupplied) > 150;

-- ============================================================
-- 9. Find farmers who supplied more than the average milk quantity
-- ============================================================
SELECT Name, FarmLocation, MilkQuantitySupplied
FROM Farmer
WHERE MilkQuantitySupplied > (
    SELECT AVG(MilkQuantitySupplied)
    FROM Farmer
);

-- ============================================================
-- 10. View dealers and the products they distribute
-- ============================================================
SELECT
    Dealer.Name AS DealerName,
    Product.Name AS ProductName,
    Product.PricePerUnit
FROM Dealer_Product
JOIN Dealer
    ON Dealer_Product.DealerID = Dealer.DealerID
JOIN Product
    ON Dealer_Product.ProductID = Product.ProductID
ORDER BY Dealer.Name, Product.Name;

-- ============================================================
-- 11. Count how many products each dealer distributes
-- ============================================================
SELECT
    Dealer.Name AS DealerName,
    COUNT(Dealer_Product.ProductID) AS NumberOfProducts
FROM Dealer
JOIN Dealer_Product
    ON Dealer.DealerID = Dealer_Product.DealerID
GROUP BY Dealer.Name
ORDER BY NumberOfProducts DESC;

-- ============================================================
-- 12. Update a farmer's supplied milk quantity
-- Note: This is a data manipulation example.
-- ============================================================
UPDATE Farmer
SET MilkQuantitySupplied = 120.00
WHERE FarmerID = 1;

-- Confirm update
SELECT FarmerID, Name, MilkQuantitySupplied
FROM Farmer
WHERE FarmerID = 1;

-- ============================================================
-- 13. Delete a farmer record
-- Note: This is a data manipulation example. Run only if needed.
-- ============================================================
-- DELETE FROM Farmer
-- WHERE FarmerID = 2;
