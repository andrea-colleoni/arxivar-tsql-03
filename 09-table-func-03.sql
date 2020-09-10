CREATE or alter FUNCTION fnProdInStock2
(
	@sl int = 500
)
RETURNS 
@result TABLE 
(
	ProductID int, 
	Name varchar(50), 
	Size nvarchar(5), 
	Color nvarchar(15), 
	SafetyStockLevel smallint
)
AS
BEGIN
	declare @var varchar(30)
	set @var = 'test'
	-- print @var 

	insert into @result
	SELECT [ProductID], @var, Size, Color, SafetyStockLevel
	FROM [AdventureWorks].[Production].[Product]
	where SafetyStockLevel > @sl
	
	RETURN 
END
GO