create or alter procedure Production.ProdottiPerStockLevel(
	@sl int = 500
) as

declare @pid int,
		@name varchar(50),
		@price money

declare prod_Crsr cursor for 
SELECT [ProductID], Name, [ListPrice]
FROM [AdventureWorks].[Production].[Product]
where SafetyStockLevel > @sl

open prod_Crsr

fetch next from prod_Crsr
into @pid, @name, @price

while @@fetch_status = 0
begin
	insert into [arxivar-tsql-03].dbo.prodotti
	(pid, nome, prezzo) values (@pid, @name, @price * 1.2)

	fetch next from prod_Crsr
	into @pid, @name, @price
end

close prod_Crsr
deallocate prod_Crsr

select *
from [arxivar-tsql-03].dbo.prodotti
