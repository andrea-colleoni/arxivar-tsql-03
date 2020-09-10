exec [Production].[ProdottiPerStockLevel] @sl=500

/*
SELECT [ProductID], Name, [ListPrice]
into [arxivar-tsql-03].dbo.test
FROM [AdventureWorks].[Production].[Product]
where SafetyStockLevel > 500
*/

select 
	*
from 
	[AdventureWorks].[Production].[Product]
where 
	SafetyStockLevel > (select AVG(SafetyStockLevel) from [AdventureWorks].[Production].[Product])