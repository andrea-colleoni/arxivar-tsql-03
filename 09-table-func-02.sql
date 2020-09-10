create or ALTER   procedure [spProdInStock](
	@sl int = 500
) as

declare @var varchar(30)
set @var = 'test'
print @var 

SELECT [ProductID], Name, Size, Color, SafetyStockLevel
FROM [AdventureWorks].[Production].[Product]
where SafetyStockLevel > @sl