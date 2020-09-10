CREATE or alter FUNCTION fnProdInStock
(	
	@sl int = 500
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT [ProductID], Name, Size, Color, SafetyStockLevel
	FROM [AdventureWorks].[Production].[Product]
	where SafetyStockLevel > @sl
)
GO
