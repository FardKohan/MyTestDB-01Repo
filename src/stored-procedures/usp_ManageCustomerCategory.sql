/* Stored Procedure for Category Management */
USE [MyTestDB-01Git]
GO

CREATE OR ALTER PROCEDURE Sales.usp_ManageCustomerCategory
    @CustomerCategoryID INT = NULL,
    @CategoryName NVARCHAR(50),
    @Action CHAR(1) -- 'C' for Create, 'U' for Update, 'D' for Delete
AS
BEGIN
    SET NOCOUNT ON;
    
    IF @Action = 'C'
    BEGIN
        INSERT INTO Sales.CustomerCategories (CategoryName)
        VALUES (@CategoryName);
        
        SELECT 'Category created successfully' AS Result;
    END
    
    IF @Action = 'U' AND @CustomerCategoryID IS NOT NULL
    BEGIN
        UPDATE Sales.CustomerCategories 
        SET CategoryName = @CategoryName,
            LastModified = GETDATE(),
            ModifiedBy = SYSTEM_USER
        WHERE CustomerCategoryID = @CustomerCategoryID;
        
        SELECT 'Category updated successfully' AS Result;
    END
    
    IF @Action = 'D' AND @CustomerCategoryID IS NOT NULL
    BEGIN
        DELETE FROM Sales.CustomerCategories 
        WHERE CustomerCategoryID = @CustomerCategoryID;
        
        SELECT 'Category deleted successfully' AS Result;
    END
END;