/* View for Category Analytics */
USE [MyTestDB-01Git]
GO

CREATE OR ALTER VIEW Sales.vw_CategoryAnalytics
AS
SELECT 
    CategoryName,
    LastModified,
    ModifiedBy,
    LAG(CategoryName) OVER (ORDER BY LastModified) AS PreviousValue,
    LEAD(CategoryName) OVER (ORDER BY LastModified) AS NextValue
FROM Sales.CustomerCategories;