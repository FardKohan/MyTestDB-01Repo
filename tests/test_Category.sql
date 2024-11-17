/* Test new category creation */
EXEC Sales.usp_ManageCustomerCategory 
    @CategoryName = 'Enterprise',
    @Action = 'C';

/* Verify through view */
SELECT TOP 5 * FROM Sales.vw_CategoryAnalytics
ORDER BY 2 DESC;