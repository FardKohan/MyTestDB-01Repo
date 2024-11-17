USE [MyTestDB-01Git]
GO
/* CustomerCategories Table Creation */
CREATE TABLE Sales.CustomerCategories
(
    CustomerCategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL,
    LastModified DATETIME2 DEFAULT GETDATE(),
    ModifiedBy NVARCHAR(50) DEFAULT SYSTEM_USER,
    VersionControl TIMESTAMP 
);
GO
/* CustomerCategories Data Population */
INSERT INTO Sales.CustomerCategories (CategoryName)
VALUES ('Premium'), ('Standard'), ('Basic');
GO